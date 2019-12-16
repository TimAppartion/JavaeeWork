<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    

<%@ include file = "Left.jsp" %>

    <!--  PAPER WRAP -->
    <div class="wrap-fluid">
        <div class="container-fluid paper-wrap bevel tlbr">

<%@ include file = "Breadcrumb.jsp" %>
            <div class="content-wrap">
                <!-- PROFILE -->
                <div class="row">

                    <div class="row">


                        <div class="col-sm-12">
                            <!-- BLANK PAGE-->

                            <div style="margin:-20px 15px;" class="nest" id="Blank_PageClose">
                                <div class="title-alt">
                                    <h6>增加单身男女</h6>
                                    <div class="titleClose">
                                        <a class="gone" href="#Blank_PageClose">
                                            <span class="entypo-cancel"></span>
                                        </a>
                                    </div>
                                    <div class="titleToggle">
                                        <a class="nav-toggle-alt" href="#Blank_Page_Content">
                                            <span class="entypo-up-open"></span>
                                        </a>
                                    </div>

                                </div>

                                <div class="body-nest" id="Blank_Page_Content">




                                    <div class="row">


                                        
                                        <div class="col-md-9 personal-info">
                                            
                                            <h3>Personal info</h3>

                                            <form class="form-horizontal" role="form" action="add.do"method="post" enctype="multipart/form-data">
                                                <div class="text-center">
	                                                <img src="http://placehold.it/150" class="avatar img-circle" alt="avatar">
	                                                <h6>Upload a different photo...</h6>
													
	                                                
												
                                            	</div>
                                                <div class="form-group">
                                                    <label class="col-lg-3 control-label" >照片:</label>
                                                    <div class="col-lg-8">
                                                       <input type="file" name="photo"class="form-control">
                                                    </div>
                                                </div>
                                                
                                                
                                                <div class="form-group">
                                                    <label class="col-lg-3 control-label" >姓名:</label>
                                                    <div class="col-lg-8">
                                                        <input class="form-control" type="text" name="name">
                                                    </div>
                                                </div>
                                                 <div class="form-group">
                                                    <label class="col-lg-3 control-label" >性别:</label>
                                                    <div class="col-lg-8">
                                                        <input class="form-control" type="text" name="sex">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-lg-3 control-label">身份证号:</label>
                                                    <div class="col-lg-8">
                                                        <input class="form-control" value="34020719990111131X" type="text" name="identity">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-lg-3 control-label">密码:</label>
                                                    <div class="col-lg-8">
                                                        <input class="form-control" value="8位密码" type="text" name= "pwd">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-lg-3 control-label">家庭住址:</label>
                                                    <div class="col-lg-8">
                                                        <input class="form-control" value="辽宁大连" type="text" name="home">
                                                    </div>
                                                </div>
                                               
                                                <div class="form-group">
                                                    <label class="col-md-3 control-label">本人电话:</label>
                                                    <div class="col-md-8">
                                                        <input class="form-control" value="xxx-xxxx-xxxx" type="text" name="phone">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-md-3 control-label">月薪:</label>
                                                    <div class="col-md-8">
                                                        <input class="form-control" value="8000" type="text" name="money">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                	<label class="col-md-3 control-label">婚姻状况:</label>
	                                               	<select name="online" >
														
														<option value="yes">yes</option>
														<option value="no">no</option>
														
													</select>
												</div>
                                               
                                                <div class="form-group">
                                                    <label class="col-md-3 control-label"></label>
                                                    <div class="col-md-8">
                                                        <input class="btn btn-primary" value="Insert" type="submit">
                                                        
                                                        <input class="btn btn-default" value="Cancel" type="reset">
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- END OF BLANK PAGE -->

                    </div>
                </div>
                <!-- END OF PROFILE -->


                <!-- /END OF CONTENT -->



               


            </div>
        </div>
        <!--  END OF PAPER WRAP -->

        


        <!-- MAIN EFFECT -->
        <script type="text/javascript" src="assets/js/preloader.js"></script>
        <script type="text/javascript" src="assets/js/bootstrap.js"></script>
        <script type="text/javascript" src="assets/js/app.js"></script>
        <script type="text/javascript" src="assets/js/load.js"></script>
        <script type="text/javascript" src="assets/js/main.js"></script>


</div></body>

</html>
