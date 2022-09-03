let layout = require('./components/layouts/layout.vue').default;
let blank = require('./components/layouts/blank.vue').default;


let home = require('./components/home.vue').default;
let deller = require('./components/deller.vue').default;
let farmer = require('./components/farmer.vue').default;
// let reject = require('./components/reject.vue').default;
// let PageNotFound = require('./components/404.vue').default;


let prefix = '/'
export const routes = [
    { path:  `${prefix}`, component: home, name:'home',meta: { layout: layout } },
    { path:  `${prefix}deller/list`, component: deller, name:'deller',meta: { layout: layout } },
    { path:  `${prefix}farmer/list`, component: farmer, name:'farmer',meta: { layout: layout } },

    // { path: `${prefix}login`, component: login, name:'login',meta: { layout: blank } },
    // { path:  `${prefix}register`, component: register, name:'register',meta: { layout: layout } },
    // { path:  `${prefix}forget`, component: forget, name:'forget',meta: { layout: layout } },
    // { path:  `${prefix}contact`, component: contact, name:'contact',meta: { layout: layout } },
    // { path:  `${prefix}preview`, component: certificate, name:'certificate',meta: { layout: layout } },
    // { path:  `${prefix}verification/sonod/:id`, component: sonodVerify, name:'sonodVerify',meta: { layout: layout } },
    // { path:  `${prefix}sonod/search`, component: sonodsearch, name:'sonodsearch',meta: { layout: layout } },
    // { path:  `${prefix}application/:name`, component: application, name:'application',meta: { layout: layout } },
    // { path:  `${prefix}blogs/:name`, component: blogs, name:'blogs',meta: { layout: layout } },
    // { path:  `${prefix}blogs/read/:id`, component: blogread, name:'blogread',meta: { layout: layout } },
    // { path:  `${prefix}reject/:id`, component: reject, name:'reject',meta: { layout: layout } },

//   { path: "*", component: PageNotFound }

]

