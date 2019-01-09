<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html class="no-js">
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
    <body>

        <div id="preloader">
            <div id="status">&nbsp;</div>
        </div>
        

        <!-- Start Header -->
		<jsp:include page="../header.jsp"></jsp:include>
		<!-- End Header -->       
        

       <!--  <nav class="navbar navbar-default ">
            <div class="container">
                Brand and toggle get grouped for better mobile display
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navigation">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html"><img src="assets/img/logo.png" alt=""></a>
                </div>

                Collect the nav links, forms, and other content for toggling
                <div class="collapse navbar-collapse yamm" id="navigation">
                    <div class="button navbar-right">
                        <button class="navbar-btn nav-button wow bounceInRight login" onclick=" window.open('register.html')" data-wow-delay="0.4s">Login</button>
                        <button class="navbar-btn nav-button wow fadeInRight" onclick=" window.open('submit-property.html')" data-wow-delay="0.5s">Submit</button>
                    </div>
                    <ul class="main-nav nav navbar-nav navbar-right">
                        <li class="dropdown ymm-sw " data-wow-delay="0.1s">
                            <a href="index.html" class="dropdown-toggle active" data-toggle="dropdown" data-hover="dropdown" data-delay="200">Home <b class="caret"></b></a>
                            <ul class="dropdown-menu navbar-nav">
                                <li>
                                    <a href="index-2.html">Home Style 2</a>
                                </li>
                                <li>
                                    <a href="index-3.html">Home Style 3</a>
                                </li>
                                <li>
                                    <a href="index-4.html">Home Style 4</a>
                                </li>
                                <li>
                                    <a href="index-5.html">Home Style 5</a>
                                </li>

                            </ul>
                        </li>

                        <li class="wow fadeInDown" data-wow-delay="0.1s"><a class="" href="properties.html">Properties</a></li>
                        <li class="wow fadeInDown" data-wow-delay="0.1s"><a class="" href="property.html">Property</a></li>
                        <li class="dropdown yamm-fw" data-wow-delay="0.1s">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200">Template <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <div class="yamm-content">
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <h5>Home pages</h5>
                                                <ul>
                                                    <li>
                                                        <a href="index.html">Home Style 1</a>
                                                    </li>
                                                    <li>
                                                        <a href="index-2.html">Home Style 2</a>
                                                    </li>
                                                    <li>
                                                        <a href="index-3.html">Home Style 3</a>
                                                    </li>
                                                    <li>
                                                        <a href="index-4.html">Home Style 4</a>
                                                    </li>
                                                    <li>
                                                        <a href="index-5.html">Home Style 5</a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="col-sm-3">
                                                <h5>Pages and blog</h5>
                                                <ul>
                                                    <li><a href="blog.html">Blog listing</a>  </li>
                                                    <li><a href="single.html">Blog Post (full)</a>  </li>
                                                    <li><a href="single-right.html">Blog Post (Right)</a>  </li>
                                                    <li><a href="single-left.html">Blog Post (left)</a>  </li>
                                                    <li><a href="contact.html">Contact style (1)</a> </li>
                                                    <li><a href="contact-3.html">Contact style (2)</a> </li>
                                                    <li><a href="contact_3.html">Contact style (3)</a> </li>
                                                    <li><a href="faq.html">FAQ page</a> </li> 
                                                    <li><a href="404.html">404 page</a>  </li>
                                                </ul>
                                            </div>
                                            <div class="col-sm-3">
                                                <h5>Property</h5>
                                                <ul>
                                                    <li><a href="property-1.html">Property pages style (1)</a> </li>
                                                    <li><a href="property-2.html">Property pages style (2)</a> </li>
                                                    <li><a href="property-3.html">Property pages style (3)</a> </li>
                                                </ul>

                                                <h5>Properties list</h5>
                                                <ul>
                                                    <li><a href="properties.html">Properties list style (1)</a> </li> 
                                                    <li><a href="properties-2.html">Properties list style (2)</a> </li> 
                                                    <li><a href="properties-3.html">Properties list style (3)</a> </li> 
                                                </ul>                                               
                                            </div>
                                            <div class="col-sm-3">
                                                <h5>Property process</h5>
                                                <ul> 
                                                    <li><a href="submit-property.html">Submit - step 1</a> </li>
                                                    <li><a href="submit-property.html">Submit - step 2</a> </li>
                                                    <li><a href="submit-property.html">Submit - step 3</a> </li> 
                                                </ul>
                                                <h5>User account</h5>
                                                <ul>
                                                    <li><a href="register.html">Register / login</a>   </li>
                                                    <li><a href="user-properties.html">Your properties</a>  </li>
                                                    <li><a href="submit-property.html">Submit property</a>  </li>
                                                    <li><a href="change-password.html">Change password</a> </li>
                                                    <li><a href="user-profile.html">Your profile</a>  </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    /.yamm-content
                                </li>
                            </ul>
                        </li>

                        <li class="wow fadeInDown" data-wow-delay="0.4s"><a href="contact.html">Contact</a></li>
                    </ul>
                </div>/.navbar-collapse
            </div>/.container-fluid
        </nav>
        End of nav bar -->
 
         <div class="page-head"> 
            <div class="container">
                <div class="row">
                    <div class="page-head-content">
                        <h1 class="page-title">FAQ PAge</h1>               
                    </div>
                </div>
            </div>
        </div>
        <!-- End page header -->
        

        <!-- property area -->
        <div class="content-area recent-property" style="background-color: #FCFCFC; padding-bottom: 55px;">
            <div class="container">    

                <div class="row">
                    <div class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
                        <!-- /.feature title -->
                        <h2>자주 묻는 질문과 답변 </h2>
                        <br>
                    </div>
                </div>

                <div class="row row-feat"> 
                    <div class="col-md-12">
 
                        <div class="col-sm-6 feat-list">
                            <div class="panel-group">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                         <h4 class="panel-title fqa-title" data-toggle="collapse" data-target="#fqa11" >
                                            	세모방은 어떤 서비스 인가요?
                                         </h4> 
                                    </div>
                                    <div id="fqa11" class="panel-collapse collapse fqa-body">
                                        <div class="panel-body">
                                            <ul>
                                          
                                                <li> 집에 대한 모든 정보<br> 집 선택에 필요한 모든 정보를 세모방에서 한눈에 확인 할 수 있어요.</li>
                                                <li> 꼼꼼한 세모방 맞춤검색 <br>내가 원하는 조건의 방만 쏙쏙 확인할 수 있도록! 맞춤검색 필터가 세분화 되어 있습니다.</li>
                                                <li> 부동산 리뷰 보기 <br>
													직접 상담, 방문한 사용자가 작성한 생생한 부동산 리뷰! 허위 매물, 불친절한 부동산을 상담 전, 방문 전에 확인 할 수 있습니다.</li>
                                            </ul> 
                                        </div> 
                                    </div>
                                </div>
                            </div>
                            
                            <div class="panel-group">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                         <h4 class="panel-title fqa-title" data-toggle="collapse" data-target="#fqa22" >
                                            	세모방에 등록된 방은 믿을 수 있나요?
                                         </h4> 
                                    </div>
                                    <div id="fqa22" class="panel-collapse collapse fqa-body">
                                        <div class="panel-body">
                                            <ul>
                                                <li> 세모방은 사용자 분들에게 믿을 수 있는 정보를 제공하는 것을 최우선으로 합니다.</li>
                                                <li> 사용자가 원하는 결과에 맞게 필터링을 통해 발품을 팔지 않고도 확인할 수 있도록 했습니다.</li>
                                                <li> 또한 지속적인 허위매물 관리를 통해 사용자 분들이 허위정보로 인한 불편함을 느끼지 않도록 노력하고 있습니다.</li>                                                                                           
                                            </ul> 
                                        </div> 
                                    </div>
                                </div>
                            </div>
                            
                            <div class="panel-group">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                         <h4 class="panel-title fqa-title" data-toggle="collapse" data-target="#fqa33" >
                                             회원가입을 하면 어떤 점이 좋나요?
                                         </h4> 
                                    </div>
                                    <div id="fqa33" class="panel-collapse collapse fqa-body">
                                        <div class="panel-body">
                                            <ul>
                                                <li> ‘찜목록'의 내용을 안전하게 저장!<br>원룸∙투룸∙오피스텔 등 다양한 전∙월세 매물을 살펴보는 과정에서 매물을 조회하고 찜한 내역이 쌓이는 ‘찜목록'의 내용을 유지하고
												     확인할 수 있습니다.</li>
                                                <li> '관심타입'을 등록 해 놓으면 내용을 유지 하고 확인할 수 있습니다.</li>
                                                <li> 신고하기를 통해 다른 사람에게 도움을 줄 수 있습니다.(?)</li>
                                        
                                            </ul>
                                        </div> 
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 feat-list">
                            <div class="panel-group">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                         <h4 class="panel-title fqa-title" data-toggle="collapse" data-target="#fqa1" >
                                            허위 매물은 어떻게 관리 하나요? 
                                         </h4> 
                                    </div>
                                    <div id="fqa1" class="panel-collapse collapse fqa-body">
                                        <div class="panel-body">
                                            <ul>
                                                <li> 전담팀이 수시로 매물을 살펴보고 허위매물을 필터링하고 있습니다.</li>
                                                <li> 지역구별 평균 시세를 파악해 시세에 비해 확연히 저렴한 매물이나 실사진이 아닌 사진이 포함된 경우 직접 연락을 취해 정보 수정을 요청합니다.</li>
                                                <li> 광고 기간이 30일이 지난 매물의 경우 자동으로 비공개 처리하여 계약이 완료된 매물의 노출 가능성을 줄였고,</li>
                                                <li> 사용자가 직접 허위매물을 신고할 수 있도록 관련 제도를 마련하여 허위매물을 줄이기 위한 노력을 기울이고 있습니다.</li>
                                               
                                            <ul>
                                        </div> 
                                    </div>
                                </div>
                            </div>
                            
                            <div class="panel-group">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                         <h4 class="panel-title fqa-title" data-toggle="collapse" data-target="#fqa2" >
                                           회원탈퇴는 어떻게 하나요?
                                         </h4> 
                                    </div>
                                    <div id="fqa2" class="panel-collapse collapse fqa-body">
                                        <div class="panel-body">
                                            <ul>
                                                <li> 메뉴에서 ‘정보수정’으로 이동 후 화면 하단에 '회원탈퇴'를 탭하시면 탈퇴가 가능합니다.</li>
                                                <li> 세모방의 개선점에 대한 건의 사항은 semobang@gmail.com 으로 보내주시면 서비스 개선에 큰 도움이 됩니다.</li>
                                            </ul>
                                        </div> 
                                    </div>
                                </div>
                            </div>
                            
                            <div class="panel-group">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                         <h4 class="panel-title fqa-title" data-toggle="collapse" data-target="#fqa3" >
                                            방을 검색 후 직거래 해도 되나요?
                                         </h4> 
                                    </div>
                                    <div id="fqa3" class="panel-collapse collapse fqa-body">
                                        <div class="panel-body">
                                            <ul>
                                                <li> 건물주인분 만나서 직거래로 해도 됩니다.</li>
                                                <li> 만에 하나 중개사고 발생시 책임소재를 가리기 어렵다는 단점이 있습니다.</li>
                                        </div> 
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                
            </div>
        </div>

     <!-- Start Footer -->
		<jsp:include page="../footer.jsp"></jsp:include>
		<!-- End Footer -->

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

    </body>
</html>