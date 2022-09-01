<template>
	<div class="row justify-content-center">
		<div class="col-xl-12 col-lg-12 col-md-12">
			<div class="card shadow-sm my-5">
				<div class="card-body p-0">
					<div class="row">
						<div class="col-lg-12">

							<div class="login-form">
								<div class="text-center">
									<h1 class="h4 text-gray-900 mb-4">ডিলার ফর্ম</h1>
								</div>
								<form @submit.prevent='updateCategory' class="row">

                                    <div class="col-md-6">
									<div class="form-group">
                                        <label for="">ডিলারের নাম</label>
										<input type="text" class="form-control" id="exampleInputFirstName" placeholder="Enter Your Full Name" v-model="form.name">
										<small class="text-danger" v-if="errors.name"> {{ errors.name[0] }} </small>
									</div>
                                    </div>


                                    <div class="col-md-6">
									<div class="form-group">
                                        <label for="">প্রতিষ্ঠানের নাম</label>
										<input type="text" class="form-control" id="exampleInputFirstName" placeholder="Enter Your Full Name" v-model="form.Mobile">
										<small class="text-danger" v-if="errors.Mobile"> {{ errors.Mobile[0] }} </small>
									</div>
                                    </div>


                                    <div class="col-md-6">
									<div class="form-group">
                                        <label for="">বাজারের নাম</label>
										<input type="text" class="form-control" id="exampleInputFirstName" placeholder="Enter Your Full Name" v-model="form.bazarName">
										<small class="text-danger" v-if="errors.bazarName"> {{ errors.bazarName[0] }} </small>
									</div>
                                    </div>


                                    <div class="col-md-6">
									<div class="form-group">
                                        <label for="">ইউনিয়ন</label>
										<input type="text" class="form-control" id="exampleInputFirstName" placeholder="Enter Your Full Name" v-model="form.unioun">
										<small class="text-danger" v-if="errors.unioun"> {{ errors.unioun[0] }} </small>
									</div>
                                    </div>


                                    <div class="col-md-6">
									<div class="form-group">
                                        <label for="">উপজেলা</label>
										<input type="text" class="form-control" id="exampleInputFirstName" placeholder="Enter Your Full Name" v-model="form.thana">
										<small class="text-danger" v-if="errors.thana"> {{ errors.thana[0] }} </small>
									</div>
                                    </div>


                                    <div class="col-md-6">
									<div class="form-group">
                                        <label for="">জেলা</label>
										<input type="text" class="form-control" id="exampleInputFirstName" placeholder="Enter Your Full Name" v-model="form.Distric">
										<small class="text-danger" v-if="errors.Distric"> {{ errors.Distric[0] }} </small>
									</div>
                                    </div>


                                    <div class="col-md-6">
									<div class="form-group">
                                        <label for="">ইমেইল</label>
										<input type="text" class="form-control" id="exampleInputFirstName" placeholder="Enter Your Full Name" v-model="form.email">
										<small class="text-danger" v-if="errors.email"> {{ errors.email[0] }} </small>
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
				name: '',
				Mobile: '',
				bazarName: '',
				unioun: '',
				thana: '',
				Distric: '',
				email: '',
			},
			errors: {}
		}
	},
    watch: {
        '$route': {
            handler(newValue, oldValue) {
                if(!this.$route.params.id){
                    this.form ={
                        name: '',
                        Mobile: '',
                        bazarName: '',
                        unioun: '',
                        thana: '',
                        Distric: '',
                        email: '',
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
            axios.get('/api/user/' + id)
            .then(({data}) => (this.form = data))
            .catch(console.log('error'))
        },

		updateCategory(){

            if(this.$route.params.id){
			var id = this.$route.params.id
		    var ax = 	axios.patch('/api/user/' + id, this.form)
            }else{
		    var ax = 	axios.post('/api/user/' + id, this.form)
            }


			ax.then(() => {
				this.$router.push({name: 'dealer'})
				Notification.success()
			})
			.catch(error => this.errors = error.response.data.errors)
		}
	}
}
</script>

<style lang="css" scoped>
</style>
