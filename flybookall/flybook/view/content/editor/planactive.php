<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml"> <head profile="http://gmpg.org/xfn/11">   <meta http-equiv="Content-Type" content="text/html ; charset=utf-8" />   <meta name="author" content="蓬蓬  | qq:123456" />   <meta name="Copyright" content="Copyright (c) 2011 | 08 | 16" />     <link type="text/css" rel="stylesheet" href="../../../css/main.css" media="screen" />	<script type="text/javascript" src="js/jquery-1.6.1.min.js"></script>  	<script type="text/javascript" src="jquery-1.4.4.min.js"></script>	<script type="text/javascript" src="../../../js/main.js"></script>	<script type="text/javascript" src="xheditor/xheditor-1.1.12-zh-cn.min.js"></script>	   <title>大学社团管理系统-活动策划</title></head>   <body> <?php session_start() ?> <?php if(!isset($_SESSION['usrs'])) {	header("location:../../../login/login.php"); 	}elseecho 	'<script type="text/javascript">alert("请先登录！"); </script>';?><script type="text/javascript">  var editor	<!--				function validate(){				var $editor_data=editor.getSource(); 			if($editor_data==""){				alert("请输入策划建议内容！"); 				return false;			}			else { 				     var editor_data = CKEDITOR.instances.content.getData();   					 alert(editor_data);			}			return true;		} 	//--></script> <?php //根据用户提交的修改更新数据库if(isset($_POST['Submit'])&&isset($_POST['content']) ) {  	header('Content-Type:text/html;charset=utf-8'); 	ini_set('date.timezone','Asia/Shanghai');//时区 			$select=mysql_connect('localhost','root','') or die('connect error!'.mysql_error());		if($select)		{			mysql_query("SET NAMES utf8");			if(mysql_select_db('flybook',$select))			{								//$ID=$_POST["hidevalue"];				//$ID="23";				 				$datetime=date("Y-m-d H:i:s");//"201212";			 				$str="insert into planning (PID,Pname, sname,planSubject,				pdatetime)values('".$_POST["PID"]."','".$_POST["Pname"]."',				'".$_POST["sname"]."','".$_POST['content']."','".$datetime."');";				 			   // echo $str; 				 				$a=mysql_query($str,$select) or die ("Database change error   \n");				 				 //数据更新失败输出错误信息				if(mysql_affected_rows()==0)					echo "not find the content!\n";			//	else echo mysql_affected_rows();				 			}			else			echo "choose Database error!\n";		}		else		echo "connect to mysql error!\n";	  } ?><div class="tbody"> <?phpinclude("../../common/nav.php");?><?phpinclude("../../../view/common/leftside.php");?><?php include("../../../view/common/rightside.php");?><div class="board"><h2>活动策划专区^<>^ </h2><br> <div id="leave"><form name="forms" action="planactive.php" method="post" onsubmit="return validate();"><p><br> 活动名称：xXXXXx</p><input type="hidden" name="PID" value="<?php echo "123456";  ?>"><input type="hidden" name="Pname" value="<?php echo "天涯论坛";  ?>"><input type="hidden" name="sname" value="<?php echo "merry";  ?>"><br> <p>活动*策划建议(*)(最长字数:200)<br><br>  </p><textarea id="tx1" name="content" > </textarea><script type="text/javascript">		editor=$('#tx1').xheditor({upLinkUrl:"uploadattach.php",upLinkExt:"zip,rar,txt,doc,pdf",		width:500,height:180,		upImgUrl:"upload.php?immediate=1",upImgExt:"jpg,jpeg,gif,png",		upFlashUrl:"upload.php?immediate=1",upFlashExt:"swf",		upMediaUrl:"upload.php?immediate=1",upMediaExt:"wmv,avi,wma,mp3,mid"});</script></br><input type="submit" id="sub1" name="Submit" value="提交"><input type="reset" id="rst1" name="rst2" value="重置"></form></div> <div id="showMsg"><?php		@header('Content-Type:text/html;charset=utf-8'); 		ini_set('date.timezone','Asia/Shanghai');//时区  			$select=mysql_connect('localhost','root','') or die('connect error!'.mysql_error());			if($select)		{			mysql_query("SET NAMES utf8");			if(mysql_select_db('flybook',$select))			{				$string="select * from planning ;";				$b=mysql_query($string,$select) or die ("Database query table  error!\n");		 				if(mysql_num_rows($b)==0)					echo "not find the content!\n";				 else				{ 				$ac=1;				 while($row=mysql_fetch_row($b))				 { 					echo"<br>".$row[2]."about:".$row[1]."At:".$row[4]."					<br>: ".$row[3]."<hr>";					 					if($ac>4) break;					 $ac++; 				  }				}			}else echo"select database error！";		}else		echo "connect to mysql error!\n";?></div></div><?phpinclude("../../common/footer.php");?></div></body></html>