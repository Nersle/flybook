<script type="text/javascript">
	<!--		
		function validate(){
			if(document.apporder.gname.value == ""){
				alert("请输入物品名称！");
				document.apporder.gname.focus();
				return false;
			}
			else if(document.apporder.gacount.value == ""){
				alert("请输入申请使用数量！");
				document.apporder.gacount.focus();
				return false;
			}else if(document.apporder.agent.value == ""){
				alert("请输入经手人！");
				document.apporder.agent.focus();
				return false;
			}else if(document.apporder.actname.value == ""){
				alert("请输入活动名称！");
				document.apporder.actname.focus();
				return false;
			}else if(document.apporder.actdata.value == ""){
				alert("请输入活动时间！");
				document.apporder.actdata.focus();
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

<style type="text/css">
	#table{
		margin-top:20px;
		width:300px;
		font-size:20px;
		font-family:'微软雅黑';
	}
	
	#table input{
		height:20px;
	}
</style>

<?php 
 

ini_set('date.timezone','Asia/Shanghai');//时区 
//根据用户提交的修改更新数据库
if(isset($_POST['Submit'])&&isset($_POST['gname'])&&isset($_POST['gacount'])&&isset($_POST['agent'])  ) 
{  
		$select=mysql_connect('localhost','root','') or die('connect error!'.mysql_error());
		if($select)
		{
			mysql_query("SET NAMES utf8");
			if(mysql_select_db('flybook',$select))
			{
		 		
			 
				$datetime=date("Y-m-d H:i:s");//"201212";
				
				 
				$str="insert into goodapp (gname, app_person, 
				appacount,activename, usedatatime,appdatetime)values
				('".$_POST['gname']."','".$_POST['agent']."','".$_POST['gacount']."',
				'".$_POST['actname']."','".$_POST['actdata']."','".$datetime."');";
				  //echo $str;
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


<div class="board">
<h2>申请物品</h2>
<form method="post"  action="appgoods.php" name="apporder" onsubmit="return validate();">
	<table id="table">
		<tr><td>物品名称：</td><td><input type="text" name="gname"></td></tr>
		<tr><td>申请数量：</td><td><input type="text" name="gacount"></td></tr>
		<tr><td>活动名称：</td><td><input type="text" name="actname"></td></tr>
		<tr><td>经手人：</td><td><input type="text" name="agent"></td></tr>
		<tr><td>活动时间：</td><td><input type="text" name="actdata"></td></tr>
		<tr><td><input style="width:80px;height:25px;" type="submit" name="Submit" value="提交"></td><td><input style="width:80px;height:25px;" type="reset" name="Reset" value="重置"></td></tr>
	</table>
<!--<p>物品名称<input type="text" name="gname"></p>
<p>申请数量<input type="text" name="gacount"></p>
<p>活动名称<input type="text" name="actname"></p>
<p>经手人<input type="text" name="agent"></p>
<p>活动时间<input type="text" name="actdata"></p>
<input type="submit" name="Submit" value="提交">
<input type="reset" name="Reset" value="重置">-->
</form>

</div>
<?php
?>