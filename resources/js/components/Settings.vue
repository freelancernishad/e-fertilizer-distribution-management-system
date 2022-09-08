<template>
    <div>
        <div class="breadcrumbs-area">
            <h3>Settings</h3>
        </div>
        <div class="row">

            <div class="col-md-12">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title mb-50 border-bottom pb-2">Settings Information</h5>
                        <form  @submit.stop.prevent="onSubmit">
                        <div class="row mt-4">





                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="">Notice</label>
                                            <!-- <vue-editor v-model="form.notice"></vue-editor> -->
                                            <textarea v-model="form.notice" class="form-control" style="resize:none;height:100px;border: 1px solid #262528;"> </textarea>

                                        </div>
                                    </div>


                            <div class="col-md-12 mt-4">

                                <button type="submit" class="btn btn-info">Submit</button>

                            </div>
                        </div>
                    </form>

                    </div>
                </div>
            </div>
        </div>

    </div>
</template>
<script>
export default {
    mounted() {
        this.getData();
    },data() {
        return {
            form:{
                notice:'',

            }
        }
    },
    methods: {
        async getData(){

            var res = await this.callApi('get',`/api/setting/1`,[]);
            this.form = res.data;
        },

        async onSubmit(){
            var res = await this.callApi('put', `/api/setting/1`, this.form);
            Notification.success()

            this.getData();
        }
    },
}
</script>
