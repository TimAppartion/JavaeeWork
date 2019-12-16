<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- END OF BREADCRUMB -->
            <div class="content-wrap">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="nest" id="tableStaticClose">
                            <div class="title-alt">
                                <h6>单身男女信息总览</h6>
                                <div class="titleClose">
                                    <a class="gone" href="#tableStaticClose">
                                        <span class="entypo-cancel"></span>
                                    </a>
                                </div>
                                <div class="titleToggle">
                                    <a class="nav-toggle-alt" href="#tableStatic">
                                        <span class="entypo-up-open"></span>
                                    </a>
                                </div>

                            </div>

                            <div class="body-nest" id="tableStatic">

                                <section id="flip-scroll">

                                    <table class="table table-bordered table-striped cf">
                                        <thead class="cf">
                                            <tr>
                                                <th>姓名</th>
                                                <th>性别</th>
                                                <th>身份证号</th>
                                                <th>密码</th>
                                                <th>家庭住址</th>
                                                <th>本人电话</th>
                                                <th>月薪</th>
                                                <th>资产等级</th>
                                                <th>情感状况</th>
                                                
                                            </tr>
                                        </thead>
                                        <tbody>
                                            
                                            <c:forEach var="em" items ="${emplist}">
                                            	<tr>
                                            		<td>${em.getName()}</td>
                                            		<td>${em.getSex()}</td>
                                            		<td>${em.getIdentity()}</td>
                                            		<td>${em.getPwd()}</td>
                                            		<td>${em.getHome()}</td>
                                            		<td>${em.getPhone()}</td>
                                            		<td>${em.getMoney()}</td>
                                            		<td>
                                            		<c:if test="${em.getMoney()<=4000 }">
                                            			低收入
                                            		</c:if>
                                            		<c:if test="${em.getMoney()>4000 && em.getMoney()<8000}">
                                            			中等收入
                                            		</c:if>
                                            		<c:if test="${em.getMoney()>=8000&& em.getMoney()<20000}">
                                            			小康收入
                                            		</c:if>
                                            		<c:if test="${em.getMoney()>20000}">
                                            			高等收入
                                            		</c:if>
                                            		</td>
                                            		<td>${em.getOnline()}</td>
                                            		
                                            	</tr>
                                            </c:forEach>
                                            															
                                        </tbody>
                                    </table>
                                </section>

                            </div>

                        </div>
			
			<div id="paper-middle">
                <div id="mapContainer"></div>
               <iframe width="100%" height="100%" src="map.jsp"></iframe>
            </div>
			

                    </div>

                </div>
            </div>

            
            <!-- /END OF CONTENT -->