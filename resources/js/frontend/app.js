require('../bootstrap');

import Vue from 'vue'
// import * as Vue from 'vue'
// import * as Vue from "vue";
// import pagination from "vuejs-uib-pagination";

// Vue.use(pagination);



import VueRouter from 'vue-router'
Vue.use(VueRouter)


// import VueQRCodeComponent from 'vue-qrcode-component'
// Vue.component('qr-code', VueQRCodeComponent)

// import VueBarcode from 'vue-barcode';
// Vue.component('barcode', VueBarcode)


// import { BButton, BCol, BContainer, BFormGroup, BFormInput, BInputGroup, BInputGroupAppend, BModal, BPagination, BRow, BTable } from 'bootstrap-vue'
// Vue.component('b-modal', BModal)
// Vue.component('b-button', BButton)
// Vue.component('b-table', BTable)
// Vue.component('b-container', BContainer)
// Vue.component('b-row', BRow)
// Vue.component('b-col', BCol)
// Vue.component('b-form-group', BFormGroup)
// Vue.component('b-input-group', BInputGroup)
// Vue.component('b-form-input', BFormInput)
// Vue.component('b-input-group-append', BInputGroupAppend)
// Vue.component('b-pagination', BPagination)


// import 'bootstrap-vue/dist/bootstrap-vue.css'




// window.ASSETURL = '/public/';
// window.ASSETURL = '/';

// Router Imported
import {routes} from './routes';

// Import helper class
import User from '../helpers/User';
window.User = User

// import Noty from "noty";
// new Noty({
//     text: "Notification text"
//   }).show();
// Import Notification class
import Notification from '../helpers/Notification';
window.Notification = Notification

// import { Bar } from 'vue-chartjs'
// import { Bar } from 'vue-chartjs/legacy'
// import { Chart as ChartJS, Title, Tooltip, Legend, BarElement, CategoryScale, LinearScale } from 'chart.js'

// ChartJS.register(Title, Tooltip, Legend, BarElement, CategoryScale, LinearScale)

// Vue.component('Bar', Bar);

//Sweet alert 2 end
// import Select2 from 'v-select2-component';

// Vue.component('Select2', Select2);

// import vueselect from 'vue-select2';

// Vue.component('vue-select', vueselect)


// Vue.component('pagination', require('laravel-vue-semantic-ui-pagination'));
import store from '../store'
import UnionSelect from './components/layouts/unonselect.vue'
Vue.component('UnionSelect', UnionSelect);

import SideBar from './components/layouts/SideBar.vue'
Vue.component('SideBar', SideBar);



// import tablecom from '../table.vue'
// Vue.component('TableComponent', tablecom);

//Swee alert 2 start
import Swal from 'sweetalert2'
window.Swal = Swal;
const Toast = Swal.mixin({
  toast: true,
  position: 'top-end',
  showConfirmButton: false,
  timer: 3000,
  timerProgressBar: true,
  didOpen: (toast) => {
    toast.addEventListener('mouseenter', Swal.stopTimer)
    toast.addEventListener('mouseleave', Swal.resumeTimer)
  }
});
window.Toast = Toast;
//Sweet alert 2 end

import loader from "vue-ui-preloader";

Vue.use(loader);

window.Reload = new Vue();

const router = new VueRouter({
  routes,
  mode: 'history'
})

const app = new Vue({
    el: '#app',
    router,
    store
});
