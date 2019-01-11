<%@page import="java.util.List"%>
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

        
        
        <link rel="stylesheet" href="../../resources/assets/css/normalize.css">
        <link rel="stylesheet" href="../../resources/assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="../../resources/assets/css/fontello.css">
        <link href="../../resources/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet">
        <link href="../../resources/assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
        <link href="../../resources/assets/css/animate.css" rel="stylesheet" media="screen">
        <link rel="stylesheet" href="../../resources/assets/css/bootstrap-select.min.css"> 
        <link rel="stylesheet" href="../../resources/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="../../resources/assets/css/icheck.min_all.css">
        <link rel="stylesheet" href="../../resources/assets/css/price-range.css">
        <link rel="stylesheet" href="../../resources/assets/css/owl.carousel.css">  
        <link rel="stylesheet" href="../../resources/assets/css/owl.theme.css">
        <link rel="stylesheet" href="../../resources/assets/css/owl.transitions.css">
        <link rel="stylesheet" href="../../resources/assets/css/style.css">
        <link rel="stylesheet" href="../../resources/assets/css/responsive.css">
        
        
	</head>

	<style>
		#active-pagination{background-color: #d27e04; color: white;}
		#getChecked{padding: 1px;}
		#property-icon img{margin-top: 3px;}
		.item-entry{height: 150px;}
		.userName{text-align: center;}
		#userTable img{height: 150px;  border-radius: 50%;}
		#userTableTd1{width: 20%}
		#userTableTd3{width: 15%; padding-right: 15px;}
		#userTableTd5{width: 15%;}
		#userTableTd4{width: 25%; text-align: left;}
		#userTableTd6{width: 25%; text-align: left;}
		#userTable{width: 90%; margin-left: 10%;}
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
	                
	                 <div class="col-md-12  pr0 padding-top-40 properties-page">
	                 	<div class="col-md-12 clear userName"> 
	                 		<h2>${uvo.user_name}님의 매물 리스트</h2>
	                 	</div>
	                 	
	                 	<div class="col-md-12 clear userTable"> 
	                 	<br><br><br>
	                 		<table id="userTable">
	                 			<tr>
	                 				<td rowspan="3"  id="userTableTd1"><img alt="" src="../../resources/images/user/${uvo.user_photo }" >  </td>	    
	                 				<td id="userTableTd3">이름 </td> <td id="userTableTd4"> ${uvo.user_name}</td>     
	                 				<td id="userTableTd5">전화번호  </td> <td id="userTableTd6"> ${uvo.user_mobile}</td>             				
	                 			</tr>
	                 			<tr>  
	                 				<td id="userTableTd3">사업자 등록번호 </td> <td id="userTableTd4"> ${uvo.user_agent_id}</td>     
	                 				<td id="userTableTd5">SNS  </td> 
	                 				
	                 				<td id="userTableTd6"> 
	                 				<a class="twitter" target="_blank" href="https://twitter.com/${uvo.user_tw}">
                                                        <i class="fa fa-twitter"></i>
                                                    </a> &nbsp;
                                                    <a class="facebook" target="_blank" href="https://www.facebook.com/${uvo.user_fb}">
                                                        <i class="fa fa-facebook"></i>
                                                    </a> &nbsp;
                                                    <a class="instagram" target="_blank" href="https://www.instagram.com/${uvo.user_ig}">
                                                        <i class="fa fa-instagram"></i>
                                                    </a> &nbsp;      </td>             				
	                 			</tr>
	                 			<tr>
	                 			<td id="userTableTd3">소개글 </td>
	                 			<td colspan="3"> ${uvo.user_about} </td>
	                 			</tr>
	                 		</table>
	                 	</div>
	              
	                 	<div class="col-md-12 clear"> 
	                 	   <br><br>
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

                         
                        <c:forEach var="propertyListByAgent" items="${propertyListByAgent}">
                        		
                            <div class="col-sm-6 col-md-3 p0">

                                    <div class="box-two proerty-item">
                                    
									
                                        <div class="item-thumb">
                                        <form name="searchfr" id="searchfr" action="/semobang/${propertyListByAgent.property_id}" method="post">
                                        <button class="btn" id="getChecked" type="submit"><img class="btn-img" src="../../resources/images/property/demo/property-3.jpg""></button>
									</form>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="#"> ${propertyListByAgent.property_title } </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="pull-left"><b> 매물번호 :</b> ${propertyListByAgent.property_id} </span>
                                            <span class="proerty-price pull-right"> $ 300,000</span>
                                            <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>

                                            <div class="property-icon" id="property-icon">
                                            <c:set var="propertyOOO" value="${propertyListByAgent.property_option}" />
                                            <% int propertyOOO =  Integer.parseInt(pageContext.getAttribute("propertyOOO").toString());                                         
                                            if((propertyOOO&1) != 0){%>
                                                <img id="search_option1" src="../../resources/images/icon/full_orange.png">| 
                                                <%}  if((propertyOOO&2) != 0){%>                                     
                                                <img id="search_option2" src="../../resources/images/icon/parking_orange.png">| 
                                                <%}  if((propertyOOO&4) != 0){%>                                              
                                                <img id="search_option3" src="../../resources/images/icon/lift_orange.png">|
                                                <%}  if((propertyOOO&8) != 0){%>  
                                                <img id="search_option4" src="../../resources/images/icon/animal_orange.png">|
                                                <%}  if((propertyOOO&16) != 0){%>  
                                                <img id="search_option5" src="../../resources/images/icon/heat_orange.png">|
                                                <%}  if((propertyOOO&32) != 0){%>  
                                                <img id="search_option6" src="../../resources/images/icon/veranda_orange.png">|
                                                <%}  if((propertyOOO&64) != 0){%>  
                                                <img id="search_option7" src="../../resources/images/icon/wifi_orange.png">|
                                                <%}  if((propertyOOO&128) != 0){%>  
                                                <img id="search_option8" src="../../resources/images/icon/Influence_orange.png">|
                                                <%}  if((propertyOOO&256) != 0){%>  
                                                <img id="search_option9" src="../../resources/images/icon/compass_orange.png">|
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
                                <c:if test="${pageMaker.prev}"><li><a href='./${propertyUser}?page=${pageMaker.startPage-1}'>이전</a></li></c:if>
                                <c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
                                  	 <li><a href="./${propertyUser}?page=${num}" id="<c:out value="${cri.page == num? 'active-pagination' : '' }"/>">${num}</a></li>
                                    </c:forEach>
                                <c:if test="${pageMaker.next }"><li><a href='./${propertyUser}?page=${pageMaker.endPage +1}'>다음</a></li></c:if> 

                                </ul>
                            </div>
                        </div>                
                    </div>
	                 
	               </div>
	                
                </div>
            </div>
        </div>



 <div class="container">
        <label for="content">comment</label>
        <form name="commentInsertForm">
            <div class="input-group">
               <input type="hidden" name="user_email" value="${uvo.user_email}"/>
               <input type="text" class="form-control" id="content" name="content" placeholder="내용을 입력하세요.">
               <span class="input-group-btn">
                    <button class="btn btn-default" type="button" name="commentInsertBtn">등록</button>
               </span>
              </div>
        </form>
    </div>
    
    <div class="container">
        <div class="commentList"></div>
    </div>

	<%@ include file="comments.jsp" %>


 	 <script src="../../resources/assets/js/modernizr-2.6.2.min.js"></script>

        <script src="../../resources/assets/js/jquery-1.10.2.min.js"></script> 
        <script src="../../resources/bootstrap/js/bootstrap.min.js"></script>
        <script src="../../resources/assets/js/bootstrap-select.min.js"></script>
        <script src="../../resources/assets/js/bootstrap-hover-dropdown.js"></script>

        <script src="../../resources/assets/js/easypiechart.min.js"></script>
        <script src="../../resources/assets/js/jquery.easypiechart.min.js"></script>

        <script src="../../resources/assets/js/owl.carousel.min.js"></script>
        <script src="../../resources/assets/js/wow.js"></script>

        <script src="../../resources/assets/js/icheck.min.js"></script>
        <script src="../../resources/assets/js/price-range.js"></script>

        <script src="../../resources/assets/js/main.js"></script>
        
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

   				$("#priceRange1").hide();	
   			
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
        	
        });
        
        </script>		


</body>
</html>