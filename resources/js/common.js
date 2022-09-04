import { mapGetters } from 'vuex'
export default {
    data(){
        return {
            numbersen: {
                0: "০",
                1: "১",
                2: "২",
                3: "৩",
                4: "৪",
                5: "৫",
                6: "৬",
                7: "৭",
                8: "৮",
                9: "৯",
              },
              numbersbn:{
                '০': 0,
                '১': 1,
                '২': 2,
                '৩': 3,
                '৪': 4,
                '৫': 5,
                '৬': 6,
                '৭': 7,
                '৮': 8,
                '৯': 9
              }
        }
    },

    methods: {
        async callApi(method, url, dataObj ){
            try {
              return await axios({
                    method: method,
                    url: url,
                    data: dataObj
                });
            } catch (e) {
                return e.response
            }
        },



        dateformatGlobal(date=''){
           return  User.dateformat(date);
        },




        int_en_to_bn_fun(input) {
            var output = [];
            for (var i = 0; i < input.length; ++i) {
              if (this.numbersen.hasOwnProperty(input[i])) {
                output.push(this.numbersen[input[i]]);
              } else {
                output.push(input[i]);
              }
            }
            return output.join('');
          },


        int_bn_to_en_fun(input) {
            var output = [];
            for (var i = 0; i < input.length; ++i) {
              if (this.numbersbn.hasOwnProperty(input[i])) {
                output.push(this.numbersbn[input[i]]);
              } else {
                output.push(input[i]);
              }
            }
            return output.join('');
          },


        int_en_to_bn(text=0) {
            var result;
            if (text == '0') {
                result = '০';
            } else if (text == '1') {
                result = '১';
            } else if (text == '2') {
                result = '২';
            } else if (text == '3') {
                result = '৩';
            } else if (text == '4') {
                result = '৪';
            } else if (text == '5') {
                result = '৫';
            } else if (text == '6') {
                result = '৬';
            } else if (text == '7') {
                result = '৭';
            } else if (text == '8') {
                result = '৮';
            } else if (text == '9') {
                result = '৯';
            }
            return result;
        },





        checkUserPermission(key){
            if(!this.userPermission) return true
            let isPermitted = false;
            for(let d of this.userPermission){
                if(this.$route.name==d.name){
                    if(d[key]){
                        isPermitted = true
                        break;
                    }else{
                        break
                    }
                }

            }
            return isPermitted
            // return this.$route.name;
        }

    },
    computed: {



        ...mapGetters({
            'SonodName' : 'getUpdateSonodName',
            'SonodNames' : 'getUpdateSonodNames',
            'Users' : 'getUpdateUser',
            // 'userPermission' : 'getUserPermission',
            // 'getUserRoles' : 'getUserRoles',
            'getUnions' : 'getUnions',
            'getType' : 'getType',
            'getUnion' : 'getUnion',
            'getunionInfos' : 'getunionInfos',
            'getvatTax' : 'getvatTax',
        }),

        getUsers(){
            return this.$store.getters.getUpdateUser;

        },

        // isReadPermitted(){
        //     return this.checkUserPermission('read')
        //  },
        //  isWritePermitted(){
        //      return this.checkUserPermission('write')
        //  },
        //  isUpdatePermitted(){
        //      return this.checkUserPermission('update')
        //  },
        //  isDeletePermitted(){
        //      return this.checkUserPermission('delete')
        //  },

    },
    mounted() {
        // console.log(this.int_bn_to_en_fun('১১১'))
        // console.log(this.int_en_to_bn_fun('১১১'))
    },




}
