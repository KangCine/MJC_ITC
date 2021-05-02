<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script>
    $(document).ready(function(){
        $("button").click(function(){
            $.get("/controller/" + $(this).attr('id'), function(data, status){ });
        });
    });
    </script>
    <meta charset="UTF-8">
    <title>신Check</title>
</head>
<body>
    <div class="container">
        <h2>신Check 제어</h2>
        <button type="button" class="btn btn-success" id='A'>모두 켜기</button>
        <button type="button" class="btn btn-warning" id='1'>1</button>
        <button type="button" class="btn btn-primary" id='2'>2</button>
        <button type="button" class="btn btn-success" id='3'>3</button>
        <button type="button" class="btn btn-default"  id='X'>모두 끄기</button>  
        </div>
</body>
</html>
[출처] [아두이노 실험] - node js와 연동 제어 실험(2) (!전자공작) |작성자 내멋으로

