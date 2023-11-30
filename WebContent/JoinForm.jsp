<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 타임리프 문법 사용 -->
<html xmlns:th="http://www.thymeleaf.org"
    xmlns:layout="http://www.ultraq.net.nz/thymeleaf/layout">
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	  <title>종합 목표 관리 플래너 Step With</title>
    <!-- Bootstrap 적용 -->	
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
    rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" 
    crossorigin="anonymous">
    <link href="css/style.css" rel="stylesheet">
</head>
<body>
	<!-- header.html이 삽입될 위치 -->
	 <div>
	 	<jsp:include page="HeaderLoginLogout.jsp"/>
	 </div>
    
    <!-- main content가 삽입될 위치 -->   
  	<div id = "content" style="padding:30px;">
  	
<!--  	<script type="text/javascript">
  		function check() {
  			if(document.fr.usermake_id.value == "" || document.fr.id.value.length < 0) {
  				alert("아이디를 입력해주세요")
  				history.back()
  				document.fr.usermake_id.focus();
  				return false;
  			}
  		} -->
  	
  	</script> 
  	
  		<form action="JoinProcess.jsp" method="post" name="fr" class="mb-5">
        <h2 style="text-align:center; font-size: 24px; font-weight: bold;">회원가입</h2>
        
        <div>
    	
    	        	    
        <br/>
        
<!--    <div class="login-join mx-auto my-auto">
            <button type="button" style="background-color: #03C75A; border: 0px; height:50px;"
    		class="btn btn-primary formall-width col-auto mb-2">
    			<img src="btnG_square.png" style="width: 30px; height: 30px; vertical-align:middle">
    			<span style="vertical-align: middle;">네이버로 시작하기</span>
    		</button>
    		
    		<button type="button" style="background-color: #FEE500; border: 0px; color:#000000; height:50px;"
    		class="btn btn-primary formall-width col-auto">
    			<img src="kakao_start.png" style="height:25px; vertical-align:top">
    			<span style="vertical-align: top;">카카오로 시작하기</span>
    		</button>
    	</div>
        
        <br/>
        <br/>
    	<p style="text-align:center;" class="font-bol">또는</p>
    	<br/>
    	 -->
    	<div class="login-join mx-auto my-auto">
    		<div class="mb-2">
    			<label class="col-form-label font-bol">아이디</label>
  				<input type="text" name="usermakeId" class="form-control formall-width"  
  				placeholder="아이디를 입력하세요" required/>
  						
  				<div class="d-grid d-md-flex justify-content-md-end dup">
	  				<input type="button" class="btn btn-primary my-1" 
	        			style="width=340px; background-color:#ffffff;
	        		 	color: #DB6551; border-color: #DB6551;" value="중복확인"
	        		  	onclick="winopen()" required/>
        		</div>
			<!-- 아이디중복체크 -->
			<script type="text/javascript">
			function winopen(){
				//새창을 열어서 페이지를 오픈 후 -> 회원아이디정보를 가지고 중복체크
				//1. 아이디가 없으면 알림창과 진행x
				if(document.fr.usermakeId.value =="" || document.fr.usermakeId.value.length < 0){
					alert("아이디를 먼저 입력해주세요")
					document.fr.usermakeId.focus();
				}else{
					//2. 회원정보아이디를 가지고 있는 지 체크하려면 DB에 접근해야한다.
					//자바스크립트로 어떻게 DB에 접근할까? => 파라미터로 id값을 가져가서 jsp페이지에서 진행하면 된다.
					window.open("JoinIdCheck.jsp?usermakeId="+document.fr.usermakeId.value,"","width=500, height=300");
				}
			}
			</script>

			</div>
			<div class="mb-4">
				<label class="col-form-label font-bol">비밀번호</label>
    			<input type="password" name="userPw" class="form-control formall-width" placeholder="비밀번호를 입력하세요" required/>
    		</div>
<!--     		<div class="mb-4">
				<label class="col-form-label font-bol">비밀번호 확인</label>
    			<input type="password" name="user_pw" class="form-control formall-width" placeholder="위와 동일한 비밀번호를 입력해주세요" required>
    		</div> -->
    		<div class="mb-2">
    			<label class="col-form-label font-bol">닉네임</label>
  				<input type="text" name="userNickname" class="form-control formall-width"  placeholder="사용할 닉네임을 입력해주세요" required/>
  				
  				<div class="d-grid d-md-flex justify-content-md-end">
	  				<input type="button" class="btn btn-primary col-auto my-1" 
    	    		 style="width=340px; background-color:#ffffff;
        			 color: #DB6551; border-color: #DB6551;" value="중복확인"
        			  onclick="winopener()" required />
				</div>
			<!-- 닉네임중복체크 -->
			<script type="text/javascript">
			function winopener(){
				//새창을 열어서 페이지를 오픈 후 -> 회원닉네임정보를 가지고 중복체크
				//1. 닉네임 없으면 알림창과 진행x
				if(document.fr.userNickname.value =="" || document.fr.userNickname.value.length < 0){
					alert("닉네임을 먼저 입력해주세요")
					document.fr.userNickname.focus();
				}else{
					//2. 회원정보를 가지고 있는 지 체크하려면 DB에 접근해야한다.
					//자바스크립트로 어떻게 DB에 접근할까? => 파라미터로 id값을 가져가서 jsp페이지에서 진행하면 된다.
					window.open("JoinNicknameCheck.jsp?userNickname="+document.fr.userNickname.value,
							"","width=500, height=300");
				}
			}
			</script>
			</div>
			<div class="mb-4">
    			<label class="col-form-label font-bol">휴대폰</label>
  				<input type="text" name="phoneNumber" class="form-control formall-width"  placeholder="숫자만 입력해주세요" required/>
<!--   				<div class="d-grid d-md-flex justify-content-md-end">
	  				<input type="button" class="btn btn-primary my-1 mb-3" 
    	    		 style="width=340px; background-color:#ffffff;
        			 color: #DB6551; border-color: #DB6551;" value="인증번호 받기"
        			  onclick="location.href='#'" required />
  				</div> -->
  			</div>
  		<!-- 	<div class="mb-4">
  				<input type="text" name="certiNum" class="form-control formall-width"  placeholder="인증번호 6자리를 입력해주세요" required>
 				<div class="d-grid d-md-flex justify-content-md-end">
 					<input type="button" class="btn btn-primary my-1" 
        			 style="width=340px; background-color:#ffffff;
        			 color: #DB6551; border-color: #DB6551;" value="인증번호 확인"
        			  onclick="location.href='#'" required/> 
        		</div>
			</div>  -->  	
    		
    		<div class="mb-4">
				<label class="col-form-label font-bol">이용약관 동의</label>
				<div class="form-check">
  					<input class="form-check-input" type="checkbox" required>
  					<label class="form-check-label" for="flexCheckChecked" >
    			 	 이용약관 동의(필수)
 				 	</label>
 				 	&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;&nbsp;
 				 	<button style="color: #DB6551; border:0px; background-color:white;" 
 				 	 id="termsOfUseBtn" type="button" class="text-hover" data-bs-toggle="modal" data-bs-target="#termsOfUse">
 				 	 약관보기></button>
 				 	 
 				 	 <div class="modal fade" id="termsOfUse" tabindex="-1" aria-labelledby="termsOfUseLabel" aria-hidden="true">
					  <div class="modal-dialog">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h1 class="modal-title fs-5 font-bol" id="termsOfUseLabel">이용약관 동의(필수)</h1>
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					      </div>
					      <div class="modal-body">
					      	<h5 class="font-bol">제1조[목적]</h5>
					        이 약관은 주식회사 성장스텝(이하 '회사'라 함)이 운영하는 목표 관리 서비스 스텝 위드(이하 '서비스'라 함)를 이용함에 있어
					        성장스텝과 이용자의 권리, 의무 및 책임사항을 규정함을 목적으로 합니다.
					        <br/>*PC통신, 스마트폰 앱, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다.
					        <br/><br/>
					        <h5 class="font-bol">제2조[정의]</h5>
					        "서비스"란 "회사"에서 운영하는 사이트를 통해 개인이 등록한 목표 및 일정을 관리하기 위해 DB화하여 하루의 투두리스트를 제공하는 서비스 등 
					        "사이트"에서 제공하는 서비스를 의미합니다.
							<br/>
							"회원"이란 "회사"가 제공하는 서비스를 이용하거나 이용하려는 자로, 카카오톡 등 외부 서비스 연동을 통해 "회사"와 이용계약을 체결한자 
							또는 체결하려는 자를 포함하며, 아이디와 비밀번호의 설정 등 회원가입 절차를 거쳐 성장스텝으로부터 회원으로 인정받은 "개인회원"을 말합니다.
							<br/>
							"아이디"란 회원의 식별과 회원의 서비스 이용을 위하여 "회원"이 가입 시 입력한 영문과 숫자의 조합 말합니다.
							<br/>
							"비밀번호"란 위 제4항에 따라 회원이 회원가입시 아이디를 설정하면서 아이디를 부여받은 자와 동일인임을 확인하고 
							"회원"의 권익을 보호하기 위하여 "회원"이 선정한 영문과 숫자와 특수문자의 조합 또는 이와 동일한 용도로 쓰이는 
							"사이트"에서 자동 생성된 인증코드를 말합니다.
							<br/>
							"비회원"이란 "회원"에 가입하지 않고 "회사"가 제공하는 서비스를 이용하는 자를 말합니다.		
							<br/><br/>
					        <h5 class="font-bol">제3조[약관의 명시와 개정]</h5>.
					        <br/>
					        "회사"는 이 약관의 내용과 상호, 영업소 소재지, 대표자의 성명, 사업자등록번호, 연락처 등을 "회원"이 알 수 있도록 초기 화면에 게시하거나 
					        기타의 방법으로 "회원"에게 공지해야 한다.
							<br/>
							"회사"는 약관의규제등에관한법률, 전기통신기본법, 전기통신사업법, 정보통신망이용촉진등에관한법률, 개인정보보호법 등 관련 법령을 위배하지 않는 
							범위에서 이 약관을 개정할 수 있다.
							<br/>
							"회사"가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 그 개정약관의 적용일자 7일 전부터 적용일자 전일까지 공지한다. 
							단 "회원"의 권리, 의무에 중대한 영향을 주는 변경의 경우에는 적용일자 30일 전부터 공지하도록 한다.
							<br/>
							"회원"은 변경된 약관에 대해 거부할 권리가 있다. "회원"은 변경된 약관이 공지된 지 15일 이내에 거부의사를 표명할 수 있다. "회원"이 거부하는
							 경우 본 서비스 제공자인 "회사"는 15일의 기간을 정하여 "회원"에게 사전 통지 후 당해 "회원"과의 계약을 해지할 수 있다. 만약, "회원"이 거부의사를 표시하지 않거나, 전항에 따라 시행일 이후에 서비스를 이용하는 경우에는 동의한 것으로 간주한다.
							<br/>
							"회사"는 "회원"이 가입 신청 시 등록한 이메일, 휴대전화 문자메시지 중 "회원"이 수신에 동의한 수단을 활용하여, "회원"에 대한 각종 고지나 
							통지를 이행할 수 있다. 단, "회원"에게 서비스 이용에 대한 정보를 고지, 통지 및 공지가 필요할 경우 수신에 동의한 이외의 수단으로 이행할 수 있다.
					        <br/><br/>
					        <h5 class="font-bol">제4조[서비스의 제공 및 변경]</h5>
					        "회사"는 제2조에 명시한 서비스를 제공할 수 있으며, 그 내용은 다음과 같습니다.
					        <br/>1. 혼자하는 목표 설정 및 투두리스트 관리 서비스
					        <br/>2. 함께하는 목표 설정 및 투두리스트 관리 서비스 
					        <br/>3. 다독임 작성 및 관리 서비스
					        <br/>4. 이용자 간의 교류와 관련한 서비스
					        <br/>5. 기타 회사가 추가 개발하거나 다른 회사와의 제휴 계약 등을 통해 회원에게 제공하는 일체의 서비스
					        <br/>"회사"는 필요한 경우 서비스의 내용을 추가 또는 변경할 수 있다. 단, 이 경우 "회사"는 추가 또는 변경 내용을 "회원"에게 공지해야 한다.
							<br/>
							"회사"는 "회원"에게 서비스를 제공함에 있어서 "회원" 또는 개인회원이 "사이트"에 등록하거나 제공한 각종 정보를 관련 법령에 따른 조치
							(예: 비식별처리 등)을 통하여 통계적 자료로 만들거나 DB화하여 활용할 수 있다.
							<br/><br/>
					        <h5 class="font-bol">제5조[회원의 의무]</h5>
							"회원"은 관계법령과 본 약관의 규정 및 기타 "회사"가 통지하는 사항을 준수하여야 하며, 
							기타 "회사"의 업무에 방해되는 행위를 해서는 안 된다.
							
							<br/>"회원"은 서비스를 이용하여 얻은 정보를 "회사"의 사전 동의 없이 복사, 복제, 
							번역, 출판, 방송 기타 방법으로 상업적으로 사용하거나 제3자에게 제공할 수 없다.
							<br/>
							"회원"은 본 서비스를 목표관리 및 공유 이외의 목적으로 사용해서는 안 되며 이용 중 다음 각 호의 행위를 해서는 안 된다.
							<br/><br/>
							1. 다른 회원의 아이디를 부정 사용하는 행위
							<br/>2. 범죄행위를 목적으로 하거나 기타 범죄행위와 관련된 행위
							<br/>3. 타인의 명예를 훼손하거나 모욕하는 행위
							<br/>4. 타인의 지적재산권 등의 권리를 침해하는 행위
							<br/>5. 해킹행위 또는 바이러스의 유포 행위
							<br/>6. 타인의 의사에 반하여 광고성 정보 등 일정한 내용을 계속적으로 전송하는 행위
							<br/>7. 서비스의 안정적인 운영에 지장을 주거나 줄 우려가 있다고 판단되는 행위
							<br/>8. 사이트의 정보 및 서비스를 이용한 영리행위
							<br/>9. 그밖에 선량한 풍속, 기타 사회질서를 해하거나 관계법령에 위반하는 행위
							<br/><br/>
							"회사"는 "회원"이 자동화된 수단을 활용하는 등 서비스의 기능을 비정상적으로 이용하여 게재한 게시물 또는 서비스의 제공 취지와 부합하지 않는 내용의 게시물을 삭제하는 등의 방법으로 제한할 수 있다.
							<br/>
							"회원"은 "회사"의 사전 허락 없이 자동화된 수단(예: 매크로 프로그램, 로봇(봇), 스파이더, 스크래퍼 등)을 이용하여 서비스 회원으로 가입을 시도 또는 가입하거나, 서비스에 로그인을 시도 또는 로그인하거나, 각 "사이트"에 게시물을 게재하거나, 서비스에 게재된 다른 회원의 아이디(ID), 게시물 등을 수집하거나, 서비스의 제공 취지에 부합하지 않는 방식으로 서비스를 이용하는 어뷰징(남용) 행위를 막기 위한 "회사"의 기술적 조치를 무력화하는 일체의 행위(예: IP를 지속적으로 바꿔가며 접속하는 행위, Captcha를 외부 솔루션 등을 통해 우회하거나 무력화하는 행위 등)를 시도하지 않아야 한다.
							<br/>
							"회원"은 "회사"의 동의 없이 자동화된 수단에 의해 서비스 상에 광고가 게재되는 영역 또는 그 밖의 영역에 부호, 문자, 음성, 음향, 그림, 사진, 동영상, 링크 등으로 구성된 각종 콘텐츠 자체 또는 파일을 삽입해서는 안 되고, 서비스 또는 이에 포함된 소프트웨어를 복사, 수정할 수 없으며, 이를 판매, 양도, 대여 또는 담보로 제공하거나 타인에게 그 이용을 허락하지 않아야 한다. "회원"이 서비스에 포함된 소프트웨어를 역설계, 소스코드 추출 시도, 복제, 분해, 모방, 기타 변형하는 등의 행위도 금지되나, 오픈소스에 해당되는 경우 그 자체의 조건에 따른다. "회원"은 그 밖에 바이러스나 기타 악성 코드를 업로드 하거나 서비스의 원활한 운영을 방해할 목적으로 서비스 기능을 비정상적으로 이용하지 않아야 한다.
							<br/><br/>
							<h5 class="font-bol">제6조[회원탈퇴 및 회원자격 상실]</h5>
							회원은 회사에 언제든지 탈퇴를 요청할 수 있으며, 회원탈퇴 메뉴 등을 통하여 이용계약 해지 신청을 할 수 있으며, "회사"는 관련법 등이 정하는 바에 따라 이를 처리한다.
							<br/><br/>
							1. 회원의 의무를 성실하게 이행하지 않았을 때
							<br/>2. 규정한 유료서비스 이용 요금을 납부하지 않았을 때
							<br/>3. 본 서비스 목적에 맞지 않는 분야에 정보를 활용하여 사회적 물의가 발생한 때
							<br/>4. 회원이 등록한 정보의 내용이 사실과 다르거나 조작되었을 때
							<br/>5. 본 서비스와 관련하여 회사 또는 제3자의 명예를 훼손하였을 때
							<br/>6. 기타 위 각호에 준하는 사유가 발생하였을 때
							<br/><br/>
							회원이 회원탈퇴를 하는 경우 탈퇴 이전에 작성한 게시물은 이 약관 제16조 제6항에 근거하여 삭제되지 않는다.
							<br/>
							회사는 회원이 이 약관 및 개별서비스 이용약관을 위반한 경우 경고, 일시적 이용정지, 영구적 이용정지 등의 단계로 서비스 이용을 제한하거나 이용계약을 해지할 수 있다.
							<br/>
							회원은 제 3항에 따른 서비스 이용정지 기타 서비스이용과 관련된 이용제한에 대한 회사가 정한 절차에 따라 이의신청을 할 수 있으며, 회사는 회원의 이의신청이 정당하다고 판단되는 경우 즉시 서비스 이용을 재개한다.
							<br/><br/>
							<h5 class="font-bol">제7조[회원 개인정보 보호 정책]</h5>
							"회사"는 "회원"의 개인정보보호를 위하여 노력해야 한다. "회원"의 개인정보보호에 관해서는 정보통신망이용촉진 및 정보보호 등에 관한 법률, 개인정보보호법 등 관련 법령과 "회사"가 "사이트"에 게시하는 개인정보취급방침에 따른다.
							<br/><br/>
							<h5 class="font-bol">제8조[회사의 의무]</h5>
							"회사"는 본 약관에서 정한 바에 따라 계속적, 안정적으로 서비스를 제공할 수 있도록 최선의 노력을 다해야 한다.
							<br/>
							"회사"는 서비스와 관련한 "회원"의 불만사항이 접수되는 경우 이를 즉시 처리하여야 하며, 즉시 처리가 곤란한 경우에는 그 사유와 처리일정을 서비스 화면 또는 기타 방법을 통해 동 "회원"에게 통지하여야 한다.
							<br/>
							천재지변 등 예측하지 못한 일이 발생하거나 시스템의 장애가 발생하여 서비스가 중단될 경우 이에 대한 손해에 대해서는 "회사"가 책임을 지지 않는다. 다만 자료의 복구나 정상적인 서비스 지원이 되도록 최선을 다할 의무를 진다.
							<br/>
							"회사"는 "회원"의 유료 결제와 관련한 결제 사항 정보 등을 관련 법령에 따라서 1년 이상 보존한다.
							<br/>
							"회사"는 "회원"이 작성한 "커뮤니티 콘텐츠"에 허위사실, 사회적 통념에 어긋나는 내용, 특정 기업 또는 인물에 대한 명예훼손 또는 비방, 사칭, 욕설 및 비속어, 영리 목적의 광고, 음란성을 띄는 내용, 지적재산권 침해, 개인 정보 노출, 현행 법률 및 본 약관에 위배되는 내용이 있을 경우 이를 언제든지 삭제할 수 있으며, 관련 법령에 따른 책임을 물을 수 있다.
							<br/>
							"회사"는 "회원"의 탈퇴를 이유로 "커뮤니티 콘텐츠"를 삭제하지 않으며, "회원"이 서비스 탈퇴 시 삭제되기를 원할 경우 직접 삭제해야 한다.
							<br/>
							커뮤니티 기능이 삭제될 경우 "회원"이 작성한 커뮤니티 콘텐츠가 삭제될 수 있다.
							<br/><br/>
							<h5 class="font-bol">제9조[분쟁 해결]</h5>
							"회사"와 "회원"은 서비스와 관련하여 발생한 분쟁을 원만하게 해결하기 위하여 필요한 모든 노력을 하여야 한다.
							<br/>전항의 노력에도 불구하고, 동 분쟁에 관한 소송발생시 소송은 "회사"의 주소지 관할법원을 전속적 관할로 정한다.
					      </div>
					    </div>
					  </div>
					</div> 	 
				</div>
				
				<div class="form-check">
  					<input class="form-check-input" type="checkbox" required>
  					<label class="form-check-label" for="flexCheckChecked" >
    			 	 개인정보 수집/이용 동의(필수)
 				 	</label>
 				 	<button style="color: #DB6551; border:0px; background-color:white;" 
 				 	 id="privacyAgreeBtn" type="button" class="text-hover" data-bs-toggle="modal" data-bs-target="#privacyAgree">
 				 	 약관보기></button>
 				 	 
 				 	 <div class="modal fade" id="privacyAgree" tabindex="-1" aria-labelledby="privacyAgreeLabel" aria-hidden="true">
					  <div class="modal-dialog">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h1 class="modal-title fs-5 font-bol" id="privacyAgreeLabel">개인정보 수집/이용 동의(필수)</h1>
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					      </div>
					      <div class="modal-body">
					        	<table class="table table-bordered" style="text-align:center;">
									<thead class="table-secondary">
										<tr>
											<th>수집 목적</th>
											<th>수집 항목</th>
											<th>보유 기간</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>회원 가입의사 확인, 이용자 식별 및 본인여부, 회원자격 유지/관리, 계약이행 및 약관변경 등의 고지를 위한 연락,
											본인의사 확인 및 민원 등의 고객 고충 처리, 부정이용 방지, 비인가 사용방지 및 서비스 제공 및 계약의 이행, 서비스 이용
											및 상담, 문의, 후기 등 원활한 의사소통 경로 확보, 맞춤형 회원 서비스 제공</td>
											<td>이름, 아이디, 비밀번호, 휴대폰번호</td>
											<td>회원 탈퇴 즉시 파기, 부정이용 방지를 위해 3개월간 보관(아이디,휴대폰 번호) 후 파기</td>
										</tr>
										<tr>
											<td>서비스 방문 및 이용기록 분석, 부정이용 방지 등을 위한 기록 관리</td>
											<td>서비스 이용기록, 방문기록, 불량 이용기록, IP주소, 쿠키, ADID/IDFA(광고 식별자)</td>
											<td>회원 탈퇴 즉시 또는 이용 목적 달성 즉시 파기</td>
										</tr>
									</tbody>
								</table>
								<p style="color:#707070;">
									*단, 회원 탈퇴와 별개로 분쟁 조정, 고객문의 대응 및 법령 준수 이력 증빙을 위해 이메일, 문자 발송이력은 발송일로부터 
									6개월 보관 후 파기합니다.
								</p>
								<p style="color:#707070;">
									*서비스 제공을 위해 필요한 최소한의 개인정보입니다. 동의를 해 주셔야 서비스를 이용하실 수 있으며, 동의하지 않으실 경우
									서비스에 제한이 있을 수 있습니다.
								</p>
					      </div>
					    </div>
					  </div>
					</div>
				</div>
				
<!-- 				<div class="form-check">
  					<input class="form-check-input" type="checkbox" >
  					<label class="form-check-label" for="flexCheckChecked">
    			 	 개인정보 수집/이용 동의(선택)
 				 	</label>
					<button style="color: #DB6551; border:0px; background-color:white;" 
 				 	 id="privacyAgreeChoiceBtn" type="button" class="text-hover" data-bs-toggle="modal" 
 				 	 data-bs-target="#privacyAgreeChoice">
 				 	 약관보기></button>
 				 	 			 	 
 				 	 <div class="modal fade" id="privacyAgreeChoice" tabindex="-1" aria-labelledby="privacyAgreeChoiceLabel" aria-hidden="true">
					  <div class="modal-dialog">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h1 class="modal-title fs-5 font-bol" id="privacyAgreeChoiceLabel">개인정보 수집/이용 동의(선택)</h1>
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					      </div>
					      	  <div class="modal-body">
								<table class="table table-bordered" style="text-align:center;">
									<thead class="table-secondary">
										<tr>
											<th>수집 목적</th>
											<th>수집 항목</th>
											<th>보유 기간</th>
										</tr>
									</thead>
									<tbody>	
										<tr>
											<td>맞춤형 회원 서비스<br/>제공</td>
											<td>성별,<br/>생년월일</td>
											<td>회원 탈퇴 즉시<br/> 파기</td>
										</tr>
									</tbody>
								</table>
								<p style="color:#707070;">
								*동의를 거부하시는 경우에도 서비스를 이용하실 수 있습니다.
								</p>
					    	  </div>
					  	</div>
					 </div>
					</div> 	 
				</div>
				
				<div class="form-check">
  					<input class="form-check-input" type="checkbox">
  					<label class="form-check-label" for="flexCheckChecked">
    			 	 혜택/정보 SMS수신 동의(선택)
 				 	</label>
 				 
 				 	 
				</div> -->
    		
    		</div>
    		
        	<div class="mb-5">
        		<input type="submit" class="btn btn-primary formall-width col-auto" 
        		style="width=340px; background-color: #DB6551; border: 0px;" value="회원가입" />
        	</div>
        		
			</div>
		</div>
		</form>

  	</div>

	<!-- footer.html이 삽입될 위치 -->
    <div>
    	<jsp:include page="html/footer.html" />
    </div>
    

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous" defer>
</script>
</body>
</html>