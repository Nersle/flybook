<script type="text/javascript">
	<!--		
		function validate(){
			if(document.buyorder.gname.value == ""){
				alert("请输入物品名称！");
				document.buyorder.gname.focus();
				return false;
			}
			else if(document.buyorder.gacount.value == ""){
				alert("请输入购买数量！");
				document.buyorder.gacount.focus();
				return false;
			}else if(document.buyorder.agent.value == ""){
				alert("请输入经手人！");
				document.buyorder.agent.focus();
				return false;
			}else if(document.buyorder.price.value == ""){
				alert("请输入购买单价！");
				document.buyorder.price.focus();
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
header('Content-Type:text/html;charset=utf-8');  

ini_set('date.timezone','Asia/Shanghai');//时区 
//根据用户提交的修改更新数据库
if(isset($_POST['Submit'])&&isset($_POST['gname'])&&isset($_POST['gacount'])&&isset($_POST['agent'])&&isset($_POST['price']) ) 
{  
		$select=mysql_connect('localhost','root','') or die('connect error!'.mysql_error());
		if($select)
		{
			mysql_query("SET NAMES utf8");
			if(mysql_select_db('flybook',$select))
			{
		 		
			 
				$datetime=date("Y-m-d H:i:s");//"201212";
				
				 
				$str="insert into goodmsg (gname, agent, acount,price, Bdatetime)values
				('".$_POST['gname']."','".$_POST['agent']."','".$_POST['gacount']."',
				'".$_POST['price']."','".$datetime."');";
				// echo $str;
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
<form method="post"  action="buygoods.php" name="buyorder" onsubmit="return validate();">
<p>物品名称<input type="text" name="gname"></p>
<p>购买数量<input type="text" name="gacount"></p>
<p>经手人<input type="text" name="agent"></p>
<p>单价<input type="text" name="price"></p>
<input type="submit" name="Submit" value="提交">
<input type="reset" name="Reset" value="重置">
</form>

</div>
<?php
?>