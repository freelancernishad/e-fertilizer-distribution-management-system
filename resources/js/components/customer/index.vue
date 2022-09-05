<template>
	<div class="row justify-content-center">
		<div class="col-xl-12 col-lg-12 col-md-12">
			<div class="row">
				<div class="col-lg-12 mb-4">
					<!-- Simple Tables -->
					<div class="card">





						<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">

							<h2 class="m-0 font-weight-bold text-primary">কৃষক তালিকা</h2>


							<router-link to="/store-customer" class="btn btn-primary float-right" style="margin-top: 6px;margin-right: 6px;">Add Customer</router-link>
						</div>




                        <table-component :Table="Table" :sonod-type="$route.params.name" :sort-options-staus="sortstatus" :Filter="Filter"
                    :filter-on="FilterOn" :per-page="PerPage" :Items="items" :Fields="fields" :add-new="AddNew"
                    :per-page-data="PerPageData" :total-rows="TotalRows" :delete-route="deleteRoute"
                    :edit-route="editRoute" :application-route="applicationRoute" :view-route="viewRoute"
                    :approve-route="approveRoute" :pay-route="payRoute" :cancel-route="cancelRoute" :canceltext="canceltext"
                    :approve-type="approveType" :approve-data="approveData" :Tableloader="tableloader" @event-name="allCustomer">
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


										// <td>{{ customer.vill+', '+customer.union+', '+customer.thana+', '+customer.district }}</td>

        this.fields =  [
                { key: 'photo', label: 'ছবি', sortable: true },
                { key: 'name', label: 'নাম', sortable: true },
                { key: 'phone', label: 'মোবাইল', sortable: true },
                { key: 'nidNo', label: 'এন.আই.ডি নং', sortable: true },
                { key: 'fatherName', label: 'পিতার নাম', sortable: true },

                // { key: 'vill', label: 'ঠিকানা', sortable: true,
                // formatter: async (value, key, item) => {
                //     var district = await this.callApi('get',`/api/districts?id=${item.district}`,[]);
                //     var thana = await this.callApi('get',`/api/upazilas?id=${item.thana}`,[]);
                //     var union = await this.callApi('get',`/api/unions?id=${item.union}`,[]);
                //     return district.data;

                //        return value.category_name
                //     }


                // },
                { key: 'wordNo', label: 'ওয়ার্ড', sortable: true },
                { key: 'Block', label: 'ব্লক', sortable: true },
                { key: 'landArea', label: 'জমির পরিমাণ', sortable: true },
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
            editRoute: '',
            applicationRoute: '/document',
            viewRoute: 'editCustomer',
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

			orders: [],


			customers: [],
			searchTerm:"",
			type:"Local",
               timeout: null,
		}
	},
	computed: {
		filtersearch(){
			return this.customers.filter(customer => {
				return customer.phone.match(this.searchTerm)
			})
		}
	},
	methods: {

		allCustomer(){
            this.tableloader = true


            var role = localStorage.getItem('role');
            if(role=='admin'){
                var dillerId = '';
            }else{
                var dillerId = localStorage.getItem('dillerId');
            }

			axios.get(`/api/customer?type=${this.type}&dillerId=${dillerId}`)
			.then(({data}) => {
                this.items = data
                this.tableloader = false

            })
			.catch()
		},


		searchData(){
            // clear timeout variable
            clearTimeout(this.timeout);

            this.timeout = setTimeout( ()=> {



                 axios.get('/api/customers/search?data=' + this.searchTerm)
                 .then(({data}) => {

                     this.customers = data
                    //  this.allitems = data
                     //  console.log(this.products)
                 })
                 .catch()

            }, 300);

		},


        totaldue(id){
			axios.get('/api/customer/due/'+id)
			.then(({data}) => {
// console.log(data);
document.getElementById('due'+id).innerHTML=data

if(data==0){

    document.getElementById('button'+id).style.display='none'
}

            })
			.catch()
		},

		deleteCustomer(id){
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
					axios.delete('/api/customer/' + id)
						 .then(() => {
						 	this.customers = this.customers.filter(customer => {
						 		return customer.id != id
						 	})
						 })
						 .catch(() => {
						 	this.$router.push({name: 'customer'})
						 })

					Swal.fire(
						'Deleted!',
						'Your file has been deleted.',
						'success'
						)
				}
			})
		}
	},
	mounted(){
		this.allCustomer();
	}
}
</script>

<style lang="css" scoped>
#img_size{
	width: 40px;
}
</style>
