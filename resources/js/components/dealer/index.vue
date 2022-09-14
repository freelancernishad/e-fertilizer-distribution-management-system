<template>
	<div class="row justify-content-center">
		<div class="col-xl-12 col-lg-12 col-md-12">
			<div class="row">
				<div class="col-lg-12 mb-4">
					<!-- Simple Tables -->
					<div class="card">
						<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
							<h2 class="m-0 font-weight-bold text-primary">ডিলারের তালিকা</h2>


						</div>




                        <table-component :Table="Table" :sonod-type="$route.params.name" :sort-options-staus="sortstatus" :Filter="Filter"
                    :filter-on="FilterOn" :per-page="PerPage" :Items="items" :Fields="fields" :add-new="AddNew"
                    :per-page-data="PerPageData" :total-rows="TotalRows" :delete-route="deleteRoute"
                    :edit-route="editRoute" :application-route="applicationRoute" :view-route="viewRoute"
                    :approve-route="approveRoute" :pay-route="payRoute" :cancel-route="cancelRoute" :canceltext="canceltext"
                    :approve-type="approveType" :approve-data="approveData" :Tableloader="tableloader" @event-name="allCategory">
                </table-component>




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


        this.fields =  [

                { key: 'name', label: 'নাম', sortable: true },
                { key: 'Mobile', label: 'প্রতিষ্ঠানের নাম', sortable: true },
                { key: 'bazarName', label: 'বাজারের নাম', sortable: true },
                { key: 'unioun', label: 'ইউনিয়ন', sortable: true },
                { key: 'thana', label: 'উপজেলা', sortable: true },
                { key: 'Distric', label: 'জেলা', sortable: true },

            ]
            this.fields.push( { key: 'actions', label: 'Actions' });

	},

	data () {
		return {

            preLooding: true,
            access: '',
            sortstatus: false,
            Filter: true,
            FilterOn: false,
            PerPage: false,
            tableloader: false,
            Table: 'users',
            deleteRoute: '',
            AddNew: '',
            editRoute: 'editdealer',
            applicationRoute: '/document',
            viewRoute: '',
            approveRoute: '',
            cancelRoute: '',
            canceltext: '',
            approveType: '',
            approveData: '',
            payRoute: '',
            PerPageData: '10',
            TotalRows: '1',
            headText: 'প্রতিবেদন',
            Type: '',

            newDate: new Date(),
            unionsInfos: {
                payment_type:''
            },
            items: [],
            fields: [],


			categories: [],
			searchTerm:""
		}
	},
	computed: {
		filtersearch(){
			return this.categories.filter(category => {
				return category.name.match(this.searchTerm)
			})
		}
	},
	methods: {
		allCategory(){
            this.tableloader = true
			axios.get('/api/user?type=diller')
			.then(({data}) => {
                this.items = data
                this.tableloader = false

            })
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
