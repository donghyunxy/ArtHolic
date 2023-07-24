<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | Timeline</title>
<!--  예상 gnb 설정-->
<!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bootstrap 4 -->
  <link rel="stylesheet" href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">



  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- AdminLTE css -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <!-- DataTables -->
    
  <link rel="stylesheet" href="plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" href="plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
  <link rel="stylesheet" href="plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
  

   <style>
/* gnb 스타일 */

 #payController{
	margin-top: 20px; 
	margin-left: 40px;
	
     align-items: center;
     width: 205px;
    height: 460px;
		
	}
	#paybutton{
		margin-top: 20px;
		margin-bottom: 30px;
		width: 161px;
	    height: 49px;
	
	}
	#paybutton2 {
	    margin-bottom: 10px;
	    font-size: 16px;
	    width: 150px;
	    background-color: #c3c3c3;
	    border: 0px;
	    color: black;
	    
    }
        	#paybutton3 {
	    margin-bottom: 10px;
	    font-size: 16px;
	    width: 150px;
	    background-color: #c3c3c3;
	    border: 0px;
	    color: black;
	    
    }
    
    
        #ListGo{
	color: black;
	}
    
	.main-sidebar {
		background-color: #e9ddc6;
	}
	.mt-2 .nav .nav-item .nav-link p {
		color : black;
	}
	.logo {
		width : 231px;
		height : 68px;
	}
	#footer {
		margin-left: 0px;	
	}
	
	.content {
	  	display: flex;
		justify-content: center;
		align-items: center;
		height: 700px;
		text-align: center;
	}

/* gnb 스타일 */


 	.center {
        text-align: center;
        
    }
#reject{
	margin-right: 50px;
}
#timelineCard{
	margin-top: 0px;
	margin-left: 23px;
}
#donePayment{
	margin-right: 94px;
	margin-left: :37px;
}    

#previewBox{
	border: 1px solid gray;
	width: 550px;
	height: 700px;
	
}
#paymentForm_vacation{
	margin-top: 20px;

}
#formGnb{
	margin-left: 40px;

}
#formGnb_button{
	margin-right: 20px;
	font-size: 20px;
	cursor: pointer;
	
}
#realForm{
	border: 1px soild gray;
	width: 1012px;
	height: 1172px;
	margin-left: 60px;
	margin-right: 50px; 
	margin-top: 50px;
	

}

 table.my-table {
    width: 100%;
    border-collapse: collapse;
    text-align: center;
  }

  table.my-table th,
  table.my-table td {
    padding: 10px;
    border: 1px solid gray;
  }

  table.my-table th {
    background-color: #f2f2f2;
  }
    /*  안보이는 박스 설정*/
    .invisible-input {
    border: none;
    background-color: transparent;
    font-size: inherit;
    padding: 0;
    margin: 0;
    width: 100%;
    color: transparent;
    text-shadow: 0 0 0 black;
    
  }
  
 

</style>
</head>

<body class="hold-transition sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper">
	<jsp:include page="header.jsp"/>
		 	<!-- Content Wrapper. Contains page content -->
	  <div class="content-wrapper">
	    <!-- Content Header (Page header) -->
	    <div class="content-header">
	      <div class="container-fluid">
	        <div class="row mb-2">
	          <div class="col-sm-6">
			<!--<h1 class="m-0">Dashboard</h1> -->
	          </div><!-- /.col -->
	          <div class="col-sm-6">
	            <ol class="breadcrumb float-sm-right">
	              <li class="breadcrumb-item"><a href="#">Home</a></li>
	              <li class="breadcrumb-item active">Dashboard v1</li>
	            </ol>
	          </div><!-- /.col -->
	        </div><!-- /.row -->
	      </div><!-- /.container-fluid -->
	    </div>
	    <!-- /.content-header -->
  
 
    
  
<!-- ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ-->
<!--   타임 라인 시작 !!!!-->
  <!-- Content Wrapper. Contains page content -->

		<div class="row"> 
		<div class="col-sm-2">
			<section class="content" >
			
					<div class="sidebar">
						  <div class="card" id="payController" style="align-items: center; text-align: center;">
						    <div>
						      <button type="button" class="btn btn-block btn-primary btn-lg" id="paybutton" data-toggle="modal" data-target="#modal-lg">결재 작성하기</button>
						    </div>
						    <div >
							        <button type="button" class="btn btn-block btn-secondary btn-lg" id="paybutton2"><a href="./paymentMain.go" id="ListGo">결재HOME</a></button>
						      </div>
						    
						    <div>
						      <button type="button" class="btn btn-block btn-secondary btn-lg" id="paybutton2" onclick="toggleDocumentTree()">결재 생산함</button>
						      <div id="documentTree" ><!-- style="display: none;" -->
						        <p><a href="./paymentList.go" id="ListGo">결재 문서함</a></p>
						        <p>임시저장</p>
						      </div>
						    </div>
						    <div>
						      <button type="button" class="btn btn-block btn-secondary btn-lg" id="paybutton3" onclick="toggleInboxTree()">결재 수신함</button>
						      <div id="inboxTree"><!--  style="display: none;" -->
						        <p>결재하기</p>
						        <p>결재내역</p>
						        <p>수신참조</p>
						      </div>
						    </div>
						  </div>
						</div>
			</section>
		</div><!--  sm-2 왼쪽 컨트롤러 부분-->
		
		
		<!-- 여기는 표 부분!!!!&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& -->
		
		
			<div class="col-sm-9">
				<div class="container-fluid">
						<section class="content-header">
					      <div class="container-fluid">
					        <div class="row mb-2">
					          <div class="col-sm-6">
						          <div id="formGnb" >
						          	<br><br>
						          	<h1>결재 문서함</h1>
						          		
					          		</div>	
					          </div>
					        </div>
					      </div><!-- /.container-fluid -->
					     
					    </section>
					<div class="card" id="paymentForm_vacation">
						
						<section class="content">
							<div class="card">
					              
					              <!-- /.card-header -->
					              <div class="card-body">
					                <table id="example1" class="table table-bordered table-striped">
					                  <thead>
					                  <tr>
					                    <th>기안일</th>
					                    <th>결재양식</th>
					                    <th>제목</th>
					                    <th>문서번호</th>
					                    <th>결재 상태</th>
					                  </tr>
					                  </thead>
					                  <tbody>
					                  <tr>
					                    <td>Trident</td>
					                    <td>Internet
					                      Explorer 4.0
					                    </td>
					                    <td>Win 95+</td>
					                    <td> 4</td>
					                    <td>X</td>
					                  </tr>
					                  <tr>
					                    <td>Trident</td>
					                    <td>Internet
					                      Explorer 5.0
					                    </td>
					                    <td>Win 95+</td>
					                    <td>5</td>
					                    <td>C</td>
					                  </tr>
					                  <tr>
					                    <td>Trident</td>
					                    <td>Internet
					                      Explorer 5.5
					                    </td>
					                    <td>Win 95+</td>
					                    <td>5.5</td>
					                    <td>A</td>
					                  </tr>
					                  <tr>
					                    <td>Trident</td>
					                    <td>Internet
					                      Explorer 6
					                    </td>
					                    <td>Win 98+</td>
					                    <td>6</td>
					                    <td>A</td>
					                  </tr>
					                  <tr>
					                    <td>Trident</td>
					                    <td>Internet Explorer 7</td>
					                    <td>Win XP SP2+</td>
					                    <td>7</td>
					                    <td>A</td>
					                  </tr>
					                  <tr>
					                    <td>Trident</td>
					                    <td>AOL browser (AOL desktop)</td>
					                    <td>Win XP</td>
					                    <td>6</td>
					                    <td>A</td>
					                  </tr>
					                  <tr>
					                    <td>Gecko</td>
					                    <td>Firefox 1.0</td>
					                    <td>Win 98+ / OSX.2+</td>
					                    <td>1.7</td>
					                    <td>A</td>
					                  </tr>
					                  <tr>
					                    <td>Gecko</td>
					                    <td>Firefox 1.5</td>
					                    <td>Win 98+ / OSX.2+</td>
					                    <td>1.8</td>
					                    <td>A</td>
					                  </tr>
					                  <tr>
					                    <td>Gecko</td>
					                    <td>Firefox 2.0</td>
					                    <td>Win 98+ / OSX.2+</td>
					                    <td>1.8</td>
					                    <td>A</td>
					                  </tr>
					                  <tr>
					                    <td>Gecko</td>
					                    <td>Firefox 3.0</td>
					                    <td>Win 2k+ / OSX.3+</td>
					                    <td>1.9</td>
					                    <td>A</td>
					                  </tr>
					                  <tr>
					                    <td>Gecko</td>
					                    <td>Camino 1.0</td>
					                    <td>OSX.2+</td>
					                    <td>1.8</td>
					                    <td>A</td>
					                  </tr>
					                  <tr>
					                    <td>Gecko</td>
					                    <td>Camino 1.5</td>
					                    <td>OSX.3+</td>
					                    <td>1.8</td>
					                    <td>A</td>
					                  </tr>
					                  <tr>
					                    <td>Gecko</td>
					                    <td>Netscape 7.2</td>
					                    <td>Win 95+ / Mac OS 8.6-9.2</td>
					                    <td>1.7</td>
					                    <td>A</td>
					                  </tr>
					                  <tr>
					                    <td>Gecko</td>
					                    <td>Netscape Browser 8</td>
					                    <td>Win 98SE+</td>
					                    <td>1.7</td>
					                    <td>A</td>
					                  </tr>
					                  <tr>
					                    <td>Gecko</td>
					                    <td>Netscape Navigator 9</td>
					                    <td>Win 98+ / OSX.2+</td>
					                    <td>1.8</td>
					                    <td>A</td>
					                  </tr>
					                  <tr>
					                    <td>Gecko</td>
					                    <td>Mozilla 1.0</td>
					                    <td>Win 95+ / OSX.1+</td>
					                    <td>1</td>
					                    <td>A</td>
					                  </tr>
					                  <tr>
					                    <td>Gecko</td>
					                    <td>Mozilla 1.1</td>
					                    <td>Win 95+ / OSX.1+</td>
					                    <td>1.1</td>
					                    <td>A</td>
					                  </tr>
					                  <tr>
					                    <td>Gecko</td>
					                    <td>Mozilla 1.2</td>
					                    <td>Win 95+ / OSX.1+</td>
					                    <td>1.2</td>
					                    <td>A</td>
					                  </tr>
					                  <tr>
					                    <td>Gecko</td>
					                    <td>Mozilla 1.3</td>
					                    <td>Win 95+ / OSX.1+</td>
					                    <td>1.3</td>
					                    <td>A</td>
					                  </tr>
					                  <tr>
					                    <td>Gecko</td>
					                    <td>Mozilla 1.4</td>
					                    <td>Win 95+ / OSX.1+</td>
					                    <td>1.4</td>
					                    <td>A</td>
					                  </tr>
					                  <tr>
					                    <td>Gecko</td>
					                    <td>Mozilla 1.5</td>
					                    <td>Win 95+ / OSX.1+</td>
					                    <td>1.5</td>
					                    <td>A</td>
					                  </tr>
					                  <tr>
					                    <td>Gecko</td>
					                    <td>Mozilla 1.6</td>
					                    <td>Win 95+ / OSX.1+</td>
					                    <td>1.6</td>
					                    <td>A</td>
					                  </tr>
					                  <tr>
					                    <td>Gecko</td>
					                    <td>Mozilla 1.7</td>
					                    <td>Win 98+ / OSX.1+</td>
					                    <td>1.7</td>
					                    <td>A</td>
					                  </tr>
					                  <tr>
					                    <td>Gecko</td>
					                    <td>Mozilla 1.8</td>
					                    <td>Win 98+ / OSX.1+</td>
					                    <td>1.8</td>
					                    <td>A</td>
					                  </tr>
					                  <tr>
					                    <td>Gecko</td>
					                    <td>Seamonkey 1.1</td>
					                    <td>Win 98+ / OSX.2+</td>
					                    <td>1.8</td>
					                    <td>A</td>
					                  </tr>
					                  <tr>
					                    <td>Gecko</td>
					                    <td>Epiphany 2.20</td>
					                    <td>Gnome</td>
					                    <td>1.8</td>
					                    <td>A</td>
					                  </tr>
					                  <tr>
					                    <td>Webkit</td>
					                    <td>Safari 1.2</td>
					                    <td>OSX.3</td>
					                    <td>125.5</td>
					                    <td>A</td>
					                  </tr>
					                  <tr>
					                    <td>Webkit</td>
					                    <td>Safari 1.3</td>
					                    <td>OSX.3</td>
					                    <td>312.8</td>
					                    <td>A</td>
					                  </tr>
					                  <tr>
					                    <td>Webkit</td>
					                    <td>Safari 2.0</td>
					                    <td>OSX.4+</td>
					                    <td>419.3</td>
					                    <td>A</td>
					                  </tr>
					                  <tr>
					                    <td>Webkit</td>
					                    <td>Safari 3.0</td>
					                    <td>OSX.4+</td>
					                    <td>522.1</td>
					                    <td>A</td>
					                  </tr>
					                  <tr>
					                    <td>Webkit</td>
					                    <td>OmniWeb 5.5</td>
					                    <td>OSX.4+</td>
					                    <td>420</td>
					                    <td>A</td>
					                  </tr>
					                  <tr>
					                    <td>Webkit</td>
					                    <td>iPod Touch / iPhone</td>
					                    <td>iPod</td>
					                    <td>420.1</td>
					                    <td>A</td>
					                  </tr>
					                  <tr>
					                    <td>Webkit</td>
					                    <td>S60</td>
					                    <td>S60</td>
					                    <td>413</td>
					                    <td>A</td>
					                  </tr>
					                  <tr>
					                    <td>Presto</td>
					                    <td>Opera 7.0</td>
					                    <td>Win 95+ / OSX.1+</td>
					                    <td>-</td>
					                    <td>A</td>
					                  </tr>
					                  <tr>
					                    <td>Presto</td>
					                    <td>Opera 7.5</td>
					                    <td>Win 95+ / OSX.2+</td>
					                    <td>-</td>
					                    <td>A</td>
					                  </tr>
					                  <tr>
					                    <td>Presto</td>
					                    <td>Opera 8.0</td>
					                    <td>Win 95+ / OSX.2+</td>
					                    <td>-</td>
					                    <td>A</td>
					                  </tr>
					                  <tr>
					                    <td>Presto</td>
					                    <td>Opera 8.5</td>
					                    <td>Win 95+ / OSX.2+</td>
					                    <td>-</td>
					                    <td>A</td>
					                  </tr>
					                  <tr>
					                    <td>Presto</td>
					                    <td>Opera 9.0</td>
					                    <td>Win 95+ / OSX.3+</td>
					                    <td>-</td>
					                    <td>A</td>
					                  </tr>
					                  <tr>
					                    <td>Presto</td>
					                    <td>Opera 9.2</td>
					                    <td>Win 88+ / OSX.3+</td>
					                    <td>-</td>
					                    <td>A</td>
					                  </tr>
					                  <tr>
					                    <td>Presto</td>
					                    <td>Opera 9.5</td>
					                    <td>Win 88+ / OSX.3+</td>
					                    <td>-</td>
					                    <td>A</td>
					                  </tr>
					                  <tr>
					                    <td>Presto</td>
					                    <td>Opera for Wii</td>
					                    <td>Wii</td>
					                    <td>-</td>
					                    <td>A</td>
					                  </tr>
					                  <tr>
					                    <td>Presto</td>
					                    <td>Nokia N800</td>
					                    <td>N800</td>
					                    <td>-</td>
					                    <td>A</td>
					                  </tr>
					                  <tr>
					                    <td>Presto</td>
					                    <td>Nintendo DS browser</td>
					                    <td>Nintendo DS</td>
					                    <td>8.5</td>
					                    <td>C/A<sup>1</sup></td>
					                  </tr>
					                  <tr>
					                    <td>KHTML</td>
					                    <td>Konqureror 3.1</td>
					                    <td>KDE 3.1</td>
					                    <td>3.1</td>
					                    <td>C</td>
					                  </tr>
					                  <tr>
					                    <td>KHTML</td>
					                    <td>Konqureror 3.3</td>
					                    <td>KDE 3.3</td>
					                    <td>3.3</td>
					                    <td>A</td>
					                  </tr>
					                  <tr>
					                    <td>KHTML</td>
					                    <td>Konqureror 3.5</td>
					                    <td>KDE 3.5</td>
					                    <td>3.5</td>
					                    <td>A</td>
					                  </tr>
					                  <tr>
					                    <td>Tasman</td>
					                    <td>Internet Explorer 4.5</td>
					                    <td>Mac OS 8-9</td>
					                    <td>-</td>
					                    <td>X</td>
					                  </tr>
					                  <tr>
					                    <td>Tasman</td>
					                    <td>Internet Explorer 5.1</td>
					                    <td>Mac OS 7.6-9</td>
					                    <td>1</td>
					                    <td>C</td>
					                  </tr>
					                  <tr>
					                    <td>Tasman</td>
					                    <td>Internet Explorer 5.2</td>
					                    <td>Mac OS 8-X</td>
					                    <td>1</td>
					                    <td>C</td>
					                  </tr>
					                  <tr>
					                    <td>Misc</td>
					                    <td>NetFront 3.1</td>
					                    <td>Embedded devices</td>
					                    <td>-</td>
					                    <td>C</td>
					                  </tr>
					                  <tr>
					                    <td>Misc</td>
					                    <td>NetFront 3.4</td>
					                    <td>Embedded devices</td>
					                    <td>-</td>
					                    <td>A</td>
					                  </tr>
					                  <tr>
					                    <td>Misc</td>
					                    <td>Dillo 0.8</td>
					                    <td>Embedded devices</td>
					                    <td>-</td>
					                    <td>X</td>
					                  </tr>
					                  <tr>
					                    <td>Misc</td>
					                    <td>Links</td>
					                    <td>Text only</td>
					                    <td>-</td>
					                    <td>X</td>
					                  </tr>
					                  <tr>
					                    <td>Misc</td>
					                    <td>Lynx</td>
					                    <td>Text only</td>
					                    <td>-</td>
					                    <td>X</td>
					                  </tr>
					                  <tr>
					                    <td>Misc</td>
					                    <td>IE Mobile</td>
					                    <td>Windows Mobile 6</td>
					                    <td>-</td>
					                    <td>C</td>
					                  </tr>
					                  <tr>
					                    <td>Misc</td>
					                    <td>PSP browser</td>
					                    <td>PSP</td>
					                    <td>-</td>
					                    <td>C</td>
					                  </tr>
					                  <tr>
					                    <td>Other browsers</td>
					                    <td>All others</td>
					                    <td>-</td>
					                    <td>-</td>
					                    <td>U</td>
					                  </tr>
					                  </tbody>
					                  <tfoot>
					                  <tr>
					                    <th>Rendering engine</th>
					                    <th>Browser</th>
					                    <th>Platform(s)</th>
					                    <th>Engine version</th>
					                    <th>CSS grade</th>
					                  </tr>
					                  </tfoot>
					                </table>
					              </div>
					              <!-- /.card-body -->
					            </div>
					            <!-- /.card -->
     					 </section>
					</div>
				</div>
		  	</div>	<!-- sm- 9 부분!! -->
		  	
		  	
		  	
	  </div><!--  제일큰row 부분-->	

  
  <!-- /.content-wrapper -->
	
	
      
      	<!-- 모달모달!! 숨겨진 -->
				<div class="modal fade" id="modal-lg" data-backdrop="static">
				  <div class="modal-dialog modal-lg">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h4 class="modal-title">결재 양식 선택</h4>
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close" onclick="restoreButtonColor()">
				          <span aria-hidden="true">&times;</span>
				        </button>
				      </div>
				      <div class="modal-body">
				        <div class="row">
				          <div class="col-sm-3">
				            <table class="table table-bordered text-center">
				              <tbody>
				                <tr>
				                  <td>
				                    <button type="button" class="btn btn-block btn-outline-dark" onclick="vacation(this)" id="vacation">휴가 신청</button>
				                  </td>
				                </tr>
				                <tr>
				                  <td>
				                    <button type="button" class="btn btn-block btn-outline-dark" onclick="item(this)" id="item">비품 구매</button>
				                  </td>
				
				                </tr>
				                <tr>
				                  <td>
				                    <button type="button" class="btn btn-block btn-outline-dark" onclick="project(this)" id="project">프로젝트 신청</button>
				                  </td>
				
				                </tr>
				              </tbody>
				            </table>
				          </div>
				          <div class="col-sm-9">
				            <div id="previewBox">
				
				            </div>
				
				
				          </div>
				        </div>
				      </div><!--  모달 바디-->
				      <div class="modal-footer justify-content-between">
				        <button type="button" class="btn btn-default" data-dismiss="modal" onclick="restoreButtonColor()">취소</button>
				        <a type="button" class="btn btn-primary" id="paymentButton" onclick="handlePayment()" >사용하기</a>
				      </div>
				    </div>
				    <!-- /.modal-content -->
				  </div>
				  <!-- /.modal-dialog -->
				</div>
				<!-- /.modal -->
      
      
      
      <!--  결재선 모달-->
      <div class="modal fade" id="modal-lg2">
        <div class="modal-dialog modal-lg">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">결재선 선택</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
		              <div class="card card-default">
					          
					          
					          <div class="card-body">
								  <div class="row">
										  <div class="col-12">
										    <div class="form-group">
										      <label>결재선 선택</label>
										      <div class="dual-listbox-container">
										        <select id="approvers" class="duallistbox" multiple="multiple">
										          <option selected>대리 김형준</option>
										          <option>과장 아무개</option>
										          <option>California</option>
										          <option>Delaware</option>
										          <option>Tennessee</option>
										          <option>Texas</option>
										          <option>Washington</option>
										        </select>
										      </div>
										    </div>
										    <!-- /.form-group -->
										  </div>
										  <!-- /.col -->
										</div>
									  <!-- /.row -->
									  <div class="row">
										  <div class="col-12">
										    <div class="form-group">
										      <label>참조자 선택</label>
										      <div class="dual-listbox-container">
										        <select id="referrer" class="duallistbox" multiple="multiple">
										          <option selected>대리 김형준</option>
										          <option>과장 아무개</option>
										          <option>California</option>
										          <option>Delaware</option>
										          <option>Tennessee</option>
										          <option>Texas</option>
										          <option>Washington</option>
										        </select>
										      </div>
										    </div>
										    <!-- /.form-group -->
										  </div>
										  <!-- /.col -->
										</div>
									  <!-- /.row -->
								   
              

								</div>

					        </div>
					        <!-- /.card -->
            </div>
            <div class="modal-footer justify-content-between">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				<button type="button" id="submitButton" class="btn btn-primary">Save changes</button>            
            </div>
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
      </div>
      <!-- /.modal -->
      
      
      <!--  결재 요청 모달-->
      <div class="modal fade" id="modal-default">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body" style="text-align: center;">
             <h4>결재 요청 하시겠습니까?</h4>
            </div>
            <div class="modal-footer justify-content-between">
              <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
              <button type="button" class="btn btn-primary">요청</button>
            </div>
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
      </div>
      <!-- /.modal -->
      
      
       <!--  임시저장 모달-->
      <div class="modal fade" id="modal-default2">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body" style="text-align: center;">
             <h4>임시저장 하시겠습니까?</h4>
            </div>
            <div class="modal-footer justify-content-between">
              <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
              <button type="button" class="btn btn-primary">요청</button>
            </div>
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
      </div>
      <!-- /.modal -->
      
       <!--  결재 요청 모달-->
      <div class="modal fade" id="modal-default3">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body" style="text-align: center;">
             <h4>취소 하시겠습니까?</h4>
            </div>
            <div class="modal-footer justify-content-between">
              <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
              <button type="button" class="btn btn-primary">요청</button>
            </div>
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
      </div>
      <!-- /.modal -->
      
      
      
      
     
     
     
      
	
	
  <footer class="main-footer">
    <div class="float-right d-none d-sm-block">
    
      <b>Version</b> 3.2.0
    </div>
    <strong>Copyright &copy; 2014-2021 <a href="https://adminlte.io">AdminLTE.io</a>.</strong> All rights reserved.
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./컨텐츠 - wrapper -->
</div><!--  제일큰거-->

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>


<!-- Bootstrap4 Duallistbox -->
<script src="plugins/bootstrap4-duallistbox/jquery.bootstrap-duallistbox.min.js"></script>

<!-- bs-custom-file-input -->
<script src="plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>



<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- DataTables  & Plugins -->

<script src="plugins/datatables/jquery.dataTables.min.js"></script>
<script src="plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script src="plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
<script src="plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
<script src="plugins/jszip/jszip.min.js"></script>
<script src="plugins/pdfmake/pdfmake.min.js"></script>
<script src="plugins/pdfmake/vfs_fonts.js"></script>
<script src="plugins/datatables-buttons/js/buttons.move5.min.js"></script>
<script src="plugins/datatables-buttons/js/buttons.print.min.js"></script>
<script src="plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
 


<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>

<!-- Page specific script -->



<script>


$(function () {
    $("#example1").DataTable({
      "responsive": true, "lengthChange": false, "autoWidth": false,
      "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
    }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
  });


/*결재 작성하기 모달  */

function item(button) {
	  // 버튼 클래스 변경
	  $('#previewBox').empty();
	  var vacationButton = document.getElementById("vacation");
	  vacationButton.className = "btn btn-block btn-outline-dark";
	  var projectButton = document.getElementById("project");
	  projectButton.className = "btn btn-block btn-outline-dark";
	  
	  
	  button.className = "btn btn-block btn-primary";
	  $('#previewBox').append("<img src=\"img/buyItem.jpg\"  style=\"max-width: 100%; max-height: 100%; width: auto; height: auto;\">")
	

	// 사용하기 버튼의 href 변경
	    document.getElementById("paymentButton").setAttribute("href", "./paymentBuyItemForm.go");

	  
	}

function vacation(button) {
	  // 버튼 클래스 변경
	  $('#previewBox').empty();
	  var projectButton = document.getElementById("project");
	  projectButton.className = "btn btn-block btn-outline-dark";
	  var itemButton = document.getElementById("item");
	  itemButton.className = "btn btn-block btn-outline-dark";
	  
	  
	  button.className = "btn btn-block btn-primary";
	  $('#previewBox').append("<img src=\"img/vacationFormMini.jpg\"  style=\"max-width: 100%; max-height: 100%; width: auto; height: auto;\">")
	
	// 사용하기 버튼의 href 변경
	    document.getElementById("paymentButton").setAttribute("href", "./paymentVacationForm.go");
	 }	
	
function project(button) {
	  // 버튼 클래스 변경
	  $('#previewBox').empty();
	  var vacationButton = document.getElementById("vacation");
	  vacationButton.className = "btn btn-block btn-outline-dark";
	  
	  var itemButton = document.getElementById("item");
	  itemButton.className = "btn btn-block btn-outline-dark";
	  
	  
	  button.className = "btn btn-block btn-primary";
	  $('#previewBox').append("<img src=\"img/projectForm.jpg\"  style=\"max-width: 100%; max-height: 100%; width: auto; height: auto;\">")
	
	// 사용하기 버튼의 href 변경
	    document.getElementById("paymentButton").setAttribute("href", "./paymentProjectForm.go");
	  }	
	
function restoreButtonColor() {
	  // 버튼 클래스 복원
	  var vacationButton = document.getElementById("vacation");
	  vacationButton.className = "btn btn-block btn-outline-dark";
	  
	  var itemButton = document.getElementById("item");
	  itemButton.className = "btn btn-block btn-outline-dark";
	  
	  var projectButton = document.getElementById("project");
	  projectButton.className = "btn btn-block btn-outline-dark";
	  
	  $('#previewBox').empty();
	  
	  
	  document.getElementById("paymentButton").removeAttribute("href");
	  
	}	

  
</script>




</body>
</html>
