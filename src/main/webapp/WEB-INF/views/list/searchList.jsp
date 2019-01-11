<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>searchList</title>
        <meta name="description" content="GARO is a real-estate template">
        <meta name="author" content="Kimarotec">
        <meta name="keyword" content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
        <meta name="viewport" content="width=device-width, initial-scale=1">

		<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>

        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
        <link rel="icon" href="favicon.ico" type="image/x-icon">

        
        
        <link rel="stylesheet" href="../resources/assets/css/normalize.css">
        <link rel="stylesheet" href="../resources/assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="../resources/assets/css/fontello.css">
        <link href="../resources/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet">
        <link href="../resources/assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
        <link href="../resources/assets/css/animate.css" rel="stylesheet" media="screen">
        <link rel="stylesheet" href="../resources/assets/css/bootstrap-select.min.css"> 
        <link rel="stylesheet" href="../resources/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="../resources/assets/css/icheck.min_all.css">
        <link rel="stylesheet" href="../resources/assets/css/price-range.css">
        <link rel="stylesheet" href="../resources/assets/css/owl.carousel.css">  
        <link rel="stylesheet" href="../resources/assets/css/owl.theme.css">
        <link rel="stylesheet" href="../resources/assets/css/owl.transitions.css">
        <link rel="stylesheet" href="../resources/assets/css/style.css">
        <link rel="stylesheet" href="../resources/assets/css/responsive.css">
               
	</head>

	<style>
		#active-pagination{background-color: #d27e04; color: white;}
		#getChecked{padding: 1px;}
		#property-icon img{margin-top: 3px;}
		.item-entry{height: 150px;}
	</style>


<body>
	
	<div id="preloader">
        <div id="status">&nbsp;</div>
    </div>
    <!-- Body content -->
	
	<!-- Start Header -->
	<jsp:include page="../header.jsp"></jsp:include>
	<!-- End Header -->
	
	<!-- property area -->
        <div class="properties-area recent-property" style="background-color: #FFF;">
            <div class="container">  
                <div class="row">
                	<div class="col-md-3 p0 padding-top-40">
                    <div class="blog-asside-right pr0">
                        <div class="panel panel-default sidebar-menu wow fadeInRight animated" >
                            <div class="panel-heading">
                                <h3 class="panel-title">Smart search</h3>
                            </div>
                            
                            <div class="panel-body search-widget">
                                <form action="./searchList" class=" form-inline" name="searchForm" id="searchForm" method="post">
                                
                                <input type="hidden" name="search_option" id="search_option">
                                
                                	 <fieldset>
                                        <div class="row">
                                        	<div class="col-xs-6">

                                                <select id="search_category" name="search_category" class="form-control" data-live-search="true" data-live-search-style="begins" title="Type">
			 										<option value="월세">월세</option>
			                                        <option value="전세">전세</option>
			                                        <option value="매매">매매</option>
                                                </select>
                                            </div>
                                                                               
                                             <div class="col-xs-6">

                                                <select id="search_type" name="search_type" class="form-control" data-live-search="true" data-live-search-style="begins" title="Category">
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
                                                           data-slider-value="[${svo.search_min_deposit },${svo.search_max_deposit }]" id="property-geo2" name="search_deposit"><br />
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
                                                           data-slider-value="[${svo.search_min_size },${svo.search_max_size}]" id="min-baths" name="search_size"><br />
                                                    <b class="pull-left color">1</b> 
                                                    <b class="pull-right color">100</b>                                                
                                                </div>

                                                <div class="col-xs-6">
                                                    <label for="property-geo">방개수 </label>
                                                    <input type="text" class="span2" value="${svo.search_min_bedroom },${svo.search_max_bedroom}" data-slider-min="1" 
                                                           data-slider-max="10" data-slider-step="1" 
                                                           data-slider-value="[${svo.search_min_bedroom },${svo.search_max_bedroom}]" id="min-bed" name="search_bedroom"><br />
                                                    <b class="pull-left color">1</b> 
                                                    <b class="pull-right color">10</b>
                                                </div>
                                        </div>
                                    </fieldset>
                                    
                                     <fieldset class="padding-5">

                                           <div class="row">
                                                <div class="col-xs-6">
                                                    <div class="checkbox">
		                                                <label>
		                                                    <input type="checkbox" id="opFull" name="optionValue" value="1"
		                                                    <c:if test="${searchOption1}"> checked="checked"</c:if>> FullOption
		                                                </label>
		                                            </div> 
                                                </div>

                                                <div class="col-xs-6">
                                                    <div class="checkbox">
                                                         <label>
                                                         
                                                         
                                                         	<input type="checkbox" id="opParking" name="optionValue" value="2" 
                                                         	<c:if test="${searchOption2}"> checked="checked"</c:if>> 주차
		                                                </label>
                                                    </div>
                                                </div>                                            
                                            </div>                                          
                                       
                                    </fieldset>
                                    
                                    <fieldset class="padding-5">
                                        <div class="row">
                                            <div class="col-xs-6"> 
                                                    <div class="checkbox">
                                                         <label>
		                                                    <input type="checkbox" id="opEle" name="optionValue" value="4"
		                                                    <c:if test="${searchOption4}"> checked="checked"</c:if>> 엘리베이터
		                                                </label>
                                                    </div>
                                                </div>  
                                                <div class="col-xs-6"> 
                                                    <div class="checkbox">
                                                         <label>
		                                                    <input type="checkbox" id="opPet" name="optionValue" value="8"
		                                                    <c:if test="${searchOption8}"> checked="checked"</c:if>> 반려동물
		                                                </label>
                                                    </div>
                                                </div>  
                                            </div> 
                                    </fieldset>
                                    
                                    <fieldset class="padding-5">
                                       <div class="row">
                                                <div class="col-xs-6"> 
                                                    <div class="checkbox">
                                                         <label>
		                                                    <input type="checkbox" id="opHeat" name="optionValue" value="16"
		                                                    <c:if test="${searchOption16}"> checked="checked"</c:if>> 개별난방
		                                                </label>
                                                    </div>
                                                </div>  
                                                <div class="col-xs-6"> 
                                                    <div class="checkbox">
                                                        <label>
		                                                    <input type="checkbox" id="opVer" name="optionValue" value="32"
		                                                    <c:if test="${searchOption32}"> checked="checked"</c:if>> 베란다
		                                                </label>
                                                    </div>
                                                </div>  
                                            </div>
                                    </fieldset>
                                    
                                     <fieldset class="padding-5">
                                         <div class="row">
                                                <div class="col-xs-6"> 
                                                    <div class="checkbox">
                                                         <label>
		                                                    <input type="checkbox" id="opInternet" name="optionValue" value="64"
		                                                    <c:if test="${searchOption64}"> checked="checked"</c:if>> 인터넷
		                                                </label>
                                                    </div>
                                                </div>  
                                                <div class="col-xs-6"> 
                                                    <div class="checkbox">
                                                         <label>
		                                                    <input type="checkbox" id="opSta" name="optionValue" value="128"
		                                                    <c:if test="${searchOption128}"> checked="checked"</c:if>> 역세권
		                                                </label>
                                                    </div>
                                                </div>  
                                            </div>
                                    </fieldset>
                                    
                                    
                                    <fieldset class="padding-5">
                                        <div class="row">
                                                <div class="col-xs-12"> 
                                                    <div class="checkbox">
                                                         <label>
		                                                    <input type="checkbox" id="opSouth" name="optionValue" value="256"
		                                                    <c:if test="${searchOption256}"> checked="checked"</c:if>> 남향
		                                                </label>
                                                    </div>
                                                </div>  
                                            </div>
                                    </fieldset> 
                                
                                <fieldset >
                                        <div class="row">
                                            <div class="col-xs-12">  
                                                <input class="button btn largesearch-btn" value="Search" type="button" id="getCheckedAll">
                                            </div>  
                                        </div>
                                    </fieldset> 
                                
                            	</form>
                            </div>
                        </div>
                        
                         <div class="panel panel-default sidebar-menu wow fadeInRight animated">
                            <div class="panel-heading">
                                <h3 class="panel-title">Recommended</h3>
                            </div>
                            <div class="panel-body recent-property-widget">
                                        <ul>
                                        <li>
                                            <div class="col-md-3 col-sm-3 col-xs-3 blg-thumb p0">
                                                <a href="single.html"><img src="assets/img/demo/small-property-2.jpg"></a>
                                                <span class="property-seeker">
                                                    <b class="b-1">A</b>
                                                    <b class="b-2">S</b>
                                                </span>
                                            </div>
                                            <div class="col-md-8 col-sm-8 col-xs-8 blg-entry">
                                                <h6> <a href="single.html">Super nice villa </a></h6>
                                                <span class="property-price">3000000$</span>
                                            </div>
                                        </li>



                                    </ul>
                            </div>
                        </div>
	                </div>
	                </div>
	                
	                 <div class="col-md-9  pr0 padding-top-40 properties-page">
	                 	<div class="col-md-12 clear"> 
                        <div class="col-xs-10 page-subheader sorting pl0">
                            <ul class="sort-by-list">
                                <li class="active">
                                    <a href="javascript:void(0);" class="order_by_date" data-orderby="property_date" data-order="ASC">
                                        Property Date <i class="fa fa-sort-amount-asc"></i>					
                                    </a>
                                </li>
                                <li class="">
                                    <a href="javascript:void(0);" class="order_by_price" data-orderby="property_price" data-order="DESC">
                                        Property Price <i class="fa fa-sort-numeric-desc"></i>						
                                    </a>
                                </li>
                            </ul>

                        </div>

                        <div class="col-xs-2 layout-switcher">
                            <a class="layout-list" href="javascript:void(0);"> <i class="fa fa-th-list"></i>  </a>
                            <a class="layout-grid active" href="javascript:void(0);"> <i class="fa fa-th"></i> </a>                          
                        </div><!--/ .layout-switcher-->
                    </div>
	                 
	                 <div class="col-md-12 clear"> 
                        <div id="list-type" class="proerty-th">
                        
                        <c:set var="pageStart" value="${cri.pageStart }"/>
                        <c:forEach var="searchList" items="${searchList}" >
                        		
                            <div class="col-sm-6 col-md-4 p0">

                                    <div class="box-two proerty-item">
                                    
									
                                        <div class="item-thumb">
                                        <form name="searchfr" id="searchfr" action="/semobang/${searchList.property_id}" method="post">
                                        <button class="btn" id="getChecked" type="submit"><img class="btn-img" src="../resources/images/property/demo/property-3.jpg""></button>
                                    <input type="hidden" name="search_option"  value="${svo.search_option}">
									<input type="hidden" name="search_category" value="${svo.search_category}">
									<input type="hidden" name="search_type"  value="${svo.search_type}">
									<input type="hidden" name="search_city"  value="${svo.search_city}">
									<input type="hidden" name="search_gu"  value="${svo.search_gu}">
									<input type="hidden" name="search_min_price" value="${svo.search_min_price}">
									<input type="hidden" name="search_max_price" value="${svo.search_max_price}">
									<input type="hidden" name="search_min_price2" value="${svo.search_min_price2}">
									<input type="hidden" name="search_max_price2" value="${svo.search_max_price2}">
									<input type="hidden" name="search_min_deposit" value="${svo.search_min_deposit}">
									<input type="hidden" name="search_max_deposit" value="${svo.search_max_deposit}">
									<input type="hidden" name="search_min_size" value="${svo.search_min_size}">
									<input type="hidden" name="search_max_size" value="${svo.search_max_size}">
									<input type="hidden" name="search_min_bedroom" value="${svo.search_min_bedroom}">
									<input type="hidden" name="search_max_bedroom" value="${svo.search_max_bedroom}">
									</form>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="#"> ${searchList.property_title } </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="pull-left"><b> 매물번호 :</b> ${searchList.property_id} </span>
                                            <span class="proerty-price pull-right"> $ 300,000</span>
                                            <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                            <div class="property-icon">
                                                <c:set var="propertyOption" value="${searchList.property_option}" />
                                            <% int propertyOption =  Integer.parseInt(pageContext.getAttribute("propertyOption").toString());                                         
                                            if((propertyOption&1) != 0){%>
                                                <img id="search_option1" src="../resources/images/icon/full_orange.png">| 
                                                <%}  if((propertyOption&2) != 0){%>                                     
                                                <img id="search_option2" src="../resources/images/icon/parking_orange.png">| 
                                                <%}  if((propertyOption&4) != 0){%>                                              
                                                <img id="search_option3" src="../resources/images/icon/lift_orange.png">|
                                                <%}  if((propertyOption&8) != 0){%>  
                                                <img id="search_option4" src="../resources/images/icon/animal_orange.png">|
                                                <%}  if((propertyOption&16) != 0){%>  
                                                <img id="search_option5" src="../resources/images/icon/heat_orange.png">|
                                                <%}  if((propertyOption&32) != 0){%>  
                                                <img id="search_option6" src="../resources/images/icon/veranda_orange.png">|
                                                <%}  if((propertyOption&64) != 0){%>  
                                                <img id="search_option7" src="../resources/images/icon/wifi_orange.png">|
                                                <%}  if((propertyOption&128) != 0){%>  
                                                <img id="search_option8" src="../resources/images/icon/Influence_orange.png">|
                                                <%}  if((propertyOption&256) != 0){%>  
                                                <img id="search_option9" src="../resources/images/icon/compass_orange.png">|
                                                <%} %>  
                                            </div>
                                        </div>

                                                                        
                                    </div>

                                </div> 

                                
					</c:forEach>
					
                        </div>
                    </div>
	                 
	                  <div class="col-md-12"> 
                        <div class="pull-right">
                            <div class="pagination">
						
                                <ul>
                                <c:if test="${pageMaker.prev}"><li><a href='#' class="pageA" onclick="paging(${pageMaker.startPage-1}); return false;">이전</a></li></c:if>
                                <c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
                                
                                  	<li>		
                                  	 <a href="#" id="<c:out value="${cri.page == num? 'active-pagination' : '' }"/>" class="pageA" onclick="paging(${num}); return false;">${num}</a> 
                                  <%--	<a href="./searchList?page=${num}" id="<c:out value="${cri.page == num? 'active-pagination' : '' }"/>">${num}</a>--%>
                                   </li>
                                    </c:forEach>
                                <c:if test="${pageMaker.next }"><li><a href="#" class="pageA" onclick="paging(${pageMaker.endPage +1}); return false;">다음</a></li></c:if> 

                                </ul>
                               
                            </div>
                        </div>                
                    </div>
	                 
	               </div>
	                
                </div>
            </div>
        </div>


		<form name="pagingForm" id="pagingForm" action="./searchList" method="post">
			<input type="hidden" name="page" id="page" value="${num}">
			<input type="hidden" name="search_option"  value="${svo.search_option}">
			<input type="hidden" name="search_category" value="${svo.search_category}">
			<input type="hidden" name="search_type"  value="${svo.search_type}">
			<input type="hidden" name="search_city"  value="${svo.search_city}">
			<input type="hidden" name="search_gu"  value="${svo.search_gu}">
			<input type="hidden" name="search_min_price" value="${svo.search_min_price}">
			<input type="hidden" name="search_max_price" value="${svo.search_max_price}">
			<input type="hidden" name="search_min_price2" value="${svo.search_min_price2}">
			<input type="hidden" name="search_max_price2" value="${svo.search_max_price2}">
			<input type="hidden" name="search_min_deposit" value="${svo.search_min_deposit}">
			<input type="hidden" name="search_max_deposit" value="${svo.search_max_deposit}">
			<input type="hidden" name="search_min_size" value="${svo.search_min_size}">
			<input type="hidden" name="search_max_size" value="${svo.search_max_size}">
			<input type="hidden" name="search_min_bedroom" value="${svo.search_min_bedroom}">
			<input type="hidden" name="search_max_bedroom" value="${svo.search_max_bedroom}">
		</form>



 	 <script src="../resources/assets/js/modernizr-2.6.2.min.js"></script>

        <script src="../resources/assets/js/jquery-1.10.2.min.js"></script> 
        <script src="../resources/bootstrap/js/bootstrap.min.js"></script>
        <script src="../resources/assets/js/bootstrap-select.min.js"></script>
        <script src="../resources/assets/js/bootstrap-hover-dropdown.js"></script>

        <script src="../resources/assets/js/easypiechart.min.js"></script>
        <script src="../resources/assets/js/jquery.easypiechart.min.js"></script>

        <script src="../resources/assets/js/owl.carousel.min.js"></script>
        <script src="../resources/assets/js/wow.js"></script>

        <script src="../resources/assets/js/icheck.min.js"></script>
        <script src="../resources/assets/js/price-range.js"></script>

        <script src="../resources/assets/js/main.js"></script>
        
         <script type="text/javascript">
        $(document).ready(function () {
        	
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
        
        
        function paging(num){
        	document.pagingForm.page.value = num;
        	document.pagingForm.submit();
        }
        </script>		


</body>
</html>