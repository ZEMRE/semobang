<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>SEMOBANG</title>
        <meta name="description" content="SEMOBANG has so many properties for you">
        <meta name="author" content="SEMOBANG">
        <meta name="keyword" content="korea, busan, seoul, property, real-estate">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>

        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
        <link rel="icon" href="favicon.ico" type="image/x-icon">

        <link rel="stylesheet" href="resources/assets/css/normalize.css">
        <link rel="stylesheet" href="resources/assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="resources/assets/css/fontello.css">
        <link href="resources/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet">
        <link href="resources/assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
        <link href="resources/assets/css/animate.css" rel="stylesheet" media="screen">
        <link rel="stylesheet" href="resources/assets/css/bootstrap-select.min.css"> 
        <link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="resources/assets/css/icheck.min_all.css">
        <link rel="stylesheet" href="resources/assets/css/price-range.css">
        <link rel="stylesheet" href="resources/assets/css/owl.carousel.css">  
        <link rel="stylesheet" href="resources/assets/css/owl.theme.css">
        <link rel="stylesheet" href="resources/assets/css/owl.transitions.css">
        <link rel="stylesheet" href="resources/assets/css/style.css">
        <link rel="stylesheet" href="resources/assets/css/responsive.css">
        
        <!-- IonIcons -->
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.0/css/ionicons.min.css">
    </head>
    
    <style>
	    .footer-area { background: #fff;	/* 푸터 배경 이미지 삭제 */ }		
		.form-control:focus { color: #535353;	/* 푸터 퀵 서치 글자색 변경 */ }
		#addressForm1,#addressForm2{width : 145px;}	/*시,구 셀렉트 너비 변경*/
		.fa1{font-size: 50px; margin-top: 5px;}	/*tema search 아이콘 크기 변경*/
		.welcome-estate a{fill: #FFF; color: #777;}
		.welcome-icon:hover a{color: #fff;}
		#searchGu{font-size: 13px;
				box-sizing: border-box;
				height : 40px;
				line-height: 1.42857;
				color: #eeeded;
				background: rgba(252, 252, 252, 0.35) none repeat scroll 0% 0%;
    			border-radius: 1px;
   				 display: inline-block;
    			overflow: hidden;
    			width: 100%;
    			text-align: left;
		}

    </style>
    
    <body>
        <div id="preloader">
            <div id="status">&nbsp;</div>
        </div>
        <!-- Body content -->

		<!-- Start Header -->
		<jsp:include page="header.jsp"></jsp:include>
		<!-- End Header -->

        <div class="slider-area">
            <div class="slider">
                <div id="bg-slider" class="owl-carousel owl-theme">
                    <div class="item"><img src="resources/images/main/slider-image-1.png" alt="slider img 1"></div>
                    <div class="item"><img src="resources/images/main/slider-image-2.png" alt="slider img 2"></div>
                    <div class="item"><img src="resources/images/main/slider-image-3.png" alt="slider img 3"></div>
                </div>
            </div>
            <div class="slider-content">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 col-sm-12">
                        <h2>property Searching Just Got So Easy</h2>
                                                
                        <div class="search-form wow pulse" data-wow-delay="0.8s">

                            <form action="./list/searchList2" class=" form-inline" name="searchForm" method="post">
                            
                            	<input type="hidden" name="search_option" id="search_option">
                            
                                <button class="btn  toggle-btn" type="button"><i class="fa fa-bars"></i></button>

                                 <div class="form-group">                                   
                                    <select id="lunchBegins" name="search_category" class="selectpicker" title="Select your category">
                                        <option value="월세">월세</option>
                                        <option value="전세">전세</option>
                                        <option value="매매">매매</option>
                                    </select>
                                </div>
                                <div class="form-group">                                     
                                    <select id="basic" name="search_type" class="selectpicker show-tick form-control" title="Select your type">
                                        <option value="원룸+">원룸+ </option>
                                        <option value="오피스텔">오피스텔 </option>
                                        <option value="빌라">빌라</option>
                                        <option value="아파트">아파트</option>
                                        <option value="상가/사무실">상가/사무실</option>  

                                    </select>
                                </div>
                                
                                <div class="form-group" id="addressForm1">                                   
                                    <select id="searchCity" name="search_city" class="selectpicker" data-live-search="true" data-live-search-style="begins" title="Select your city">

										<c:forEach var="cityList" items="${cityList}"> 
                                        <option>${cityList}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                
                                <div class="form-group" id="addressForm2" data-live-search="true" data-live-search-style="begins" title="Select your district">  
                                                               
                                  <select id="searchGu" name="search_gu">
                                  	<option>---</option>
                                  </select>
                                </div>
                                
                                <button class="btn search-btn" id="getCheckedAll"><i class="fa fa-search"></i></button>

                                <div style="display: none;" class="search-toggle">

                                    <div class="search-row">   

                                        <div class="form-group mar-r-20">
                                            <label for="price-range">Price range ($):</label>
                                            <input type="text" class="span2" value="," data-slider-min="0" 
                                                   data-slider-max="600" data-slider-step="5" 
                                                   data-slider-value="[0,450]" id="price-range" name="search_price"><br />
                                            <b class="pull-left color">2000$</b> 
                                            <b class="pull-right color">100000$</b>
                                        </div>
                                        <!-- End of  -->  

                                        <div class="form-group mar-l-20">
                                        	<div id="hidetest">
	                                            <label for="property-geo">Property geo (m2) :</label>
	                                            <input type="text" class="span2" value="," data-slider-min="0" 
	                                                   data-slider-max="600" data-slider-step="5" 
	                                                   data-slider-value="[50,450]" id="property-geo" name="search_deposit"><br />
	                                            <b class="pull-left color">40m</b> 
	                                            <b class="pull-right color">12000m</b>
                                            </div>
                                        </div>
                                        <!-- End of  --> 
                                    </div>

                                    <div class="search-row">

                                        <div class="form-group mar-r-20">
                                            <label for="price-range">Min baths :</label>
                                            <input type="text" class="span2" value="," data-slider-min="0" 
                                                   data-slider-max="600" data-slider-step="5" 
                                                   data-slider-value="[250,450]" id="min-baths" name="search_size"><br />
                                            <b class="pull-left color">1</b> 
                                            <b class="pull-right color">120</b>
                                        </div>
                                        <!-- End of  --> 

                                        <div class="form-group mar-l-20">
                                            <label for="property-geo">Min bed :</label>
                                            <input type="text" class="span2" value="," data-slider-min="0" 
                                                   data-slider-max="600" data-slider-step="5" 
                                                   data-slider-value="[250,450]" id="min-bed" name="search_bedroom"><br />
                                            <b class="pull-left color">1</b> 
                                            <b class="pull-right color">120</b>
                                        </div>
                                        <!-- End of  --> 

                                    </div>
                                    <br>
                                    <div class="search-row">  

                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" id="opFull" name="optionValue" value="1"> FullOption
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  -->  

                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" id="opParking" name="optionValue" value="2"> 주차
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 

                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" id="opEle" name="optionValue" value="4"> 엘리베이터
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 
                                    </div>

                                    <div class="search-row">  

                                         <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" id="opPet" name="optionValue" value="8"> 반려동물
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  -->  

                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" id="opHeat" name="optionValue" value="16"> 개별난방
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 

                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" id="opVer" name="optionValue" value="32"> 베란다
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 
                                    </div>                                    

                                    <div class="search-row">  

                                      <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" id="opInternet" name="optionValue" value="64"> 인터넷
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  -->  

                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" id="opSta" name="optionValue" value="128"> 역세권
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 

                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" id="opSouth" name="optionValue" value="256"> 남향
                                                </label>
                                            </div>
                                        </div>
                                        <!-- End of  --> 
                                        <br>
                                        <hr>
                                    </div>                             
                                    <button class="btn search-btn prop-btm-sheaerch" type="submit"><i class="fa fa-search"></i></button>  
                                </div>                    

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- property area -->
        <div class="content-area home-area-1 recent-property" style="background-color: #FCFCFC; padding-bottom: 55px;">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
                        <!-- /.feature title -->
                        <h2>Top submitted property</h2>
                        <p>Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium. Nullam sed arcu ultricies . </p>
                    </div>
                </div>

                <div class="row">
                    <div class="proerty-th">
                        <c:forEach var="mainList" items="${mainList}">
                        <div class="col-sm-6 col-md-3 p0">
                            <div class="box-two proerty-item">
                                <div class="item-thumb">
                                    <a href="#" ><img src="resources/images/property/demo/property-2.jpg"></a>
                                </div>
                                <div class="item-entry overflow">
                                    <h5><a href="./${mainList.property_id}" >${mainList.property_title} </a></h5>
                                    <div class="dot-hr"></div>
                                    <span class="pull-left"><b>Area :</b> 120m </span>
                                    <span class="proerty-price pull-right">$ 300,000</span>
                                </div>
                            </div>
                        </div>
						</c:forEach>

                        <div class="col-sm-6 col-md-3 p0">
                            <div class="box-tree more-proerty text-center">
                                <div class="item-tree-icon">
                                    <i class="fa fa-th"></i>
                                </div>
                                <div class="more-entry overflow">
                                    <h5><a href="property-1.html" >CAN'T DECIDE ? </a></h5>
                                    <h5 class="tree-sub-ttl">Show all properties</h5>
                                    <button class="btn border-btn more-black" value="All properties">All properties</button>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>

        <!--Welcome area -->
        <div class="Welcome-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 Welcome-entry  col-sm-12">
                        <div class="col-md-5 col-md-offset-2 col-sm-6 col-xs-12">
                            <div class="welcome_text wow fadeInLeft" data-wow-delay="0.3s" data-wow-offset="100">
                                <div class="row">
                                    <div class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
                                        <!-- /.feature title -->
                                        <h2>GARO ESTATE </h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-5 col-sm-6 col-xs-12">
                            <div  class="welcome_services wow fadeInRight" data-wow-delay="0.3s" data-wow-offset="100">
                                <div class="row">
                                    <div class="col-xs-6 m-padding">
                                        <div class="welcome-estate">
                                            <div class="welcome-icon">
                                               <a href="./list/searchList1/property_deposit=<1000"> <i class="pe-7s-home pe-4x"></i></a>
                                            </div>
                                            <h3>보증금 1000만원 이하 오피스텔</h3>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 m-padding">
                                        <div class="welcome-estate">
                                            <div class="welcome-icon">
                                                <a href="./list/searchList1/property_option=2"><i class="fa fa-automobile fa1"></i></a>
                                            </div>
                                            <h3>주차장 완비 상가</h3>
                                        </div>
                                    </div>


                                    <div class="col-xs-12 text-center">
                                        <i class="welcome-circle"></i>
                                    </div>

                                    <div class="col-xs-6 m-padding">
                                        <div class="welcome-estate">
                                            <div class="welcome-icon">
                                                 <a href="./list/searchList1/property_option=8"><i class="fa fa-paw fa1"></i></a>
                                            </div>
                                            <h3>반려동물과 함꼐하는 원룸</h3>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 m-padding">
                                        <div class="welcome-estate">
                                            <div class="welcome-icon">
                                                <i class="pe-7s-help2 pe-4x"></i>
                                            </div>
                                            <h3>Any help </h3>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--TESTIMONIALS -->
        <div class="testimonial-area recent-property" style="background-color: #FCFCFC; padding-bottom: 15px;">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
                        <!-- /.feature title -->
                        <h2>Our Customers Said  </h2> 
                    </div>
                </div>

                <div class="row">
                    <div class="row testimonial">
                        <div class="col-md-12">
                            <div id="testimonial-slider">
                                <c:forEach var="popularUserList" items="${popularUserList}" end="5">
                                
                                <div class="item">
                                    <div class="client-text">                                
                                        <p>Nulla quis dapibus nisl. Suspendisse llam sed arcu ultried arcu ultricies !</p>
                                        <h4><strong>${popularUserList.user_email }, </strong><i>Web Designer</i></h4>
                                    </div>
                                    <div class="client-face wow fadeInRight" data-wow-delay=".9s"> 
                                        <img src="resources/images/user/client-face1.png" alt="">
                                    </div>
                                </div>
                               </c:forEach>
                               
                             
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <!-- Start Footer -->
		<jsp:include page="footer.jsp"></jsp:include>
		<!-- End Footer -->
        
        <script src="resources/assets/js/modernizr-2.6.2.min.js"></script>

        <script src="resources/assets/js/jquery-1.10.2.min.js"></script> 
        <script src="resources/bootstrap/js/bootstrap.min.js"></script>
        <script src="resources/assets/js/bootstrap-select.min.js"></script>
        <script src="resources/assets/js/bootstrap-hover-dropdown.js"></script>

        <script src="resources/assets/js/easypiechart.min.js"></script>
        <script src="resources/assets/js/jquery.easypiechart.min.js"></script>

        <script src="resources/assets/js/owl.carousel.min.js"></script>
        <script src="resources/assets/js/wow.js"></script>

        <script src="resources/assets/js/icheck.min.js"></script>
        <script src="resources/assets/js/price-range.js"></script>

        <script src="resources/assets/js/main.js"></script>
        
        
		<script>
		     $(function() {
		     	
		    	// 푸터에 있는 퀵 서치창에 매물번호를 입력하고 버튼을 클릭
		    	// DB에 있고 상태가 open이면 매물 상세보기 화면으로 이동
		    	// DB에 없거나 상태가 다르면 toast 또는 notify 띄움
				// 1. 없는 매물번호 입니다. (hidden 또는 없음)
				// 2. 허위매물로 신고된 번호 입니다. (fake)
				// 3. 거래완료된 번호 입니다. (sold)
		     	$("#quickSearch").on("click", function() {
			
		     		// ajax 통신 결과값에 따라 if문으로 처리
		     		
		     		window.open("property/" + $("#property_id").val());		     		
				});	        
		    	
		    	
		    	// 푸터에 있는 허위매물 신고 링크 클릭
		    	// 모달 다이얼로그창으로 띄워서 처리함
		    	$(".report").on("click", function() {
					
		    		alert("허위매물 신고 처리");
				});
		    	
		    	
		    	$("#lunchBegins").change(function() {
		    		if($("#lunchBegins").val() == '전세' | $("#lunchBegins").val() == '매매'){
					$("#hidetest").hide();
		    		}else{
		    			$("#hidetest").show();
		    		}
				});
		    	
		    	$("#searchCity").change(function() {
		    		
		    		$("#searchGu").empty();
		    		
		    		$.ajax({
		 		 		dataType : 'json',
						url:'./searchGu',
						type : 'POST',
						data : {'propertyCity' : $("#searchCity").val()},
						success : function(data){

							$.each(data, function( index, value ) {
				                  var option = "<option>"+value+"</option>";
				                   $("#searchGu").append(option);
				                });		
							}			
					});
				});
		    	
		    	$("#getCheckedAll").click(function() {

					sum=0;
					
					$("input[name=optionValue]:checked").each(function() {
						
						propertyOptionValue = parseInt($(this).val());
						sum += propertyOptionValue;
					});

					document.searchForm.search_option.value = sum;
					document.searchForm.submit();
				});
		    	
		     });
		</script>
    </body>
</html>