<%@page import="com.DAO.classroomsDAO"%>
<%@page import="com.Model.classrooms"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
	                        <h1 class="h3 mb-0 text-gray-800">Thêm lớp</h1>
	                        
	                  </div>
	
	                    <!-- Content Row -->
		                  
		                     <form action="./AddClassroom" method="post" style="width: 700px;">
		                        
			                        <div class="form-group">
			                            <label for="exampleModalLabel" class="ml-3">Lớp</label>
			                            <input type="text" class="form-control" " name="classroom-name" >
			                        </div>
			                       
			                        <button type="submit" class="ml-2 btn-sm btn btn-primary">Thêm</button>
			                        <a href="./ListClassroom" class="btn btn-sm btn-info">Quay lại</a>
	                      	</form>
                 
                       
                
                    <!-- Content Row -->
                   
