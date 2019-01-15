<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

	<!-- Footer area-->
	<div class="footer-area">
	
	    <div class=" footer">
	        <div class="container">
	            <div class="row">
	
	                <div class="col-md-3 col-sm-6 wow fadeInRight animated">
	                    <div class="single-footer">
	                        <h4>About us </h4>
	                        <div class="footer-title-line"></div>
	
	                        <img src="${pageContext.request.contextPath}/resources/images/footer-logo.png" alt="" class="wow pulse" data-wow-delay="1s">
	                        
	                        <ul class="footer-adress">
	                            <li><i class="pe-7s-map-marker strong"> </i> Busan, Korea</li>
	                            <li><i class="pe-7s-mail strong"> </i> info@semobang.com</li>
	                            <li><i class="pe-7s-call strong"> </i> +82 51 123 4567</li>
	                        </ul>
	                    </div>
	                </div>
	                
	                <div class="col-md-3 col-sm-6 wow fadeInRight animated">
	                    <div class="single-footer">
	                        <h4>Quick links </h4>
	                        <div class="footer-title-line"></div>
	                        <ul class="footer-menu">
	                        	<li><a href="${pageContext.request.contextPath}/info/tipsList">부동산 가이드</a></li> 
	                            <li><a href="${pageContext.request.contextPath}/info/faq">자주하는 질문</a></li>                                     
	                            <li><a href="javascript:" class="report"">허위매물 신고</a></li>                                     
	                        </ul>
	                    </div>
	                </div>
	                
	                <div class="col-md-3 col-sm-6 wow fadeInRight animated">
	                    <div class="single-footer">
	                        <h4>Property List </h4>
	                        <div class="footer-title-line"></div>
	                        <ul class="footer-menu">
	                            <li><a href="${pageContext.request.contextPath}/list/recentList">최신 매물 리스트</a></li> 
	                            <li><a href="${pageContext.request.contextPath}/list/popularList">인기 매물 리스트</a></li> 
	                            <li><a href="${pageContext.request.contextPath}/list/recommendList">추천 매물 리스트</a></li> 
	                        </ul>
	                    </div>
	                </div>
	                
	                <div class="col-md-3 col-sm-6 wow fadeInRight animated">
	                    <div class="single-footer news-letter">
	                        <h4>Quick Search</h4>
	                        <div class="footer-title-line"></div>
	                        <div class="input-group">
	                            <input class="form-control" type="text" id="property_id" placeholder="매물번호 조회">
	                            <span class="input-group-btn">
	                                <button class="btn btn-primary subscribe" id="quickSearch"><i class="pe-7s-search pe-2x"></i></button>
	                            </span>
	                        </div>
	                        <div class="social pull-right"> 
	                            <ul>                                        
	                                <li><a href="https://www.facebook.com/" target="_blank" class="wow fadeInUp animated" data-wow-delay="0.2s"><i class="fa fa-facebook"></i></a></li>
	                                <li><a href="https://twitter.com/" target="_blank" class="wow fadeInUp animated" data-wow-delay="0.4s"><i class="fa fa-twitter"></i></a></li>
	                                <li><a href="https://instagram.com/" target="_blank" class="wow fadeInUp animated" data-wow-delay="0.6s"><i class="fa fa-instagram"></i></a></li>
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
	                    <span> (C) SEMOBANG, All rights reserved 2018 </span> 
	                </div> 
	                <div class="bottom-menu pull-right"> 
	                    <ul> 
	                        <li><a href="index" class="wow fadeInUp animated" data-wow-delay="0.2s">Home</a></li>
	                        <li><a href="${pageContext.request.contextPath}/info/about" class="wow fadeInUp animated" data-wow-delay="0.3s">회사소개</a></li>
	                        <li><a href="${pageContext.request.contextPath}/info/contact" class="wow fadeInUp animated" data-wow-delay="0.4s">제휴문의</a></li>
	                        <li><a href="#" onclick="window.open('${pageContext.request.contextPath}/info/terms')" class="wow fadeInUp animated" data-wow-delay="0.5s">이용약관</a></li>
	                        <li><a href="#" onclick="window.open('${pageContext.request.contextPath}/info/privacy')" class="wow fadeInUp animated" data-wow-delay="0.6s">개인정보처리방침</a></li>                                
	                    </ul> 
	                </div>
	            </div>
	        </div>
	    </div>
	</div>