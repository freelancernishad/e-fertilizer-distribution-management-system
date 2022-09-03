<template>
    <div>
        <div class="row">
            <div class="mainBody col-md-9 mt-3">

                <h2 class="m-0 font-weight-bold text-primary text-center">কৃষক তালিকা</h2>

                <table class="table">
                    <thead>
                        <tr>
                            <th>নাম</th>
                            <th>মোবাইল</th>
                            <th>এন.আই.ডি নং</th>
                            <th>পিতার নাম</th>
                            <th>ঠিকানা</th>
                            <th>ওয়ার্ড</th>
                            <th>ব্লক</th>
                            <th>জমির পরিমাণ</th>
                        </tr>
                    </thead>

                    <tbody>
                        <tr v-for="row in rows">
                            <td>{{ row.name }}</td>
                            <td>{{ row.phone }}</td>
                            <td>{{ row.nidNo }}</td>
                            <td>{{ row.fatherName }}</td>
                            <td>{{ row.vill }}</td>
                            <td>{{ row.wordNo }}</td>
                            <td>{{ row.Block }}</td>
                            <td>{{ row.landArea }}</td>
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
                .get(`/api/customer`)
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
