 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 <head profile="http://gmpg.org/xfn/11">
   <meta http-equiv="Content-Type" content="text/html ; charset=utf-8" />
   <meta name="author" content="蓬蓬  | qq:123456" />
   <meta name="Copyright" content="Copyright (c) 2011 | 08 | 16" />  
   <link type="text/css" rel="stylesheet" href="../../../css/main.css" media="screen" />
	<script type="text/javascript" src="js/jquery-1.6.1.min.js"></script>  
	<script type="text/javascript" src="jquery-1.4.4.min.js"></script>
	<script type="text/javascript" src="../../../js/main.js"></script>
	<script type="text/javascript" src="xheditor/xheditor-1.1.12-zh-cn.min.js"></script>
	
   <title>大学社团管理系统</title>
</head> 
  
<body> 
 
<div class="tbody">
 
<?php
include("../../common/nav.php");
?>
<?php
include("../../../view/common/leftside.php");
?>

<?php
 include("../../../view/common/rightside.php");
?>
<div class="board">


 
<div id="showMsg">
<h2><br>社团概况介绍</h2>

<div id="showintro">
<?php
	if(isset($_REQUEST['page']))
	{
		$pages=$_REQUEST['page'];
		 
		ini_set('date.timezone','Asia/Shanghai');//时区  
			$select=mysql_connect('localhost','root','') or die('connect error!'.mysql_error());
			if($select)
		{
			mysql_query("SET NAMES utf8");
			if(mysql_select_db('flybook',$select))
			{
				$string="select * from intro where iid=".$pages.";";
				$b=mysql_query($string,$select) or die ("Database query table  error!\n");
				//echo $string;	
				if(mysql_num_rows($b)==0)
					echo "not find the content!\n";
				 else
				{ 
				$ac=1;
				 while($row=mysql_fetch_row($b))
				 { 
					   
					echo "<h3><br> ".$row[1]."</h3>".$row[2]."<br>";
					 
					if($ac>3) break;
					 $ac++; 
				  }
				}
			}else echo"select database error！";
		}else
		echo "connect to mysql error!\n";
	}
?>
</div>
</div>
</div>
<?php
include("../../common/footer.php");
?>

</div>
 
</body>
</html>


 