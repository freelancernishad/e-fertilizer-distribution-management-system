<template>
	<div class="row justify-content-center">
		<div class="col-xl-10 col-lg-12 col-md-9">
			<div class="card shadow-sm my-5" style="    max-width: 400px;
    margin: 0 auto;    border: 1px solid #227474;">
				<div class="card-body p-0">
					<div class="row">
						<div class="col-lg-12">
							<div class="login-form">
								<div class="text-center">

									<h1 class="h4 text-gray-900 mb-4" style="font-size: 35px;">লগইন</h1>
								</div>
								<form class="user" @submit.prevent='login'>
									<div class="form-group">
										<input type="email" class="form-control" id="exampleInputEmail" aria-describedby="emailHelp"
										placeholder="Enter Email Address" v-model='form.email'>
										<small class="text-danger" v-if="errors.email">{{ errors.email[0] }}</small>
									</div>
									<div class="form-group">
										<input type="password" class="form-control" id="exampleInputPassword" placeholder="Password" v-model='form.password'>
										<small class="text-danger" v-if="errors.password">{{ errors.password[0] }}</small>
									</div>
									<div class="form-group">
										<div class="custom-control custom-checkbox small" style="line-height: 1.5rem;">
											<input type="checkbox" class="custom-control-input" id="customCheck">
											<label class="custom-control-label" for="customCheck">Remember
											Me</label>
										</div>
									</div>
									<div class="form-group">
										<button type="submit" class="btn btn-primary btn-block">{{ buttonText }}</button>
									</div>
								</form>

								<hr>

								<!-- <div class="text-center">
									<router-link to="register" class="font-weight-bold small">Create an Account!</router-link> |
									<router-link to="forget" class="font-weight-bold small">Forget Password</router-link>
								</div> -->

								<div class="text-center">
                                    <img width="50px" :src="$asseturl+'assets/img/bangladesh-govt.png'" alt="">
                                    <h4 style="margin: 0;    margin-top: 10px;">উপজেলা প্রশাসন</h4>
                                    তেঁতুলিয়া, পঞ্চগড়।
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
		if (User.loggedIn()) {
			this.$router.push({name: 'home'})
		}
	},

	data () {
		return {
			form: {
				email: null,
				password: null
			},
			errors:{},
			buttonText:'লগইন'
		}
	},
	methods:{
		login(){
            this.buttonText = 'Looding.....';
			// alert('done')
			axios.post('/api/auth/login', this.form)
			.then(res => {
                // console.log(res);
				User.responseAfterLogin(res)

				Toast.fire({
					icon: 'success',
					title: 'Signed in successfully'
				})
  this.buttonText = 'লগইন';
				this.$router.push({name: 'home'})
			})
			.catch(error => this.errors = error.response.data.errors)
			// .catch(
			// 	Toast.fire({
			// 		icon: 'warning',
			// 		title: 'Invalid email or password!'
			// 	})
			// )
		}
	}
}
</script>

<style lang="css" scoped>
</style>
