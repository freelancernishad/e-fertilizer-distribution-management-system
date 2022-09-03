<template>
    <div>
        <div class="row">
            <div class="mainBody col-md-9 mt-3">

                <h2 class="m-0 font-weight-bold text-primary text-center">ডিলারের তালিকা</h2>

                <table class="table">
                    <thead>
                        <tr>
                            <th>নাম</th>
                            <th>প্রতিষ্ঠানের নাম</th>
                            <th>বাজারের নাম</th>
                            <th>ইউনিয়ন</th>
                            <th>উপজেলা</th>
                            <th>জেলা</th>
                        </tr>
                    </thead>

                    <tbody>
                        <tr v-for="row in rows">
                            <td>{{ row.name }}</td>
                            <td>{{ row.Mobile }}</td>
                            <td>{{ row.bazarName }}</td>
                            <td>{{ row.unioun }}</td>
                            <td>{{ row.thana }}</td>
                            <td>{{ row.Distric }}</td>
                        </tr>
                    </tbody>

                </table>

            </div>
            <side-bar class-name="col-md-3"></side-bar>
        </div>
    </div>
</template>
<script>

export default {
    created() {},
    data() {
        return {
            rows:{},
        };
    },
    mounted() {
        this.allReport();
    },
    methods: {



        allReport() {
            axios
                .get(`/api/user?type=diller`)
                .then(({ data }) => (this.rows = data))
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
