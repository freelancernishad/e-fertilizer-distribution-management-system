<template>
    <div>
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">সারসংক্ষেপ</h1>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="./">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">
                    সারসংক্ষেপ
                </li>
            </ol>
        </div>
        <!-- <div class="row mb-3">

            <div class="col-md-12">
                <div class="card">
                    <div class="cord-body">
                        <div class="form-group pl-3">
                            <label for="">তারিখ</label>

                            <input type="date" class="form-control" v-model="date" @change="datechange"
                                style="width:200px">
                        </div>
                    </div>
                </div>

            </div>
        </div> -->


        <div class="row">

            <div class="col-md-6 row">
                <div class="col-md-12 text-center">


                    <div class="card h-100 boraddoHead uria">
                        <div class="card-body">
                            <div class="row align-items-center">
                                <div class="col mr-2">
                                    <h3 class="uriaText">ইউরিয়া</h3>
                                    <div class="text-xs font-weight-bold text-uppercase mb-1 uriaText">
                                        বরাদ্দকৃত সারের পরিমাণ
                                    </div>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800 uriaText">
                                        <span class="money"></span> {{ row.uriaBoraddo }}
                                    </div>

                                </div>

                            </div>
                        </div>
                    </div>






                </div>
                <div class="col-xl-6 col-md-6 mb-4">
                    <div class="card h-100 uria">
                        <div class="card-body">
                            <div class="row align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-uppercase mb-1 uriaText">
                                        বিক্রিত সারের পরিমাণ
                                    </div>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800 uriaText">
                                        <span class="money"></span> {{ row.uriaSell }}
                                    </div>
                                    <div class="mt-2 mb-0 text-muted text-xs">
                                        <!-- <span class="text-success mr-2"><i class="fa fa-arrow-up"></i>
                                        3.48%</span>
                                    <span>Since last month</span> -->
                                    </div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-calendar fa-2x text-white"></i>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

                <div class="col-xl-6 col-md-6 mb-4">
                    <div class="card h-100 uria">
                        <div class="card-body">
                            <div class="row align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-uppercase mb-1 uriaText">
                                        মজুদ সারের পরিমাণ
                                    </div>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800 uriaText">
                                        <span class="money"></span> {{ row.uriaMjud }}
                                    </div>
                                    <div class="mt-2 mb-0 text-muted text-xs">
                                        <!-- <span class="text-success mr-2"><i class="fa fa-arrow-up"></i>
                                        3.48%</span>
                                    <span>Since last month</span> -->
                                    </div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-calendar fa-2x text-white"></i>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>


            <div class="col-md-6 row">
                <div class="col-md-12 text-center">


                    <div class="card h-100 boraddoHead Dap">
                        <div class="card-body">
                            <div class="row align-items-center">
                                <div class="col mr-2">
                                    <h3 class="DapText">ডিএপি</h3>
                                    <div class="text-xs font-weight-bold text-uppercase mb-1 DapText">
                                        বরাদ্দকৃত সারের পরিমাণ
                                    </div>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800 DapText">
                                        <span class="money"></span> {{ row.DAPBoraddo }}
                                    </div>

                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 col-md-6 mb-4">
                    <div class="card h-100 Dap">
                        <div class="card-body">
                            <div class="row align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-uppercase mb-1 DapText">
                                        বিক্রিত সারের পরিমাণ
                                    </div>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800 DapText">
                                        <span class="money"></span> {{ row.DAPSell }}
                                    </div>
                                    <div class="mt-2 mb-0 text-muted text-xs">
                                        <!-- <span class="text-success mr-2"><i class="fa fa-arrow-up"></i>
                                        3.48%</span>
                                    <span>Since last month</span> -->
                                    </div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-calendar fa-2x text-white"></i>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

                <div class="col-xl-6 col-md-6 mb-4">
                    <div class="card h-100 Dap">
                        <div class="card-body">
                            <div class="row align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-uppercase mb-1 DapText">
                                        মজুদ সারের পরিমাণ
                                    </div>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800 DapText">
                                        <span class="money"></span> {{ row.DAPMjud }}
                                    </div>
                                    <div class="mt-2 mb-0 text-muted text-xs">
                                        <!-- <span class="text-success mr-2"><i class="fa fa-arrow-up"></i>
                                        3.48%</span>
                                    <span>Since last month</span> -->
                                    </div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-calendar fa-2x text-white"></i>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>


            <div class="col-md-6 row">
                <div class="col-md-12 text-center">




                    <div class="card h-100 boraddoHead Mop">
                        <div class="card-body">
                            <div class="row align-items-center">
                                <div class="col mr-2">
                                    <h3 class="MopText">এমওপি</h3>
                                    <div class="text-xs font-weight-bold text-uppercase mb-1 MopText">
                                        বরাদ্দকৃত সারের পরিমাণ
                                    </div>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800 MopText">
                                        <span class="money"></span> {{ row.MOPBoraddo }}
                                    </div>

                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 col-md-6 mb-4">
                    <div class="card h-100 Mop">
                        <div class="card-body">
                            <div class="row align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-uppercase mb-1 MopText">
                                        বিক্রিত সারের পরিমাণ
                                    </div>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800 MopText">
                                        <span class="money"></span> {{ row.MOPSell }}
                                    </div>
                                    <div class="mt-2 mb-0 text-muted text-xs">
                                        <!-- <span class="text-success mr-2"><i class="fa fa-arrow-up"></i>
                                        3.48%</span>
                                    <span>Since last month</span> -->
                                    </div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-calendar fa-2x text-white"></i>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

                <div class="col-xl-6 col-md-6 mb-4">
                    <div class="card h-100 Mop">
                        <div class="card-body">
                            <div class="row align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-uppercase mb-1 MopText">
                                        মজুদ সারের পরিমাণ
                                    </div>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800 MopText">
                                        <span class="money"></span> {{ row.MOPMjud }}
                                    </div>
                                    <div class="mt-2 mb-0 text-muted text-xs">
                                        <!-- <span class="text-success mr-2"><i class="fa fa-arrow-up"></i>
                                        3.48%</span>
                                    <span>Since last month</span> -->
                                    </div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-calendar fa-2x text-white"></i>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>


            <div class="col-md-6 row">
                <div class="col-md-12 text-center">



                    <div class="card h-100 boraddoHead Tsp">
                        <div class="card-body">
                            <div class="row align-items-center">
                                <div class="col mr-2">
                                    <h3 class="TspText">টিএসপি</h3>
                                    <div class="text-xs font-weight-bold text-uppercase mb-1 TspText">
                                        বরাদ্দকৃত সারের পরিমাণ
                                    </div>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800 TspText">
                                        <span class="money"></span> {{ row.TSPBoraddo }}
                                    </div>

                                </div>

                            </div>
                        </div>
                    </div>

                </div>
                <div class="col-xl-6 col-md-6 mb-4">
                    <div class="card h-100 Tsp">
                        <div class="card-body">
                            <div class="row align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-uppercase mb-1 TspText">
                                        বিক্রিত সারের পরিমাণ
                                    </div>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800 TspText">
                                        <span class="money"></span> {{ row.TSPSell }}
                                    </div>
                                    <div class="mt-2 mb-0 text-muted text-xs">
                                        <!-- <span class="text-success mr-2"><i class="fa fa-arrow-up"></i>
                                        3.48%</span>
                                    <span>Since last month</span> -->
                                    </div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-calendar fa-2x text-white"></i>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

                <div class="col-xl-6 col-md-6 mb-4">
                    <div class="card h-100 Tsp">
                        <div class="card-body">
                            <div class="row align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-uppercase mb-1 TspText">
                                        মজুদ সারের পরিমাণ
                                    </div>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800 TspText">
                                        <span class="money"></span> {{ row.TSPMjud }}
                                    </div>
                                    <div class="mt-2 mb-0 text-muted text-xs">
                                        <!-- <span class="text-success mr-2"><i class="fa fa-arrow-up"></i>
                                        3.48%</span>
                                    <span>Since last month</span> -->
                                    </div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-calendar fa-2x text-white"></i>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>







        </div>




        <div class="row">
            <div class="col-lg-12 mb-4">

                <!-- <vue-select class="vue-select1"  :options="yearsList" :model.sync="result1" >
        </vue-select> -->

                Search :
                <select v-model="year" id="select" @change="monthlybar" class="form-control">
                    <option value="">Select</option>
                    <option v-for="listy in yearsList">{{ listy }}</option>
                </select>
                <Bar :chart-options="chartOptions" :chart-data="chartData" :chart-id="chartId"
                    :dataset-id-key="datasetIdKey" :plugins="plugins" :css-classes="cssClasses" :styles="styles"
                    :width="width" :height="height" />
            </div>

            <div class="col-lg-12 mb-4">
                Search :
                <select v-model="monthname" id="select" @change="dailybar" class="form-control">
                    <option value="">Select</option>
                    <option v-for="(listm, index) in monthlist" :value="index">{{ listm }}</option>
                </select>
                <Bar :chart-options="chartOptions2" :chart-data="chartData2" :chart-id="chartId2"
                    :dataset-id-key="datasetIdKey2" :plugins="plugins2" :css-classes="cssClasses2" :styles="styles2"
                    :width="width2" :height="height2" />
            </div>
        </div>



        <!-- <div class="row">
            <div class="col-lg-6 mb-4">

                <div class="card">
                    <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                        <h2 class="m-0 font-weight-bold text-primary">
                            Stock Out Products
                        </h2>
                        <router-link to="/store-product" class="btn btn-primary float-right"
                            style="margin-top: 6px; margin-right: 6px">Add Product</router-link>
                    </div>
                    <div class="table-responsive">
                        <table class="table align-items-center table-flush">
                            <thead class="thead-light">
                                <tr>
                                    <th>Product Name</th>
                                    <th>Product Code</th>

                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr v-for="product in stockOutProducts" :key="product.id">
                                    <td>{{ product.product_name }}</td>
                                    <td>{{ product.product_code }}</td>

                                    <td v-if="product.product_quantity >= 1">
                                        <span class="badge badge-success">Available</span>
                                    </td>
                                    <td v-else="">
                                        <span class="badge badge-danger">Stock Out</span>
                                    </td>
                                    <td>
                                        <router-link :to="{
                                            name: 'editStock',
                                            params: { id: product.id },
                                        }" class="btn btn-sm btn-primary">Edit Stock</router-link>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="card-footer"></div>
                </div>
            </div>
            <div class="col-lg-6 mb-4">

                <div class="card">
                    <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                        <h2 class="m-0 font-weight-bold text-primary">
                            Date Expaired Products
                        </h2>
                        <router-link to="/store-product" class="btn btn-primary float-right"
                            style="margin-top: 6px; margin-right: 6px">Add Product</router-link>
                    </div>
                    <div class="table-responsive">
                        <table class="table align-items-center table-flush">
                            <thead class="thead-light">
                                <tr>
                                    <th>Product Name</th>
                                    <th>Product Code</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr v-for="product in expiredProducts" :key="product.id">
                                    <td>{{ product.product_name }}</td>
                                    <td>{{ product.product_code }}</td>


                                    <td>
                                        <span class="badge badge-danger">Expired</span>
                                    </td>
                                    <td>
                                       <router-link :to="{name: 'editProduct', params: {id: product.id}}" class="btn btn-sm btn-primary">Edit</router-link>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="card-footer"></div>
                </div>
            </div>
        </div> -->
    </div>
</template>
<script>
export default {
    name: "home",
    created() {
        if (!User.loggedIn()) {
            this.$router.push({ name: "/" });
        }

        this.allReport();

    },
    props: {
        chartId: {
            type: String,
            default: "bar-chart",
        },
        datasetIdKey: {
            type: String,
            default: "label",
        },
        width: {
            type: Number,
            default: 400,
        },
        height: {
            type: Number,
            default: 300,
        },
        cssClasses: {
            default: "",
            type: String,
        },
        styles: {
            type: Object,
            default: () => { },
        },
        plugins: {
            type: Object,
            default: () => { },
        },
        chartId2: {
            type: String,
            default: "bar-chart2",
        },
        datasetIdKey2: {
            type: String,
            default: "label2",
        },
        width2: {
            type: Number,
            default: 400,
        },
        height2: {
            type: Number,
            default: 300,
        },
        cssClasses2: {
            default: "",
            type: String,
        },
        styles2: {
            type: Object,
            default: () => { },
        },
        plugins2: {
            type: Object,
            default: () => { },
        },
    },
    data() {
        return {
            todaySells: "",
            income: "",
            due: "",
            expense: "",
            totalStock: "",
            totalStockAmount: "",
            stockOutProducts: {},
            expiredProducts: {},
            newdata: new Date(),
            year: "",
            month: "",
            date: "",
            start: "",
            end: "",
            yeard: "",
            dated: "",
            startd: "",
            endd: "",
            monthname: "",
            yearsList: [],
            monthlist: [],
            row: {},
            chartData: {
                labels: [
                    "January",
                    "February",
                    "March",
                    "April",
                    "May",
                    "June",
                    "July",
                    "August",
                    "September",
                    "October",
                    "November",
                    "December",
                ],
                datasets: [],
            },
            chartOptions: {
                responsive: true,
                maintainAspectRatio: false,
            },
            chartData2: {
                labels: [
                    "January",
                    "February",
                    "March",
                    "April",
                    "May",
                    "June",
                    "July",
                    "August",
                    "September",
                    "October",
                    "November",
                    "December",
                ],
                datasets: [],
            },
            chartOptions2: {
                responsive: true,
                maintainAspectRatio: false,
            },
            monthdays : ''
        };
    },
    mounted() {
              this.date = User.dateformat()[0];
        this.monthname = this.newdata.getMonth();
this.countmonth();
        this.todaySell();
        this.todayIncome();
        this.todayDue();
        this.expenses();
        this.totalStocks();
        this.totalStockAmounts();
        this.stockOutProduct();


        this.expiredProduct();
        this.monthlybar();
        this.dailybar();
        this.yearslist();
        this.monthslist();
        //   $('#select').select2();

    },
    methods: {
        countmonth(){
         const date = new Date();

        var count =  new Date(
            date.getFullYear(),
            this.monthname + 1,
            0
        ).getDate();
        // console.log(count)
        this.monthdays = count
        },


        datechange(){

            this.todaySell();
            this.todayIncome();
            this.todayDue();
            this.expenses();

        },

        allReport() {

            var role = localStorage.getItem('role');
            if(role=='diller'){
                var dillerId = localStorage.getItem('dillerId');
            }else{
                var dillerId = '';
            }

            axios
                .get(`/api/all/report?dillerId=${dillerId}`)
                .then(({ data }) => (this.row = data))
                .catch();
        },

        todaySell() {
            axios
                .get(`/api/today/sell?date=${this.date}`)
                .then(({ data }) => (this.todaySells = data))
                .catch();
        },
        todayIncome() {
            axios
                .get(`/api/today/income?date=${this.date}`)
                .then(({ data }) => (this.income = data))
                .catch();
        },
        todayDue() {
            axios
                .get(`/api/today/due?date=${this.date}`)
                .then(({ data }) => (this.due = data))
                .catch();
        },
        expenses() {
            axios
                .get(`/api/total/expense?date=${this.date}`)
                .then(({ data }) => (this.expense = data))
                .catch();
        },

        totalStocks() {
            axios
                .get("/api/total/totalStock")
                .then(({ data }) => (this.totalStock = data))
                .catch();
        },

        totalStockAmounts() {
            axios
                .get("/api/total/totalStockAmount")
                .then(({ data }) => (this.totalStockAmount = data))
                .catch();
        },
        stockOutProduct() {
            axios
                .get("/api/stockout/product")
                .then(({ data }) => (this.stockOutProducts = data))
                .catch();
        },
        expiredProduct() {
            axios
                .get("/api/products/expired")
                .then(({ data }) => (this.expiredProducts = data.data))
                .catch();
        },
        monthlybar() {
            // console.log(this.year=)
            // this.start = this.newdata.getFullYear()+'-'+this.newdata.getMonth()+'-'+this.newdata.getDate();
            this.start = this.newdata.getFullYear() + "-1-1";
            this.end = this.newdata.getFullYear() + "-12-"+this.monthdays;
            if (this.year == "") {
                this.year = this.newdata.getFullYear();
            }
            axios
                .get(
                    "/api/monthly/bar?start=" +
                    this.start +
                    "&end=" +
                    this.end +
                    "&year=" +
                    this.year
                )
                .then(({ data }) => {
                    this.chartData.datasets = [data.reports2, data.reports];
                    //   console.log(this.chartData.datasets)
                })
                .catch();
        },
        dailybar() {
            var monthd = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];

this.countmonth()

            this.startd =
                this.newdata.getFullYear() +
                "-" +
                monthd[this.monthname] +
                "-1";
            this.endd =
                this.newdata.getFullYear() +
                "-" +
                monthd[this.monthname] +
                "-"+this.monthdays;
            this.yeard = this.newdata.getFullYear();
            axios
                .get(
                    "/api/daily/bar?start=" +
                    this.startd +
                    "&end=" +
                    this.endd +
                    "&year=" +
                    this.yeard
                )
                .then(({ data }) => {
                    this.chartData2.datasets = [data.reports];
                    this.chartData2.labels = data.allmonth;
                    //  console.log(this.chartData2.labels);
                    // if(this.monthname==''){

                    //     this.monthname = this.newdata.getMonth();
                    // }
                })
                .catch();
        },

        yearslist() {

            axios
                .get("api/years/list?type=year")
                .then(({ data }) => {
                    // console.log(data);
                    this.yearsList = data;
                })
                .catch();
        },
        monthslist() {

            axios
                .get("api/years/list?type=month")
                .then(({ data }) => {
                    // console.log(data);
                    this.monthlist = data;
                })
                .catch();
        },
    },
};





</script>
<style lang="css" scoped>
#img_size {
    width: 40px;
}
</style>
