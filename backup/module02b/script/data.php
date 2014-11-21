<?php //data.php


$jfile_base_class	 = $_POST['jfile_base_class'];
require_once 'login.php'; 
// include 'submit.php';
// Get values from form
// $jfile_base_class	 = $_POST['jfile_base_class']; // base class name for which to generate java code
$jfile = "";


// Extracting before jfile_base_class
$sql0="SELECT before_content FROM baseclass bc WHERE bc.`name` ='".$jfile_base_class."'";

$result0 = mysql_query($sql0); 
while($m_row0 = mysql_fetch_array($result0))  {

	$jfile = $jfile.$m_row0['before_content'].$jfile_base_class." { \n";
}

// Extracting variables from db 
$sql1="SELECT `find_by` FROM `web_elements` WHERE `linked_to_baseclass` in ('All','".$jfile_base_class."')" ;


// IN ('All','".$jfile_base_class."'";

$result1 = mysql_query($sql1); 
while($m_row1 = mysql_fetch_array($result1))  {

	$jfile = $jfile.$m_row1['find_by']."\n";
}


// Extracting functions from db

$sql="SELECT class_name,function_name,GROUP_CONCAT(event_java_code SEPARATOR '\n') AS function_java_code FROM(
SELECT bcl.`name` AS class_name, fn.`name` AS function_name, fns.`event_java_code` AS event_java_code 
FROM baseclass bcl
JOIN `baseclass_function` fn ON bcl.`id` = fn.`baseclass_id`
JOIN `baseclass_function_steps` fns ON fns.`baseclass_function_id` = fn.`id`
WHERE fn.`baseclass_id` IN (
SELECT bc.`id` FROM baseclass bc WHERE bc.`name` = '".$jfile_base_class."'
)
ORDER BY fn.`id`,fns.list_index
)a
GROUP BY class_name, function_name";

$result = mysql_query($sql); 
while($m_row = mysql_fetch_array($result))  {

	$jfile = $jfile."\n".' public void '.$m_row['function_name'].'()'."\n".'{'."\n".$m_row['function_java_code']."\n".'}'."\n";

}


$sql9="SELECT after_content FROM baseclass bc WHERE bc.`name` = '".$jfile_base_class."'";

$result9 = mysql_query($sql9); 
while($m_row9 = mysql_fetch_array($result9))  {

	$jfile = $jfile."\n".$m_row9['after_content'];
}
// echo $result;
// if successfully insert data into database, displays message "Successful".
if($result){

	echo $jfile;
	// echo $item_value;
	// echo $result."Pass";
	// echo $final_var_item;
	// echo $linked_to_form_page;
// header('Location: ../thankyou.php');
}
else {
echo $item_value;
echo $result."ERROR";
echo $jfile_base_class;
}

// close mysql
mysql_close();
file_put_contents('d:/'.$jfile_base_class.'.java', $jfile);

?> 