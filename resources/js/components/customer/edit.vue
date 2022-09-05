<template>
	<div class="row justify-content-center">
		<div class="col-xl-12 col-lg-12 col-md-12">
			<div class="card shadow-sm my-5">
				<div class="card-body p-0">
					<div class="row">
						<div class="col-lg-12">
							<router-link to="/customer" class="btn btn-primary float-right" style="margin-top: 6px;margin-right: 6px;">All Customer</router-link>
							<div class="login-form">
								<div class="text-center">
									<h1 class="h4 text-gray-900 mb-4 fromTitle">কৃষক ফর্ম</h1>
								</div>
								<form @submit.prevent='updateCustomer' enctype="multipart/form-data" class="row">

                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label class="inputLabel" for="">ছবি</label>
                                                <div class="form-row">
                                                    <div class="col-md-6">
                                                        <div class="custom-file" style="margin-top: 16px;">
                                                            <input type="file" class="custom-file-input" id="customFile" @change="onFileSelected">
                                                            <label class="custom-file-label" for="customFile">Choose file</label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <img :src="form.photo" style="width: 146px">
                                                    </div>
                                                </div>
                                            </div>

                                    </div>



                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="inputLabel" for="">নাম</label>
                                                <input type="text" class="form-control" v-model="form.name">
                                            </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="inputLabel" for="">মোবাইল</label>
                                                <input type="text" class="form-control" v-model="form.phone">
                                            </div>
                                    </div>



                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="inputLabel" for="">জাতীয় পরিচয় পত্র নং</label>
                                                <input type="text" class="form-control" v-model="form.nidNo">
                                            </div>
                                    </div>




                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="inputLabel" for="">পিতার নাম</label>
                                                <input type="text" class="form-control" v-model="form.fatherName">
                                            </div>
                                    </div>






                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="inputLabel" for="">জেলা</label>
                                                <input type="text" class="form-control" v-model="form.district">
<!--
                                            <select class="form-control" v-model="form.district" @change="upazilasFun">

                                                <option value="">জেলা নির্বাচন করুন</option>
                                                <option v-for="dis in districts" :value="dis.id">{{ dis.bn_name }}</option>
                                            </select> -->

                                            </div>
                                    </div>


                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="inputLabel" for="">উপজেলা</label>
                                                <input type="text" class="form-control" v-model="form.thana">
<!--
                                        <select class="form-control" v-model="form.thana" @change="unionsFun">

                                            <option value="">উপজেলা নির্বাচন করুন</option>
                                            <option v-for="upo in upazilas" :value="upo.id">{{ upo.bn_name }}</option>
                                        </select> -->

                                            </div>
                                    </div>




                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="inputLabel" for="">ইউনিয়ন</label>
                                                <input type="text" class="form-control" v-model="form.union">


                                        <!-- <select class="form-control" v-model="form.union">

                                            <option value="">ইউনিয়ন নির্বাচন করুন</option>
                                            <option v-for="uni in unions" :value="uni.id">{{ uni.bn_name }}</option>
                                        </select> -->

                                            </div>
                                    </div>





                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="inputLabel" for="">গ্রাম</label>
                                                <input type="text" class="form-control" v-model="form.vill">
                                            </div>
                                    </div>



                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="inputLabel" for="">ওয়ার্ড নং</label>
                                                <!-- <input type="text" class="form-control" v-model="form.wordNo"> -->

                                                <select class="form-control" v-model="form.wordNo">
                                                    <option value="">নির্বাচন করুন</option>
                                                    <option>১</option>
                                                    <option>২</option>
                                                    <option>৩</option>
                                                    <option>৪</option>
                                                    <option>৫</option>
                                                    <option>৬</option>
                                                    <option>৭</option>
                                                    <option>৮</option>
                                                    <option>৯</option>
                                                </select>


                                            </div>
                                    </div>



                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="inputLabel" for="">ব্লক নং</label>
                                                <input type="text" class="form-control" v-model="form.Block">
                                            </div>
                                    </div>



                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="inputLabel" for="">মৌজা</label>
                                                <input type="text" class="form-control" v-model="form.mouja">
                                            </div>
                                    </div>










                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="inputLabel" for="">জমির পরিমাণ</label>
                                                <input type="text" class="form-control" v-model="form.landArea">
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
        this.form.district= 53;

        this.upazilasFun();



	},

	data () {
		return {
			form:{
				name: '',
				email: 'Local',
				phone: '',
				nidNo: '',
				fatherName: '',
				vill: '',
				wordNo: '',
				Block: '',
				mouja: '',
				union: '',
				thana: '',
				district: '',
				landArea: '',
				photo: '',
			},
			errors: {},
			districts: {},
			upazilas: {},
			unions: {},
		}
	},
        watch: {
        '$route': {
            handler(newValue, oldValue) {
                if(!this.$route.params.id){
                    this.form ={
                        name: '',
                        email: '',
                        phone: '',
                        nidNo: '',
                        fatherName: '',
                        vill: '',
                        wordNo: '',
                        Block: '',
                        mouja: '',
                        union: '',
                        thana: '',
                        district: '',
                        landArea: '',
                        photo: '',
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
       // this.districtsFun();
	},
	methods:{




        async districtsFun(){
            var res = await this.callApi('get',`/api/districts`,[]);
            this.districts = res.data;
        },




        async upazilasFun(){

            var res = await this.callApi('get',`/api/upazilas?id=${this.form.district}`,[]);
            this.upazilas = res.data;

			this.unions= [];
            setTimeout(() => {

                if(this.$route.params.id){
                    this.unionsFun();
                }
            }, 1000);

        },



        async unionsFun(){

            var res = await this.callApi('get',`/api/unions?id=${this.form.thana}`,[]);
            this.unions = res.data;
        },







        list(){
            let id = this.$route.params.id
		    axios.get('/api/customer/' + id)
			 .then(({data}) => (this.form = data))
			 .catch(console.log('error'))

        },


		onFileSelected(event){
			let file = event.target.files[0];
			if (file.size > 1048576) {
				Notification.image_validation();
			} else {
				let reader = new FileReader;
				reader.onload = event => {
					this.form.photo = event.target.result
					// console.log(this.form.newPhoto)
				};
				reader.readAsDataURL(file)
			}
		},
		updateCustomer(){

            this.form['dillerId'] = localStorage.getItem('dillerId');
            if(this.$route.params.id){
				var id = this.$route.params.id
			 var ax = 	axios.patch('/api/customer/' + id, this.form)
            }else{
		    var ax = 	axios.post('/api/customer', this.form)
            }

			ax.then(() => {
				this.$router.push({name: 'customer'})
				Notification.success()
			})
			.catch(error => this.errors = error.response.data.errors)
		}
	}
}
</script>

<style lang="css" scoped>
</style>
