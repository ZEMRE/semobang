<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  
	<div class="header-connect">
	    <div class="container">
	        <div class="row">
	            <div class="col-md-4 col-sm-8 col-xs-12">
	                <div class="header-half header-call">
	                    <p>
	                        <span><i class="pe-7s-call"></i> +82 51 123 4567</span>
	                        <span><i class="pe-7s-mail"></i> info@semobang.com</span>
	                    </p>	                    
	                </div>	               
	            </div>
	            <div class="col-md-4 col-md-offset-4 col-sm-3 col-sm-offset-1 col-xs-12">
	                <div class="header-half header-social pull-right">
	                    <ul class="list-inline">	
	                    <c:if test="${sessionScope.uvo == null}">
	                        <li><a href="user/register" class="wow bounceInRight" data-wow-delay="0.45s"><i class="icon ion-person-add"></i> 회원가입 </a></li>
	                		<li><a href="user/login" class="wow fadeInRight" data-wow-delay="0.48s"><i class="icon ion-person"></i> 로그인 </a></li>
	                    </c:if>
	                    </ul>                 
	                    
	                    <ul class="list-inline">
	                    <c:if test="${sessionScope.uvo != null}">
	                        <li><a href="account/profile" class="wow bounceInRight" data-wow-delay="0.45s"><i class="icon ion-person"></i> 내 정보 </a></li>
	                		<li><a href="user/logout" class="wow fadeInRight" data-wow-delay="0.48s"><i class="icon ion-log-out"></i> 로그아웃 </a></li>
	                    </c:if>
	                    </ul>
	                </div>
	            </div>
	        </div>
	    </div>
	</div>        
	<!--End top header -->
	
	<nav class="navbar navbar-default ">
	    <div class="container">
	        <!-- Brand and toggle get grouped for better mobile display -->
	        <div class="navbar-header">
	            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navigation">
	                <span class="sr-only">Toggle navigation</span>
	                <span class="icon-bar"></span>
	                <span class="icon-bar"></span>
	                <span class="icon-bar"></span>
	            </button>
	            <a class="navbar-brand" href="${pageContext.request.contextPath}/index"><img src="${pageContext.request.contextPath}/resources/images/logo.png" alt="logo"></a>
	        </div>
	        
	        <!-- Collect the nav links, forms, and other content for toggling -->
	        <div class="collapse navbar-collapse yamm" id="navigation">	            
	            
	            <ul class="main-nav nav navbar-nav navbar-right">
	                <li class="wow fadeInDown" data-wow-delay="0.1s"><a href="list/recentList">최신매물 보기</a></li>
	                
	                <li class="wow fadeInDown" data-wow-delay="0.2s"><a href="list/popularList">인기매물 보기</a></li>
	                
	                <li class="wow fadeInDown" data-wow-delay="0.3s"><a href="list/recommendList">추천매물 보기</a></li>
	                
	                <li class="dropdown ymm-sw " data-wow-delay="0.4s">
                        <a href="${pageContext.request.contextPath}/info/tipsList" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200">부동산 가이드 <b class="caret"></b></a>
                        <ul class="dropdown-menu navbar-nav">
                            <li><a href="${pageContext.request.contextPath}/info/tips2">분양정보 / 법률지식</a></li>
                            <li><a href="${pageContext.request.contextPath}/info/tips1">부동산 상식</a></li>
                            <li><a href="${pageContext.request.contextPath}/info/tips4">이사 꿀팁</a></li>
                            <li><a href="${pageContext.request.contextPath}/info/tips3">생활 꿀팁</a></li>
                        </ul>
                    </li> 
	                
	                <li class="dropdown ymm-sw " data-wow-delay="0.5s">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200">고객 지원 <b class="caret"></b></a>
                        <ul class="dropdown-menu navbar-nav">
                            <li><a href="${pageContext.request.contextPath}/info/faq">자주하는 질문</a></li>
                            <li><a href="javascript:" class="report">허위매물 신고</a></li>
                            <li><a href="${pageContext.request.contextPath}/info/contact">문의하기</a></li>
                        </ul>
                    </li>
                  
	            <c:if test="${sessionScope.uvo != null}">
                    <li class="dropdown ymm-sw " data-wow-delay="0.6s">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200">내 페이지 <b class="caret"></b></a>
                        <ul class="dropdown-menu navbar-nav">  
                                              
                        <c:if test="${sessionScope.uvo.user_level == 'admin'}">
                            <li><a href="account/manage" class="property-list">관리자</a></li>
                        </c:if> 
                        
                            <li><a href="account/profile" class="property-list">프로필</a></li>                           
                            <li><a href="account/myList" class="property-list">내 목록</a></li>
                            
                        <c:if test="${sessionScope.uvo.user_level == 'agent' || sessionScope.uvo.user_level == 'admin'}">
                            <li><a href="account/submit" class="property-list">매물등록</a></li>
                        </c:if>
                        </ul>
                    </li>
                </c:if>
                 
	            </ul>	            
	        </div><!-- /.navbar-collapse -->	        
	    </div><!-- /.container-fluid -->
	</nav>
	<!-- End of nav bar -->