<?php
$pdo=new PDO("mysql:host=localhost;dbname=kong","root","");
//把前台传过来的用户名带入到sql语句中
$sql="delete from user where id=".$_POST['id'];
//echo $sql;
//exec返回值是数字
$result=$pdo->exec($sql);
if($result){
    echo "ok";
}else{
    echo "failed";
}
?>