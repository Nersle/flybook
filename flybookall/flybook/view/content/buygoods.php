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
 
<div class="bgood">
<h2>物资购买登记</h2>
<form method="post"  action="buygoods.php" name="buyorder" onsubmit="return validate();">

<div class="in3">
	<p class="in0">物品名称</p><input type="text" name="gname">
</div>
<div class="in3">
	<p class="in0">购买数量</p><input type="text" name="gacount">
</div>
<div class="in3">
	<p class="in0">经手人</p><input type="text" name="agent">
</div>
<div class="in3">
	<p class="in0">单价</p><input type="text" name="price">
</div>
<div class="in3"> 
<p class="in0><font color="black"><strong>备注</strong></font><font color="red">(*)(最长字数:100)</font></p>
	
<textarea id="beizhu" name="content"   > </textarea>
 
</div>
<div class="in3">
 
<input id="s1" type="submit" name="Submit" value="提交">
<input id="r1" type="reset" name="Reset" value="重置">
</div>


</form>

</div>
</div>
<?php
?>