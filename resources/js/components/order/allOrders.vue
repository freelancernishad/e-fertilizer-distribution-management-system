<template>
    <div class="row justify-content-center">
        <div class="col-xl-12 col-lg-12 col-md-12">
            <div class="row">
                <div class="col-lg-12 mb-4">
                    <!-- Simple Tables -->

                    <div class="card">
                        <div class="card-header">
                            <h2 class="m-0 font-weight-bold text-primary">{{ headText }}</h2>

                        </div>
                        <div class="card-header py-3 ">
                            <div class="row">
                                <div class="col-md-4">
                                    <span>Delar: </span> &nbsp;<select v-model="search" class="form-control float-right"
                                        v-show="$localStorage.getItem('role')!='diller'">
                                        <option value="">নির্বাচন করুন</option>
                                        <option v-for="dd in dellers" :value="dd.dillerId">{{ dd.organization }}
                                        </option>
                                    </select>
                                </div>
                                <div class="col-md-4">

                                    <span>From: </span> &nbsp;<input type="date" v-model="from" class="form-control" />
                                    &nbsp; &nbsp; &nbsp;
                                </div>
                                <div class="col-md-4">

                                    <span>To: </span> &nbsp; <input type="date" v-model="to" class="form-control" />
                                    &nbsp;
                                </div>
                                <div class="col-md-4">
                                    <button class="btn btn-info" @click="searchitems">Filter</button>
                                </div>

                            </div>
                        </div>


                        <table-component :Table="Table" :sonod-type="$route.params.name"
                            :sort-options-staus="sortstatus" :Filter="Filter" :filter-on="FilterOn" :per-page="PerPage"
                            :Items="items" :Fields="fields" :add-new="AddNew" :per-page-data="PerPageData"
                            :total-rows="TotalRows" :delete-route="deleteRoute" :edit-route="editRoute"
                            :application-route="applicationRoute" :view-route="viewRoute" :approve-route="approveRoute"
                            :pay-route="payRoute" :cancel-route="cancelRoute" :canceltext="canceltext"
                            :approve-type="approveType" :approve-data="approveData"  :invoice-route="InvoiceRoute" :Tableloader="tableloader"
                            @event-name="allOrder">
                        </table-component>



                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {

    created() {
        if (!User.loggedIn()) {
            this.$router.push({ name: '/' })
        }
        this.routerchange();
        this.fields = [];
        if (localStorage.getItem('role') != 'diller') {
            this.fields.push({
                key: 'Dellars', label: 'প্রতিষ্ঠানের নাম',

                formatter: (value, key, item) => {
                    return item.dellars.organization;
                }
            });
        }

        this.fields.push(
            { key: 'customer_name', label: 'Name', sortable: true },
            { key: 'address', label: 'Address', sortable: true },
            { key: 'total_amount', label: 'Total Amount', sortable: true },
            { key: 'date', label: 'Date', sortable: true },
        )
        this.fields.push({ key: 'actions', label: 'Actions' });

    },

    data() {
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
            InvoiceRoute: '/invoice',
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
                payment_type: ''
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
            searchTerm: "",
            search: '',
            dellers: {},
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
        filtersearch() {
            return this.orders.filter(order => {
                return order.customer_name.match(this.searchTerm)
            })
        }
    },
    methods: {

        searchitems() {
            this.allOrder(this.from, this.to, this.search);
        },


        routerchange() {
            if (this.$route.params.type) {
                var pType = this.$route.params.type;
                if (pType == 'daily') {
                    this.headText = 'দৈনিক বিক্রয় প্রতিবেদন';
                    this.allOrder(User.dateformat()[0]);
                } else if (pType == 'weakly') {
                    this.headText = 'সাপ্তাহিক বিক্রয় প্রতিবেদন';


                    console.log(User.dateformat(User.getPreviousDay(new Date(), 7))[0])

                    this.allOrder(User.dateformat(User.getPreviousDay(new Date(), 7))[0], User.dateformat()[0]);

                } else if (pType == 'monthly') {
                    this.headText = 'মাসিক বিক্রয় প্রতিবেদন';
                    this.allOrder(User.dateformat(User.getPreviousDay(new Date(), 30))[0], User.dateformat()[0]);
                } else if (pType == 'yearly') {
                    this.headText = 'বাৎসরিক বিক্রয় প্রতিবেদন';
                    this.allOrder(User.dateformat(User.getPreviousDay(new Date(), 365))[0], User.dateformat()[0]);
                } else if (pType == 'all') {

                    this.headText = 'প্রতিবেদন';
                    this.allOrder();
                }
            }
        },

        // filterdeller(){
        //     this.allProduct('','',this.search);
        // },
        allOrder(from = '', to = '', search = '') {
            this.tableloader = true
            if (search) {
                var dillerId = search
            } else {
                var role = localStorage.getItem('role');
                if (role == 'diller') {
                    var dillerId = localStorage.getItem('dillerId');
                } else {
                    var dillerId = '';
                }
            }

            if (from != '' && to !== '') {
                var ax = axios.get(`/api/invoice?from=${from}&to=${to}&dillerId=${dillerId}`)
            } else if (from != '') {
                var ax = axios.get(`/api/invoice?from=${from}&dillerId=${dillerId}`)
            } else {

                var ax = axios.get(`/api/invoice?dillerId=${dillerId}`)
            }


            ax.then(({ data }) => {
                this.items = data


                this.tableloader = false

            })
                .catch()
        },


        allDeler() {

            axios.get('/api/user?type=diller')
                .then(({ data }) => {
                    this.dellers = data


                })
                .catch()
        },

    },
    mounted() {

        this.allDeler();

    }
}
</script>

<style lang="css" scoped>
#img_size {
    width: 40px;
}
</style>
