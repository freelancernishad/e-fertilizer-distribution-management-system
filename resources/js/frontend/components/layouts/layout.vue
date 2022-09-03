<template>
    <div>
        <div class="container p-0">
            <header>
                <div class="topHeader">
                    <div class="row">
                        <div class="topheaderItem col-md-6 col-6"><span>ডিজিটাল সার ব্যবস্থাপনা সিস্টেমে স্বাগতম</span></div>
                        <div class="topheaderItem col-md-6 col-6 text-right"><span
                                style="border-right: 1px solid #ffffff85; padding: 8px 10px;margin-right: 9px;">{{
                                        curentdate
                                }}
                            </span>
                            <!-- <span style="border-right: 1px solid #ffffff85; padding: 8px 10px;margin-right: 9px;">{{ curenttime }}</span> -->
                            <!-- <span style="">Visitors : {{ visitors }}</span> -->
                        </div>
                    </div>
                </div>
                <div class="middleHeader ">
                    <div class="row">
                        <div class="middleHeaderItem col-md-6 mt-3 mb-3">
                            <router-link :to="{ name: 'home' }">
                                <img width="50%" :src="$asseturl + 'assets/img/logo.png'" alt="">
                            </router-link>
                        </div>
                        <div class="middleHeaderItem col-md-6 mb-3">
                            <h3 class="searchHeader defaltColor">উপজেলা নির্বাচন করুন </h3>
                            <union-select />
                        </div>
                    </div>
                </div>
                <nav class="">
                    <div class="row">
                        <div class="col-md-12 pcnav" id="mainMenu">
                            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                                <!-- <a class="navbar-brand" href="#">Navbar</a> -->
                                <button class="navbar-toggler  text-white" style="color:white !important" type="button"
                                    data-toggle="collapse" data-target="#navbarSupportedContent"
                                    aria-controls="navbarSupportedContent" aria-expanded="false"
                                    aria-label="Toggle navigation">
                                    <!-- <span class="navbar-toggler-icon"></span> -->
                                    <i class="fas fa-bars"></i>
                                </button>
                                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                    <ul class="navbar-nav mr-auto">
                                        <li class="nav-item active">
                                            <router-link class="nav-link" :to="{ name: 'home' }">হোম</router-link>
                                        </li>
                                        <li class="nav-item dropdown">
                                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                                role="button" data-toggle="dropdown" aria-haspopup="true"
                                                aria-expanded="false">বার্তা</a>
                                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                <router-link class="dropdown-item" to="/hello">জেলা প্রশাসকের বার্তা
                                                </router-link>
                                                <router-link class="dropdown-item" to="/hello2">উপজেলা নির্বাহী অফিসারের
                                                    বার্তা</router-link>
                                            </div>
                                        </li>
                                        <li class="nav-item active">
                                            <router-link class="nav-link" :to="{ name: 'home' }">সার ম্যানেজমেন্ট
                                                পরিচিতি</router-link>
                                        </li>
                                        <li class="nav-item dropdown">
                                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                                role="button" data-toggle="dropdown" aria-haspopup="true"
                                                aria-expanded="false">তালিকা</a>
                                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                <router-link class="dropdown-item" to="/hello">ডিলারের তালিকা
                                                </router-link>
                                                <router-link class="dropdown-item" to="/hello2">কৃষকের তালিকা
                                                </router-link>
                                            </div>
                                        </li>
                                        <li class="nav-item">
                                            <router-link class="nav-link" :to="{ name: 'home' }">নোটিশ</router-link>
                                        </li>
                                        <li class="nav-item">
                                            <router-link class="nav-link" :to="{ name: 'contact' }">যোগাযোগ
                                            </router-link>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="/admin/login"">লগইন</a>
                                        </li>
                                        <li class="nav-item dropdown">
                                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                                role="button" data-toggle="dropdown" aria-haspopup="true"
                                                aria-expanded="false">নাগরিক কর্ণার</a>
                                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                <router-link class="dropdown-item" to="/hello">কৃষক নিবন্ধনের আবেদন
                                                </router-link>
                                                <router-link class="dropdown-item" to="/hello2">ডিলার নিবন্ধনের আবেদন
                                                </router-link>
                                                <router-link class="dropdown-item" to="/hello2">অভিযোগ/পরামর্শ প্রদান
                                                </router-link>
                                            </div>
                                        </li>
                                    </ul>
                                    <!-- <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form> -->
                                </div>
                            </nav>
                        </div>
                    </div>
                </nav>
            </header>
            <div class="middeleContent">
                <marquee direction="left" onmouseover="this.stop();" onmouseout="this.start();" scrolldelay="100" style="background: var(--defaultColor);
color: white;
font-size: 18px;
padding: 3px 11px;"> Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptas delectus provident iste,
                    eligendi ipsum pariatur soluta officia tenetur velit odio quo hic, numquam minus ratione, quae
                    dolore ad molestiae suscipit! </marquee>
                <slot></slot>
                <div class="row">
                    <div class="col-md-12 mt-3 mb-3">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="imbox">
                                    <div class="sidebarTitle mb-3 defaltColor">
                                        <h4 class='text-center'>গুরুত্বপূর্ণ লিংক</h4>
                                    </div>
                                    <ul class="list-unstyled importantLInk" style="padding: 0 11px;">
                                        <li><i class="fas fa-check-circle"></i> &nbsp;<a
                                                href="http://www.bangabhaban.gov.bd/"
                                                title="রাষ্ট্রপতির কার্যালয়">রাষ্ট্রপতির কার্যালয়</a></li>
                                        <li><i class="fas fa-check-circle"></i> &nbsp;<a href="http://www.pmo.gov.bd"
                                                title="প্রধানমন্ত্রীর কার্যালয়">প্রধানমন্ত্রীর কার্যালয়</a></li>
                                        <li><i class="fas fa-check-circle"></i> &nbsp;<a
                                                href="http://www.parliament.gov.bd/" title=" জাতীয় সংসদ">জাতীয় সংসদ</a>
                                        </li>
                                        <li><i class="fas fa-check-circle"></i> &nbsp;<a href="http://mopa.gov.bd"
                                                title="জনপ্রশাসন মন্ত্রণালয়">জনপ্রশাসন মন্ত্রণালয়</a></li>
                                        <li><i class="fas fa-check-circle"></i> &nbsp;<a
                                                href="http://www.bangladesh.gov.bd" title="জাতীয় তথ্য বাতায়ন">জাতীয় তথ্য
                                                বাতায়ন</a></li>
                                        <li><i class="fas fa-check-circle"></i> &nbsp;<a
                                                href="http://www.panchagarh.gov.bd" title="পঞ্চগড় জেলা">পঞ্চগড় জেলা</a>
                                        </li>
                                        <li><i class="fas fa-check-circle"></i> &nbsp;<a
                                                href="https://tetulia.panchagarh.gov.bd/"
                                                title="তেঁতুলিয়া উপজেলা">তেঁতুলিয়া উপজেলা</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="imbox">
                                    <div class="sidebarTitle mb-3 defaltColor">
                                        <h4 class='text-center'>অন্যান্য</h4>
                                    </div>
                                    <ul class='list-unstyled importantLInk' style="padding: 0 11px;">
                                        <li><i class="fas fa-check-circle"></i> &nbsp;<a href="http://forms.mygov.bd/"
                                                title="বাংলাদেশ ফরম">বাংলাদেশ ফরম</a></li>
                                        <li><i class="fas fa-check-circle"></i> &nbsp;<a href="http://www.ebook.gov.bd/"
                                                title="ই-বুক">ই-বুক</a></li>
                                        <li><i class="fas fa-check-circle"></i> &nbsp;<a href="https://www.mygov.bd/"
                                                title="সকল ই-সেবা">সকল ই-সেবা</a></li>
                                        <li><i class="fas fa-check-circle"></i> &nbsp;<a href="http://mopa.gov.bd"
                                                title="পাসপোর্টের আবেদন">পাসপোর্টের আবেদন</a></li>
                                        <li><i class="fas fa-check-circle"></i> &nbsp;<a href="http://echallan.gov.bd/"
                                                title="ই-চালান প্রশিক্ষণ">ই-চালান</a></li>
                                        <li><i class="fas fa-check-circle"></i> &nbsp;<a href="https://ldtax.gov.bd/"
                                                title="ভূমি সেবা">ভূমি সেবা</a></li>
                                        <li><i class="fas fa-check-circle"></i> &nbsp;<a href="https://a2i.gov.bd/"
                                                title="এটুআই">এটুআই</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="imbox">
                                    <div class="column block" style="padding: 0 0px;">
                                        <iframe width="100%" height="240"
                                            src="https://www.youtube.com/embed/QNUSIOMb6vI" title="YouTube video player"
                                            frameborder="0"
                                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                            allowfullscreen></iframe>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <footer>
                <div class="footer_top_bg"
                    style="background: url('/assets/img/footer_top_bg.png'); height: 93px; background-repeat: no-repeat; background-size: cover;">
                </div>


<!--
                <div class="footer-wrapper">
                    <div class="row">
                <div class="col-md-3 col-sm-3">
                    <p class="copyright m-t10 m-b0 text-center" _msthash="871897" _msttexthash="1370109"><strong _istranslated="1">পরিকল্পনা ও বাস্তবায়নে:</strong>সোহাগ চন্দ্র সাহা</p>
                </div>
                <div class="col-md-7 col-sm-7">
                    <p class="m-t10 m-b0 text-center"><font _mstmutation="1" _msthash="872092" _msttexthash="4237155"> &copy; ২০২২ উপজেলা প্রশাসন, তেঁতুলিয়া <strong style="padding-left: 40px" _mstmutation="1" _istranslated="1">the overall support</strong> of Varendra Multipurpose Development Authority (BMDA):</font> <a href="http://www.a2i.gov.bd/" title="এটুআই"> <img style="margin-top: -14px;" src="http://www.sechseba.gov.bd/public/frontend/images/a2i.png" alt="a2i" _mstalt="26312"></a> </p>
                </div>
                <div class="col-md-2 col-sm-2">
                    <p class="m-t10 m-b0 text-center">
                        <font _mstmutation="1" _msthash="872287" _msttexthash="969761"><strong _mstmutation="1" _istranslated="1">With technical assistance:</strong> <a href="https://www.nanosoftbd.com/" title="Nanoit Information Technology" target="_blank" _mstmutation="1" _istranslated="1">Nanosoft</a></font>
                    </p>
                </div>
            </div>
            </div> -->



















                <div class="footerBottom">
                    <div class="row">
                        <div class="col-md-4">
                            <ul class="footerList">
                                <li style="font-size:font-size:15px"> <b> পরিকল্পনা ও বাস্তবায়নে:</b> <br />
                                    সোহাগ চন্দ্র সাহা
                                    <br />উপজেলা নির্বাহী অফিসার,তেঁতুলিয়া,পঞ্চগড়
                                </li>

                            </ul>
                        </div>


                        <div class="col-md-4">
                            <ul class="footerList">
                                <li style="font-size:font-size:15px"> </li>
                                <li
                                    style="font-size:font-size:15px;    display: flex;justify-content: center;align-items: center;">
                                    <img style="width:40px !important" :src="$asseturl + 'assets/img/bd-logo.png'"alt="">
                                    <span style="padding: 0 15px;"> <b> সার্বিক ব্যবস্থাপনায়:</b> <br> © ২০২২ উপজেলা প্রশাসন, তেঁতুলিয়া,পঞ্চগড়</span>
                                </li>
                            </ul>
                        </div>



                        <div class="col-md-4">
                            <ul class="footerList">
                                <li style="font-size:font-size:15px"> </li>
                                <li
                                    style="font-size:font-size:15px;    display: flex;justify-content: center;align-items: center;">
                                    <!-- <img style="width:40px !important" :src="$asseturl + 'assets/img/bd-logo.png'"alt=""> -->
                                    <span style="padding: 0 15px;"> <b> কারিগরি সহায়তায়:</b> <br>Softweb</span>
                                </li>
                            </ul>
                        </div>



                        <!-- <div class="col-md-4">

                            <p class="help text-right" style="display: flex;
                justify-content: end;
                align-items: center;
                width: 100%;">
                            <img style="    width: 170px !important;" class="footerImg" :src="$asseturl + 'assets/img/logo.gif'" alt="" /> <span style="font-size: 14px;">
                                <span style="border-bottom: 1px solid #737272;"><b>কারিগরি সহায়তায়</b> </span> <br> <a
                                    target="_blank" style="color: #4e4e4e;" href="#">Softweb</a></span>
                            </p>
                        </div> -->
                    </div>
                </div>
            </footer>
        </div>
        <div class="modal fade  bd-example-modal-lg" id="exampleModal" tabindex="-1" role="dialog"
            aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">ইউনিয়ন নির্বাচন করুন</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form class='d-flex'>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    props: ['user'],
    async created() {
    },
    data() {
        return {
            selectedUser: '',
            curentdate: '',
            curenttime: '',
            visitors: '',
            categorys: {},
            ff: {},
        }
    },
    watch: {
        '$route': {
            handler(newValue, oldValue) {
                document.getElementById('navbarSupportedContent').classList.remove("show");
                window.scrollTo(0, 0);
            },
            deep: true
        }
    },
    methods: {
        sendInfo(item) {
            // console.log(item)
            this.selectedUser = item;
        },
        async visitorfun() {
            var unionname = 'all';
            var visitcreate = await this.callApi('post', `/api/visitorcreate`, [])
            var res = await this.callApi('get', `/api/visitorcount?union=${unionname}`, [])
            this.visitors = res.data;
        },
        getCategory() {
            axios.get(`/api/get/category/list`)
                .then((res) => {
                    this.categorys = res.data
                })
        }
    },
    mounted() {
        this.getCategory();
        setTimeout(() => {
            // this.visitorfun();
        }, 2000);
        var date = new Date();
        this.curentdate = User.dateformat(new Date())[0]
        setInterval(() => {
            this.curenttime = User.dateformat(new Date())[8]
        }, 1000);
    }
}
</script>
<style>
nav.navbar.navbar-expand-lg.navbar-light.bg-light {
    background: #023076 !important;
}
li.nav-item a {
    color: white !important;
}
.dropdown-menu {
    background: #9e5bba;
}
.dropdown-item.active,
.dropdown-item:active {
    background-color: #159513ed;
}
.dropdown-item:focus,
.dropdown-item:hover {
    background-color: #159513ed;
}
nav.navbar.navbar-expand-lg.navbar-light.bg-light {
    padding: 0 6px;
}
@media (min-width:992px) {
    li.nav-item {
        border-right: 1px solid white;
    }
    a.dropdown-item {
        border-bottom: 1px solid #89209b;
    }
    a.dropdown-item:first-child {
        border-top: 1px solid #89209b;
    }
}
/* .dropdown:hover>.dropdown-menu{
		display: block;
	} */
/* .serviceBox {
    border-top-right-radius: 30px;
    border-bottom-left-radius: 30px;
} */
.defaltColor {
    background: var(--defaultColor) !important;
}
.defaltTextColor {
    color: var(--defaultColor) !important;
}
</style>
