<?php
include 'Ajax_Page.class.php';
$pdo=new PDO("mysql:host=localhost;dbname=kong","root","");
//设置字符集
$pdo->query("set names utf8");
//查询所有的数据
$query=$pdo->query("select * from user");
//总记录数
$total=$query->rowCount();
//echo $total;
//实例化分页类
$page=new Ajax_Page($total,5);
$sql="select * from user order by id desc ".$page->limit;
//echo $sql;
//执行sql语句
$result=$pdo->query($sql);
//空数组，保存会员和分页数据;
$temp=null;
$temp[0]=$result->fetchAll(PDO::FETCH_OBJ);
$temp[1]=$page->display();
echo json_encode($temp);
//把前台传过来的用户名带入到sql语句中
//order排序，desc：降序
//只显示最新的5条数据;
/* $sql="select * from user order by id desc limit 0,5";
//echo $sql;
//执行sql语句
$result=$pdo->query($sql);
//获取所有的数据
$data=$result->fetchAll();
//var_dump($data);
echo json_encode($data); */
?>