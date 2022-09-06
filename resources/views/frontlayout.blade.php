<!DOCTYPE HTML>
<html lang="en-US">

<head>
    <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

  <meta http-equiv="content-language" content="en">
  <meta name="keywords" content="website, blog, foo, bar">
  <meta name="author" content="John Doe">
  <meta name="publisher" content="John Doe">
  <meta name="copyright" content="John Doe">
  <meta name="description" content="This short description describes my website.">
  <meta name="page-topic" content="Media">
  <meta name="page-type" content="Blogging">
  <meta name="audience" content="Everyone">
  <meta name="robots" content="index, follow">




    <title>:: ডিজিটাল সার ব্যবস্থাপনা সিস্টেমে স্বাগতম ::</title>
    <link rel="icon" type="image/png" sizes="16x16" href="{{ asset('assets/img/bangladesh-govt.png') }}" />
    <!-- <link href="https://kit-pro.fontawesome.com/releases/v5.15.2/css/pro.min.css" rel="stylesheet" onload="if(media!=='all')media='all'"> -->
    <!-- CSS only -->
    <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous"> -->
    <link rel="stylesheet" href="{{ asset('assets/css/bootstrap.min.css') }}">

    <link rel="stylesheet" href="{{ asset('assets/css/style.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/pro.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">


    <script type="text/javascript" src="{{asset('assets/js/jquery-1.12.4.min.js')}}"></script>

<meta name="csrf-token"             ="{{ csrf_token() }}" />
	<link href="https://fonts.maateen.me/kalpurush/font.css" rel="stylesheet">

<style>
*{
    --defaultColor: green;
}

div#exampleModal {
    z-index: 99999;
}
.serviceBox {
    cursor: pointer;

}
.serviceBox:hover {
  transform: scale(1.1);
  background: none !important;
  text-decoration: none !important;
  box-shadow: 0px 0px 17px -4px #000 !important;
}
a:hover {
  text-decoration: none !important;
}

.serviceBox {
  box-shadow: 0px 0px 15px -4px #000 !important;
  padding: 13px 4px;
  height: 200px !important;
  transition: all 0.4s;
}
</style>



<style type="text/css">

  .bbslider-wrapper.carousel {
    width: 1521px;
  }


.prev-control-wrapper.control-wrapper {
    display: none;
}

.next-control-wrapper.control-wrapper {
    display: none;
}
@media only screen and (max-width: 768px) {
    p.footerText {
    float: left !important;
    padding: 0px 0px 0 40px;
    margin-top: 18px;
    font-size: 13px !important;
}

p.help.text-right {
    display: flex;
    justify-content: flex-start !important;
    align-items: center;
    width: 100%;
    padding: 0 0 0 40px;
}


}
a {
    text-decoration: none;
}

.reportNumber {
    width: 130px;
    margin: 0 auto;
    height: 130px;
    border: 4px solid #34A96B;
    border-radius: 50%;
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: 30px;
    color: #34A96B;
}


.serviceBox:hover .serviceLogo img.imageSpin {
    transform: rotate(720deg);
    transition:all 0.5s;
}

</style>


</head>

<body style="font-family: 'Kalpurush', sans-serif;">

    <div id="app">




        <component :is="$route.meta.layout || 'div'" >
            <router-view />
          </component>

    </div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>




    <script src="{{ asset('js/frontend.js?ver=1.9') }}" async ></script>
{{--
<script>


if ("{{ Auth::user() }}") {
    const storeToken = localStorage.getItem('token');


    if(!storeToken){

        let data = {'_token': "{{ csrf_token() }}"};
        fetch("/logout", {
  method: "POST",
  headers: {'Content-Type': 'application/json'},
  body: JSON.stringify(data)
}).then(res => {

});


    }


}else{
    // User.loggedOut()



		localStorage.removeItem('token')
		localStorage.removeItem('user')
		localStorage.removeItem('userid')
		localStorage.removeItem('role')
		localStorage.removeItem('position')




}

</script>

<!--Start of Tawk.to Script-->
<script type="text/javascript">
    var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
    (function(){
    var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
    s1.async=true;
    s1.src='https://embed.tawk.to/6303c3f337898912e9648000/1gb3bas4r';
    s1.charset='UTF-8';
    s1.setAttribute('crossorigin','*');
    s0.parentNode.insertBefore(s1,s0);
    })();
    </script> --}}
    <!--End of Tawk.to Script-->

</body>
</html>
