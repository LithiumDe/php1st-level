<?php 
function imgCopyResize($filename, $imgpath, $name)
        {
	       $width = 200;
	       $height = 200;
	
	       //header('Content-Type: image/jpeg');
	
            list($width_orig, $height_orig) = getimagesize($filename);
            $ratio_orig = $width_orig/$height_orig;
            if ($width/$height > $ratio_orig) {
               $width = $height*$ratio_orig;
            } else {
                $height = $width/$ratio_orig;
            }

            $image_p = imagecreatetruecolor($width, $height);
            $image = imagecreatefromjpeg($filename);
            imagecopyresampled($image_p, $image, 0, 0, 0, 0, $width, $height, $width_orig, $height_orig);

            $destfile = $imgpath . basename($name);
            imagejpeg($image_p, $destfile, 100);
            imagedestroy($image_p);

            return true;
        }
function upload()
{
     $fileName = $_FILES['photo']['name'];//Имя файла
        $fileType = $_FILES['photo']['type'];//Тип файла
        $fileTmp = $_FILES['photo']['tmp_name'];//Временное имя файла
        $path = "files/".$fileName;//Полный путь к файлу
        $targetDir = "files/";//Целевая папка
        $smallPath = "small/";
        $newName = 'pic_' . time() . '.jpg';
        $smallTargetDir = $smallPath.$newName;
        if ($fileType == 'image/jpeg') //Проверка на тип загружаемого изображения
        {
             if(move_uploaded_file($fileTmp,$path)) //загружаем файл в целевую папку
             {
                 echo "Файл ".$fileName." успешно загружен <br>";
                 echo "<a href = 'HW5.php'>Назад</a><br>";
                 
                 imgCopyResize($path, $smallPath, $newName);//обрезаем фото
                 
                 
                 $connect = mysqli_connect("localhost", "root", "", "HW5");//Подключаемся к базе
                 $sqlRecord = "INSERT INTO img(Name,Path,Tmp,smallPath) VALUES ('$fileName','$path','$fileTmp','$smallTargetDir')"; //Запрос на запись
                 $rec = mysqli_query($connect, $sqlRecord);//Записываем данные в таблицу
                 $sqlGetData = "SELECT * From img ORDER BY 'num' DESC";//Запрос на чтение
                 $res = mysqli_query($connect, $sqlGetData);//Читаем данные из таблицы
                 
                 while ($data = mysqli_fetch_assoc($res))
                 {
                  
                   echo "<figure>
                        <a href=\"view.php?id={$data['Id']}\" target=\"_self\">
                        <img src=\"{$data['smallPath']}\" alt=\"{$data['Name']}\" >
                        </a>
                        <figcaption>Просмотров: {$data['num']}</figcaption>
                    </figure>";
                    }
                
             }
             else
                echo "При загрузке произошла ошибка";
        }
        else
        {
            echo "Тип файла должен быть JPEG<br>";
            echo "<a href = 'HW5.php'>Назад</a>";
        }
       
}

?>