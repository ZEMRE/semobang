<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
        
        <!-- IonIcons -->
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.0/css/ionicons.min.css">
    </head>
    
    <style>
	    .footer-area { background: #fff;	/* 푸터 배경 이미지 삭제 */ }		
		.form-control:focus { color: #535353;	/* 푸터 퀵 서치 글자색 변경 */ }
    </style>
    
    <body>
        <div id="preloader">
            <div id="status">&nbsp;</div>
        </div>
        <!-- Body content -->

		<!-- Start Header -->
		<jsp:include page="../header.jsp"></jsp:include>
		<!-- End Header -->



       <div class="page-head"> 
            <div class="container">
                <div class="row">
                    <div class="page-head-content">
                        <h1 class="page-title">List Layout With Sidebar</h1>               
                    </div>
                </div>
            </div>
        </div>
        <!-- End page header -->

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
                                <form action="" class=" form-inline"> 
                                    <fieldset>
                                        <div class="row">
                                            <div class="col-xs-12">
                                                <input type="text" class="form-control" placeholder="Key word">
                                            </div>
                                        </div>
                                    </fieldset>

                                    <fieldset>
                                        <div class="row">
                                            <div class="col-xs-6">

                                                <select id="lunchBegins" class="selectpicker" data-live-search="true" data-live-search-style="begins" title="Select Your City">

                                                    <option>New york, CA</option>
                                                    <option>Paris</option>
                                                    <option>Casablanca</option>
                                                    <option>Tokyo</option>
                                                    <option>Marraekch</option>
                                                    <option>kyoto , shibua</option>
                                                </select>
                                            </div>
                                            <div class="col-xs-6">

                                                <select id="basic" class="selectpicker show-tick form-control">
                                                    <option> -Status- </option>
                                                    <option>Rent </option>
                                                    <option>Boy</option>
                                                    <option>used</option>  

                                                </select>
                                            </div>
                                        </div>
                                    </fieldset>

                                    <fieldset class="padding-5">
                                        <div class="row">
                                            <div class="col-xs-6">
                                                <label for="price-range">Price range ($):</label>
                                                <input type="text" class="span2" value="" data-slider-min="0" 
                                                       data-slider-max="600" data-slider-step="5" 
                                                       data-slider-value="[0,450]" id="price-range" ><br />
                                                <b class="pull-left color">2000$</b> 
                                                <b class="pull-right color">100000$</b>                                                
                                            </div>
                                            <div class="col-xs-6">
                                                <label for="property-geo">Property geo (m2) :</label>
                                                <input type="text" class="span2" value="" data-slider-min="0" 
                                                       data-slider-max="600" data-slider-step="5" 
                                                       data-slider-value="[50,450]" id="property-geo" ><br />
                                                <b class="pull-left color">40m</b> 
                                                <b class="pull-right color">12000m</b>                                                
                                            </div>                                            
                                        </div>
                                    </fieldset>                                

                                    <fieldset class="padding-5">
                                        <div class="row">
                                            <div class="col-xs-6">
                                                <label for="price-range">Min baths :</label>
                                                <input type="text" class="span2" value="" data-slider-min="0" 
                                                       data-slider-max="600" data-slider-step="5" 
                                                       data-slider-value="[250,450]" id="min-baths" ><br />
                                                <b class="pull-left color">1</b> 
                                                <b class="pull-right color">120</b>                                                
                                            </div>

                                            <div class="col-xs-6">
                                                <label for="property-geo">Min bed :</label>
                                                <input type="text" class="span2" value="" data-slider-min="0" 
                                                       data-slider-max="600" data-slider-step="5" 
                                                       data-slider-value="[250,450]" id="min-bed" ><br />
                                                <b class="pull-left color">1</b> 
                                                <b class="pull-right color">120</b>

                                            </div>
                                        </div>
                                    </fieldset>

                                    <fieldset class="padding-5">
                                        <div class="row">
                                            <div class="col-xs-6">
                                                <div class="checkbox">
                                                    <label> <input type="checkbox" checked> Fire Place</label>
                                                </div> 
                                            </div>

                                            <div class="col-xs-6">
                                                <div class="checkbox">
                                                    <label> <input type="checkbox"> Dual Sinks</label>
                                                </div>
                                            </div>                                            
                                        </div>
                                    </fieldset>

                                    <fieldset class="padding-5">
                                        <div class="row">
                                            <div class="col-xs-6"> 
                                                <div class="checkbox">
                                                    <label> <input type="checkbox" checked> Swimming Pool</label>
                                                </div>
                                            </div>  
                                            <div class="col-xs-6"> 
                                                <div class="checkbox">
                                                    <label> <input type="checkbox" checked> 2 Stories </label>
                                                </div>
                                            </div>  
                                        </div>
                                    </fieldset>

                                    <fieldset class="padding-5">
                                        <div class="row">
                                            <div class="col-xs-6"> 
                                                <div class="checkbox">
                                                    <label><input type="checkbox"> Laundry Room </label>
                                                </div>
                                            </div>  
                                            <div class="col-xs-6"> 
                                                <div class="checkbox">
                                                    <label> <input type="checkbox"> Emergency Exit</label>
                                                </div>
                                            </div>  
                                        </div>
                                    </fieldset>

                                    <fieldset class="padding-5">
                                        <div class="row">
                                            <div class="col-xs-6"> 
                                                <div class="checkbox">
                                                    <label>  <input type="checkbox" checked> Jog Path </label>
                                                </div>
                                            </div>  
                                            <div class="col-xs-6"> 
                                                <div class="checkbox">
                                                    <label>  <input type="checkbox"> 26' Ceilings </label>
                                                </div>
                                            </div>  
                                        </div>
                                    </fieldset>

                                    <fieldset class="padding-5">
                                        <div class="row">
                                            <div class="col-xs-12"> 
                                                <div class="checkbox">
                                                    <label>  <input type="checkbox"> Hurricane Shutters </label>
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

                        <div class="panel panel-default sidebar-menu wow fadeInRight animated">
                            <div class="panel-heading">
                                <h3 class="panel-title">Recommended</h3>
                            </div>
                            <div class="panel-body recent-property-widget">
                                        <ul>
                                        <li>
                                            <div class="col-md-3 col-sm-3 col-xs-3 blg-thumb p0">
                                                <a href="single.html"><img src="../resources/images/property/demo/property-2.jpg"></a>
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
                                        <li>
                                            <div class="col-md-3 col-sm-3  col-xs-3 blg-thumb p0">
                                                <a href="single.html"><img src="../resources/images/property/demo/property-1.jpg"></a>
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
                                        <li>
                                            <div class="col-md-3 col-sm-3 col-xs-3 blg-thumb p0">
                                                <a href="single.html"><img src="../resources/images/property/demo/property-3.jpg"></a>
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

                                        <li>
                                            <div class="col-md-3 col-sm-3 col-xs-3 blg-thumb p0">
                                                <a href="single.html"><img src="../resources/images/property/demo/property-2.jpg"></a>
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
                            </ul><!--/ .sort-by-list-->

                            <div class="items-per-page">
                                <label for="items_per_page"><b>Property per page :</b></label>
                                <div class="sel">
                                    <select id="items_per_page" name="per_page">
                                        <option value="3">3</option>
                                        <option value="6">6</option>
                                        <option value="9">9</option>
                                        <option selected="selected" value="12">12</option>
                                        <option value="15">15</option>
                                        <option value="30">30</option>
                                        <option value="45">45</option>
                                        <option value="60">60</option>
                                    </select>
                                </div><!--/ .sel-->
                            </div><!--/ .items-per-page-->
                        </div>

                        <div class="col-xs-2 layout-switcher">
                            <a class="layout-list" href="javascript:void(0);"> <i class="fa fa-th-list"></i>  </a>
                            <a class="layout-grid active" href="javascript:void(0);"> <i class="fa fa-th"></i> </a>                          
                        </div><!--/ .layout-switcher-->
                    </div>

                <!--     <div class="col-md-12 clear"> 
                        <div id="list-type" class="proerty-th">
                            <div class="col-sm-6 col-md-4 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1.html" ><img src="../resources/images/property/demo/property-3.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1.html"> Super nice villa </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="pull-left"><b> Area :</b> 120m </span>
                                            <span class="proerty-price pull-right"> $ 300,000</span>
                                            <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                            <div class="property-icon">
                                                <img src="../resources/images/icon/bed.png">(5)|
                                                <img src="../resources/images/icon/shawer.png">(2)|
                                                <img src="../resources/images/icon/cars.png">(1)  
                                            </div>
                                        </div>


                                    </div>
                                </div> 

                                <div class="col-sm-6 col-md-4 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1.html" ><img src="../resources/images/property/demo/property-2.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1.html"> Super nice villa </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="pull-left"><b> Area :</b> 120m </span>
                                            <span class="proerty-price pull-right"> $ 300,000</span>
                                            <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                            <div class="property-icon">
                                                <img src="assets/img/icon/bed.png">(5)|
                                                <img src="assets/img/icon/shawer.png">(2)|
                                                <img src="assets/img/icon/cars.png">(1)  
                                            </div>
                                        </div> 
                                    </div>
                                </div> 

                                <div class="col-sm-6 col-md-4 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1.html" ><img src="../resources/images/property/demo/property-1.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1.html"> Super nice villa </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="pull-left"><b> Area :</b> 120m </span>
                                            <span class="proerty-price pull-right"> $ 300,000</span>
                                            <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                            <div class="property-icon">
                                                <img src="../resources/images/icon/bed.png">(5)|
                                                <img src="../resources/images/icon/shawer.png">(2)|
                                                <img src="../resources/images/icon/cars.png">(1)  
                                            </div>
                                        </div> 
                                    </div>
                                </div> 

                                <div class="col-sm-6 col-md-4 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1.html" ><img src="../resources/images/property/demo/property-3.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1.html"> Super nice villa </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="pull-left"><b> Area :</b> 120m </span>
                                            <span class="proerty-price pull-right"> $ 300,000</span>
                                            <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                            <div class="property-icon">
                                                <img src="../resources/images/icon/bed.png">(5)|
                                                <img src="../resources/images/icon/shawer.png">(2)|
                                                <img src="../resources/images/icon/cars.png">(1)  
                                            </div>
                                        </div> 
                                    </div>
                                </div> 

                                <div class="col-sm-6 col-md-4 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1.html" ><img src="../resources/images/property/demo/property-1.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1.html"> Super nice villa </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="pull-left"><b> Area :</b> 120m </span>
                                            <span class="proerty-price pull-right"> $ 300,000</span>
                                            <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                            <div class="property-icon">
                                                <img src="../resources/images/icon/bed.png">(5)|
                                                <img src="../resources/images/icon/shawer.png">(2)|
                                                <img src="../resources/images/icon/cars.png">(1)  
                                            </div>
                                        </div>

                                    </div>
                                </div> 

                                <div class="col-sm-6 col-md-4 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1.html" ><img src="../resources/images/property/demo/property-2.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1.html"> Super nice villa </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="pull-left"><b> Area :</b> 120m </span>
                                            <span class="proerty-price pull-right"> $ 300,000</span>
                                            <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                            <div class="property-icon">
                                               <img src="../resources/images/icon/bed.png">(5)|
                                                <img src="../resources/images/icon/shawer.png">(2)|
                                                <img src="../resources/images/icon/cars.png">(1)  
                                            </div>
                                        </div> 
                                    </div>
                                </div> 

                                <div class="col-sm-6 col-md-4 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1.html" ><img src="../resources/images/property/demo/property-3.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1.html"> Super nice villa </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="pull-left"><b> Area :</b> 120m </span>
                                            <span class="proerty-price pull-right"> $ 300,000</span>
                                            <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                            <div class="property-icon">
                                               <img src="../resources/images/icon/bed.png">(5)|
                                                <img src="../resources/images/icon/shawer.png">(2)|
                                                <img src="../resources/images/icon/cars.png">(1)  
                                            </div>
                                        </div> 
                                    </div>
                                </div> 

                                <div class="col-sm-6 col-md-4 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1.html" ><img src="../resources/images/property/demo/property-2.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1.html"> Super nice villa </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="pull-left"><b> Area :</b> 120m </span>
                                            <span class="proerty-price pull-right"> $ 300,000</span>
                                            <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                            <div class="property-icon">
                                                <img src="../resources/images/icon/bed.png">(5)|
                                                <img src="../resources/images/icon/shawer.png">(2)|
                                                <img src="../resources/images/icon/cars.png">(1)  
                                            </div>
                                        </div> 
                                    </div>
                                </div> 

                                <div class="col-sm-6 col-md-4 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1.html" ><img src="assets/img/demo/property-1.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1.html"> Super nice villa </a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="pull-left"><b> Area :</b> 120m </span>
                                            <span class="proerty-price pull-right"> $ 300,000</span>
                                            <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                            <div class="property-icon">
                                               <img src="../resources/images/icon/bed.png">(5)|
                                                <img src="../resources/images/icon/shawer.png">(2)|
                                                <img src="../resources/images/icon/cars.png">(1)  
                                            </div>
                                        </div> 
                                    </div>
                                </div> 
                        </div>
                    </div> -->
                    
                    <div class="col-md-12"> 
                        <div class="pull-right">
                        
                        	<!-- <ul class="pager">
    								<li class="previous">
        							<a href="#">&larr;Newer Posts</a>
    								</li>
    								<li class="next">
        							<a href="#">Older Posts &rarr;</a>
    								</li>
							</ul> -->
      
                        
                          <!-- <div class="pagination">
                                <ul class="pager">
                                    <li><a href="#">Prev</a></li>
                                    <li><a href="#">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li><a href="#">Next</a></li>
                                </ul>
                             </div> -->
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
		     })
		</script>
    </body>
</html>