<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 <head profile="http://gmpg.org/xfn/11">
   <meta http-equiv="Content-Type" content="text/html ; charset=utf-8" />
   <meta name="author" content="蓬蓬  | qq:123456" />
   <meta name="Copyright" content="Copyright (c) 2011 | 08 | 16" />  
   <link type="text/css" rel="stylesheet" href="css/main.css" media="screen" />
	<script type="text/javascript" src="js/jquery-1.6.1.min.js"></script>  
	<script type="text/javascript" src="js/main.js"></script>

	
   <title>物品管理系统</title>
</head> 
  
<body>
<div class="tbody">
<?php session_start() ?> 
<?php
include("view/common/nav.php");
if(!isset($_SESSION['usrs'])) 
{echo 	'<script type="text/javascript">alert("请先登录！"); </script>';
	header("location:login/login.php"); 
	
}
?>
 
<?php
include("view/common/nav.php");
 
?>
<?php
include("view/common/leftside.php");
?>

<?php
 include("view/common/rightside.php");
?>
 
<?php
include("view/content/appgoods.php");
?>

<?php
include("view/common/footer.php");
?>

</div>
</body>
</html>

