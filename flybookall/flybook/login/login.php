<?php session_start() ?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css" href="xs_login.css"/>
<script type="text/javascript">
	<!--		
		function validate(){
			if(document.xs_log.xs_logname.value == ""){
				alert("请输入用户名！");
				document.xs_log.xs_logname.focus();
				return false;
			}
			else if(document.xs_log.xs_logpassword.value == ""){
				alert("请输入密码！");
				document.xs_log.xs_logpassword.focus();
				return false;
			}
			return true;
		}
		
		function changeImage(a){
			if(a == 0)
				document.getElementById("input3").src="student_login_loginButton_down.jpg";
			else if(a == 1)
				document.getElementById("input3").src="student_login_loginButton_up.jpg";
		}
	//-->
</script>

<?php
 if(isset($_REQUEST['act']))
 if ($_REQUEST["act"] == "chklogin") 
{ 
	//checklogin($_POST["xs_logname"],md5($_POST["xs_logpassword"]));
	//if(isset($_POST['cndr_commit']))
	 
		$select=mysql_connect('localhost','root','') or die('connect error!'.mysql_error());
		if($select)
		{
			if(mysql_select_db('flybook',$select))
			{
				$string="select * from admin where user='".$_POST['cndr_logname']."';";
				
				
				$a=mysql_query($string,$select) or die ("Database can not find the table \n");
				$row=mysql_fetch_row($a);
				echo $row;
				if(mysql_num_rows($a)==0)
					echo "用户不存在，请联系管理员\n";
				else
				{
					if(md5($row[1])==md5($_POST['cndr_logpassword']))
					{ echo '<script type="text/javascript">alert("登陆成功！"); </script>';
						echo "login success!\n";
						$_SESSION['usrs']=$row[0];
						header("location:../index.php");
					}else echo "log in failed!\n";
				}
			}
			else
			echo "choose Database error!\n";
		}
		else
		echo "connect to mysql error!\n";
	 
			
	//die();
} 


?>
<title>MOSS 2012 系统管理平台</title>
</head>
<body>
	<div id="wrapper">
		<div id="main">
			<div id="login">
				<form name="cndr_log" method="post" action="?act=chklogin" onsubmit="return validate();">
						<input id="input1" type="text" name="cndr_logname" maxlength="20" />
                        <input id="input2" type="password" name="cndr_logpassword" maxlength="20" />
						<input id="input3" type="image" name="cndr_commit" src="student_login_loginButton_up.jpg" onmousedown="changeImage(0);" onmouseup="changeImage(1);"/>
				</form>
			</div>
		</div>
		<div id="bottom">
			<h4>Copyright(2011)哈工大非线性动力研究中心</h4>
		</div>
	</div>
</body>
</html>