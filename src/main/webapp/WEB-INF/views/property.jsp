<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>GARO ESTATE | Property  page</title>
        <meta name="description" content="GARO is a real-estate template">
        <meta name="author" content="SEMOBANG">
        <meta name="keyword" content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
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
        <link rel="stylesheet" href="resources/assets/css/lightslider.min.css">
        
       <script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

        <style type="text/css">
        	.item-thumb img{
        		max-width : 100%;
        		height: 190px;
        	}
        	.p-b-15{
        		text-align: center;
        	}
        	.property-info-label{
        		margin-top: 5px;
        	}
        	.favorite-and-print i{color: #fff; font-size:35px;}
        	.favorite-and-print i:hover {cursor: pointer; color: #f00;}
        	#propertyID {font-size: 17px;}
        </style>
        
    </head>
    <body>
	<h1>${member.user_email}</h1>
        <div id="preloader">
            <div id="status">&nbsp;</div>
        </div>
        <!-- Body content -->
		<!-- Start Header -->
		<jsp:include page="header.jsp"></jsp:include>
		<!-- End Header -->



        <div class="page-head"> 
            <div class="container">
                <div class="row">
                    <div class="page-head-content">
                        <h1 class="page-title">Super nice villa </h1>               
                    </div>
                </div>
            </div>
        </div>
        <!-- End page header -->

        <!-- property area -->
        <div class="content-area single-property" style="background-color: #FCFCFC;">&nbsp;
            <div class="container">   

                <div class="clearfix padding-top-40" >

                    <div class="col-md-8 single-property-content prp-style-2">
                        <div class="">
                            <div class="row">
                                <div class="light-slide-item">
                                
                                <div class="favorite-and-print">
                                            <a class="add-to-fav2" id="love">
                                                <i class="fa fa-heart-o" id="heart"></i>
                                            </a> &nbsp;

                                            <a class="printer-icon2 "  data-toggle="modal" data-target="#myModal">
                                                <i class="fa fa-warning"></i> 
                                            </a>
                          		 </div> 
                                        
                                         <!-- MODAL -->
                                        <div class="modal fade" id="myModal" role="dialog">
										    <div class="modal-dialog">
										      <div class="modal-content">
										        <div class="modal-header">
										          <button type="button" class="close" data-dismiss="modal">&times;</button>
										          <h4 class="modal-title">신고하기</h4>
										        </div>
										        <div class="modal-body">
										          	<table class="table">
										          		<tr>
										          			<td>작성자</td>
										          			<td> <input class="form-control" id="userName" type="text" value="${member.getUser_email()}"> </td>
										          		</tr>
										          		<tr>
										          			<td>매물번호</td>
										          			<td> <input class="form-control" id="propertyId" type="text" value="${pvo.property_id}" readonly="readonly"> </td>
										          		</tr>
										          		<tr>
										          			<td>중개인</td>
										          			<td> <input class="form-control" id="propertyUser" type="text" value="${pvo.property_user}" readonly="readonly"> </td>
										          		</tr>
										          		<tr>
										          			<td>내용</td>
										          			<td> <textarea class="form-control" id="contents" rows="10"></textarea> </td>
										          		</tr>
										          	</table>
										        </div>
										        <div class="modal-footer">
										          <button id="modalclose" type="button" class="btn btn-default" data-dismiss="modal">Close</button>
										          <button id="modalsubmit" type="button" class="btn btn-submit">전송</button>
										        </div>
 
										        
										      </div>
										      
										    </div>
										  </div> 
                                            
                                    <div class="clearfix">
                                        <ul id="image-gallery" class="gallery list-unstyled cS-hidden">
                                           <li data-thumb="resources/images/property/demo/property1.jpg"> 
                                                <img src="resources/images/property/demo/property1.jpg" /> 
                                            </li>
                                            <li data-thumb="resources/images/property/demo/property2.jpg"> 
                                                <img src="resources/images/property/demo/property2.jpg" />
                                            </li>
                                            <li data-thumb="resources/images/property/demo/property3.jpg"> 
                                                <img src="resources/images/property/demo/property3.jpg" />
                                            </li>
                                            <li data-thumb="resources/images/property/demo/property4.jpg"> 
                                                <img src="resources/images/property/demo/property4.jpg" />
                                            </li>                                         
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="single-property-wrapper">

								<div class="section">
								 
								</div>
                                <div class="section">
                                    <h4 class="s-property-title">Description</h4>
                                    <div class="s-property-content">
                                        <p>Nulla quis dapibus nisl. Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium. Nullam sed arcu ultricies commodo arcu nec pretium. Nullam sed arcu ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium. Nullam sed arcu ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium. Nullam sed arcu ultricies                                </p>
                                    </div>
                                </div>
                                <!-- End description area  -->

                                <div class="section additional-details">

                                    <h4 class="s-property-title">Additional Details</h4>

                                    <ul class="additional-details-list clearfix">
                                        <li>
                                            <span class="col-xs-6 col-sm-4 col-md-4 add-d-title">주소</span>
                                            <span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">Yes</span>
                                        </li>

                                        <li>
                                            <span class="col-xs-6 col-sm-4 col-md-4 add-d-title">카테고리</span>
                                            <span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">2003</span>
                                        </li>
                                        <li>
                                            <span class="col-xs-6 col-sm-4 col-md-4 add-d-title">타입</span>
                                            <span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">2 Or More Spaces,Covered Parking,Valet Parking</span>
                                        </li>

                                        <li>
                                            <span class="col-xs-6 col-sm-4 col-md-4 add-d-title">화장실</span>
                                            <span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">Yes</span>
                                        </li>

                                    </ul>
                                </div>  
                                <!-- End additional-details area  -->

                                <div class="section property-features">      

                                    <h4 class="s-property-title">Features</h4>                            
                                    <ul>
                                        <li><a href="properties.html">Swimming Pool</a></li>   
                                        <li><a href="properties.html">3 Stories</a></li>
                                        <li><a href="properties.html">Central Cooling</a></li>
                                        <li><a href="properties.html">Jog Path 2</a></li>
                                        <li><a href="properties.html">2 Lawn</a></li>
                                        <li><a href="properties.html">Bike Path</a></li>
                                    </ul>

                                </div>
                                <!-- End features area  -->

								<div class="section property-video"> 
                                    <h4 class="s-property-title">Property Video</h4> 
                                    <div class="video-thumb">
                                        <a class="video-popup" href="yout" title="Virtual Tour">
                                            <img src="assets/img/property-video.jpg" class="img-responsive wp-post-image" alt="Exterior">            
                                        </a>
                                    </div>
								</div>

						<!-- 지도 -->
						<div class="section property-video"> 
						<div id="map" style="width:100%;height:350px;"></div>
						
						<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b4fe286f637aa130ecff82f060b73320&libraries=services"></script>
						<script>
						var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
						    mapOption = {
						        center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
						        level: 3 // 지도의 확대 레벨
						    };  
						
						// 지도를 생성합니다    
						var map = new daum.maps.Map(mapContainer, mapOption); 
						
						// 주소-좌표 변환 객체를 생성합니다
						var geocoder = new daum.maps.services.Geocoder();
						
						// 주소로 좌표를 검색합니다
						geocoder.addressSearch('부산 부산진구 동천로 109', function(result, status) {
						
						    // 정상적으로 검색이 완료됐으면 
						     if (status === daum.maps.services.Status.OK) {
						
						        var coords = new daum.maps.LatLng(result[0].y, result[0].x);
						
						        // 결과값으로 받은 위치를 마커로 표시합니다
						        var marker = new daum.maps.Marker({
						            map: map,
						            position: coords
						        });
						
						        // 인포윈도우로 장소에 대한 설명을 표시합니다
						        var infowindow = new daum.maps.InfoWindow({
						            content: '<div style="width:150px;text-align:center;padding:6px 0;">우리회사</div>'
						        });
						        infowindow.open(map, marker);
						
						        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
						        map.setCenter(coords);
						    } 
						});    
						</script>
						</div>                         
                                <!-- End 지도 area  -->
                            </div>
                        </div>

                        <div class="similar-post-section padding-top-40"> 
                            <div id="prop-smlr-slide_0"> 
                                <div class="box-two proerty-item">
                                    <div class="item-thumb">
                                        <a href="property-1.html" ><img src="resources/images/property/demo/property-1.jpg"></a>
                                    </div>
                                    <div class="item-entry overflow">
                                        <h5><a href="property-1.html"> Super nice villa </a></h5>
                                        <div class="dot-hr"></div>
                                        <span class="pull-left"><b> Area :</b> 120m </span>
                                        <span class="proerty-price pull-right"> $ 300,000</span> 
                                    </div>
                                </div> 
                                <div class="box-two proerty-item">
                                    <div class="item-thumb">
                                        <a href="property-1.html" ><img src="resources/images/property/demo/property-2.jpg"></a>
                                    </div>
                                    <div class="item-entry overflow">
                                        <h5><a href="property-1.html"> Super nice villa </a></h5>
                                        <div class="dot-hr"></div>
                                        <span class="pull-left"><b> Area :</b> 120m </span>
                                        <span class="proerty-price pull-right"> $ 300,000</span> 
                                    </div>
                                </div> 
                                <div class="box-two proerty-item">
                                    <div class="item-thumb">
                                        <a href="property-1.html" ><img src="resources/images/property/demo/property-3.jpg"></a>
                                    </div>
                                    <div class="item-entry overflow">
                                        <h5><a href="property-1.html"> Super nice villa </a></h5>
                                        <div class="dot-hr"></div>
                                        <span class="pull-left"><b> Area :</b> 120m </span>
                                        <span class="proerty-price pull-right"> $ 300,000</span> 
                                    </div>
                                </div> 
                                <div class="box-two proerty-item">
                                    <div class="item-thumb">
                                        <a href="property-1.html" ><img src="resources/images/property/demo/property-4.jpg"></a>
                                    </div>
                                    <div class="item-entry overflow">
                                        <h5><a href="property-1.html"> Super nice villa </a></h5>
                                        <div class="dot-hr"></div>
                                        <span class="pull-left"><b> Area :</b> 120m </span>
                                        <span class="proerty-price pull-right"> $ 300,000</span> 
                                    </div>
                                </div> 
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 p0">
                        <aside class="sidebar sidebar-property blog-asside-right property-style2">
                            <div class="dealer-widget">
                                <div class="dealer-content">
                                    <div class="inner-wrapper">
                                        <div class="single-property-header">  
                                        	<h1 class="property-title" id="propertyID">매물번호 : ${pvo.property_id}</h1>                                        
                                            <h1 class="property-title">${pvo.property_title}</h1>
                                            <span class="property-price">${pvo.property_price}</span>  
                                        </div>

                                         <div class="property-meta entry-meta clearfix ">   
                                         
                                         <span class="property-info-label">옵션</span> <br>
	
                                            <div class="col-xs-4 col-sm-4 col-md-4 p-b-15" id="search_option1">
                                                <span class="property-info-icon icon-tag">                                                                                      
                                                    <img src="resources/images/icon/full_orange.png"><br>
                                                </span>
                                                <span class="property-info-entry">
                                                    <span class="property-info-label">풀옵션</span>
                                                </span>
                                            </div>
                                            
                                            <div class="col-xs-4 col-sm-4 col-md-4 p-b-15" id="search_option2">
                                                <span class="property-info-icon icon-tag">                                                                                      
                                                    <img src="resources/images/icon/parking_orange.png">	<br>
                                                </span>
                                                <span class="property-info-entry">
                                                    <span class="property-info-label">주차</span>
                                                </span>
                                            </div>
                                            
                                            <div class="col-xs-4 col-sm-4 col-md-4 p-b-15" id="search_option3">
                                                <span class="property-info-icon icon-tag">                                                                                      
                                                    <img src="resources/images/icon/lift_orange.png">
                                                </span>
                                                <span class="property-info-entry">
                                                    <span class="property-info-label">엘리베이터</span>
                                                </span>
                                            </div>

                                            <div class="col-xs-4 col-sm-4 col-md-4 p-b-15" id="search_option4">
                                                <span class="property-info icon-area">
                                                    <img src="resources/images/icon/animal_orange.png">
                                                </span>
                                                <span class="property-info-entry">
                                                    <span class="property-info-label">반려동물</span>
                                                </span>
                                            </div>

                                            <div class="col-xs-4 col-sm-4 col-md-4 p-b-15" id="search_option5">
                                                <span class="property-info-icon icon-bed">
                                                    <img src="resources/images/icon/heat_orange.png">
                                                </span>
                                                <span class="property-info-entry">
                                                    <span class="property-info-label">개별난방</span>
                                                </span>
                                            </div>

                                            <div class="col-xs-4 col-sm-4 col-md-4 p-b-15" id="search_option6">
                                                <span class="property-info-icon icon-bath">
                                                    <img src="resources/images/icon/veranda_orange.png">
                                                </span>
                                                <span class="property-info-entry">
                                                    <span class="property-info-label">베란다</span>
                                                </span>
                                            </div>
                                            <div class="col-xs-4 col-sm-4 col-md-4 p-b-15" id="search_option7">
                                                <span class="property-info-icon icon-bath">
                                                    <img src="resources/images/icon/wifi_orange.png">
                                                </span>
                                                <span class="property-info-entry">
                                                    <span class="property-info-label">인터넷</span>
                                                </span>
                                            </div>

                                            <div class="col-xs-4 col-sm-4 col-md-4 p-b-15" id="search_option8">
                                                <span class="property-info-icon icon-garage">
                                                    <img src="resources/images/icon/Influence_orange.png">
                                                </span>
                                                <span class="property-info-entry">
                                                    <span class="property-info-label">역세권</span>
                                                </span>
                                            </div>

                                            <div class="col-xs-4 col-sm-4 col-md-4 p-b-15" id="search_option9">
                                                <span class="property-info-icon icon-garage">
                                                    <img src="resources/images/icon/compass_orange.png">
                                                </span>	
                                                <span class="property-info-entry">
                                                    <span class="property-info-label">남향</span>
                                                </span>
                                            </div>


                                        </div>
                                        <div class="dealer-section-space">
                                            <span>Dealer information</span>
                                        </div>
                                        <div class="clear">
                                            <div class="col-xs-4 col-sm-4 dealer-face">
                                                <a href="">
                                                    <img src="resources/images/user/client-face1.png" class="img-circle">
                                                </a>
                                            </div>
                                            <div class="col-xs-8 col-sm-8 ">
                                                <h3 class="dealer-name">
                                                    <a href="">${pvo.property_user}</a> <br>
                                                    <span>Real Estate Agent</span>        
                                                </h3>
                                                <div class="dealer-social-media">
                                                    <a class="twitter" target="_blank" href="">
                                                        <i class="fa fa-twitter"></i>
                                                    </a>
                                                    <a class="facebook" target="_blank" href="">
                                                        <i class="fa fa-facebook"></i>
                                                    </a>
                                                    <a class="instagram" target="_blank" href="">
                                                        <i class="fa fa-instagram"></i>
                                                    </a>       
                                                </div>

                                            </div>
                                        </div>

                                        <div class="clear">
                                            <ul class="dealer-contacts">                                       
                                                <li><i class="pe-7s-map-marker strong"> </i> 9089 your adress her</li>
                                                <li><i class="pe-7s-mail strong"> </i> email@yourcompany.com</li>
                                                <li><i class="pe-7s-call strong"> </i> +1 908 967 5906</li>
                                                <li><i class="pe-7s-call strong"> </i> +1 908 967 5906</li>
                                            </ul>
                                            <p>Duis mollis  blandit tempus porttitor curabiturDuis mollis  blandit tempus porttitor curabitur , est non…</p>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            
                            
                      <div class="panel panel-default sidebar-menu similar-property-wdg wow fadeInRight animated">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Agent Properties</h3>
                                </div>
                                <div class="panel-body recent-property-widget">
                                        <ul>
                                         <c:forEach var="agentList" items="${agentList}">
                                        <li>
                                            <div class="col-md-3 col-sm-3 col-xs-3 blg-thumb p0">
                                                <a href="single.html"><img src="resources/images/property/demo/small-property-2.jpg"></a>
                                                <span class="property-seeker">
                                                    <b class="b-1">A</b>
                                                    <b class="b-2">S</b>
                                                </span>
                                            </div>
                                            <div class="col-md-8 col-sm-8 col-xs-8 blg-entry">
                                                <h6> <a href="single.html">${agentList.property_title} </a></h6>
                                                <span class="property-price">${agentList.property_price}</span>
                                            </div>
                                        </li>
										</c:forEach>
                                    </ul>
                                </div>
                            </div>  


                            <div class="panel panel-default sidebar-menu wow fadeInRight animated" >
                                <div class="panel-heading">
                                    <h3 class="panel-title">Smart search</h3>
                                </div>
                                <div class="panel-body search-widget">
                                    <form action="./list/searchList2" class=" form-inline"> 

                                        <fieldset>
                                            <div class="row">
                                                <div class="col-xs-6">

                                                    <select name="search_category" id="search_category" class="show-tick form-control" title="Select Your category">
                                                        <option value="월세">월세</option>
				                                        <option value="전세">전세</option>
				                                        <option value="매매">매매</option>
				                                    </select>
                                                </div>
                                                <div class="col-xs-6">

                                                    <select name="search_type" id="search_type" class="show-tick form-control" title="Select your type">
                                                        <option value="원룸+">원룸+ </option>
				                                        <option value="오피스텔">오피스텔 </option>
				                                        <option value="빌라">빌라</option>
				                                        <option value="아파트">아파트</option>
				                                        <option value="상가/사무실">상가/사무실</option>  
				
				                                    </select>
                                                </div>
                                            </div>
                                        </fieldset>
                                        
                                        <fieldset>
                                            <div class="row">
                                                <div class="col-xs-6">

                                                    <select id="searchCity" name="search_city" class="form-control" data-live-search="true" data-live-search-style="begins" title="Select Your City">

                                                        <c:forEach var="cityList" items="${cityList}"> 
				                                        <option value="${cityList}">${cityList}</option>
				                                        </c:forEach>
				                                        
                                                    </select>
                                                </div>
                                                <div class="col-xs-6">
													<select id="searchGu" class="form-control" name="search_gu">
				                                  		<c:forEach var="guList" items="${guList}"> 
				                                        <option value="${guList}">${guList}</option>
				                                        </c:forEach>
				                                  	</select>
                                                </div>
                                            </div>
                                        </fieldset>

                                        <fieldset class="padding-5">
                                            <div class="row">
                                                <div class="col-xs-6">
                                                
                                                <div id="priceRange1">
		                                            <label for="price-range">가격 (￦/만원) : </label>
		                                            <input type="text" class="span2" value="${svo.search_min_price },${svo.search_max_price }" data-slider-min="1000" 
		                                                   data-slider-max="100000" data-slider-step="500" 
		                                                   data-slider-value="[${svo.search_min_price },${svo.search_max_price }]" id="price-range" name="search_price"><br />
		                                            <b class="pull-left color">1000</b> 
		                                            <b class="pull-right color">100000 이상</b>
		                                        </div>

		                                        <div id="priceRange2">
		                                            <label for="property-geo">월세 (￦/만원) : </label>
		                                            <input type="text" class="span2" value="${svo.search_min_price2 },${svo.search_max_price2 }" data-slider-min="30" 
		                                                   data-slider-max="500" data-slider-step="10" 
		                                                   data-slider-value="[${svo.search_min_price2 },${svo.search_max_price2 }]" id="property-geo" name="search_price2"><br />
		                                            <b class="pull-left color">30 이하</b> 
		                                            <b class="pull-right color">500 이상</b>
		                                        </div>
                                                                                               
                                                </div>
                                                <div class="col-xs-6">
                                                <div id="hidetest">
                                                    <label for="property-geo">보증금</label>
                                                    <input type="text" class="span2" value="${svo.search_min_deposit },${svo.search_max_deposit }" data-slider-min="500" 
                                                           data-slider-max="10000" data-slider-step="100" 
                                                           data-slider-value="[${svo.search_min_deposit },${svo.search_max_deposit }]" id="property-geo2" ><br />
                                                    <b class="pull-left color">500 이하</b> 
                                                    <b class="pull-right color">10000 이상</b>                                                
                                                </div>
                                                </div>                                            
                                            </div>
                                        </fieldset>                                

                                        <fieldset class="padding-5">
                                            <div class="row">
                                                <div class="col-xs-6">
                                                    <label for="price-range">수용면적 (평형) :</label>
                                                    <input type="text" class="span2" value="${svo.search_min_size },${svo.search_max_size}" data-slider-min="0" 
                                                           data-slider-max="100" data-slider-step="5" 
                                                           data-slider-value="[${svo.search_min_size },${svo.search_max_size}]" id="min-baths" ><br />
                                                    <b class="pull-left color">1</b> 
                                                    <b class="pull-right color">100</b>                                                
                                                </div>

                                                <div class="col-xs-6">
                                                    <label for="property-geo">방개수 </label>
                                                    <input type="text" class="span2" value="${svo.search_min_bedroom },${svo.search_max_bedroom}" data-slider-min="1" 
                                                           data-slider-max="10" data-slider-step="1" 
                                                           data-slider-value="[${svo.search_min_bedroom },${svo.search_max_bedroom}]" id="min-bed" ><br />
                                                    <b class="pull-left color">1</b> 
                                                    <b class="pull-right color">10</b>
                                                </div>
                                                
                                                
                                            </div>
                                        </fieldset>

                                        <fieldset class="padding-5">
                                            <div class="row">
                                                <div class="col-xs-6">
                                                    <div class="checkbox">
                                                        <label> <input type="checkbox" checked> Full Option</label>
                                                    </div> 
                                                </div>

                                                <div class="col-xs-6">
                                                    <div class="checkbox">
                                                        <label> <input type="checkbox"> 주차</label>
                                                    </div>
                                                </div>                                            
                                            </div>
                                        </fieldset>

                                        <fieldset class="padding-5">
                                            <div class="row">
                                                <div class="col-xs-6"> 
                                                    <div class="checkbox">
                                                        <label> <input type="checkbox" checked> 엘리베이터</label>
                                                    </div>
                                                </div>  
                                                <div class="col-xs-6"> 
                                                    <div class="checkbox">
                                                        <label> <input type="checkbox" checked> 반려동물 </label>
                                                    </div>
                                                </div>  
                                            </div>
                                        </fieldset>

                                        <fieldset class="padding-5">
                                            <div class="row">
                                                <div class="col-xs-6"> 
                                                    <div class="checkbox">
                                                        <label><input type="checkbox"> 개별 난방 </label>
                                                    </div>
                                                </div>  
                                                <div class="col-xs-6"> 
                                                    <div class="checkbox">
                                                        <label> <input type="checkbox"> 베란다</label>
                                                    </div>
                                                </div>  
                                            </div>
                                        </fieldset>

                                        <fieldset class="padding-5">
                                            <div class="row">
                                                <div class="col-xs-6"> 
                                                    <div class="checkbox">
                                                        <label>  <input type="checkbox" checked> 인터넷 </label>
                                                    </div>
                                                </div>  
                                                <div class="col-xs-6"> 
                                                    <div class="checkbox">
                                                        <label>  <input type="checkbox"> 역세권 </label>
                                                    </div>
                                                </div>  
                                            </div>
                                        </fieldset>

                                        <fieldset class="padding-5">
                                            <div class="row">
                                                <div class="col-xs-12"> 
                                                    <div class="checkbox">
                                                        <label>  <input type="checkbox"> 남향 </label>
                                                    </div>
                                                </div>  
                                            </div>
                                        </fieldset>

                                        <fieldset >
                                            <div class="row">
                                                <div class="col-xs-12">  
                                                    <input class="button btn largesearch-btn" value="Search" type="submit">
                                                </div>  
                                            </div>
                                        </fieldset>                                     
                                    </form>
                                </div>
                            </div>

                        </aside>
                    </div>

                </div>

            </div>
        </div>

        <!-- Footer area-->
        <div class="footer-area">

            <div class=" footer">
                <div class="container">
                    <div class="row">

                        <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                            <div class="single-footer">
                                <h4>About us </h4>
                                <div class="footer-title-line"></div>

                                <img src="assets/img/footer-logo.png" alt="" class="wow pulse" data-wow-delay="1s">
                                <p>Lorem ipsum dolor cum necessitatibus su quisquam molestias. Vel unde, blanditiis.</p>
                                <ul class="footer-adress">
                                    <li><i class="pe-7s-map-marker strong"> </i> 9089 your adress her</li>
                                    <li><i class="pe-7s-mail strong"> </i> email@yourcompany.com</li>
                                    <li><i class="pe-7s-call strong"> </i> +1 908 967 5906</li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                            <div class="single-footer">
                                <h4>Quick links </h4>
                                <div class="footer-title-line"></div>
                                <ul class="footer-menu">
                                    <li><a href="properties.html">Properties</a>  </li> 
                                    <li><a href="#">Services</a>  </li> 
                                    <li><a href="submit-property.html">Submit property </a></li> 
                                    <li><a href="contact.html">Contact us</a></li> 
                                    <li><a href="faq.html">fqa</a>  </li> 
                                    <li><a href="faq.html">Terms </a>  </li> 
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                            <div class="single-footer">
                                <h4>Last News</h4>
                                <div class="footer-title-line"></div>
                                <ul class="footer-blog">
                                    <li>
                                        <div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0">
                                            <a href="single.html">
                                                <img src="assets/img/demo/small-proerty-2.jpg">
                                            </a>
                                            <span class="blg-date">12-12-2016</span>

                                        </div>
                                        <div class="col-md-8  col-sm-8 col-xs-8  blg-entry">
                                            <h6> <a href="single.html">Add news functions </a></h6> 
                                            <p style="line-height: 17px; padding: 8px 2px;">Lorem ipsum dolor sit amet, nulla ...</p>
                                        </div>
                                    </li> 

                                    <li>
                                        <div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0">
                                            <a href="single.html">
                                                <img src="assets/img/demo/small-proerty-2.jpg">
                                            </a>
                                            <span class="blg-date">12-12-2016</span>

                                        </div>
                                        <div class="col-md-8  col-sm-8 col-xs-8  blg-entry">
                                            <h6> <a href="single.html">Add news functions </a></h6> 
                                            <p style="line-height: 17px; padding: 8px 2px;">Lorem ipsum dolor sit amet, nulla ...</p>
                                        </div>
                                    </li> 

                                    <li>
                                        <div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0">
                                            <a href="single.html">
                                                <img src="assets/img/demo/small-proerty-2.jpg">
                                            </a>
                                            <span class="blg-date">12-12-2016</span>

                                        </div>
                                        <div class="col-md-8  col-sm-8 col-xs-8  blg-entry">
                                            <h6> <a href="single.html">Add news functions </a></h6> 
                                            <p style="line-height: 17px; padding: 8px 2px;">Lorem ipsum dolor sit amet, nulla ...</p>
                                        </div>
                                    </li> 


                                </ul>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                            <div class="single-footer news-letter">
                                <h4>Stay in touch</h4>
                                <div class="footer-title-line"></div>
                                <p>Lorem ipsum dolor sit amet, nulla  suscipit similique quisquam molestias. Vel unde, blanditiis.</p>

                                <form>
                                    <div class="input-group">
                                        <input class="form-control" type="text" placeholder="E-mail ... ">
                                        <span class="input-group-btn">
                                            <button class="btn btn-primary subscribe" type="button"><i class="pe-7s-paper-plane pe-2x"></i></button>
                                        </span>
                                    </div>
                                    <!-- /input-group -->
                                </form> 

                                <div class="social pull-right"> 
                                    <ul>
                                        <li><a class="wow fadeInUp animated" href="https://twitter.com/kimarotec"><i class="fa fa-twitter"></i></a></li>
                                        <li><a class="wow fadeInUp animated" href="https://www.facebook.com/kimarotec" data-wow-delay="0.2s"><i class="fa fa-facebook"></i></a></li>
                                        <li><a class="wow fadeInUp animated" href="https://plus.google.com/kimarotec" data-wow-delay="0.3s"><i class="fa fa-google-plus"></i></a></li>
                                        <li><a class="wow fadeInUp animated" href="https://instagram.com/kimarotec" data-wow-delay="0.4s"><i class="fa fa-instagram"></i></a></li>
                                        <li><a class="wow fadeInUp animated" href="https://instagram.com/kimarotec" data-wow-delay="0.6s"><i class="fa fa-dribbble"></i></a></li>
                                    </ul> 
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <div class="footer-copy text-center">
                <div class="container">
                    <div class="row">
                        <div class="pull-left">
                            <span> (C) <a href="http://www.KimaroTec.com">KimaroTheme</a> , All rights reserved 2016  </span> 
                        </div> 
                        <div class="bottom-menu pull-right"> 
                            <ul> 
                                <li><a class="wow fadeInUp animated" href="#" data-wow-delay="0.2s">Home</a></li>
                                <li><a class="wow fadeInUp animated" href="#" data-wow-delay="0.3s">Property</a></li>
                                <li><a class="wow fadeInUp animated" href="#" data-wow-delay="0.4s">Faq</a></li>
                                <li><a class="wow fadeInUp animated" href="#" data-wow-delay="0.6s">Contact</a></li>
                            </ul> 
                        </div>
                    </div>
                </div>
            </div>

        </div>


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
        <script type="text/javascript" src="resources/assets/js/lightslider.min.js"></script>
        

        <script>
        $(document).ready(function () {

                                $('#image-gallery').lightSlider({
                                    gallery: true,
                                    item: 1,
                                    thumbItem: 9,
                                    slideMargin: 0,
                                    speed: 500,
                                    auto: true,
                                    loop: true,
                                    onSliderLoad: function () {
                                        $('#image-gallery').removeClass('cS-hidden');
                                    }
                                });
       	
        });						   
        </script>

        
		<script type="text/javascript">
	        $(document).ready(function () {
	            $("#search_option1").hide();
	            $("#search_option2").hide();
	            $("#search_option3").hide();
	            $("#search_option4").hide();
	            $("#search_option5").hide();
	            $("#search_option6").hide();
	            $("#search_option7").hide();
	            $("#search_option8").hide();
	            $("#search_option9").hide();
	            
	            if((${pvo.property_option}&1) != 0){	 $("#search_option1").show();}
	            if((${pvo.property_option}&2) != 0){	 $("#search_option2").show();}
	            if((${pvo.property_option}&4) != 0){	 $("#search_option3").show();}
	            if((${pvo.property_option}&8) != 0){	 $("#search_option4").show();}
	            if((${pvo.property_option}&16) != 0){	 $("#search_option5").show();}
	            if((${pvo.property_option}&32) != 0){	 $("#search_option6").show();}
	            if((${pvo.property_option}&64) != 0){	 $("#search_option7").show();}
	            if((${pvo.property_option}&128) != 0){	 $("#search_option8").show();}
	            if((${pvo.property_option}&256) != 0){	 $("#search_option9").show();}
	            
	        	$("#search_category").val('${svo.search_category}');
	        	$("#search_type").val('${svo.search_type}');
	        	$("#searchCity").val('${svo.search_city}');	
 	       		$("#searchGu").val('${svo.search_gu}');

	            
       			if($("#search_category").val() == '전세' | $("#search_category").val() == '매매'){
      				$("#hidetest").hide();
					$("#priceRange2").hide();
					$("#priceRange1").show();
      			}else{
      				$("#hidetest").show();
	    			
	    			$("#priceRange1").hide();	
	    			$("#priceRange2").show();
      			}
	            
	            
  	            $("#search_category").change(function() {
		    		if($("#search_category").val() == '전세' | $("#search_category").val() == '매매'){
					$("#hidetest").hide();
					$("#priceRange2").hide();
					$("#priceRange1").show();

		    		}else{
		    			$("#hidetest").show();
		    			
		    			$("#priceRange1").hide();	
		    			$("#priceRange2").show();

		    		}
				});  

            if(${heartval} == 1){$('#heart').prop("class","fa fa-heart");}
            
            $('#love').on("click", function() {				
				var sendData = {'property_id' : ${pvo.property_id}, 'user_email' : '${member.user_email}'};
				$.ajax({
					url:'./love/onLove',
					type : 'POST',
					data : sendData,
					success : function(data){
	                    if(data==0) {
	                    	alert("좋아요증가")
	                        $('#heart').prop("class","fa fa-heart");
	                    }
	                    else{
	                    	alert("좋아요감소")
	                        $('#heart').prop("class","fa fa-heart-o");
	                    } 
	                }
				});
				
			});
            
            
       	    $("#modalsubmit").on("click", function(){
       	    		var sendData = {'userName' : $("#userName").val(), 'propertyId' : $("#propertyId").val(), 
       	    						'propertyUser' : $("#propertyUser").val(), 'contents' : $("#contents").val()};
       	    	
		 		 	   $.ajax({
		 		 		dataType : 'json',
						url:'./email',
						type : 'POST',
						data : sendData,
						success : function(data){
							alert("메일보내기 성공")
							$("#userName").val("${member.user_email}");
							$("#contents").val("");
							$("#myModal").modal("toggle");
						}
					});
		 		 	
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
       	    
		});

        </script> 

    </body>
</html>