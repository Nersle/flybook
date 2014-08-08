<?php session_start() ?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<script type="text/javascript" src="jquery-1.4.4.min.js"></script>
<script type="text/javascript" src="xheditor/xheditor-1.1.12-zh-cn.min.js"></script>
<link rel="stylesheet" type="text/css" href="a.css"/>  
  
<title>哈工大 MOSS 2012 管理系统</title>

<script type="text/javascript">  
var editor
	<!--		
		function validate(){
		
		var $editor_data=editor.getSource(); 
			if($editor_data==""){
				alert("请输入文章内容！"); 
				return false;
			}
			else { 
				     var editor_data = CKEDITOR.instances.content.getData();   
					 alert(editor_data);
			}
			return true;
		} 
	//-->
</script>
</head>
<body>
<script type="text/javascript">
$(document).ready(function(){
$(".hides").hide();
$("li").mouseenter(function(){
$(this).css("background-color","white");
});
$("li").mouseleave(function(){
$(this).css("background-color","#ccc");
}); 

$("li").click(function(){ 
gid=$(this).attr("id"); 
var num=gid.substring(2, 3) ;
newid="link"+num; //alert(newid); 
getcon=$("#"+newid).html(); 
editor.setSource(getcon);
editor.focus(); 
$("#hideinput").show();
$("#hideinput").attr("value",num); 
}); 
});
</script>
<div id="letex">
<div id="lefts">
<ul>

<?php 
//根据用户提交的修改更新数据库
if(isset($_POST['Submit'])&&isset($_POST['content']) ) 
{  
		$select=mysql_connect('localhost','root','') or die('connect error!'.mysql_error());
		if($select)
		{
			if(mysql_select_db('cndr',$select))
			{
				
				$ID=$_POST["hidevalue"];
				$title="hello world";
				$content=$_POST["content"];
				$datetime=date("Y-m-d H:i:s");//"201212";
			 
				$str="insert into pages (ID, title, content, datetime)values('".$ID."','".$title."','".$_POST['content']."','".$datetime."');";
				 
				$a=mysql_query($str,$select) or die ("Database change error   \n");
				 
				 //数据更新失败输出错误信息
				if(mysql_affected_rows()==0)
					echo "not find the content!\n";
				 
			}
			else
			echo "choose Database error!\n";
		}
		else
		echo "connect to mysql error!\n";
	  
} 

?>


<?php
for ($i=1;$i<10;$i++)
{
	//echo '<li id="li'.$i.'"><a href="#">'.$i.'</a></li>';
} 
?>
<?php
/*session_start(); 
if(!(isset($_SESSION["usrs"]) && $_SESSION['usrs']=="already log in"))
{
 header("location:http://www.baidu.com");
} 
*/ 
		$select=mysql_connect('localhost','root','') or die('connect error!'.mysql_error());
		if($select)
		{
		if(mysql_select_db('cndr',$select))
			{  
				$string="select * from pages ;";
				$b=mysql_query($string,$select) or die ("Database can not find the table \n");
		 
				if(mysql_num_rows($b)==0)
					echo "not find the content!\n";
				 else
				{ 
				$ac=1;
				 while($row=mysql_fetch_row($b))
				 { 
					echo '<div class="hides" id="link'.$ac.'">'; 
					 echo $row[2]; 
					 echo"</div>";
					 
					 echo '<li id="li'.$ac.'"><a href="#">'.$ac.$row[1].'</a></li>';
					 $ac++; 
				}
				} 
			}
			else
			echo "choose Database error!\n";
		}
		else
		echo "connect to mysql error!\n"; 

?>
</ul>
 
</div>
<div id="rights">
<form id="form1" name="form1" method="post" action="edit.php" onsubmit="return validate();">  
<table width="650" height="400" border="0" align="right">  
    <tr>  
        <td valign="top"></td>  
        <td>
				<textarea id="tx1" name="content"></textarea>	
		<script type="text/javascript"> 
		editor=$('#tx1').xheditor({upLinkUrl:"uploadattach.php",upLinkExt:"zip,rar,txt,doc,pdf",
		width:600,height:400,
		upImgUrl:"upload.php?immediate=1",upImgExt:"jpg,jpeg,gif,png",
		upFlashUrl:"upload.php?immediate=1",upFlashExt:"swf",
		upMediaUrl:"upload.php?immediate=1",upMediaExt:"wmv,avi,wma,mp3,mid"});
	  </script>  
		</td>  
    </tr>  
    <tr>  
        <td></td>  
        <td>
		<input type="hidden" name="hidevalue" id="hideinput" value="1">
		<input type="submit" name="Submit" value="提交" />  
		<input type="reset" name="Reset" value="重置" /></td>   
    </tr>  
</table> 
</form>  
</div>
</div>
</body>
</html>