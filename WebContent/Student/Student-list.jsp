

<%@page import="com.DAO.StudentDAO"%>
<%@page import="com.Model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>





                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Danh sách sinh viên</h1>
                        <a href="./AddStudent" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                                class="fas fa-plus fa-sm text-white-50"></i> Thêm sinh viên</a>
                    </div>
						
                    <!-- Content Row -->
                    
                    <div class="table" style="width: auto">
                        <!-- <div class="table_header">
                            <p>Product Details</p>
                            <div> <input placeholder="product" /> <button class="add_new">+ Add New</button> </div>
                        </div> -->
                        <div class="table_section">
                            <table>
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Họ tên</th>
                                        <th>Năm sinh</th>
                                        <th>Giới tính</th>
                                        <th>Số điện thoại</th>
                                        <th>Địa chỉ</th>
                                        <th>Lớp ID</th>
                                        
                                     
                                        
                                        <!-- <th>Hoạt động</th> -->
                                    </tr>
                                </thead>
                                <tbody>
                                	<%for(Student item : StudentDAO.getStudent()){
                                		%>
	                                	<tr>
	                                        <td><%=item.getId() %></td>
	                                        <td><p><%=item.getFirstName() %></p></td>
	                                        <td><%=item.getBirth() %></td>
	                                        <td><%=item.getGender()%></td>
	                                        <td><%=item.getPhone() %></td>
	                                        <td><%=item.getAddress() %></td>
	                                        <td><%=item.getClassId()%></td>
	                                    
	                                        <td> 
	                                        <a href="./HandingStudent" class=" btn-sm btn btn-primary">Chi tiết</a>
	                                        <a href="./DelSubject?Id=<%=item.getId() %>" class=" btn-sm btn btn-danger">Xóa</a>
	                                        </td>
	                                    </tr>
	                                		
                                	<%} %>
                                	
                                </tbody>
                            </table>
                        </div>
                        <div class="pagination">
                            <nav aria-label="Page navigation example">
                                <ul class="pagination">
                                  <li class="page-item">
                                    <a class="page-link" href="#" aria-label="Previous">
                                      <span aria-hidden="true">&laquo;</span>
                                      <span class="sr-only">Previous</span>
                                    </a>
                                  </li>
                                  <li class="page-item"><a class="page-link" href="#">1</a></li>
                                  <li class="page-item"><a class="page-link" href="#">2</a></li>
                                  <li class="page-item"><a class="page-link" href="#">3</a></li>
                                  <li class="page-item">
                                    <a class="page-link" href="#" aria-label="Next">
                                      <span aria-hidden="true">&raquo;</span>
                                      <span class="sr-only">Next</span>
                                    </a>
                                  </li>
                                </ul>
                              </nav>
                        </div>
                    </div>
                    <!-- Content Row -->
                </div>
                <!-- /.container-fluid -->

        