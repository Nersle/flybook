<?php session_start() ?> 
<?php
unset($_SESSION['usrs']);
@header('Content-Type:text/html;charset=utf-8'); 
echo 	'<script type="text/javascript">alert("成功退出登录！"); </script>';
?>