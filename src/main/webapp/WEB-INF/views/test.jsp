<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.6.3.min.js"></script>
	
	<link rel="stylesheet" href="//rawgit.com/Soldier-B/jquery.toast/master/jquery.toast/jquery.toast.min.css" />
	<script src="//rawgit.com/Soldier-B/jquery.toast/master/jquery.toast/jquery.toast.min.js"></script>
	<link rel="stylesheet" href="//rawgit.com/Soldier-B/jquery.toast/master/jquery.toast/jquery.toast.min.css" />



<title>Insert title here</title>
</head>
<body>
<br><button class="">기본 토스트</button>
<br><button class="danger">경고 토스트</button>
<br><button class="info">정보 토스트</button>
<br><button class="success">성공 토스트</button>


<script>
  function createToast(t) {
/*     switch (t) {
      case 'danger':
        $.toast('<h4>경고!</h4> 위험을 알리는 토스트. 닫아야 없어집니다.', {
          sticky: true,
          type: 'danger'
        });
        return;
      case 'info':
        $.toast('<h4>알림!</h4> 2초간 알려드립니다.', {
          duration: 2000,
          type: 'info'
        });
        return;
      case 'success':
        $.toast('<h4>성공!</h4> 토스트 생성에 성공했습니다. 닫아야 없어집니다.', {
          sticky: true,
          type: 'success'
        });
        return;
    } */
    $.toast('일반적인 토스트. 2초 후 사라집니다.', {
      duration: 2000
    });
  }

  $(document).ready(function() {
    $.toast.config.align = 'right';
    $.toast.config.width = 400;

    $('.danger').click(function() {
    	$.toast('LOVE에 추가', {
            duration: 2000,
            type: 'info'
          });
    });
  });

</script>
</body>
</html>