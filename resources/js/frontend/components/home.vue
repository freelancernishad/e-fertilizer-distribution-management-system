<template>
    <div>
        <div class="row">
            <div class="mainBody col-md-9 mt-3">
                <div class="pmCover">
                    <!-- <vue-image-slider :images="imageArray" :intervalVal=5000 :width="width" :height="height"  /> -->
                    <vue-flux :options="vfOptions" :images="vfImages" :transitions="vfTransitions" ref="slider">
                        <template v-slot:preloader>
                            <flux-preloader />
                        </template>
                        <!-- <template v-slot:caption>
      <flux-caption />
   </template> -->
                        <!-- <template v-slot:controls>
      <flux-controls />
   </template> -->
                        <!-- <template v-slot:pagination>
      <flux-pagination />
   </template> -->
                        <!-- <template v-slot:index>
      <flux-index />
   </template> -->
                    </vue-flux>
                    <!--        <img width="100%" src="assets/img/National-Portal-Card-PM.jpeg" alt=""> --->
                </div>
                <b-modal id="myModal">
                    <union-select :custom-url="selectedUser" />
                </b-modal>
                <div class="services mt-3">
                    <div class="row">
                        <div class="col-md-12">
                            <h6 class="serviceTitle position-relative defaltColor">
                                উপজেলা ভিত্তিক
                            </h6>
                        </div>




                        <router-link class="col-lg-6 col-md-6 col-sm-4 col-6 mt-3 mb-3 text-center"
                            :to="{ name: 'application' }">
                            <div class="serviceBox">
                                <div class="serviceLogo">
                                    <div class="reportNumber">

                                        {{ row.product }}
                                    </div>

                                    <!-- <img :src="$asseturl + 'assets/img/pic-10.png'" width="33%" alt="" /> -->
                                </div>
                                <div class="serviceTitle defaltTextColor">
                                    বরাদ্দ সংক্রান্ত তথ্য
                                </div>
                            </div>
                        </router-link>




                        <router-link class="col-lg-6 col-md-6 col-sm-4 col-6 mt-3 mb-3 text-center"
                            :to="{ name: 'application' }">
                            <div class="serviceBox">
                                <div class="serviceLogo">
                                    <div class="reportNumber">
                                        {{ row.stock }}
                                    </div>
                                    <!-- <img :src="$asseturl + 'assets/img/pic-10.png'" width="33%" alt="" /> -->
                                </div>
                                <div class="serviceTitle defaltTextColor">
                                    মজুদ সংক্রান্ত তথ্য
                                </div>
                            </div>
                        </router-link>




                        <router-link class="col-lg-6 col-md-6 col-sm-4 col-6 mt-3 mb-3 text-center"
                            :to="{ name: 'application' }">
                            <div class="serviceBox">
                                <div class="serviceLogo">
                                    <img :src="$asseturl + 'assets/img/pic-10.png'" class="imageSpin" width="33%" alt="" />
                                </div>
                                <div class="serviceTitle defaltTextColor">
                                    ডিলার লগইন
                                </div>
                            </div>
                        </router-link>




                        <router-link class="col-lg-6 col-md-6 col-sm-4 col-6 mt-3 mb-3 text-center"
                            :to="{ name: 'application' }">
                            <div class="serviceBox">
                                <div class="serviceLogo">
                                    <img :src="$asseturl + 'assets/img/pic-10.png'" class="imageSpin" width="33%" alt="" />
                                </div>
                                <div class="serviceTitle defaltTextColor">
                                    কর্তৃপক্ষ লগইন
                                </div>
                            </div>
                        </router-link>




                        <router-link class="col-lg-6 col-md-6 col-sm-4 col-6 mt-3 mb-3 text-center"
                            :to="{ name: 'application' }">
                            <div class="serviceBox">
                                <div class="serviceLogo">
                                    <img :src="$asseturl + 'assets/img/pic-10.png'" class="imageSpin" width="33%" alt="" />
                                </div>
                                <div class="serviceTitle defaltTextColor">
                                    সার ক্রয় করুন
                                </div>
                            </div>
                        </router-link>



                        <router-link class="col-lg-6 col-md-6 col-sm-4 col-6 mt-3 mb-3 text-center"
                            :to="{ name: 'application' }">
                            <div class="serviceBox">
                                <div class="serviceLogo">
                                    <img :src="$asseturl + 'assets/img/pic-10.png'" class="imageSpin" width="33%" alt="" />
                                </div>
                                <div class="serviceTitle defaltTextColor">
                                    অন্যান্য সেবা
                                </div>
                            </div>
                        </router-link>










                        <div class="col-md-12">
                            <h6 class="serviceTitle position-relative defaltColor">
                                ডিজিটাল সার ব্যবস্থাপনা সিস্টেম
                            </h6>
                        </div>
                        <div class="col-md-12">
                            <p>
                                প্রান্তিক পর্যায়ের কৃষকদের মাঝে রাসায়নিক সার বিক্রয়ের জন্য ডিলারদের অনুকূলে প্রদত্ত বরাদ্দ, বিক্রয় ও মজুদ সংক্রান্ত বিষয় মনিটরিং ও দ্রুত সময়ে জবাবদিহিতা মূলক সেবা প্রদান নিশ্চিতকরনের লক্ষ্যে উপজেলা প্রশাসন, তেতুলিয়া’র  একটি উদ্ভাবনী উদ্যোগ “ডিজিটাল সার ব্যবস্থাপনা সিস্টেম”। এই অনলাইন এপ্লিকেশনের মাধ্যমে কৃষক দ্রুততম সময়ে মধ্যে রাসায়নিক সার সংক্রান্ত তথ্য, অভিযোগ/সেবা গ্রহণ করতে পারবে। অহেতুক সারের মূল্য বৃদ্ধি ও কৃত্রিম সংকট নিরসন রোধে একটি ইন্টিগ্রেটেড মনিটরিং সিস্টেম এটি। সেবা প্রদানের ক্ষেত্রে সময়, পরিদর্শন ও খরচ কমবে। জমিতে কখন কি সার প্রয়োজন তা কৃষক খুব সহজেই জানতে পারবেন। সেবা গ্রহীতার মূল্যায়নের মাধ্যমে সেবার মান নির্ধারিত হচ্ছে। এছাড়া সকল তথ্য সংরক্ষিত থাকায় কাজের মূল্যায়ন করার সুযোগ সৃষ্টি হবে।
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <side-bar class-name="col-md-3"></side-bar>
        </div>
    </div>
</template>
<script>
import {
    VueFlux,
    FluxCaption,
    FluxControls,
    FluxIndex,
    FluxPagination,
    FluxPreloader,
} from "vue-flux";
import FlipCard from "./layouts/FlipCard.vue";
export default {
    created() {
        // if (!User.loggedIn()) {
        //     this.$router.push({ name: "/login" });
        // }
    },
    components: {
        VueFlux,
        FluxCaption,
        FluxControls,
        FluxIndex,
        FluxPagination,
        FluxPreloader,
        FlipCard,
    },
    data() {
        return {
            selectedUser: '',
            flipped: false,
            vfOptions: {
                autoplay: true,
            },
            vfImages: [
                this.$asseturl + "assets/img/padmabanner.jpeg",
                // this.$asseturl + "assets/img/2020-01-29-15-38-1110062e77cba2e7d935d46121912483.jpg",
                // this.$asseturl + "assets/img/slide1.jpeg",
                // this.$asseturl + "assets/img/slide2.jpeg",
                // this.$asseturl+"assets/img/padmabanner.jpeg",
                // this.$asseturl+"assets/img/slide12.jpg",
                // this.$asseturl+"assets/img/slide11.jpg",
                // "/assets/img/slider2.png",
            ],
            vfTransitions: [
                "blinds2d",
                "blinds3d",
                "blocks1",
                "blocks2",
                "book",
                "camera",
                "concentric",
                "cube",
                "explode",
                "fade",
                "fall",
                "kenburn",
                "round1",
                "round2",
                "slide",
                "swipe",
                "warp",
                "waterfall",
                "wave",
                "zip",
            ],
        row:{},
            //   vfCaptions: [],
        };
    },
    mounted() {
        this.allReport();
    },
    methods: {
        sendInfo(item) {
            // console.log(item)
            this.selectedUser = item;
        },



        allReport() {
            axios
                .get(`/api/all/report`)
                .then(({ data }) => (this.row = data))
                .catch();
        },

    },
};
</script>
<style lang="css" scoped>
a.prev {
    display: none !important;
}
a.next {
    display: none !important;
}
</style>
