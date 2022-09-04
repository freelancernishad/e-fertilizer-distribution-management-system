<template>
	<div class="row justify-content-center">
		<div class="col-xl-12 col-lg-12 col-md-12">
			<div class="row">
				<div class="col-lg-12 mb-4">
					<!-- Simple Tables -->
					<div class="card">
						<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
							<h2 class="m-0 font-weight-bold text-primary"> বিক্রয়কৃত রশিদের তালিকা</h2>
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

        this.fields =  [
                { key: 'customer_name', label: 'ক্রেতার নাম', sortable: true },
                { key: 'address', label: 'ঠিকানা', sortable: true },
                { key: 'totalProduct', label: 'সারের পরিমাণ', sortable: true,
                formatter: (value, key, item) => {
                   return this.int_en_to_bn_fun(value)+' কেজি';
                 }
                },
                { key: 'total_amount', label: 'মোট দাম', sortable: true,
                formatter: (value, key, item) => {
                   return this.int_en_to_bn_fun(value)+' টাকা';
                 }
                },
                { key: 'date', label: 'তারিখ', sortable: true,

                formatter: (value, key, item) => {
                   return this.int_en_to_bn_fun(value);
                 }
             },
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
            Type: '',
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
	computed: {
		filtersearch(){
			return this.orders.filter(order => {
				return order.customer_name.match(this.searchTerm)
			})
		}
	},
	methods: {
		allOrder(){
            this.tableloader = true;
			axios.get(`/api/invoice`)
			.then(({data}) => {
                this.items = data
                this.tableloader = false;
            })
			.catch()
		}
	},
	mounted(){
		this.allOrder();
	}
}
</script>

<style lang="css" scoped>
#img_size{
	width: 40px;
}
</style>
