<%--
  Created by IntelliJ IDEA.
  User: astro
  Date: 9/27/2020
  Time: 11:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Filtro - vente des produit de purification eau haut qualité , osmoseur filtre eau">
    <meta name="keywords" content="filtre, eau, osmoseur, filtre eau, filtreau">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
          integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/style/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/style/component.css">
    <link href="https://fonts.googleapis.com/css2?family=Karla&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@600&display=swap" rel="stylesheet">


    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/scripts/script.js"></script>

    <title>Filteau - filtre eau osmoseur</title>
    <!-- Facebook Pixel Code -->
    <script>
        !function(f,b,e,v,n,t,s)
        {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
            n.callMethod.apply(n,arguments):n.queue.push(arguments)};
            if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
            n.queue=[];t=b.createElement(e);t.async=!0;
            t.src=v;s=b.getElementsByTagName(e)[0];
            s.parentNode.insertBefore(t,s)}(window, document,'script',
            'https://connect.facebook.net/en_US/fbevents.js');
        fbq('init', '208071164163881');
        fbq('track', 'PageView');
    </script>
    <noscript><img height="1" width="1" style="display:none"
                   src="https://www.facebook.com/tr?id=208071164163881&ev=PageView&noscript=1"
    /></noscript>
    <!-- End Facebook Pixel Code -->
</head>

<body>
<div class="root_container4">
    <div class="top_nav_bar">
        <!--enter the left menu-->
        <a class="btn_ham" onclick="show_menu()"><i class="fas fa-bars fa-lg color_5"></i></a>

        <div class="center_logo"><a class="logo_11" style="text-decoration: none;"
                                    href="${pageContext.request.contextPath}/"><img
                src="${pageContext.request.contextPath}/resources/image/logo.svg" alt=""/></a></div>
    </div>
    <div class="small_bar">
        <p class="white font_3">االتوصيل والتركيب بالمجان - الدفع عند الاستلام</p>

    </div>
    <div class="contact_us_info">
        <h1 class="font_3 contact_us_title">الاتصال بنا</h1>
        <div class="contact_us_text">
            <h2 class="font_3">يرجى الاتصال بنا إذا كان لديك أي تسائل</h2>
            <p class="font_3">إذا كان لديك سؤال بشأن تسليم طلبك او حول المنتج , لا تتردد في الاتصال بنا على البريد
                الإلكتروني التالي</p>
            <p class="font_3">sacmecanique@gmail.com</p>
            <p class="font_3">او رقم الهاتف التالي</p>
            <p class="font_3">0637660533</p>
        </div>

    </div>
    <!-- service infotmation-->
    <div class="benifit">
        <div class="benifit_field">
            <div class="left_icon_holder"><i class="fas fa-truck fa-2x"></i></div>
            <h3 class="font_3">التوصيل والتركيب بالمجان</h3>
        </div>
        <div class="benifit_field">
            <div class="left_icon_holder"><i class="fas fa-trophy fa-2x"></i></div>
            <h3 class="font_3">جودة عالية
            </h3>
        </div>
        <div class="benifit_field">
            <div class="left_icon_holder"><i class="fas fa-rocket fa-2x"></i></div>
            <h3 class="font_3">ضمان لمدة عام
            </h3>
        </div>
        <div class="benifit_field">
            <div class="left_icon_holder"><i class="fas fa-thumbs-up fa-2x"></i></div>
            <h3 class="font_3">خدمة عملاء 24/7</h3>
        </div>
    </div>
    <!-- footer -->
    <div class="footer">
        <div class="rights">
            <div>
                <p class="font_3">الفلتر رقم 1 في أوروبا متوفر الآن في المغرب</p>
            </div>
            <div>
                <p class="font_3">Copyright © 2020 Filteau </p>
            </div>
        </div>

    </div>
    <!-- left navigation menu-->
    <div class="left_menu" id="left_menu">
        <div class="left_menu_options br-t">
            <div class="menu_logo">
                <div class="left_icon_holder"><i class="fas fa-bars fa-2x"></i></div>
                <h2 class="font_2 ml-s">Menu</h2>
            </div>

            <!--exit the left menu -->
            <a onclick="close_menu()" class="exit_menu_btn mr-s "><i class="fas fa-times fa-lg black"></i></a>
        </div>
        <div class="store_links">
            <ul style="list-style: none;">
                <li><a href="${pageContext.request.contextPath}/" class="font_3 f_size_1 no_decoration black">الصفحة
                    الرئيسية</a></li>
                <li><a href="${pageContext.request.contextPath}/product" class="font_3 f_size_1 no_decoration black">متجر</a>
                </li>
                <li><a href="${pageContext.request.contextPath}/contactus" class="font_3 f_size_1 no_decoration black">اتصل
                    بنا</a></li>
            </ul>
            <br>
            <hr>
            <ul style="list-style: none;">

                <li><a href="${pageContext.request.contextPath}/contactus" class="font_3 f_size_2 no_decoration black">اتصل
                    بنا</a></li>
                <li><a href="${pageContext.request.contextPath}/sandd" class="font_3 f_size_2 no_decoration black">الشحن
                    والتسليم والتركيب</a></li>
            </ul>
        </div>
    </div>
</div>
</body>

</html>