<template>
	<div class="row justify-content-center">
		<div class="col-xl-12 col-lg-12 col-md-12">
			<div class="row">
				<div class="col-lg-12 mb-4">
					<!-- Simple Tables -->
					<div class="card">


						<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">

							<h2 class="m-0 font-weight-bold text-primary">মজুদ শেষ</h2>

                            <select v-model="search" class="form-control float-right"  v-show="$localStorage.getItem('role')!='diller'" style="width:200px" @change="filterdeller">
                                <option value="">নির্বাচন করুন</option>
                                <option v-for="dd in dellers" :value="dd.dillerId">{{ dd.organization }}</option>
                            </select>
		<!-- <router-link to="/store-product" class="btn btn-primary float-right" style="margin-top: 6px;margin-right: 6px;">Add Product</router-link> -->

						</div>



                        <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                            <div></div>
							<a href="/product/export" class="btn btn-danger float-right" style="margin-top: 6px;margin-right: 6px;">Export Products</a>
						</div>


                        <table-component :Table="Table" :sonod-type="$route.params.name" :sort-options-staus="sortstatus" :Filter="Filter"
                    :filter-on="FilterOn" :per-page="PerPage" :Items="items" :Fields="fields" :add-new="AddNew"
                    :per-page-data="PerPageData" :total-rows="TotalRows" :delete-route="deleteRoute"
                    :edit-route="editRoute" :application-route="applicationRoute" :view-route="viewRoute"
                    :approve-route="approveRoute" :pay-route="payRoute" :cancel-route="cancelRoute" :canceltext="canceltext"
                    :approve-type="approveType" :approve-data="approveData" :Tableloader="tableloader" @event-name="allProduct">
                </table-component>






                        </div>
					</div>
				</div>
			</div>
		</div>
<!--
<paginate
  name="languages"
  :list="langs"
  :per="2"
>
  <li v-for="lang in paginated('languages')">
    {{ lang }}
  </li>
</paginate> -->


    <!-- <b-modal  v-model="modalShow"><barcode id="print" :value="barcodeid">Show this if the rendering fails.</barcode>

     <b-button color="green darken-1"  @click="print()">Print</b-button>
    </b-modal> -->

	</div>
</template>

<script>
export default {

	created(){
		if (!User.loggedIn()) {
			this.$router.push({name: '/'})
		}

        this.fields = [];

if(localStorage.getItem('role')!='diller'){
this.fields.push({ key: 'Dellars', label: 'প্রতিষ্ঠানের নাম',

    formatter: (value, key, item) => {
               return item.dellars.organization;
        }
});
}

this.fields.push(

        { key: 'category_name', label: 'সারের নাম', sortable: true },

        // { key: 'price', label: 'সারের মূল্য (প্রতি কেজি) [ সরকার কর্তৃক নির্ধারিত ]', sortable: true,
        //         formatter: (value, key, item) => {
        //            return this.int_en_to_bn_fun(value)+' টাকা';
        //          }

        //         },

                { key: 'product_quantity', label: 'সারের পরিমাণ', sortable: true,
                formatter: (value, key, item) => {
                   return this.int_en_to_bn_fun(value)+' কেজি';
                    // var qty= item.product_quantity.toString().split(".");
                    // if(qty.length==2){
                    //     return qty[0]+' বস্তা '+('.'+qty[1])*50+' কেজি';
                    // }else{
                    //     return item.product_quantity+'বস্তা';
                    // }



                    } },

)
            // this.fields.push( { key: 'actions', label: 'Actions' });

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
            viewRoute: 'editProduct',
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



			products: [],
			allitems: {},
			searchTerm:"",
            barcodeValue: 'test',
            modalShow: false,
            barcodeid: '',
             timeout: null,
             todaydate: null,
             search: '',
             dellers:{},

		}
	},
	computed: {
		filtersearch(){
			return this.products.filter(product => {
                // console.log(product)
				return product.product_name.match(this.searchTerm)
			})
		}
	},
	methods: {

    print(id) {
      var prtContent = document.getElementById(id);
      var WinPrint = window.open('', '', 'left=0,top=0,width=800,height=900,toolbar=0,scrollbars=0,status=0');
      WinPrint.document.write(prtContent.innerHTML);
      WinPrint.document.close();
      WinPrint.focus();
      WinPrint.print();
    //   WinPrint.close();
    },

        barcodesownload(id){
           this.barcodeid = id
             this.modalShow = true
        },

        filterdeller(){
            this.allProduct(this.search);
        },

		allProduct(search=''){
            this.tableloader = true

            if(search){
                var dillerId = search
            }else{
            var role = localStorage.getItem('role');
            if(role=='diller'){
                var dillerId = localStorage.getItem('dillerId');
            }else{
                var dillerId = '';
            }
        }

			axios.get(`/api/products/stockcheck?product_quantity=0&dillerId=${dillerId}`)
			.then(({data}) => {
                this.items = data
                this.tableloader = false
            })
			.catch()
		},

		searchData(page){


            // clear timeout variable
            clearTimeout(this.timeout);

            this.timeout = setTimeout( ()=> {


                if (typeof page === 'undefined') {
                     page = 1;
                 }
                 axios.get(`/api/products/search?filter[product_name]=${this.searchTerm}`)
                 .then(({data}) => {

                     this.products = data
                     this.allitems = data
                     //  console.log(this.products)
                 })
                 .catch()

            }, 300);


		},




		deleteProduct(id){
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
					axios.delete('/api/product/' + id)
						 .then(() => {
                               Notification.customdelete('Product Deleted');
                               this.allProduct();
						 	this.products = this.products.filter(product => {
						 		return product.id != id
						 	})
						 })
						 .catch(() => {
						 	this.$router.push({name: 'product'})
						 })

				}
			})
		},

		allDeler(){

            axios.get('/api/user?type=diller')
            .then(({data}) => {
                this.dellers = data


            })
            .catch()
            },

	},
	mounted(){
		this.allProduct();
        this.allDeler();
	}
}
</script>

<style lang="css" scoped>
#img_size{
	width: 40px;
}
th,td {
    font-size: 12px;
        padding: 4px 7px !important;
}



</style>
