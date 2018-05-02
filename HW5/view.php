<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title> Home work 5 </title>
    <link rel="stylesheet" href="style.css" />
</head>
<body>
 
 <?php
   
    require "functions.php";
    $connect = mysqli_connect("localhost", "root", "", "HW5");//Подключаемся к базе
    mysqli_query($connect, "UPDATE img SET 'num' = 'num' + 1 WHERE 'Id' = '{$_GET['Id']}'");//Прибавляем число просмотров
    
    $result = mysqli_query($connect, "SELECT 'Path', 'num' FROM img WHERE 'Id' = '{$_GET['Id']}'");
    $data = mysqli_fetch_assoc($result);
    
    ?>
   <div>      
    <img src="<?= $data['Path'] ?>" alt=""><br>
       
    <p><b>Количество просмотров: </b><?= $data['num']; ?></p>
    <a href="HW5.php">Вернуться в галерею</a>
</div>
</body>
<footer>
    
</footer>
</html>