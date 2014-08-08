<script type="text/javascript">
	<!--		
		function validate(){
			if(document.apporder.sname.value == ""){
				alert("请输姓名！");
				document.apporder.sname.focus();
				return false;
			}
			else if(document.apporder.sid.value == ""){
				alert("请输入学号！");
				document.apporder.sid.focus();
				return false;
			}else if(document.apporder.spro.value == ""){
				alert("请输院系专业！");
				document.apporder.spro.focus();
				return false;
			}else if(document.apporder.addr.value == ""){
				alert("请输入公寓地址！");
				document.apporder.addr.focus();
				return false;
			} else if(document.apporder.tel.value == ""){
				alert("请输入电话号码！");
				document.apporder.tel.focus();
				return false;
			}else if(document.apporder.im.value == ""){
				alert("请输入QQ/MSN！");
				document.apporder.im.focus();
				return false;
			}else if(document.apporder.email.value == ""){
				alert("请输入email！");
				document.apporder.email.focus();
				return false;
			}else if(document.apporder.especial.value == ""){
				alert("请输入特长爱好！");
				document.apporder.especial.focus();
				return false;
			}else if(document.apporder.homeAddr.value == ""){
				alert("请输入家乡！");
				document.apporder.homeAddr.focus();
				return false;
			}else if(document.apporder.part.value == ""){
				alert("请输入申请加入部门！");
				document.apporder.part.focus();
				return false;
			}else if(document.apporder.bri.value == ""){
				alert("请输入生日！");
				document.apporder.bri.focus();
				return false;
			}else if(document.apporder.selfIntro.value == ""){
				alert("请输入自我简介！");
				document.apporder.selfIntro.focus();
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
 

ini_set('date.timezone','Asia/Shanghai');//时区 
//根据用户提交的修改更新数据库
if(isset($_POST['Submit'])&&isset($_POST['selfIntro'])) 
{  
		$select=mysql_connect('localhost','root','') or die('connect error!'.mysql_error());
		if($select)
		{
			mysql_query("SET NAMES utf8");
			if(mysql_select_db('flybook',$select))
			{
		 		
			 
				$datetime=date("Y-m-d H:i:s");//"201212";
				
				$sql = "INSERT INTO flybook.member (sname, sid, spro,addr,
				tel, email, im, especial,homeAddr, part, bri, selfIntro) 
				VALUES ( '".$_POST['sname']."','".$_POST['sid'] ."','".$_POST['spro']."','".$_POST['addr']."','"
				 .$_POST['tel']."','".$_POST['email']."','".$_POST['im']."','".$_POST['especial'] 
				."','".$_POST['homeAddr']."','".$_POST['part']."','".$_POST['bri']."','".$_POST['selfIntro']."');";
				 
				// echo $sql;
				 
				 
				$a=mysql_query($sql,$select) or die ("Database change error   \n");
				 
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


<div class="board">
<h2>社员注册</h2>
<form method="post"  action="register.php" name="apporder" onsubmit="return validate();">
<p>姓名<input type="text" name="sname"></p>
<p>学号<input type="text" name="sid"></p>
<p>院系专业<input type="text" name="spro"></p>
<p>公寓住址<input type="text" name="addr"></p>
<p>Tel<input type="text" name="tel"></p>
<p>email<input type="text" name="email"></p>
<p>QQ/MSN:<input type="text" name="im"></p>
<p>特长爱好<input type="text" name="especial"></p>
<p>家乡<input type="text" name="homeAddr"></p>
<p>加入部门<input type="text" name="part"></p>
<p>生日<input type="text" name="bri"></p>
<p>自我简述 <textarea name="selfIntro" ></textarea></p>
<input type="submit" name="Submit" value="提交">
<input type="reset" name="Reset" value="重置">
</form>

</div>
<?php
?>