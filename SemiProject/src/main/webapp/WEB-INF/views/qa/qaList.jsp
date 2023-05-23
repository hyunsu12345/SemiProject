<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1문의목록</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<!--  부트스트랩 아이콘 이용  -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">

<!-- 구글 폰트 -->
<link href="https://fonts.googleapis.com/earlyaccess/notosanskr.css" rel="stylesheet">

<style>
body{font-family:'Noto Sans KR', sans-serif; font-size: 18px}
.button{background-color: white; color: black; border: 1px solid lightgrey; width:90px; height:33px; margin-bottom:4px; border-style: solid;}
.date{border: 1px solid lightgrey; height:33px;}
#dateSpan{margin-left:15px;}
#selectContent{width: 180px; height: 33px; margin-left: 15px; border: 1px solid lightgrey;}
#selectSpan{margin-left: 25px;}
#select{background-color: dimgrey; color: white; border-style: none; font-weight:bold; 
		width: 110px; height: 33px;}
#question{width: 120px; height: 35px; background-color: dimgrey; color: white; border-style: none; font-weight:bold;
		  margin-left: 45%;}	
.content-row {background-color: lightgray; display: flex; align-items: center;}
.tdInfor{ height: 30vh; vertical-align: middle; font-weight:bold; width:16.5%}	 
td>span{margin-left:20px;} 		  
</style>
</head>
<body>
	<c:set value="${ pageContext.servletContext.contextPath }" var="contextPath" scope="application"/>
	<div class="container">
		<h2 style="text-align:center;">인클루드(헤더)</h2>
	</div>
	<br><br><br><br><br>
	<div class="container">
		<h3>1:1문의</h3>
		<hr style="height: 3px;"><br>
		<div class="row">	
			<div class="col-md-12">
				<div class="btn-group" role="group" aria-label="Button Group">
				  <input type="radio" class="btn-check" name="options" id="option1" autocomplete="off">
				  <label class="btn btn-secondary button" for="option1">1주일</label>
				  <input type="radio" class="btn-check" name="options" id="option2" autocomplete="off">
				  <label class="btn btn-secondary button" for="option2">1개월</label>
				  <input type="radio" class="btn-check" name="options" id="option3" autocomplete="off">
				  <label class="btn btn-secondary button" for="option3">3개월</label>
				  <input type="radio" class="btn-check" name="options" id="option4" autocomplete="off">
				  <label class="btn btn-secondary button" for="option4">전체 시기</label>
				  <span id="dateSpan">
				  	<input type="date" id="startDate" class="date" name="startDate">-<input type="date" class="date" name="endDate">
				  </span>
				  <select id="selectContent" name="select">
					<option value="all">전체 보기</option>
					<option value="wait">답변 대기</option>
					<option value="receipt">접수</option>
					<option value="asking">업체 문의 중</option>
					<option value="arrive">물품 도착 확인</option>
					<option value="change">교환 상품 발송</option>
					<option value="finish">답변 완료</option>
				  </select>		
				  <span id="selectSpan">
				  	<button type="button" id="select">조회</button>
				  </span>
				</div>
			</div>  
		</div>
		<table class="table table-hover mx-auto"> <!-- 게시판 목록 -->
			<thead>
			<tr>
				<th>문의유형</th>
				<th>내용</th>
				<th>주문번호</th>
				<th>작성일</th>
				<th>&nbsp;&nbsp;&nbsp;&nbsp;처리 상태</th>
			</tr>
			</thead>
			<tbody>
			<tr>
				<td onclick="toggleContent(this)" style="cursor:pointer">교환/취소</td>
				<td class="titleCell" onclick="toggleContent(this)" style="cursor:pointer">환불처리부탁드립니다</td>
				<td onclick="toggleContent(this)" style="cursor:pointer">123223333222</td>
				<td onclick="toggleContent(this)" style="cursor:pointer">2023-04-30</td>
				<td>
					<span>답변 완료</span>
				</td>
			</tr>
			<tr class="content-row" style="display:none;">
				<td class="tdInfor">
					<p>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;답변<br>
						(2022-10-11 13:12:43)
					</p>
				</td>
				<td colspan="4">
					<p style="word-break:break-all;">
						이거 뭐 어떡하라고요?xxxxxxxxxxxxxxccccccccccccccccccccccxxxsssssssssssssssssssssssssssssddddddd dssssssssssssssssssssssssddddddddddddddssssssss ssssssssssssssssssssssssssssssdddddddddddsddddddssssssss
					</p>
					<img src="나선환.jpg">
					<hr>
					<p style="word-break:break-all;">
						알아서좀 해
					</p>
				</td>
			</tr>		
			<tr>
				<td onclick="toggleContent(this)" style="cursor:pointer">서비스-AS</td>
				<td class="titleCell" onclick="toggleContent(this)" style="cursor:pointer">ssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss</td>
				<td onclick="toggleContent(this)" style="cursor:pointer">1242122422</td>
				<td onclick="toggleContent(this)" style="cursor:pointer">2023-04-27</td>
				<td>
					<span>답변 완료</span>
				</td>
			</tr>
			<tr class="content-row" style="display:none;">
				<td class="tdInfor">
					<p>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;답변<br>
						(2022-10-11 13:12:43)
					</p>
				</td>
				<td colspan="4">
					<p style="word-break:break-all;">
						이거 진짜 맞아요? 해야되요?
						<img></img>
					</p>
					<hr>
					<p style="word-break:break-all;">
						알아서좀 해라 
						
					</p>
				</td>
			</tr>
			<tr>
				<td onclick="toggleContent(this)" style="cursor:pointer">교환/취소</td>
				<td class="titleCell" onclick="toggleContent(this)" style="cursor:pointer">32size로 교환 부탁드려요</td>
				<td onclick="toggleContent(this)" style="cursor:pointer">46444322</td>
				<td onclick="toggleContent(this)" style="cursor:pointer">2023-04-22</td>
				<td>
					<span>답변 대기</span>
					<div class="n-btn-group">
						<button class="btn btn-light edit-button" style="font-weight:bold;" onclick="location.href='{ contextPath }/updateQA.bo'">수정</button>
						<button class="btn btn-secondary delete-button" onclick="confirmDelete()">삭제</button>
					</div>
				</td>
			</tr>
			<tr class="content-row" style="display:none;">
				<td class="tdInfor">
					<p>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;답변<br>
						(2022-10-11 13:12:43)			
					</p>
				</td>
				<td colspan="4">
					<p style="word-break:break-all;">
						아오 
						<img></img>
					</p>
					<hr>
					<p style="word-break:break-all;">
						ㅎㅇㅎㅇ
					</p>
				</td>
			</tr>
			<tr>
				<td onclick="toggleContent(this)" style="cursor:pointer">교환/취소</td>
				<td class="titleCell" onclick="toggleContent(this)" style="cursor:pointer">사이즈좀 바꿔줘요</td>
				<td onclick="toggleContent(this)" style="cursor:pointer">24224222</td>
				<td onclick="toggleContent(this)" style="cursor:pointer">2023-04-21</td>
				<td>
					<span>답변 대기</span><br>
					<div class="n-btn-group">
						<button class="btn btn-light edit-button" style="font-weight:bold;" onclick="location.href='{ contextPath }/updateQA.bo'">수정</button>
						<button class="btn btn-secondary delete-button" onclick="confirmDelete()">삭제</button>
					</div>					
				</td>
			</tr>
			<tr class="content-row" style="display:none;">
				<td class="tdInfor">
					<p>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;답변<br>
						(2022-10-11 13:12:43)
					</p>
				</td>
				<td colspan="4">
					<p style="word-break:break-all;">
						이거 뭐죠
						<img></img>
					</p>
					<hr>
					<p style="word-break:break-all;">
						?????????????????????????
						
					</p>
				</td>
			</tr>
			<tr>
				<td onclick="toggleContent(this)" style="cursor:pointer">반품(환불)</td>
				<td class="titleCell" onclick="toggleContent(this)" style="cursor:pointer">반품 했는데 입금이 안되요</td>
				<td onclick="toggleContent(this)" style="cursor:pointer">5255222</td>
				<td onclick="toggleContent(this)" style="cursor:pointer">2023-04-20</td>
				<td>
					<span>답변 완료</span>
				</td>
			</tr>
			<tr class="content-row" style="display:none;">
				<td class="tdInfor">
					<p>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;답변<br>
						(2022-10-11 13:12:43)
					</p>
				</td>
				<td colspan="4">
					<p style="word-break:break-all;">
						다 끝났다 ㅅㅅㅅㅅㅅㅅㅅㅅㅅㅅㅅㅅㅅㅅㅅ
						<img></img>
					</p>
					<hr>
					<p style="word-break:break-all;">
						ㅊㅋㅊㅋ
					</p>
				</td>
			</tr>
			</tbody>
		</table>
		
		<br/>
	
		<nav aria-label="Page navigation example" style="margin-bottom: 5%;"> <!-- 페이지 넘어가는 버튼 -->
			  <ul  class="pagination" style="justify-content: center;">
			    <li class="page-item">
			    	<a class="page-link" href="#" aria-label="Previous">
			        	<span style="color: black;" aria-hidden="true">&laquo;</span>
			    	</a>
			    </li>
			    <li class="page-item">
			     	<a class="page-link" style="color: black;" href="#">1</a>
			    </li>
			    <li class="page-item">
			    	<a class="page-link" style="color: black;" href="#">2</a>
			    </li>
			    <li class="page-item">
			    	<a class="page-link" style="color: black;" href="#">3</a>
			    </li>
			    <li class="page-item">
			    	<a class="page-link" style="color: black;" href="#">4</a>
			    </li>
			    <li class="page-item">
			    	<a class="page-link" style="color: black;" href="#">5</a>
			    </li>
			    <li class="page-item">
			    	<a class="page-link" href="#" aria-label="Next">
			      		<span style="color: black;" aria-hidden="true">&raquo;</span>
			    	</a>
			    </li>
			  </ul>	  
		</nav>		
		<button type="button" id="question" onclick="location.href='{ contextPath }/writeQA.bo'">문의하기</button>
		</div>
		<br><br><br><br><br><br><br><br><br><br>
		<div class="container">
			<h2 style="text-align:center;">인클루드(풋터)</h2>
		</div>
		<script>
		// 행 클릭시 새로운 행이 생기고 다시 클릭시 새로운 행이 사라짐
		function toggleContent(col) {
		    const contentRow = col.parentElement.nextElementSibling;
		    if (contentRow.style.display === 'none') {
		      contentRow.style.display = 'table-row';
		    } else {
		      contentRow.style.display = 'none';
		    }
		  }
		
		// 제목이 40글자 넘어가면 40글자부터 ..으로 대체
		const titleCells = document.getElementsByClassName("titleCell");

		for (let i = 0; i < titleCells.length; i++) {
		  const titleCell = titleCells[i];
		  const title = titleCell.textContent;
		
		  if (title.length > 40) {
		    const shortenedTitle = title.substring(0, 40) + "..";
		    titleCell.textContent = shortenedTitle;
		  }
		}
		
		function confirmDelete() {
			  // 확인 창 표시
			  var result = confirm("정말 삭제하시겠습니까?");
			  
			  // 예 버튼을 선택한 경우
			  if (result) {
			    // 삭제 처리
			    // 여기에 삭제 로직을 작성
			    alert("삭제되었습니다.");
			    location.href = "{ contextPath }/deleteQA.bo";
			  } else {
			    // 아니오 버튼을 선택한 경우
			    alert("삭제가 취소되었습니다.");
			  }
			}
		</script>
</body>
</html>