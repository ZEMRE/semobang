<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> --%>
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
		
		<!-- Toast -->
		<link rel="stylesheet" href="//rawgit.com/Soldier-B/jquery.toast/master/jquery.toast/jquery.toast.min.css" />
       	<link rel="stylesheet" href="//rawgit.com/Soldier-B/jquery.toast/master/jquery.toast/jquery.toast.min.css" />
    </head>
    
    <style>
	    .footer-area { background: #fff;	/* 푸터 배경 이미지 삭제 */ }		
		.form-control:focus { color: #535353;	/* 푸터 퀵 서치 글자색 변경 */ }
		#addressForm1,#addressForm2{width : 145px;}	/*시,구 셀렉트 너비 변경*/
		.fa1{font-size: 50px; margin-top: 5px;}	/*tema search 아이콘 크기 변경*/
		.welcome-estate a{fill: #FFF; color: #777;}
		.welcome-icon:hover a{color: #fff;}
		.item-tree-icon a{color: #777;}
		.item-tree-icon a:hover a{color: #d27e04;}
	 	.client-face img{ width: 98px; height: 98px;}
	 	.client-text p{ height: 70px; overflow: hidden; text-overflow: ellipsis; 
	 	display: -webkit-box;
		-webkit-line-clamp: 3; /* 라인수 */
		-webkit-box-orient: vertical;
		word-wrap:break-word;}
 		.client-text{color: #777;}
 
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

                            <form action="./list/searchList" class=" form-inline" name="searchForm" method="post">
                            
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
                                
                                <div class="form-group" id="addressForm2" class="form-control" data-live-search="true" data-live-search-style="begins" title="Select your district">  
                               
                                                               
                                  <select id="searchGu" class="form-control" name="search_gu">
                                  </select>
                                </div>
                                
                                <button class="btn search-btn" id="getCheckedAll"><i class="fa fa-search"></i></button>

                                <div style="display: none;" class="search-toggle">

                                    <div class="search-row">   

                                        <div class="form-group mar-r-20" id="priceRange1">
                                            <label for="price-range">가격 (￦/만원) : </label>
                                            <input type="text" class="span2" value="1000,100000" data-slider-min="1000" 
                                                   data-slider-max="100000" data-slider-step="500" 
                                                   data-slider-value="[10000,30000]" id="price-range" name="search_price"><br />
                                            <b class="pull-left color">1000</b> 
                                            <b class="pull-right color">100000 이상</b>
                                        </div>
                                        <!-- End of  -->  
                                   
                                        <div class="form-group mar-l-20" id="priceRange2" style="margin-left:-5px; margin-right: 15px;">
	                                            <label for="property-geo">월세 (￦/만원) : </label>
	                                            <input type="text" class="span2" value="30,500" data-slider-min="30" 
	                                                   data-slider-max="500" data-slider-step="5" 
	                                                   data-slider-value="[50,100]" id="property-geo" name="search_price2"><br />
	                                            <b class="pull-left color">30 이하</b> 
	                                            <b class="pull-right color">500 이상</b>
                                        </div>
                                        
                                          <div class="form-group mar-l-20">
                                        	<div id="hidetest">
	                                            <label for="property-geo2">보증금 (￦/만원) : </label>
	                                            <input type="text" class="span2" value="500,10000" data-slider-min="500" 
	                                                   data-slider-max="10000" data-slider-step="100" 
	                                                   data-slider-value="[1000,3000]" id="property-geo2" name="search_deposit"><br />
	                                            <b class="pull-left color">500 이하</b> 
	                                            <b class="pull-right color">10000 이상</b>
                                            </div>
                                        </div>
                                        
                                        <!-- End of  --> 
                                    </div>

                                    <div class="search-row">

                                        <div class="form-group mar-r-20">
                                            <label for="price-range">수용면적 (평형)  :</label>
                                            <input type="text" class="span2" value="0,100" data-slider-min="0" 
                                                   data-slider-max="100" data-slider-step="5" 
                                                   data-slider-value="[10,30]" id="min-baths" name="search_size"><br />
                                            <b class="pull-left color">1</b> 
                                            <b class="pull-right color">120</b>
                                        </div>
                                        <!-- End of  --> 

                                        <div class="form-group mar-l-20">
                                            <label for="property-geo">방 개수 :</label>
                                            <input type="text" class="span2" value="1,10" data-slider-min="1" 
                                                   data-slider-max="10" data-slider-step="1" 
                                                   data-slider-value="[1,3]" id="min-bed" name="search_bedroom"><br />
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
                    </div>
                </div>

                <div class="row">
                    <div class="proerty-th">
                        <c:forEach var="mainList" items="${mainList}">
                        <div class="col-sm-6 col-md-3 p0">
                            <div class="box-two proerty-item">
                                <div class="item-thumb">
                                    <a href="./${mainList.property_id}" ><img src="resources/images/property/demo/property-2.jpg"></a>
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
                                   <a href="./list/searchList"> <i class="fa fa-th"></i></a>
                                </div>
                                
                                <div class="more-entry overflow">
                                    <h5><a href="./list/searchList" >CAN'T DECIDE ? </a></h5>
                                    <h5 class="tree-sub-ttl">Show all properties</h5>
                                    <button class="btn border-btn more-black" value="All properties" onclick="location.href='./list/searchList'">All properties</button>
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
                                        <h2>TEMA SEARCH </h2>
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
                                               <a href="./list/conditionList/1"> <i class="pe-7s-home pe-4x"></i></a>
                                            </div>
                                            <h3>보증금 1000만원 이하 오피스텔</h3>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 m-padding">
                                        <div class="welcome-estate">
                                            <div class="welcome-icon">
                                                <a href="./list/conditionList/2"><i class="fa fa-automobile fa1"></i></a>
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
                                                 <a href="./list/conditionList/3"><i class="fa fa-paw fa1"></i></a>
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
                        <h2>POPULAR AGENT</h2> 
                    </div>
                </div>

                <div class="row">
                    <div class="row testimonial">
                        <div class="col-md-12">
                            <div id="testimonial-slider">
                                <c:forEach var="popularUserList" items="${popularUserList}" end="5">
                                <a href="./list/agentList/${popularUserList.user_email} "> 
                                <div class="item">
                                    <div class="client-text">                                
                                       <p>${popularUserList.user_about }</p>
                                        <h4><strong>${popularUserList.user_name }, </strong><i>${popularUserList.user_company}</i></h4>
                                    </div>
                                    <div class="client-face wow fadeInRight" data-wow-delay=".9s"> 
                                       <img src="resources/images/user/${popularUserList.user_photo }" alt="">
                                    </div>
                                </div>
                                </a>
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
        
        <script src="//rawgit.com/Soldier-B/jquery.toast/master/jquery.toast/jquery.toast.min.js"></script>
        
		<script>
		     $(function() {
		    	 
		    	 $.toast.config.align = 'right';
	        	 $.toast.config.width = 200;
		     	
		    	// 푸터에 있는 퀵 서치창에 매물번호를 입력하고 버튼을 클릭
		    	// DB에 있고 상태가 open이면 매물 상세보기 화면으로 이동
		    	// DB에 없거나 상태가 다르면 toast 또는 notify 띄움
				// 1. 없는 매물번호 입니다. (hidden 또는 없음)
				// 2. 허위매물로 신고된 번호 입니다. (fake)
				// 3. 거래완료된 번호 입니다. (sold)
		     	$("#quickSearch").click(function() {
		     		// ajax 통신 결과값에 따라 if문으로 처리	     		
		     		  $.ajax({
		 		 		dataType : 'json',
						url:'./quickSearch',
						type : 'POST',
						data : {'property_id' : $("#property_id").val()},
						success : function(data){
						if(data==1) {	
    	                    	$.toast('<div style="text-align: center; height: 30px; margin-top:10px;">없는 매물 번호입니다. </div>', {
    					            duration: 3000,
    					            type: 'danger'
    					          });
						}else if(data == 2){
							$.toast('<div style="text-align: center; height: 30px; margin-top:10px;">허위매물로 신고된 번호입니다. </div>', {
					            duration: 3000,
					            type: 'danger'
					          });
						}else if(data == 3){
							$.toast('<div style="text-align: center; height: 30px; margin-top:10px;">거래완료된 번호입니다. </div>', {
					            duration: 3000,
					            type: 'danger'
					          });
						}else if(data == 0){
							window.open("./" + $("#property_id").val());
						}else{$.toast('<div style="text-align: center; height: 30px; margin-top:10px;">잘못된 요청입니다. </div>', {
				            duration: 3000,
				            type: 'danger'
				          });}
					}

				});	        
		     	});
		    	
		    	// 푸터에 있는 허위매물 신고 링크 클릭
		    	// 모달 다이얼로그창으로 띄워서 처리함
		    	$(".report").on("click", function() {
					
		    		alert("허위매물 신고 처리");
				});
		    	
		    	$("#priceRange1").hide();
		    	
		    	$("#lunchBegins").change(function() {
		    		if($("#lunchBegins").val() == '전세' | $("#lunchBegins").val() == '매매'){
					$("#hidetest").hide();
					$("#priceRange2").hide();
					$("#priceRange1").show();

		    		}else{
		    			$("#hidetest").show();
		    			
		    			$("#priceRange1").hide();	
		    			$("#priceRange1").attr("style","display:none");
		    			$("#priceRange2").show();

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