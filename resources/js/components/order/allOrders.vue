<template>
	<div class="row justify-content-center">
		<div class="col-xl-12 col-lg-12 col-md-12">
			<div class="row">
				<div class="col-lg-12 mb-4">
					<!-- Simple Tables -->
					<div class="card">
						<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
							<h2 class="m-0 font-weight-bold text-primary">{{ headText }}</h2>
                            <div class="d-flex align-items-center">
                                <span>From: </span>  &nbsp;<input type="date" v-model="from" class="form-control"/> &nbsp; &nbsp; &nbsp;
                                <span>To: </span> &nbsp; <input type="date" v-model="to" class="form-control"/> &nbsp;
                                <button class="btn btn-info" @click="searchitems">Filter</button>
                            </div>
						</div>


                            <table-component :Table="Table" :sonod-type="$route.params.name" :sort-options-staus="sortstatus" :Filter="Filter"
                    :filter-on="FilterOn" :per-page="PerPage" :Items="items" :Fields="fields" :add-new="AddNew"
                    :per-page-data="PerPageData" :total-rows="TotalRows" :delete-route="deleteRoute"
                    :edit-route="editRoute" :application-route="applicationRoute" :view-route="viewRoute"
                    :approve-route="approveRoute" :pay-route="payRoute" :cancel-route="cancelRoute" :canceltext="canceltext"
                    :approve-type="approveType" :approve-data="approveData" :Tableloader="tableloader" @event-name="allOrder">
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
this.routerchange();

        this.fields =  [
                { key: 'customer_name', label: 'Name', sortable: true },
                { key: 'address', label: 'Address', sortable: true },
                { key: 'total_amount', label: 'Total Amount', sortable: true },
                { key: 'date', label: 'Date', sortable: true },
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
            viewRoute: 'InvoiceDetails',
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
            from: '',
            to: '',

            newDate: new Date(),
            unionsInfos: {
                payment_type:''
            },
            items: [],
            fields: [
                [
                { key: 'username', label: 'Username', sortable: true },
                { key: 'mobile', label: 'Phone', sortable: true },
                { key: 'statuses', label: 'Status' },
                { key: 'actions', label: 'Actions' },
            ]
            ],

			orders: [],
			searchTerm:""
		}
	},
    watch: {
        '$route': {
            handler(newValue, oldValue) {

                this.routerchange();

            },
            deep: true



        }
    },



	computed: {
		filtersearch(){
			return this.orders.filter(order => {
				return order.customer_name.match(this.searchTerm)
			})
		}
	},
	methods: {

        searchitems(){
            this.allOrder(this.from,this.to);
        },


        routerchange(){
            if(this.$route.params.type){
            var pType = this.$route.params.type;
            if(pType=='daily'){
                this.headText = 'দৈনিক বিক্রয় প্রতিবেদন';
                this.allOrder(User.dateformat()[0]);
            }else if(pType=='weakly'){
                this.headText = 'সাপ্তাহিক বিক্রয় প্রতিবেদন';


                console.log(User.dateformat(User.getPreviousDay(new Date(),7))[0])

                this.allOrder(User.dateformat(User.getPreviousDay(new Date(),7))[0],User.dateformat()[0]);

            }else if(pType=='monthly'){
                this.headText = 'মাসিক বিক্রয় প্রতিবেদন';
                this.allOrder(User.dateformat(User.getPreviousDay(new Date(),30))[0],User.dateformat()[0]);
            }else if(pType=='yearly'){
                this.headText = 'বাৎসরিক বিক্রয় প্রতিবেদন';
                this.allOrder(User.dateformat(User.getPreviousDay(new Date(),365))[0],User.dateformat()[0]);
            }else if(pType=='all'){

                this.headText = 'প্রতিবেদন';
                this.allOrder();
            }
        }
        },

		allOrder(from='',to=''){
            this.tableloader = true

            if(from!='' && to!==''){
                var ax = axios.get(`/api/invoice?from=${from}&to=${to}`)
            }else if(from!=''){
                var ax = axios.get(`/api/invoice?from=${from}`)
            }else{

                var ax = axios.get(`/api/invoice`)
            }


			ax.then(({data}) => {
                this.items = data


                    this.tableloader = false

            })
			.catch()
		}
	},
	mounted(){



	}
}
</script>

<style lang="css" scoped>
#img_size{
	width: 40px;
}
</style>
