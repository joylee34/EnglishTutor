<%@page import="com.english.tutor.Vocab"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Random Words</title>
<script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
<script type="text/javascript">

	var jsarr = '';
	var idx=0;
	var score=0;
	$(function(){
		$.ajax({
			url : 'RandomWord_proc.jsp',
			cache:false,
			dataType:'json',
			success:function(res){
				jsarr = res;
			},
			error : function(xhr, status, err){
				alert('에러:' + err);
			}
		});
		return false;
	})
	function startTimer()
	{
		showWords();
		var time = 60;
		var min = '';
		var sec = '';
		
		var x = setInterval(function(){
			min = parseInt(time/60);
			sec = time%60;
			
			document.getElementById("timeLeft").innerHTML = min + ":" + sec;
			time--;
			
	   		if(time<0) {
	   			clearInterval(x);
	   			document.getElementById("timeLeft").innerHTML = "Time Over";
	   		}
		}, 1000);
	}
	
	function showWords()
	{
		document.getElementById("rd").innerHTML = jsarr[idx++];
	}
	
	function score()
	{
		document.getElementById("score").innerHTML = "점수" + score;
		score++;
	}
 
</script>
<style type="text/css">
	main { width:fit-content; margin:4em auto; }
	h1 { text-align:center; font-size: 3em; color:black;}
	#box { width:20em; height: 10em; background-color: white;}
	#score { width:20em; height: 10em; background-color: white;}
	#rd { width:fit-content; margin:auto; font-size: 2em; padding: 2em;}
	html { background-image: linear-gradient(rgb(89,208,255), rgb(255,255,255));}
	button {
	  margin: 20px; 
	  width: 130px;
	  height: 40px;
	  color: #fff;
	  border-radius: 5px;
	  padding: 10px 25px;
	  font-family: 'Lato', sans-serif;
	  font-weight: 500;
	  background: transparent;
	  cursor: pointer;
	  transition: all 0.3s ease;
	  position: relative;
	  display: inline-block;
	   box-shadow:inset 2px 2px 2px 0px rgba(255,255,255,.5),
	   7px 7px 20px 0px rgba(0,0,0,.1),
	   4px 4px 5px 0px rgba(0,0,0,.1);
	  outline: none;
	  background: rgb(6,14,131);
	  background: linear-gradient(0deg, rgba(6,14,131,1) 0%, rgba(12,25,180,1) 100%);
	  border: none;
	}
	button:hover {
	   background: rgb(0,3,255);
	background: linear-gradient(0deg, rgba(0,3,255,1) 0%, rgba(2,126,251,1) 100%);
	}
</style>
</head>
<body>
<main>
<h1>Charades</h1>
<h5>■ 남은 시간 : <span id="timeLeft"></span></h5>
<div><button type='button' onclick='startTimer();'>시작</button></div>


<div id='box'>
	<div id='rd'></div>
</div>
<p>
	<div>
		<button type='button' onclick='showWords(); score();'>O</button>
		<button type='button' onclick='showWords();'>X</button>
	</div>

</main>
<aside>
	<label>점수</label>
	<div id='score'></div>
</aside>
</body>
</html>