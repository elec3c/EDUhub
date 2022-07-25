<?php
$home = $_SERVER['DOCUMENT_ROOT'];
$dir = $home . '/EDUhub/'; 
$files = scandir($dir);


unset($file [0]);
unset($file [1]);



foreach ($files as $file){ 

    if ($file != "." && $file != "..") { 
       if (pathinfo($file)[extension] == 'html') {
        $count++; 
        echo  '<p>'.$count. ').  <a href="'.$file.'" target="_blank">'.$file.'</a>'."</p>"; 
        }

    } 

}
