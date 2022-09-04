<template>
	<div>
		<div class="container-fluid" id="container-wrapper">
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="./">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">Dashboard</li>
            </ol>
          </div>


<a :href="'/invoice/'+pramid" target="_blank" class="btn btn-sm btn-primary">Print</a>

          <div class="row mb-3">
            <!-- Table 1 -->
            <div class="col-xl-12 col-lg-12">
              <div class="card mb-4">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h5 class="m-0 font-weight-bold text-primary">বিক্রয় রশিদ বিবরন</h5>
                </div>
                <div class="card-body">
                	<div class="table-responsive">
                		<ul class="list-group">
                            <li class="list-group-item"><b>নাম : </b>{{ orders.customer_name }}</li>
                            <li class="list-group-item"><b>জাতীয় পরিচয় পত্র নং : </b>{{orders.customers.nidNo }}</li>
                            <!-- <li class="list-group-item"><b>Phone : </b>{{ orders.phone }}</li> -->
                            <li class="list-group-item"><b>Address : </b>{{ orders.address }}</li>
                            <li class="list-group-item"><b>ওয়ার্ড নং : </b>{{ orders.customers.wordNo }}</li>
                            <li class="list-group-item"><b>ব্লক : </b>{{ orders.customers.mouja }}</li>
                            <li class="list-group-item"><b>মৌজা : </b>{{ orders.customers.mouja }}</li>
                            <li class="list-group-item"><b>জমির পরিমাণ : </b>{{ orders.customers.landArea }}</li>
                            <li class="list-group-item"><b>Date : </b>{{ orders.date }}</li>
                      </ul>
                  </div>
                </div>
              </div>
            </div>


          </div>

          <div class="row mb-3">
            <!-- Table 3 -->
            <div class="col-xl-12 col-lg-12">
              <div class="card mb-4">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h5 class="m-0 font-weight-bold text-primary">বিক্রয়কৃত সারের বিবরন</h5>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table align-items-center table-flush">
                            <thead class="thead-light">
                                <tr>
                                    <th>সারের নাম</th>
                                    <th>সারের পরিমাণ (কেজি)</th>
                                    <th>দর</th>
                                    <th>টাকার পরিমাণ</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr v-for="product in JSON.parse(orders.Invoices)" :key="details.id">
                                    <td>{{ product.name }}</td>
                                    <td>{{ int_en_to_bn_fun(product.weight_quantity) }} কেজি</td>
                                    <td>{{ int_en_to_bn_fun(product.price) }} টাকা</td>
                                    <td>{{ (Number(product.weight_quantity)*Number(product.price)) }}</td>

                                </tr>

                                <tr >

                                    <td colspan="3" class="text-right">সর্বমোট টাকার পরিমাণ =</td>
                                    <td >{{ int_en_to_bn_fun((orders.totalAmount)) }} </td>

                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
              </div>
            </div>
          </div>
          <!--Row-->

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
            orders: {
                Invoices:JSON.stringify([]),
                address:"",
                created_at:"",
                customer_name:"",
                customers:{},
                date:"",
                id:null,
                total_amount:"",
                type:"",
                updated_at:"",

            },
            details: {},
			duepaymets: {},
			errors: {},
            previousDue:0,
            pramid:'',
            address:{
                district:'',
                thana:'',
                union:'',
            },
		}
	},

    mounted(){
        let id = this.$route.params.id;
        this.pramid = id;
        axios.get(`/api/invoice/${id}`)
            .then(({data}) => {
                
                this.orders = data
                this.districtsFun(data.customers.district);
                this.upazilasFun(data.customers.thana);
                this.unionsFun(data.customers.union);
            
            })
            .catch(console.log('error'))



    },

	computed: {
		// filtersearch(){
		// 	return this.products.filter(product => {
		// 		return product.product_name.match(this.searchTerm)
		// 	})
		// }
	},

	methods: {



        async districtsFun(id){
            var res = await this.callApi('get',`/api/districts?won_id=${id}`,[]);
            console.log(res.data.bn_name)
            this.address.district =  res.data.bn_name;
        },




        async upazilasFun(id){

            var res = await this.callApi('get',`/api/upazilas?won_id=${id}`,[]);
            this.address.thana =  res.data.bn_name;
        },



        async unionsFun(id){

            var res = await this.callApi('get',`/api/unions?won_id=${id}`,[]);
            this.address.union =  res.data.bn_name;
        },



	}
}
</script>

<style lang="css" scoped>
#image_size{
	height: 100px;
	width: 135px;
}
</style>
