<?php //data.php
require_once 'login.php'; 
// include 'submit.php';
// Get values from form
$item_name       = $_POST['item_name'];
$item_type       = $_POST['item_type'];	
$item_value_raw  = mysql_real_escape_string($_POST['item_value']);
$item_value      = $_POST['item_value'];
$locator_type    = $_POST['locator_type'];
$description     = $_POST['description'];
$linked_to_form_page     = $_POST['linked_to_form_page'];
$final_var_item  = mysql_real_escape_string(final_var_item($item_type, $item_name, $item_value,$locator_type));

// Insert data into mysql
$sql="INSERT INTO var_item (item_name, item_type, item_value, locator_type, linked_to_form_page, description, timestamp,final_var_item)
VALUES ('$item_name', '$item_type', '$item_value_raw', '$locator_type', '$linked_to_form_page', '$description', NOW(), '$final_var_item')";
$result = mysql_query($sql); 
echo $result;
// if successfully insert data into database, displays message "Successful".
if($result){
	// echo $item_value;
	echo $result."Pass";
	// echo $final_var_item;
	// echo $linked_to_form_page;
// header('Location: ../thankyou.php');
}
else {
echo $item_value;
echo $result."ERROR";
}

// close mysql
mysql_close();


function final_var_item($item_type,$item_name,$item_value,$locator_type)
{

		if($item_type == 'WebElement'){
			return 'WebElement '.$item_name.' = driver.findElement(By.'.$locator_type.'('.$item_value.'));';

			}

			else
				return 'String '.$item_name.' = "'.$item_value.'";';

}

?> 