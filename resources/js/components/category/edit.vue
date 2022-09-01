<template>
	<div class="row justify-content-center">
		<div class="col-xl-12 col-lg-12 col-md-12">
			<div class="card shadow-sm my-5">
				<div class="card-body p-0">
					<div class="row">
						<div class="col-lg-12">
							<!-- <router-link to="/category" class="btn btn-primary float-right" style="margin-top: 6px;margin-right: 6px;">All Category</router-link> -->
							<div class="login-form">
								<div class="text-center">
									<h1 class="h4 text-gray-900 mb-4">সার সম্পর্কিত ফর্ম</h1>
								</div>
								<form @submit.prevent='updateCategory' class="row">

                                <div class="col-md-6">
									<div class="form-group">
                                        <label for="">সারের নাম</label>
										<input type="text" class="form-control" id="exampleInputFirstName" placeholder="Enter Your Full Name" v-model="form.category_name">
										<small class="text-danger" v-if="errors.category_name"> {{ errors.category_name[0] }} </small>
									</div>
                                </div>

                                <div class="col-md-6">
									<div class="form-group">
                                        <label for="">সারের দাম</label>
										<input type="text" class="form-control" id="exampleInputFirstName" placeholder="Enter Your Full Name" v-model="form.price">
										<small class="text-danger" v-if="errors.price"> {{ errors.price[0] }} </small>
									</div>
                                </div>



									<div class="form-group">
										<button type="submit" class="btn btn-primary btn-block">Submit</button>
									</div>
								</form>
								<div class="text-center">
								</div>
							</div>
						</div>
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
			form:{
				category_name: '',
				price: '',
			},
			errors: {}
		}
	},
    watch: {
        '$route': {
            handler(newValue, oldValue) {
                if(!this.$route.params.id){
                    this.form ={
                        category_name: '',
                        price: '',
                    }
                }
            },
            deep: true
        }
    },

	mounted(){
        if(this.$route.params.id){
            this.list();
        }

	},
	methods:{

        list(){
            var id = this.$route.params.id
            axios.get('/api/category/' + id)
            .then(({data}) => (this.form = data))
            .catch(console.log('error'))
        },

		updateCategory(){

            if(this.$route.params.id){
				var id = this.$route.params.id
			 var ax = 	axios.patch('/api/category/' + id, this.form)
            }else{
		    var ax = 	axios.post('/api/category/', this.form)
            }


			ax.then(() => {
				this.$router.push({name: 'category'})
				Notification.success()
			})
			.catch(error => this.errors = error.response.data.errors)
		}
	}
}
</script>

<style lang="css" scoped>
</style>
