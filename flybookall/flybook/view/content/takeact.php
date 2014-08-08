<script type="text/javascript">
	<!--		
		function validate(){
			if(document.apporder.actname.value == ""){
				alert("请输活动名称！");
				document.apporder.actname.focus();
				return false;
			}
			else if(document.apporder.theme.value == ""){
				alert("请输入活动主题！");
				document.apporder.theme.focus();
				return false;
			}else if(document.apporder.actime.value == ""){
				alert("请输入活动时间！");
				document.apporder.actime.focus();
				return false;
			}else if(document.apporder.actaddr.value == ""){
				alert("请输入活动地点！");
				document.apporder.actaddr.focus();
				return false;
			}  else if(document.apporder.actgoods.value == ""){
				alert("请输入筹备物品！");
				document.apporder.actgoods.focus();
				return false;
			}else if(document.apporder.actips.value == ""){
				alert("请输入活动预算经费！");
				document.apporder.actips.focus();
				return false;
			}else if(document.apporder.actobject.value == ""){
				alert("请输入活动面向的对象群体！");
				document.apporder.actobject.focus();
				return false;
			}else if(document.apporder.actleader.value == ""){
				alert("请输入活动发起人！");
				document.apporder.actleader.focus();
				return false;
			}  else if(document.apporder.actflow.value == ""){
				alert("请输入活动流程！");
				document.apporder.actflow.focus();
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
		width:320px;
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
if(isset($_POST['Submit'])&&isset($_POST['actflow'])) 
{  
		$select=mysql_connect('localhost','root','') or die('connect error!'.mysql_error());
		if($select)
		{
			mysql_query("SET NAMES utf8");
			if(mysql_select_db('flybook',$select))
			{
		 		
			 
				$datetime=date("Y-m-d H:i:s");//"201212";
			 
				$sql = "INSERT INTO flybook.takeactive (actname, theme, actime,actaddr,actleader,
				  actips, actgoods, actobject, actflow) 
				VALUES ( '".$_POST['actname']."','".$_POST['theme'] ."','".$_POST['actime']."','".$_POST['actaddr']."','"
				 .$_POST['actleader']."','".$_POST['actips']."','".$_POST['actgoods']."','".$_POST['actobject'] 
				."','".$_POST['actflow']."');";
				 
			  echo $sql;
				 
				 
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
<h2>发起活动</h2>
<form method="post"  action="takeactive.php" name="apporder" onsubmit="return validate();">
	<table id="table">
		<tr><td>活动名称：</td><td><input type="text" name="actname"/></td></tr>
		<tr><td>活动主题：</td><td><input type="text" name="theme"/></td></tr>
		<tr><td>活动时间：</td><td><input type="text" name="actime"></td></tr>
		<tr><td>举办地点：</td><td><input type="text" name="actaddr"></td></tr>
		<tr><td>发起人：</td><td><input type="text" name="actleader"></td></tr>
		<tr><td>活动大概流程：</td><td> <textarea style="width:153px;height:100px;" name="actflow" ></textarea></td></tr>
		<tr><td>活动经费预算：</td><td><input type="text" name="actips"></td></tr>
		<tr><td>筹备物品：</td><td><input type="text" name="actgoods"></td></tr>
		<tr><td>活动面向群体：</td><td><input type="text" name="actobject"></td></tr>
		<tr><td><input style="width:80px;height:25px;" type="submit" name="Submit" value="提交"></td><td><input style="width:80px;height:25px;" type="reset" name="Reset" value="重置"></td></tr>
	</table>
<!--<p>活动名称<input type="text" name="actname"></p>
<p>活动主题<input type="text" name="theme"></p>
<p>活动时间<input type="text" name="actime"></p>
<p>举办地点<input type="text" name="actaddr"></p>
<p>发起人<input type="text" name="actleader"></p>
<p>活动大概流程  <textarea name="actflow" ></textarea> </p>
<p>活动经费预算<input type="text" name="actips"></p>
<p>筹备物品<input type="text" name="actgoods"></p>
<p>活动面向群体<input type="text" name="actobject"></p>  
<input type="submit" name="Submit" value="提交">
<input type="reset" name="Reset" value="重置">-->
</form>

</div>
<?php
?>