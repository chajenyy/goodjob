<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${map.dto.btitle}</title>

<!-- bootstrap cdn -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>

<!-- bootstrap icon cdn -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">

<!-- jquery cdn -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');
	*{
		margin: 0;
		padding: 0;
		font-family: 'Noto Sans KR', sans-serif;
	}
	
	.back{
		padding-top: 100px;
		background-color: #F4F4F4;
		text-align: center;
	}
	.innerback{
		background-color: white;
		display: inline-block;
		margin: 50px 50px;
	}
	.tagWrap button {
		background-color: #E5E5E5;
	}
	.boardList {
		width : 900px;
		border-bottom: 1px solid #E5E5E5;
		text-align: left;
		margin-top: 10px;
	}
	
	.idHeader{
		line-height: 7em;
		margin-bottom: -10px;
		font-size: 15px;
		position: relative;
	}
	.boardtitle {
		font-size: 2.8rem;
	    font-weight: 700;
	    color: #333;
	    margin-top: 40px;
	    margin-bottom: 32px;
	}
	.content{
		margin-top: 20px;
		
		margin-bottom: 60px;
	    font-size: 1.3rem;
	    line-height: 1.65;
	    color: #333;
	    text-align: left;
		word-break:break-all;
	    white-space: pre-wrap;
	    word-wrap: break-word;
	}
	
	.boardFooter{
		margin: 20px 0px;
		display: flex;
	}
	.tagWrap > a {
		text-decoration: none;
	}
	.tagSpan {
		font-size: 14px;
	    font-weight: 300;
	    padding: 5px 13px;
	    border: 1px solid #e1e2e3;
	    border-radius: 100px;
	    color: #888;
	    display: inline-block;
	    margin-left: -4px;
	}
	.commentWrite{
		margin-top: 20px;
		border: 1px solid #E5E5E5;
		border-radius: 5px;
		width : 900px;
		text-align: left;
		
	}
	.commentWrite > textarea {
		width : 100%;
		height: 90px;
		border: 0;
		outline: none;
		resize: none;
		padding: 16px 10px;
	}
	.btnBox {
		width : 900px;
		padding: 0;
		margin-top: 20px;
		margin-bottom: 20px;
	}
	.btnBox > .btn{
		background-color: #E5E5E5;
	}
	.fs-2{
		float: right; 
		cursor: pointer; 
		line-height: 40px; 
		margin-top: 20px;	
	}
	.modifyBtn{
	    color: #333;
	    font-size: 13px;
	    padding: 13px 5px;
	    border-radius: 5px;
	    box-shadow: 0 1px 5px 0 rgb(0 0 0 / 10%);
	    border: 1px solid #ccc;
	    display:none;
	    width: 100px;
	    height:80px;
	    text-align: center;
	    position: absolute;
	    right: -10%;
	    top: 45%;
		line-height: 1.5;
	}
	.innerModifyBtn, .innerDeleteBtn{
		height: 30px;
	}
	.modifyBtn button {
	    padding: 0px 10px;
	    border: 0;
	    background: none;
	}
	.blikeBtn, .commentWriteBtn {
		align-items:center;
		display:flex;
		margin-right: 20px;
		border: 0;
		background: none;
	}
		
</style>
<script type="text/javascript">

	$(function(){
		
		// ????????? ??????,?????? div ????????????
		$(".fs-2").click(function(e){
			   	$(".modifyBtn").css("display","block"); 
		});
		// ????????? ??????,?????? div ????????????
		$('html').click(function(e){
			if (!$(e.target).hasClass('fs-2')) { 
			   	$(".modifyBtn").css("display","none"); 
			}
		});
		
		// ????????? ?????? ??????
		$("#deleteBoardSubmit").click(function(){
			var boardDeleteForm = $("#deleteBoardForm")[0];
			
			boardDeleteForm.method = "post";
			boardDeleteForm.action = "/goodjob/comm/deleteBoard";
			boardDeleteForm.submit();
		});
		
		// ????????? ?????? ?????? ????????? ??????
		$("#modifyBoardBtn").click(function(){
			var boardModifyForm = $("#modifyBoardForm")[0];
			
			boardModifyForm.method = "get";
			boardModifyForm.action = "/goodjob/comm/commModify";
			boardModifyForm.submit();
		});
		
		// ?????? ?????????
		$(".blikeBtn").click(function(){
			console.log($("#bLikeSpan")[0].innerText);
			var params = {
				blno : 0,
				mno : ${map.loginMno},
				bno : ${map.dto.bno},
				bLikeCnt : $("#bLikeSpan")[0].innerText,
				heartUpdate : $("#bLikeClick").attr("class")
			}
			
	   	$.ajax({
	    	type : "POST",            
	        url : "/goodjob/comm/boardLike",      
	        contentType: 'application/json',
	        data : JSON.stringify(params),           
	        success : function(map){
	        	console.log(map);
				if(map.heartCheck === 0 ){
					$("#bLikeClick").attr("class","bi bi-heart fs-5");
					$("#bLikeSpan")[0].innerText = map.bLikeCnt;
					console.log("?????????");
				}else{
					$("#bLikeClick").attr("class","bi bi-heart-fill fs-5");
					$("#bLikeSpan")[0].innerText = map.bLikeCnt;
					console.log("?????????");
				}
	        },
	        error : function(XMLHttpRequest, textStatus, errorThrown){ 
	           alert("?????? ??????.")
	       	}
	       });		
			
		}); //?????? ????????? function end
		
	});

</script>
</head>
<body>
	<!-- header include -->
	<sec:authorize access="isAnonymous()">		
		<jsp:include page="../main/header.jsp" /> 	
	</sec:authorize>
	<sec:authorize access="hasRole('ROLE_USER')">
		<jsp:include page="../main/headerMember.jsp" />
	</sec:authorize> 
	<sec:authorize access="hasRole('ROLE_MANAGER')">
		<jsp:include page="../main/headerCompany.jsp" />
	</sec:authorize> 
	
	<div class="bg-light back">
		<div class="container innerback" style="max-width: 1000px;">
			<div class="container boardList">
				<div class="container idHeader"> 
					<!-- ????????? ????????? ???????????? -->
					<span style="font-weight: 700;">${map.id }</span>
					<fmt:parseDate  var="date" value="${map.dto.bdate }" pattern="yyyy-MM-dd" />
					<fmt:formatDate var="date2" value="${date }" pattern="yyyy??? MM??? dd???" />
					${date2}
					<!-- ???????????? ????????? ???????????? mno ????????? ????????? ?????? -->
					<c:if test="${map.dto.mno == map.loginMno }">
						<i class="bi bi-three-dots fs-2 "></i>
						<div class="modifyBtn">
							<div class="innerModifyBtn">
								<form id="modifyBoardForm">
									<input type="hidden" name="bno" value="${map.dto.bno}" />
									<button type="button" id="modifyBoardBtn" >??????</button>
								</form>
							</div>
							<div class="innerDeleteBtn">
								<form id="deleteBoardForm">
								<input type="hidden" name="bno" value="${map.dto.bno}" />
								<button type="button" data-bs-toggle="modal" data-bs-target="#deleteModal" >??????</button>
								</form>
							</div>
						</div>
					</c:if>
				</div>
				<div class="container">
					<h2 class="boardtitle" >${map.dto.btitle}</h2>
					<div class="content">${map.dto.bcontents }</div>
				</div>
				<div class="tagWrap" style="margin-top: 40px; margin-left: -10px;" >
					<a href="/goodjob/comm/commList/${map.dto.btag}" >
						<span class="tagSpan mx-3">${map.dto.btag}</span>
					</a>
				</div>
				<div class="container boardFooter">
					<!-- ???????????? ????????? mno, ???????????? bno ??? boardLike??? bno,mno ???????????? ?????? ?????? ?????? ?????? ?????? -->
					<!-- ??????????????? ????????? ????????? ????????? ??? ????????? ????????? boardLike ????????? ?????? -->
					<c:choose>
					<c:when test="${map.loginMno == null }">
					<div style="display: inline-block; width: 50px;  "  >
						<i class="bi bi-heart fs-5"></i>
						<span style="font-size: 22px; ">${map.bLikeCnt }</span>
					</div>
					</c:when>
					<c:otherwise>
					<button class="blikeBtn">
						<i class="${map.heartUpdate }" id="bLikeClick"></i>
						<span id="bLikeSpan" style="font-size: 22px; margin-left: 5px;">${map.bLikeCnt }</span>
					</button>
					</c:otherwise>
					</c:choose>
						<i class="bi bi-chat fs-5"></i>
						<span style="font-size: 22px; margin-left: 5px; ">${map.blnoCnt }</span>
				</div>
			</div>
			<c:import url="/comm/boardComment">
				<c:param name="bno" value="${map.dto.bno}" ></c:param>
			</c:import>
		</div>
	</div>
	

	<!-- ?????? delete Modal -->
	<div class="modal fade" id="deleteModal" tabindex="-1" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" >??????!</h5>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	      	???????????? ?????? ?????????????????????????
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">??????</button>
	        <button type="button" id="deleteBoardSubmit" class="btn btn-primary">????????????</button>
	      </div>
	    </div>
	  </div>
	</div>

	<!-- footer include -->
	<jsp:include page="../main/footer.jsp" /> 
</body>
</html>