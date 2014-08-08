<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 <head profile="http://gmpg.org/xfn/11">
   <meta http-equiv="Content-Type" content="text/html ; charset=utf-8" />
   <meta name="author" content="蓬蓬  | qq:123456" />
   <meta name="Copyright" content="Copyright (c) 2011 | 08 | 16" />  
   <link type="text/css" rel="stylesheet" href="css/main.css" media="screen" />
	<script type="text/javascript" src="js/jquery-1.6.1.min.js"></script>  
	<script type="text/javascript" src="js/main.js"></script>

	
   <title>大学社团管理系统</title>
</head> 
  
<body>
<div class="tbody">
 
<?php
include("view/common/nav.php");
@header('Content-Type:text/html;charset=utf-8');  
@mysql_query("SET NAMES utf8");
?>
<div class="threeboard">
<?php
include("view/common/leftside.php");
?>

<?php
include("view/common/rightside.php");
?>

<div  class="board">
 
 
	<div  class="c1" id="maintopmiddle">
 
		<img style="height:30px;width:500px;" src="static/shetuanxinwen.jpg" />
		<div id="maintopmiddle_bg"></div>  <!--标题背景-->
		<div id="maintopmiddle_info"></div> <!--标题-->
		<ul>
			<li class="on">1</li>
			<li>2</li>
			<li>3</li>
			<li>4</li>
		</ul>
		<div id="maintopmiddle_list">
			<a href=""><img src="static/roll/1.jpg" alt="图片一"/></a>
			<a href=""><img src="static/roll/2.jpg" alt="图片二"/></a>
			<a href=""><img src="static/roll/3.jpg" alt="图片三"/></a>
			<a href=""><img src="static/roll/4.jpg" alt="图片四"/></a>
		</div>

	</div>	
	<div  class="c2">
 
		<img src="static/xinwen.jpg" />

	</div>	
	<div  class="c3">
 
		<img style="width:500px;height:30px;" src="static/shetuanfencai.jpg" />
		<div id="colee_left">
			<table cellpadding="0" cellspacing="0" border="0">
				<tr><td id="colee_left1" valign="top" align="center">
				<table cellpadding="2" cellspacing="0" border="0">
					<tr align="center">
						<td><img src="static/turn/1.jpg"/></td>
						<td><img src="static/turn/2.jpg"/></td>
						<td><img src="static/turn/3.jpg"/></td>
						<td><img src="static/turn/4.jpg"/></td>
						<td><img src="static/turn/5.jpg"/></td>
						<td><img src="static/turn/6.jpg"/></td>
					</tr>
				</table>
				</td>
				<td id="colee_left2" valign="top"></td>
				</tr>
			</table>
		</div>
	</div>
</div>
<script type="text/javascript">
//使用div时，请保证colee_left2与colee_left1是在同一行上.
var speed=30//速度数值越大速度越慢
var colee_left2=document.getElementById("colee_left2");
var colee_left1=document.getElementById("colee_left1");
var colee_left=document.getElementById("colee_left");
colee_left2.innerHTML=colee_left1.innerHTML
function Marquee3(){
if(colee_left2.offsetWidth-colee_left.scrollLeft<=0)//offsetWidth 是对象的可见宽度
colee_left.scrollLeft-=colee_left1.offsetWidth//scrollWidth 是对象的实际内容的宽，不包边线宽度
else{
colee_left.scrollLeft++
}
}
var MyMar3=setInterval(Marquee3,speed)
colee_left.onmouseover=function() {clearInterval(MyMar3)}
colee_left.onmouseout=function() {MyMar3=setInterval(Marquee3,speed)}
</script>

 

</div>
<?php
include("view/common/footer.php");
?>

</div>
</body>
</html>

