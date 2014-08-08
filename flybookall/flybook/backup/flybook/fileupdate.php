<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 <head profile="http://gmpg.org/xfn/11">
   <meta http-equiv="Content-Type" content="text/html ; charset=utf-8" />
   <meta name="author" content="蓬蓬  | qq:123456" />
   <meta name="Copyright" content="Copyright (c) 2011 | 08 | 16" />  
   <link type="text/css" rel="stylesheet" href="css/main.css" media="screen" />
	<script type="text/javascript" src="js/jquery-1.6.1.min.js"></script>  
	<script type="text/javascript" src="js/main.js"></script>

	
   <title>大学社团管理系统</title>
</head> 
  
<body>
<div class="tbody">
 
<?php
include("view/common/nav.php");
header('Content-Type:text/html;charset=utf-8');  
mysql_query("SET NAMES utf8");
?>


<div class="board" > 
<p>
<br><br><br>upload file here!
</p>

<?php
if(isset($_POST['submit'])&&$_FILES['file']['size']<200000)
{
	if($_FILES['file']["error"]>0)
	{
		echo "Eorror:".$_FILES['file']['name']."<br>";

	}else
	{
		echo "Upload:".$_FILES['file']['name'];
		echo "Type:".$_FILES['file']['type'];
		echo "SIze:".$_FILES['file']['size']/1024;
		echo "Temp file:".$_FILES['file']['tmp_name'];
		if(file_exists("upload/".$_FILES['file']['name']))
			echo $_FILES['file']['name']."aready exit！<br>";
		else
		{
			move_uploaded_file($_FILES['file']['tmp_name'],
			"upload/".$_FILES["file"]["name"]);
			
			echo "save in "."upload/".$_FILES['file']['name'];
		}
	}
}
?>

<form aciton="fileupdate.php" method="post" enctype=
"multipart/form-data">
<label for="file"> Filename:</label>
<input type="file" name="file" id="file">
<br/>
<input type="submit" name="submit" value="上传"/>
<input type="reset" name="rst" value="重置" />
</div>

<?php
include("view/common/footer.php");
?>

</div>
</body>
</html>

