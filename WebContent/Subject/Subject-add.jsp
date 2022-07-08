<%@page import="com.DAO.classroomsDAO"%>
<%@page import="com.Model.classrooms"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Thêm Môn</h1>
                        
                    </div>

                    <!-- Content Row -->
                  
                     <form action="./AddSubject" method="post" style="width: 700px;">
                        
                        <div class="form-group">
                            <label for="exampleModalLabel" class="ml-3">Môn</label>
                            <input type="text" class="form-control" " name="subject-name" >
                        </div>
                       
                        <button type="submit" class="btn btn-primary">Thêm</button>
                        
                        <a href="./ListSubject" class="btn btn-info">Quay lại</a>
                      </form>
                        </div>
                       
                    </div>
                    <!-- Content Row -->
                   

               
      