<template>
  <div>

    <div class="row w-full mt-4 p-10">


        <div class="col-md-6">
            <div class="form-group">
                <label for="">ক্রেতা/কৃষকের নাম ও ঠিকানা</label>


 <Select2 v-model="form.pos"  :options="customers" :settings="{ placeholder: 'নির্বাচন করুন' }"   @change="posidchange($event)"/>

            </div>
        </div>



        <!-- <div class="col-md-6">
            <div class="form-group">
                <label for="">ধরণ</label>
                <select  v-model="form.type" class="form-control">
                    <option value="">Select</option>
                    <option>কেনা</option>
                    <option>বেচা</option>
                </select>
            </div>
        </div> -->


        <div class="col-md-6">
            <div class="form-group">
                <label for="">তারিখ</label>
                <input type="date" class="form-control" v-model="form.date">
            </div>
        </div>

<div class="col-md-12">
        <div class="table-responsive">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th width="200px">নাম</th>
                        <th>সারের পরিমাণ (কেজি)</th>
                        <th>দর</th>
                        <th>টাকার পরিমাণ</th>
                        <th><button type="button" class="flex justify-start ml-2 rounded-md border px-3 py-2 bg-pink-600 text-white" @click="addMore()">Add More</button></th>
                    </tr>
                </thead>

                <tbody>
                    <tr  v-for="(Invoice, index) in form.Invoices" :key="index">
                        <td >
                            <Select2 v-model="categ[index]"  :options="categorys" :settings="{ placeholder: 'নির্বাচন করুন' }" @change="getFullDetails($event,index)" />

                            <!-- <input v-model="Invoice.name" placeholder="প্রোডাক্ট এর নাম" class="form-control w-full py-2 border border-indigo-500 rounded"/> -->
                            </td>
                        <td><input type="number" v-model="Invoice.weight_quantity" placeholder="সারের পরিমাণ লিখুন" class="form-control w-full py-2 border border-indigo-500 rounded" min="0"  step="5"/></td>
                        <td><input type="number" v-model="Invoice.price" placeholder="একক দর" class="form-control w-full py-2 border border-indigo-500 rounded" min="0" step="5" readonly v-on=""/></td>
                        <td><input type="number" v-model="Invoice.price*Invoice.weight_quantity" placeholder="মোট দাম" class="form-control w-full py-2 border border-indigo-500 rounded" readonly/></td>

                        <td><button type="button" class="ml-2 rounded-md border px-3 py-2 bg-red-600 text-white" @click="remove(index)" v-show="index != 0">Remove</button></td>
                    </tr>

                    <tr>
                        <td colspan="2"></td>
                        <td>সর্বমোট টাকার পরিমাণ = </td>
                        <td colspan="2" class="text-left">{{ form.totalAmount }}</td>
                    </tr>

                </tbody>


            </table>


        </div>

</div>

    <div class="col-md-9"></div>

    <div class="col-md-3" style="display: flex;justify-content: end;">
        <button class="btn btn-success" @click="formsubmit">Create Invoice</button>
    </div>




    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
        customers:[],
        categorys:[],
        categ:{},
        form:{
            totalProduct: 0,
            totalAmount: 0,
            pos:'',
            customer_name:null,
            address:null,
            date:null,
            type:'কেনা',
            Invoices: [
                    {
                    name: "",
                    weight_quantity: "",
                    price: "",
                    },
                ],
        },

    };
  },
  updated() {
    var total = 0;
    var totalProduct = 0;

    this.form.Invoices.forEach(value => {
        total += value.price*value.weight_quantity;
        totalProduct += Number(value.weight_quantity);
        // console.log(value.price)
        // console.log(value.weight_quantity)
    });

    this.form.totalAmount = total;
    this.form.totalProduct = totalProduct;
    // console.log(totalamount);
  },
  methods: {

        allCustomers() {

            var role = localStorage.getItem('role');
            if(role=='admin'){
                var dillerId = '';
            }else{
                var dillerId = localStorage.getItem('dillerId');
            }


            axios.get(`/api/customer?type=input&dillerId=${dillerId}`)
                .then(({ data }) => (this.customers = data))
                .catch();



            axios.get(`/api/product?type=input&dillerId=${dillerId}`)
                .then(({ data }) => (this.categorys = data))
                .catch();



        },


        getFullDetails(event,index) {
            // console.log(event)
               axios.get("/api/category/"+event)
                .then(({ data }) => {
                    this.form.Invoices[index].name=data.category_name
                    this.form.Invoices[index].price=data.price
                    // console.log(data)
                })
                .catch();
        },
            posidchange() {
            if (this.form.pos != "") {

            }
        },
    formsubmit(){
        this.form['dillerId'] = localStorage.getItem('dillerId');

        axios.post(`/api/invoice/create`,this.form).then(({data})=>{

                this.$router.push({
                    name: "Invoice_sell"
                });

        }).catch()
    },


    addMore() {
      this.form.Invoices.push({
        name: "",
        weight_quantity: "",
        price: "",
      });
    },
    remove(index) {
      this.form.Invoices.splice(index, 1);
    },

    formatPrice(value) {
        let val = (value/1).toFixed(2).replace('.', ',')
        return val.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".")
    }
  },
  mounted() {
    this.allCustomers();
  }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

.bg-pink-600 {
    --tw-bg-opacity: 1;
    background-color: rgba(219,39,119,var(--tw-bg-opacity));
}
.bg-red-600 {
    --tw-bg-opacity: 1;
    background-color: rgba(220,38,38,var(--tw-bg-opacity));
}
span.select2.select2-container.select2-container--default.select2-container--above {
    width: 175px !important;
}
</style>
