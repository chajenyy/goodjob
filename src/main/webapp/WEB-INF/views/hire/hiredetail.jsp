<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Language" content="ko-KR">
<link href="/goodjob/hire/layout.css" media="all" rel="stylesheet"
	type="text/css">
<link href="/goodjob/hire/jobs-view.css" media="all" rel="stylesheet"
	type="text/css">
<!-- jquery cdn -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<!-- Kakao Map API -->
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3484f13ef6b2c0b0ecf40d552d5cb5db&libraries=services,clusterer,drawing"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3484f13ef6b2c0b0ecf40d552d5cb5db"></script>
<style>
@import  url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');
.wrap_jview {
	font-family: 'Noto Sans KR', sans-serif;
}

.like {
	width: 50px;
	height: auto;
}

.review {
	width: 870px;
    height: 300px;
    margin: 60px 85px 0px 0px;
}

.review_main{
	border: 1px solid #ebebeb;
}  
 
/* img{
	width:50px;
	height:50px;
} */
	
.star{
	float:right;
	font-size: 30px;
	color: rgba(255, 213, 0, 0.879);
	position: relative;
	left: 950px;
	bottom:30px;
	margin-right:1000px;
}

.title{
	
    padding: 20px 0px;
}

.good{
	color: #0D6EFD;
    margin: 15px 0px;
}
    
.bad{
    color:#FA3E3E;
    margin: 15px 0px;
}

.spr_jview.btn_jview.btn_link.goReview{
	float: right;
}

.goReview{
	padding: 15px;
}

.wrap_jview a {
  text-decoration: none;
}
.btn_scrap {
	border: none;
}
</style>
<script>
	
	
	$(function(){
		// pay ??? ????????? blur ??????
		if("${pay}" == 0){
			$("#review_main").css({
				"filter" : "blur(15px)"
			})
		}
		
		const currDay = new Date();
		const xDay = new Date("${model.hdate}")
		
		let diff = xDay - currDay;
		//if(diff > 0){
			// ??? ???????????? ????????????
			setInterval(diffDay, 1000);
		//}
		
	})
	
	
	// ${like} ??? null ?????? ????????? ??????
	// null ?????? ????????? ?????? ?????? ==> 0
	// null ??? ????????? ????????? ?????? ?????? ==> 1
	var flag = "${like}" == "" ? 0 : 1;
	

	function LikeUpdate() {
		console.dir("test");
		var bookmarkCnt = (parseInt)($("#bookmarkCnt")[0].innerText);
		
		// ????????? ?????? ??????????????? ????????? ??????
		$.ajax({
			url : "/goodjob/hire/likeUpdate",
			type : "get",
			data : {
				"flag" : flag,
				"hno" : "${model.hno}"
			},
			success : function(data) {
				console.log("data : " + data)
				const like = $("#like");
					
				if (data == "del") { // del ??? ???????????? ?????? => flag = 0;
					flag = 0;
					like.attr("src", "/goodjob/images/heart0.png")
					$("#bookmarkCnt")[0].innerText = bookmarkCnt -1;
				} else if (data == "ins") { // ins ??? ???????????? ?????? => flag =1;
					flag = 1;
					like.attr("src", "/goodjob/images/heart1.png")
					$("#bookmarkCnt")[0].innerText = bookmarkCnt +1;
				}
			}

		})
	}
	

	function diffDay(){
		
		var remainDay = document.querySelector("#day");
		var remainTime = document.querySelector("#time");
		

		var currDay = new Date();
		var xDay = new Date("2022-08-14 18:00:00")
		
		 let diff = xDay - currDay;
		
		console.log("diff : "+remainTime)
		
		 var diffDays = Math.floor((xDay.getTime() - currDay.getTime()) / (1000 * 60 * 60 * 24));
		 diff -= diffDays * (1000 * 60 * 60 * 24);
		 var diffHours = Math.floor(diff / (1000 * 60 * 60));
		 diff -= diffHours * (1000 * 60 * 60);
		 var diffMin = Math.floor(diff / (1000 * 60));
		 diff -= diffMin * (1000 * 60);
		 var diffSec = Math.floor(diff / 1000);
		 
		 // console.log("hour  : "+`${diffHours}`);
		 
		 remainDay.innerText = diffDays;
		 
		 if(diffHours <10){
			 diffHours = "0"+diffHours;
		 }
		 if(diffMin < 10){
			 diffMin = "0"+diffMin;
		 }
		 remainTime.innerText = diffHours+":"+diffMin+":"+diffSec;
		 
		// console.log(diffDays + " "+diffHours+" " +diffMin+" "+diffSec)
	}
	
	
</script>
</head>
<body>
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
	<div class="wrap_jview">
		<div class="jview">
			<div class="wrap_jv_cont">
				<div class="wrap_jv_header">
					<div class="jv_header">
						<a href="/goodjob/reviewDetail?cno=${model.cno }" title=${model.cname }
							class="company" target="_blank"> ${model.cname } </a>
						<h1 class="tit_job">${model.htitle }</h1>
						
						<c:if test="${like != null}">
							<button type="button" style="text-align: center;" class="btn_scrap" title="???????????????"
								onclick="LikeUpdate()">
								<img class="like" style="width: 40px; margin-top: -8px;" id="like" src="/goodjob/images/heart1.png" alt="?????????" />
								<div id="bookmarkCnt" style="font-size: 15px; margin-top: -5px;" >${bookmarkCnt}</div>
							</button>
						</c:if>
						<button type="button" style="text-align: center;" class="btn_scrap" title="???????????????"
							onclick="LikeUpdate()">
								<img class="like" style="width: 40px; margin-top: -8px;" id="like" src="/goodjob/images/heart0.png" alt="?????????" />
								<div id="bookmarkCnt" style="font-size: 15px; margin-top: -5px;">${bookmarkCnt}</div>
						</button>
						
					</div>
				</div>
				<div class="jv_cont jv_summary">
					<div class="jv_title blind">????????????</div>
					<div class="cont">
						<div class="col">
							<dl>
								<dt>??????</dt>
								<dd>
									<strong>${model.hworkinfo }</strong>
								</dd>
							</dl>
							<dl>
								<dt>??????</dt>
								<dd>
									<strong>${model.hedu }</strong>
								</dd>
							</dl>
							<dl>
								<dt>????????????</dt>
								<dd>
									<strong>${model.hform }</strong>
								</dd>
							</dl>
						</div>
						<div class="col">
							<dl>
								<dt>??????</dt>
								<dd>${model.hsal }</dd>
							</dl>
							<dl>
								<dt>????????????</dt>
								<dd>${loc.bigname }${loc.smallname }</dd>
							</dl>
						</div>

					</div>
				</div>
				<div class="jv_cont jv_detail">
					<hr>
					<hr>
					<c:choose>
						<c:when test="${model.hapi != null }">
							<dl>
								<dd>${main[1] }</dd>
								<dd>
									<a href="${main[0] }">????????? ??????</a>
								</dd>
							</dl>
						</c:when>
						<c:otherwise>
							<dl>
								<dd>${model.hmain }</dd>
							</dl>
						</c:otherwise>
					</c:choose>
				</div>

				<div class="jv_cont jv_howto">
					<div class="jv_title">???????????? ??? ??????</div>
					<div class="cont box">
						<div class="status">
							<div class="info_timer">
								<span class="txt">?????? ??????</span>
								<span class="day" id="day"></span>
								<span class="txt_day">???</span> 
								<span class="time" id="time"></span>
							</div>
							<dl class="info_period">
								<dt class="end">?????????</dt>
								<dd>${model.hdate }</dd>
							</dl>
						</div>
						<dl class="guide">
							<dt>????????????</dt>
							<dd class="method">${model.hway }</dd>
							<dt>?????? ?????? ??????</dt>
							<c:if test="${model.hapi != null }">
								<dd class="info">${model.hapi }</dd>
							</c:if>
						</dl>
					</div>
				</div>
				<div class="jv_cont jv_company">
					<div class="jv_title">????????????</div>
					<div class="cont box">
						<div class="logo" id="map">
							<script>
								var mapContainer = document
										.getElementById('map'), // ????????? ????????? div 
								mapOption = {
									center : new kakao.maps.LatLng(33.450701,
											126.570667), // ????????? ????????????
									level : 3
								// ????????? ?????? ??????
								};
								// ????????? ???????????????    
								var map = new kakao.maps.Map(mapContainer,
										mapOption);

								// ??????-?????? ?????? ????????? ???????????????
								var geocoder = new kakao.maps.services.Geocoder();
								// ????????? ????????? ???????????????
								geocoder
										.addressSearch(
												"${model.caddr}",
												function(result, status) {

													// ??????????????? ????????? ??????????????? 
													if (status === kakao.maps.services.Status.OK) {

														var coords = new kakao.maps.LatLng(
																result[0].y,
																result[0].x);

														// ??????????????? ?????? ????????? ????????? ???????????????
														var marker = new kakao.maps.Marker(
																{
																	map : map,
																	position : coords
																});

														/* // ?????????????????? ????????? ?????? ????????? ???????????????
														var infowindow = new kakao.maps.InfoWindow({
														    content: '<div style="width:150px;text-align:center;padding:6px 0;">"${model.cname}"</div>'
														});
														infowindow.open(map, marker); */

														// ????????? ????????? ??????????????? ?????? ????????? ??????????????????
														map.setCenter(coords);
													}
												});
							</script>
						</div>
						<div class="wrap_info">
							<div class="title">
								<span class="company_name" title="${model.cname }">${model.cname }</span>
								<a href="/goodjob/reviewDetail?cno=${model.cno }" title="??????????????? ??????"
									class="spr_jview btn_jview btn_link" target="blank"><strong>????????????</strong></a>
							</div>
							<div class="info">
								<dl>
									<dt>?????????</dt>
									<dd title="${model.cpeople }">${model.cpeople }???</dd>
								</dl>
								<dl>
									<dt>??????</dt>
									<dd title="${model.tname }">${model.tname }</dd>
								</dl>
								<dl>
									<dt>?????????</dt>
									<dd title="${setup[0] }??? ${setup[1] }??? ${setup[2] }??? ">${setup[0] }???
										${setup[1] }??? ${setup[2] }???</dd>
								</dl>
								<dl>
									<dt>????????????</dt>
									<dd title="${model.ceo }">${model.ceo }</dd>
								</dl>
								<dl>
									<dt>????????????</dt>
									<dd title="${model.chomepage }">
										<a href="${model.chomepage }" target="_blank">
											${model.chomepage }</a>
									</dd>
								</dl>
								<dl class="wide">
									<dt>????????????</dt>
									<dd title="${model.caddr }">${model.caddr }</dd>
								</dl>
							</div>
						</div>

					</div>
					
						<div class="review">
							<div class="goReview">
								<span class="jv_title">${model.cname } ????????? ?????? </span>
								<a href="/goodjob/reviewDetail?cno=${model.cno }" title="??????????????? ??????"
										class="spr_jview btn_jview btn_link goReview" target="blank"><strong>???????????? ????????????</strong></a>
							</div>
							<c:if test="${review !=null }">
							<div class="review_main" id="review_main">
							<h4 class="title">
								<strong>${review.rtitle }</strong>
								<div class="star">	
									<c:set var="s" value="${review.rstar}"></c:set>								
									<c:if test="${s eq 5 }">
										???????????????
									</c:if>
									<c:if test="${s eq 4 }">
										????????????
									</c:if>
									<c:if test="${s eq 3 }">
										?????????
									</c:if>
									<c:if test="${s eq 2 }">
										??????
									</c:if>
									<c:if test="${s eq 1 }">
										???
									</c:if>
								 </div>
							</h4>
							<div class="re2">
								<h5 class="good">
									<strong>??????</strong>
								</h5>
								<h5>${review.rgood }</h5>
							</div>
							<div class="re3">
								<h5 class="bad">
									<strong>??????</strong>
								</h5>
								<h5>${review.rbad }</h5>
							</div>
						</div>
						</c:if>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
	<!-- footer -->
	<jsp:include page="../main/footer.jsp" /> 
</body>
</html>
