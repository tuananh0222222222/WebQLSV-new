
<%@page import="com.DAO.SubjectsDAO"%>
<%@page import="com.Model.Subjects"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>





                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Thông tin môn</h1>
                        
                    </div>

                    <!-- Content Row -->
                    <%
                    	int Id = Integer.parseInt(request.getParameter("Id"));
                         Subjects subject = SubjectsDAO.getSubjectId(Id);
                    %>
                     <form action="./HandingSubject" method="post" style="width: 700px;">
                        <div class="form-group">
                            <label for="exampleModalLabel" class="ml-3">ID</label>
                            <input type="text" class="form-control"  value="<%=subject.getId() %>" name="subject-id" readonly="readonly">
                        </div>
                        <div class="form-group">
                            <label for="exampleModalLabel" class="ml-3">Lớp</label>
                            <input type="text" class="form-control" value="<%=subject.getNameSubject() %>" name="subject-name" >
                        </div>
                       
                        <button type="submit" class="btn btn-primary">Sửa</button>
                        <a href="./ListSubject" class="btn btn-info">Quay lại</a>
                      </form>
                        </div>
                       
                    </div>
                    <!-- Content Row -->
                   
