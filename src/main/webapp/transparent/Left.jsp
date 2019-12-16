 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<meta charset="utf-8">
    <title>昊天婚配系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Le styles -->
    <script type="text/javascript" src="assets/js/jquery.js"></script>

    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/loader-style.css">
    <link rel="stylesheet" href="assets/css/bootstrap.css">

    <link rel="stylesheet" href="assets/css/profile.css">





    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    <!-- Fav and touch icons -->
   <!-- Preloader -->
    
    <!-- TOP NAVBAR -->
    
    <!-- /END OF TOP NAVBAR -->

       <!-- SIDE MENU -->
    <div id="skin-select">
        <div id="logo">
         <h1>昊天婚配系统<span>v1.2</span></h1>
        </div>

        <a id="toggle">
            <span class="entypo-menu"></span>
        </a>
        <div class="dark">
            <form action="#">
                <span>
                    <input type="text" name="search" value="" class="search rounded id_search" placeholder="Search Menu..." autofocus>
                </span>
            </form>
        </div>

        <div class="search-hover">
            <form id="demo-2">
                <input type="search" placeholder="Search Menu..." class="id_search">
            </form>
        </div>




        <div class="skin-part">
            <div id="tree-wrap">
                <div class="side-bar">
                    

                    <ul class="topnav menu-left-nest">
                        <li>
                            <a href="#" style="border-left:0px solid!important;" class="title-menu-left">

                                <span class="design-kit"></span>
                                <i data-toggle="tooltip" class="entypo-cog pull-right config-wrap"></i>

                            </a>
                        </li>

                        <li>
                            <a class="tooltip-tip ajax-load" href="tomain" title="Dashboard">
                                <i class="icon-window"></i>
                                <span>单身男女总览</span>

                            </a>
                        </li>
                        
                        <li>
                            <a class="tooltip-tip" title="Extra Pages" href="#">
                                <i class="icon-document-new"></i>
                                <span>单身男女业务</span>
                            </a>
                             <ul>
                                <li>
                                    <a class="icon-document-new" href="DCW.jsp" title="Table Static"><i class="entypo-layout"></i><span>数据处理</span></a>
                                </li>
                                <li>
                                    <a class="icon-document-new" href="login_screen.jsp" title="Table Static"><i class="entypo-layout"></i><span>婚姻匹配</span></a>
                                </li>
                            </ul>
                        </li>

                        

                        <li>
                            <a class="tooltip-tip " href="add.jsp" title="add">
                                <i class="icon-download"></i>
                                <span>增加单身男女</span>
                            </a>
                        </li>
                        <li>
                            <a class="tooltip-tip" href="#" title="Tables">
                                <i class="icon-view-thumb"></i>
                                <span>管理员管理</span>
                            </a>
                            <ul>
                                <li>
                                    <a class="icon-view-thumb" href="login.jsp" title="Table Static"><i class="entypo-layout"></i><span>切换登录</span></a>
                                </li>
                                <li>
                                    <a class="icon-view-thumb" href="login_screen.jsp" title="Table Static"><i class="entypo-layout"></i><span>锁屏界面</span></a>
                                </li>
                            </ul>
                            
                        </li>

                    </ul>
                    <div class="side-dash">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END OF SIDE MENU -->
