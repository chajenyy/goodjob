<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Insert title here</title>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous" />
<!-- Bootstrap icon CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.2/font/bootstrap-icons.css" />
<!-- Jquery Ui CSS -->
<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/themes/smoothness/jquery-ui.min.css" rel="stylesheet" type="text/css" />
<!-- My CSS -->
<!-- JQUERY -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
<!-- Bootstrap -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js" integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous"></script>
<style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');

.container {
	padding: 4px;
	font-family: 'Noto Sans KR', sans-serif;
	margin:0 auto; 
}
a{
	color: black;
	text-decoration: none;
}

.test2 > a {
		text-decoration: none;
}
.fs-4 {
	display:inline;	
	position: relative;
	top: 2px;
	font-size: 18px;
    font-weight: 700;
    line-height: 19px;
    color: #333333;
}
row{
	float:left;
}
.star {
	float: right;
	font-size: 20px;
	color: rgba(255, 213, 0, 0.879);
	position: relative;
	left: 1000px;
	bottom: 32px;
	margin-right: 1000px;
}
/* ??????????????? */
.myPageMember .col-md-5>button {
	margin: auto;
	width:100px;
	display:block;
	margin: 5px 0 5px 0;
} 
.bi-person-circle {
	font-size: 100px;
}
 
#moreInfo{
	background-color: white;
	/* width: 25%; */
	margin-left: 180px;
	border: 1px solid #e1e2e3;
    border-radius: 5px;
} 
#moreInfo>div>button>img{
	width:150px;
	height:150px;
}
.my_info>.submit {
	width:150px;
	height:150px;
	border: none;
	margin: 0 0 15px 0;
}
.my_info>h2 {
	font-size: 20px;
    line-height: 19px;
    font-weight: 700;
}
.my_info>h5 {
	font-size: 14px;
    line-height: 16px;
    color: #767676;
}
.my_info>h4 {
	font-size: 14px;
    line-height: 16px;
    padding-top: 8px;
    color: #767676;
}
.col-md-6{
	background-color: white;
	margin-left: 100px;
	height: 150px;
	padding: 20px;
	border: 1px solid #e1e2e3;
	border-radius: 5px;
}
.offset-md-1{
	margin-top:150px;
}
#moreInfo {
	width: 250px;
}
#memTitle{
	padding: 100px 0 15px 167px;
	font-size: 24px;
    font-weight: 700;
    color: #333;
}
 #mset{
 	margin-top:25px;
	width:245px;
	margin-left:25px;
	
} 
#mset>a {
	font-size: 16px;
    line-height: 17px;
    font-weight: 500;
    color: #333;
    text-decoration: none;
    margin: 10px 0 0 0;
} 
#drop{
	position:relative;
	top:-240px;
	right: 630px;
	text-align: center;
	height:50px;
}
.subscribe{
	/* position:relative;
	left: 390px; */
	float:right;
}
#carousel1{
	height:125px;
	background-color: white;
	position:relative;
	top:-290px;
	left: 430px;
}
#carousel2{
	height:125px;
	background-color: white;
	position:relative;
	top: -200px;
	left: 430px;
	padding-top: 30px;
}
#carousel3{
	height: 125px;
	background-color: white;
	position: relative;
	left: 430px;
	bottom: 110px;
}
 #change{
	background-color: white; 
	margin-left: 180px;
	height: 125px;
	border: 1px solid #e1e2e3;
    border-radius: 5px;
	width: 250px;
} 
.detail{
	margin-left:150px;
	background-color:#FFFFFF;
	width:350px;
	height:90px;
	position:relative;
}
#interestCompany{
	position:relative;
	left: 90px;
	top: -215px;
	width:300px;
	height:30px;
	margin-bottom: 10px;
}
#review{
	position:relative;
	left: -240px;
	bottom: 120px;
}
#mypageCommunity{
	position:relative;
	left: -240px;
	bottom: 30px;
}
 
/* .carousel-control-prev-icon { 
    background-image: url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg'  viewBox='0 0 8 8'%3E%3Cpath d='M5.25 0l-4 4 4 4 1.5-1.5-2.5-2.5 2.5-2.5-1.5-1.5z'/%3E%3C/svg%3E"); 
 }
 
.carousel-control-next-icon {
   background-image: url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='%23000' viewBox='0 0 8 8'%3E%3Cpath d='M2.75 0l-1.5 1.5 2.5 2.5-2.5 2.5 1.5 1.5 4-4-4-4z'/%3E%3C/svg%3E"); 
}  */
.carousel-control-prev-icon, .carousel-control-next-icon {
    height: 100px;
    width: 100px;
    background-color: #0B60DB;
    background-size: 100%, 100%;
    border-radius: 50%;
}

#dropButton{
	width:100px;
	border: none;
	font-size: 16px;
    line-height: 24px;
    font-weight: 400;
    color: #999;
    background-color: transparent;
}
/* #ad{
	margin-top: 3px;
} */
.my_info {
	text-align: center;
}
.tag_btn {
	margin: 15px 0 20px 0;
}
.tag_btn>button {
	color: #0D6EFD;
    background-color: #fff;
    border: 1px solid #0D6EFD;
    width: 100px;
    text-align: center;
    height: 40px;
    font-size: 15px;
    border-radius: 20px;
}
#member_btn {
	color: #0D6EFD;
    background-color: #fff;
    border: 1px solid #0D6EFD;
    width: 100px;
    text-align: center;
    height: 40px;
    font-size: 15px;
    border-radius: 15px;
}
.subscribe>div {
	position: relative;
	bottom: 40px;
}
#interestCompany>p, #review>p, #mypageCommunity>p {
	font-size: 24px;
    font-weight: 700;
    color: #333333;
}
.detail>h3 {
	color: #555555;
    font-size: 18px;
    line-height: 17px;
    text-decoration: none;
}
.detail>h4{
	color: #222222;
    font-size: 15px;
    font-weight: bold;
    letter-spacing: -1px;
    text-decoration: none;
}
.detail>h5 {
	color: #949494;
    line-height: 17px;
    font-size: 13px;
    text-decoration: none;
}
.detail>button {
	color: #555555;
    border: none;
    width: 100px;
    text-align: center;
    height: 30px;
    font-size: 15px;
    border-radius: 8px;
    background: #f2f4f7;
    margin-bottom: 10px;
}
#formFile{
	margin:10px 0px;		
	}
button#subscribeBtn{
	position:relative;
	top:-40px;
	left:350px;
}
#imgInput {
	border:none;
	margin-left: 37px;
}
#preminum_btn {
	color: #FA3E3E;
    background-color: #fff;
    border: 1px solid #FA3E3E;
    width: 100px;
    text-align: center;
    height: 40px;
    font-size: 15px;
    border-radius: 15px;
}
.subscribe>a {
	text-decoration: none;
	color: #333;
}
.col-md-5>p {
	font-size: 15px;
    color: #767676;
}
</style>
<script>
	window.onload=function(){
		var buyBtn = document.getElementById("buyBtn")
		buyBtn.onclick = subscribe;
		
		//var deleteMember = document.getElementById("deleteMember")
		//deleteMember.onclick = deleteMember;
	}
	
	function subscribe(){
		
		var subscribeCheck = $("#flexCheckDefault").is(':checked');
		
		
		if(subscribeCheck == false){
			alert("??????????????? ?????????????????? ????????????")
		}else{
			location.href="/goodjob/subscribe"
		}
		
		/* var subscribeCheck = document.getElementById("flexCheckDefault").getAttribute("checked")
		
		var test = document.getElementById("flexCheckDefault");
		var test2 = test.getAttribute("checked");
		console.log(test2);
		
		console.dir(document.getElementById("flexCheckDefault"));
		console.log(document.getElementById("flexCheckDefault"));
		console.log(subscribeCheck); */
	}
	
	function deleteMember(){
		
		var $checked= $("#flexCheckDefault2").is(':checked');
		var $inputPassword = $("#inputPassword").val();
		
		// console.log(inputPassword);
		// console.log("${mdto.mpwd}");
		
		if($checked==false){
			alert("??????????????? ?????????????????? ????????????")
			/* if(inputPassword != "${mdto.mpwd}"){
				alert("??????????????? ???????????? ?????????????????? ????????????")
			} */
		}else{
			// console.log("??????")
			$.ajax({
				url : "/goodjob/member/delete",
				type : "POST",
				data : {
					"pwd" : $inputPassword
				},
				success : function(data){
					alert("?????? ????????? ?????????????????????. ???????????????.")
					if(data == 1){
						location.href="/goodjob/logout";
					}else{
						alert("??????????????? ?????? ??? ??? ?????????????????? ????????????.")
					}
				}
			})
		}
		
	}
	
</script>
</head>
<body class="myPageMember">
	<!-- header -->
	<sec:authorize access="isAnonymous()">		
		<jsp:include page="../main/header.jsp" /> 	
	</sec:authorize>
	<sec:authorize access="hasRole('ROLE_USER')">
		<jsp:include page="../main/headerMember.jsp" />
	</sec:authorize> 
	<sec:authorize access="hasRole('ROLE_MANAGER')">
		<jsp:include page="../main/headerCompany.jsp" />
	</sec:authorize> 
	<div class="bg-light">
	<div class="container" >
		<div>
			<h2 id="memTitle">MY PAGE</h2>
		</div>
			<div class="row">
				<div class="col-md-3" id="moreInfo">
				<!-- ??????????????? -->
					<form action="/goodjob/myPage/insertImg" method="post" enctype="multipart/form-data">
					<div class="mb-3">
					  <input class="form-control" type="file" id="formFile" name="files">
					</div>
					<button class="submit" id="imgInput">??????</button>
					</form> 
						
					<div class="my_info">
				<c:choose>
					<c:when test="${mdto.mimg==null }">
						<button class="submit"><img src="../images/profile.png" alt="" /></button>
						</c:when>
							<c:otherwise>
								<button class="submit"><img src="../uploadfile/${mdto.mimg }" alt="" /></button>
							</c:otherwise>
							
				</c:choose>			
						<h2>${mdto.mid}</h2>
						<h4>${mdto.memail }</h4>
						<h5>${mdto.mphone }</h5>
						<div class="tag_btn">
							<button type="button" id="tag">${interest }</button>
						</div> 
					<%-- <c:choose>
=======
						</div>

<%-- 					<c:choose>

					<c:choose>
>>>>>>> branch 'day' of https://github.com/jhtaGoodJob/goodjob.git
>>>>>>> branch 'day' of https://github.com/jhtaGoodJob/goodjob.git
						<c:when test="${mdto.mimg==null }">
					<button class="submit"><img src="../images/profile.png" alt="" /></button>
						</c:when>
							<c:otherwise>
								<button class="submit"><img src="../uploadfile/${mdto.mimg }" alt="" /></button>
							</c:otherwise>
					</c:choose> --%>
					<%-- <h2 class="offset-md-3">${mdto.mid}</h2>
					<h5 class="offset-md-3">${mdto.memail }</h5>
					<h5 class="offset-md-3">${mdto.mphone }</h5>
					<div class="col-md-5" >
						<button type="button" class="btn btn-outline-primary" id="tag" style="position:relative; left:85px;">????????????</button> --%>

						

					</div>
				</div>
				
		 		<c:choose>
					<c:when test="${mdto.mpay ==1 }"> 
				<!-- ??????????????????  -->
		 	  	<div class="col-md-6" id="">
					<button type="button" id="preminum_btn">Premium</button>
					&nbsp<p class="fw-bold fs-4">???????????? ??????</p><br />
						<div class="subscribe">
						<a href="/goodjob/canclesub"><p class="fw-bold fs-5 ">?????? ??????</p></a>
						
						</div>
					<div class="col-md-5" style="margin-top: 20px;">
					<p class="fw-bold fs-5">????????????:${payDate } </p>
					</div>
				</div>    
					</c:when>
					<c:otherwise> 
				<!-- ????????????  -->
				 <div class="col-md-6" id="" style="padding-left: 30px; padding-right: 30px;">
				 	<div>
					<button type="button" id="member_btn">?????? ??????</button>
					&nbsp<p class="fw-bold fs-4">?????? ???????????? ?????????.</p><br />
				 	</div>
						 
							<!-- <a href="#" class="text-decoration-none fw-bold fs-5 text-primary" >?????? ??????(29,000/???.VAT??????)</a> -->
									<!-- Button trigger modal -->
									<div>
										<button type="button" class="btn btn-primary" id="subscribeBtn" data-bs-toggle="modal" data-bs-target="#staticBackdrop2">
										  ?????? ??????(29,000/???.VAT??????)
										</button>
									</div>
							<%-- </c:otherwise>	
							</c:choose>  --%>
								<!-- Modal -->
									<div class="modal fade" id="staticBackdrop2" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <h5 class="modal-title" id="staticBackdropLabel">?????? ??????</h5>
									        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
									      </div>
									      <div class="modal-body">
									      	 <table class="table">
										      	<tr>
										      		<th><p class="fs-5 fw-bold fst-italic">???????????? 1??? ??????</p></th>
										      	</tr>
										      	<tr style="text-align: right;">
										      		<td>???????????? <button type="button" class="btn btn-success">29,000???</button></td>
										      	</tr>
									        </table> 
										      	<div class="mb-3">
												  <label for="exampleFormControlTextarea1" class="form-label">????????????</label>
												  <textarea  class="form-control " id="exampleFormControlTextarea1" rows="5" readonly >
												  	- ????????? ????????? ?????????????????? ?????? ?????? ?????? ?????? ????????? ???????????????
													- ????????? ????????? ????????? ???????????? ?????? ?????? ???????????????
													- ?????? ?????? ??? PC, ????????????, ????????????(???)?????? ?????????????????????. (???, ?????????????????? PC????????? ??????)  
													- ?????? ???????????? ?????? ??? ???????????? ????????? ?????? ????????? ????????? ??? ????????????.
													- ????????? ????????? ????????? ?????? ?????? ??? ?????? ?????? ????????? ??????????????????.
													- ????????? ????????? ?????? ??? ??????, ?????? ????????? ???????????? ????????? ??????????????????.
													- ?????? ?????? ?????? ????????? ????????? ??????, ?????? ?????? ????????? ????????? ??? ????????????.
													- ????????? ?????? ?????? ????????? '????????????????????????'??? ???????????? ???????????????.
												  </textarea>
												</div>
											   <div class="form-check">
												  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" >
												  <label class="form-check-label" for="flexCheckDefault">
												   ??????????????? ?????? ??????????????????, ?????? ???????????????.
												  </label>
											  </div>  
						        </div>
						      
						      <div class="modal-footer" >
						        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">????????????</button>
						        <button type="button" class="btn btn-primary" id="buyBtn">????????????</button>
						      </div>
						    
						</div>
					
					</div>	
				</div>  
			
					<div class="col-12" id="ad"><p class=" fs-6" >??????????????? ????????? ???????????? ?????? ???????????? ???????????? ?????????????????? </p></div>
		</div>
		</c:otherwise>	
		</c:choose> 
				<div class="col-3" id="change">
					<div class="col-3" id="mset">
						<a href="/goodjob/myResume">???????????????</a><br /><br />
						<a href="../modify/modifyMember">??????????????????</a>
						
					</div>
				</div>
					<!-- <a href="#" class="drop"><p class="fs-5 ">????????????</p></a> -->
				<div class="col-md-5" id="interestCompany">	 
				<p>?????? ??????</p>
				</div>
				<div class="col-md-6" id="carousel1" style="float: left;">
					<!-- ????????? -->
						<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
						  <div class="carousel-inner">
						  <c:forEach var="i" items="${cname}" varStatus="j">
						    <div class="carousel-item active test2">
						      <!-- <img src="../resources/img/heart0.png" class="d-block w-100" alt="..."> -->
						      <a href="/goodjob/hire/hiredetail?hno=${hlist[j.index].hno }">
						      <div class="detail">
							      <h4>${i.cname }</h4>
							      <h3>${hlist[j.index].htitle }</h3>
							      <h5>???????????? : ${hlist[j.index].hdate}</h5>
						      </div>
						      </a>
						    </div>
						    </c:forEach>
						    <!-- <div class="carousel-item">
						      <img src="../resources/img/heart1.png" class="d-block w-100" alt="...">
						    </div>
						    <div class="carousel-item">
						      <img src="../resources/img/search3.png" class="d-block w-100" alt="...">
						    </div> -->
						  </div>
						  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
						    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
						    <span class="visually-hidden">Previous</span>
						  </button>
						  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
						    <span class="carousel-control-next-icon" aria-hidden="true"></span>
						    <span class="visually-hidden">Next</span>
						  </button>
						</div>
					</div> <!-- carousel end -->
					<div class="col-md-5" id="review">	
						<p>?????? ??? ?????? </p>
					</div>
					<div class="col-md-6" id="carousel2" style="float: left;">
					<div id="carouselExampleIndicators2" class="carousel slide" data-bs-ride="carousel">
						  <div class="carousel-inner">
						  <c:forEach var="i" items="${rlist }">
						    <div class="carousel-item active test2">
						      <!-- <img src="../resources/img/heart0.png" class="d-block w-100" alt="..."> -->
						      <a href="/goodjob/reviewDetail?cno=${i.cno }">
						      <div class="detail">
							      <h4>${i.cname }</h4>
							      <h3>${i.rtitle }</h3>
							      <%-- <h5>${i.rstar }</h5> --%>
							      <div class="star">
								<c:set var="s" value="${i.rstar }"></c:set>
								<c:if test="${s eq 5 }">???????????????</c:if>
								<c:if test="${s eq 4 }">???????????????</c:if>
								<c:if test="${s eq 3 }">???????????????</c:if>
								<c:if test="${s eq 2 }">???????????????</c:if>
								<c:if test="${s eq 1 }">???????????????</c:if>
								<c:if test="${s eq 0 }">???????????????</c:if>
									</div>
						      </div>
						      </a>
						      
						    </div>
						    </c:forEach>
						  </div>
						  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators2" data-bs-slide="prev">
						    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
						    <span class="visually-hidden">Previous</span>
						  </button>
						  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators2" data-bs-slide="next">
						    <span class="carousel-control-next-icon" aria-hidden="true"></span>
						    <span class="visually-hidden">Next</span>
						  </button>
						</div>
					</div> <!-- carousel end -->
					<div class="col-md-5" id="mypageCommunity">	
						<p>?????? ??? ??? </p>
					</div>
					<div class="col-md-6" id="carousel3" style="float: left;">
					<div id="carouselExampleIndicators3" class="carousel slide" data-bs-ride="carousel">
						  <div class="carousel-inner">
						  <c:forEach var="i" items="${blist }">
						    <div class="carousel-item active test2">
						      <!-- <img src="../resources/img/heart0.png" class="d-block w-100" alt="..."> -->
						      <a href="/goodjob/comm/commDetail?bno=${i.bno }">
						      <div class="detail">
							      <button type="button">${i.btag }</button>
							      <h3>${i.btitle }</h3>
							      <h5>${i.bdate }</h5>
						      </div>
						      </a>
						    </div>
						    </c:forEach>
						  </div>
						  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators3" data-bs-slide="prev">
						    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
						    <span class="visually-hidden">Previous</span>
						  </button>
						  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators3" data-bs-slide="next">
						    <span class="carousel-control-next-icon" aria-hidden="true"></span>
						    <span class="visually-hidden">Next</span>
						  </button>
						</div>
					</div>
					<!-- Button trigger modal ????????????-->
						<div class="col-md-3" id="drop">
						<button type="button" data-bs-toggle="modal" data-bs-target="#staticBackdrop" id="dropButton">
						  ????????????
						</button>
						</div>
						
						<!-- Modal -->
						<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
						  <div class="modal-dialog">
						    <div class="modal-content">
						      <div class="modal-header">
						        <h5 class="modal-title" id="staticBackdropLabel">???????????? ??????</h5>
						        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						      </div>
						      <div class="modal-body">
						      	 <table class="table">
							      	<tr>
							      		<th><p class="fs-5 fw-bold fst-italic">???????????? ?????? ???, ??????????????? ??? ????????? ?????????</p></th>
							      	</tr>
							      	<tr>
							      		<td><p class="fw-bold fs-6">?????? ????????? ?????? ??????</p><br />?????? ????????? ???????????? ????????? ????????? ????????? ?????????<br />???????????? ??????????????? ????????????</td>
							      	</tr>
							      	<tr>
							      		<td><p class="fw-bold fs-6">????????? ???????????? ?????? ??????</p><br />?????????, ???????????? ?????? ??? ????????? ????????? ????????? ??????????????? ?????? ????????????. ????????? ???????????? ???????????? ????????????</td>
							      	</tr>
							      	<tr>
							      		<td><p class="fw-bold fs-6">????????? ????????? ?????? ?????? ??????</p><br />????????? ????????? ???????????? ????????? ???????????? ??? ??????????????? ????????????.</td>
							      	</tr>
						        </table> 
						           <div class="mb-3 row">
								    <label for="inputPassword" class="col-sm-2 col-form-label" style="width:200px;">???????????? ?????????</label>
								    <div class="col-sm-10" style="width:300px">
								      <input type="password" class="form-control" id="inputPassword">
								    </div>
								  </div>
								   <div class="form-check">
									  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault2" >
									  <label class="form-check-label" for="flexCheckDefault">
									   ?????? ????????? ?????? ???????????????, ?????? ???????????????.
									  </label>
								  </div>  
						        
						      </div>
						      <div class="modal-footer" >
						        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">????????????</button>
						        <button type="button" class="btn btn-primary" id="deleteMember" onclick="deleteMember();">????????????</button>
						      </div>
						    </div>
						  </div>
						</div>
					<!-- <div class="col-md-3" style="background-color: white;" id="drop">
					<a href="#" class="drop"><p class="fs-5 ">????????????</p></a>
					</div>  --> 
<!-- 			<div class="row">
				<div class="col-md-5" id="">
					<div class="mlink">
						<a href="#"><h4 class="offset-md-3">???????????????</h4></a>
						<a href="../modify/modifyMember"><h4 class="offset-md-3">??????????????????</h4></a>
					</div>
				</div>
					<a href="#" class="drop">????????????</a>
			</div> -->
				</div>
			</div>
		</div>
	</div>
		<!-- footer -->
		<jsp:include page="../main/footer.jsp" /> 
</body>
</html>