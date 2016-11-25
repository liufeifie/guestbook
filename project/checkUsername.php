<?php
$pdo=new PDO("mysql:host=localhost;dbname=kong","root","");
//把前台传过来的用户名带入到sql语句中
$sql="select * from user where username='".$_POST['username']."'";
//echo $sql;
//执行sql语句
$result=$pdo->query($sql);
//获取所有的数据
$data=$result->fetchAll();
//var_dump($data);
if($data){
    echo "taken";
}
?>