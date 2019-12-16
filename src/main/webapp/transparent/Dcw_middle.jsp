<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="row" style="margin-top:30px;padding:0 15px;">
                <!--  BLOG CONTENT -->
                <div class="col-sm-8">

                    <div class="comment-nest">
                        <h1>修改单身男女信息:</h1>
                        <div class="well">

                            <form class="form-horizontal" role="form" action="update.do" method="post" enctype="multipart/form-data">
                                                
                                                <div class="form-group">
                                                    <label class="col-lg-3 control-label" >姓名:</label>
                                                    <div class="col-lg-8">
                                                        <input class="form-control" type="text" name="name" >
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-lg-3 control-label" >性别:</label>
                                                    <div class="col-lg-8">
                                                        <input class="form-control" type="text" name="sex" >
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-lg-3 control-label">身份证号:</label>
                                                    <div class="col-lg-8">
                                                    	<input class="form-control" type="text" name="identity" >
                                                        
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-lg-3 control-label">密码:</label>
                                                    <div class="col-lg-8">
                                                        <input class="form-control"  type="text" name= "pwd">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-lg-3 control-label">家庭住址:</label>
                                                    <div class="col-lg-8">
                                                        <input class="form-control"  type="text" name="home">
                                                    </div>
                                                </div>
                                               
                                                <div class="form-group">
                                                    <label class="col-md-3 control-label">本人电话:</label>
                                                    <div class="col-md-8">
                                                        <input class="form-control"  type="text" name="phone">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-md-3 control-label">月薪:</label>
                                                    <div class="col-md-8">
                                                        <input class="form-control"  type="text" name="money">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                	<label class="col-md-3 control-label">情感状况:</label>
	                                               	<select name="online" >
														
														<option value="yes">yes</option>
														<option value="no">no</option>
													</select>
												</div>
                                                <div class="form-group">
                                                    <label class="col-md-3 control-label"></label>
                                                    <div class="col-md-8">
                                                        <input class="btn btn-info" value="Change" type="submit">
                                                        
                                                        <input class="btn btn-info" value="Cancel" type="reset">
                                                    </div>
                                                </div>
                                                
                                            </form>
                            
                        </div>
                    </div>
                    
                    
					
					
                    <div class="comment-nest">
                        <h2>删除成员:</h2>
                        <div class="well">

 							<form class="form-horizontal" role="form" action="delete.do" method="post" enctype="multipart/form-data">
                            
                                <div class="form-group">
                                   <label class="col-md-3 control-label">身份证号码:</label>
										<div class="col-md-8">
											<input class="form-control"  type="text" name="identity">
                                   		</div>
                                </div>
                                
                                <div class="form-group">
									<label class="col-md-3 control-label"></label>
										<div class="col-md-8">
											<input class="btn btn-info" value="Delete" type="submit">                                                      
											<input class="btn btn-info" value="Cancel" type="reset">
										</div>
                                 </div>
                                
                            </form>
                        </div>
					</div>
                    
                </div>
            </div>