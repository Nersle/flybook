<div class="leftside">

  

 
 
 
<?php
		header('Content-Type:text/html;charset=utf-8'); 
		ini_set('date.timezone','Asia/Shanghai');//时区  
		$sqlValue=array("社团公告","部门组织","联系我们");
		$setids=array("gonggao","showpart","showContact");
			$select=mysql_connect('localhost','root','') or die('connect error!'.mysql_error());
			if($select)
		{
			mysql_query("SET NAMES utf8");
			$str1="select leftcontent from leftsides where lefttitle='";
			if(mysql_select_db('flybook',$select))
			{
				for($i=0;$i<3;$i++)
				{
				$string="select * from contacts ;";
				
				$string=$str1.$sqlValue[$i]."';";
				$b=mysql_query($string,$select) or die ("Database query table  error!\n");
				//echo $string;
				if(mysql_num_rows($b)==0)
					 {
					 echo "not find the content!\n";
					// echo '<script type="text/javascript">alert("新闻发布成功！"); </script>';
					 }
				 else
				{ 
				 
				
				 
				 while($row=mysql_fetch_row($b))
				 { 
					 
					echo "<div id=\"".$setids[$i]."\" style=\"padding-top:40px;line-height:20px;font-family:'微软雅黑';text-align:left;\">";  
					echo "".$row[0];
					echo"</div>";
				  }
				}
			}
			}else echo"select database error！";
		}else
		echo "connect to mysql error!\n";

?>
 
 
 


</div>