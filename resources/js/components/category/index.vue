<template>
	<div class="row justify-content-center">
		<div class="col-xl-12 col-lg-12 col-md-12">
			<div class="row">
				<div class="col-lg-12 mb-4">
					<!-- Simple Tables -->
					<div class="card">
						<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
							<h2 class="m-0 font-weight-bold text-primary">সারের তালিকা</h2>
							<input type="text" placeholder="Search By Phone" v-model="searchTerm" class="form-control" style="width: 300px;margin-right: -900px;">
							<!-- <router-link to="/store-category" class="btn btn-primary float-right" style="margin-top: 6px;margin-right: 6px;">Add Category</router-link> -->
						</div>
						<div class="table-responsive">
							<table class="table align-items-center table-flush">
								<thead class="thead-light">
									<tr>
										<th v-show="$localStorage.getItem('role')!='diller'">প্রতিষ্ঠানের নাম</th>
										<th>সারের নাম</th>
										<th>সারের মূল্য (প্রতি কেজি) [ সরকার কর্তৃক নির্ধারিত ]</th>
										<th v-show="$localStorage.getItem('role')=='admin'">Action</th>
									</tr>
								</thead>
								<tbody>
									<tr v-for="category in filtersearch" :key="category.id">
										<td v-show="$localStorage.getItem('role')!='diller'">{{ category.dellars.organization }}</td>
										<td>{{ category.category_name }}</td>
										<td>{{ int_en_to_bn_fun(category.price) }} টাকা</td>
										<td v-show="$localStorage.getItem('role')=='admin'">
											<router-link :to="{name: 'editCategory', params: {id: category.id}}" class="btn btn-sm btn-primary">Edit</router-link>
											<!-- <a @click="deleteCategory(category.id)" class="btn btn-sm btn-danger" style="color: white">Delete</a> -->
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="card-footer"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</template>

<script>
export default {

	created(){
		if (!User.loggedIn()) {
			this.$router.push({name: '/'})
		}
	},

	data () {
		return {
			categories: [],
			searchTerm:""
		}
	},
	computed: {
		filtersearch(){
			return this.categories.filter(category => {
				return category.category_name.match(this.searchTerm)
			})
		}
	},
	methods: {
		allCategory(){


            var role = localStorage.getItem('role');
            if(role=='diller'){
                var dillerId = localStorage.getItem('dillerId');
            }else{
                var dillerId = '';
            }

			axios.get(`/api/category?dillerId=${dillerId}`)
			.then(({data}) => (this.categories = data))
			.catch()
		},
		deleteCategory(id){
			Swal.fire({
				title: 'Are you sure?',
				text: "You won't be able to revert this!",
				icon: 'warning',
				showCancelButton: true,
				confirmButtonColor: '#3085d6',
				cancelButtonColor: '#d33',
				confirmButtonText: 'Yes, delete it!'
			}).then((result) => {
				if (result.isConfirmed) {
					axios.delete('/api/category/' + id)
						 .then(() => {
                              Notification.customdelete('Category Deleted');
						 	this.categories = this.categories.filter(category => {

						 		return category.id != id



						 	})
						 })
						 .catch(() => {
						 	this.$router.push({name: 'category'})
						 })

					// Swal.fire(
					// 	'Deleted!',
					// 	'Your file has been deleted.',
					// 	'success'
					// 	)
				}
			})
		}
	},
	mounted(){
		this.allCategory();
	}
}
</script>

<style lang="css" scoped>
#img_size{
	width: 40px;
}
</style>
