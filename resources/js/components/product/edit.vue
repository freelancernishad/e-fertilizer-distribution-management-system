<template>
	<div class="row justify-content-center">
		<div class="col-xl-12 col-lg-12 col-md-12">
			<div class="card shadow-sm my-5">
				<div class="card-body p-0">
					<div class="row">
						<div class="col-lg-12">
							<!-- <router-link to="/product" class="btn btn-primary float-right" style="margin-top: 6px;margin-right: 6px;">All Product</router-link> -->
							<div class="login-form">
								<div class="text-center">
									<h1 class="h4 text-gray-900 mb-4 fromTitle">বরাদ্দ</h1>
								</div>
								<form @submit.prevent='updateProduct' enctype="multipart/form-data" class="row">

                                    		<div class="col-md-6">
                                                <div class="form-group">
												<label class="inputLabel" for="exampleFormControlSelect1">তারিখ</label>
                                                <input type="date" v-model="form.buying_date" class="form-control">
                                            </div>
											</div>

                                    		<div class="col-md-6">
												<label class="inputLabel" for="exampleFormControlSelect1">ম্যামো নং</label>
                                                <input type="text" v-model="form.memoNong" class="form-control">
											</div>




                                    		<div class="col-md-6">
                                                <div class="form-group">
												<label class="inputLabel" for="exampleFormControlSelect1">সারের নাম</label>
												<select class="form-control" id="exampleFormControlSelect1" v-model="form.category_id">
													<option v-for="category in categories" :value="category.id">{{ category.category_name }}</option>
												</select>
											</div>
											</div>

     		                                <div class="col-md-6">
                                                <div class="form-group">
												<label class="inputLabel" for="exampleFormControlSelect1">পরিমাণ</label>
                                                <div class="d-flex align-items-center">

                                                <input type="number" v-model="matrikton" class="form-control">
                                                  <span style="    padding: 0 8px;">&nbsp; = &nbsp;</span> 
                                                <input type="text" v-model="form.product_quantity=matrikton*matriktonP" class="form-control" readonly>
                                              

                                                <!-- <select class="form-control" v-model="form.type">
                                                    <option value="">Select</option>
                                                    <option value="কেজি">কেজি</option>
                                                    <option value="বস্তা">বস্তা</option>
                                                </select>
 -->

                                                </div>
                                                </div>

											</div>






									<div class="form-group mt-5">
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
				category_id: '',
				supplier_id: '',
				product_name: '',
				memoNong: '',
				product_code: '',
				root: '',
				buying_price: '',
				selling_price: '',
				buying_date: '',
				product_quantity: '',
				type: 'কেজি',
				image: '',
				newImage: ''
			},
			errors: {},
			categories: {},
			suppliers: {},
			image: '',
			matrikton: 0,
			matriktonP: 1000,
		}
	},
    watch: {
        '$route': {
            handler(newValue, oldValue) {
                if(!this.$route.params.id){
                    this.form ={
                        category_id: '',
                        supplier_id: '',
                        product_name: '',
                        memoNong: '',
                        product_code: '',
                        root: '',
                        buying_price: '',
                        selling_price: '',
                        buying_date: '',
                        product_quantity: '',
                        type: '',
                        image: '',
                        newImage: ''
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
	created(){


		// Category Collected
		axios.get('/api/category/')
			 .then(({data}) => (this.categories = data))

		// Supplier Collected
		axios.get('/api/supplier/')
			 .then(({data}) => (this.suppliers = data))
	},
	methods:{

        list(){
         let id = this.$route.params.id
		axios.get('/api/product/'+id)
			 .then(({data}) => {
                 this.form = data
    this.image = '/'+data.image
              console.log(data)
             })
			 .catch(console.log('error'))
        },




		onFileSelected(event){
			let file = event.target.files[0];
			if (file.size > 1048576) {
				Notification.image_validation();
			} else {
				let reader = new FileReader;
				reader.onload = event => {
					this.form.newImage = event.target.result
                        this.image = event.target.result
					console.log(this.form.newImage)
				};
				reader.readAsDataURL(file)
			}
		},
		updateProduct(){


            if(this.$route.params.id){
				var id = this.$route.params.id
			 var ax = 	axios.patch('/api/product/' + id, this.form)
            }else{
		    var ax = 	axios.post('/api/product', this.form)
            }






			ax.then(() => {
				this.$router.push({name: 'product'})
				Notification.success()
			})
			.catch(error => this.errors = error.response.data.errors)
		}
	}
}
</script>

<style lang="css" scoped>
</style>

