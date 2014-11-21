<?php //data.php


$jfile_base_class	 = $_POST['jfile_base_class'];
require_once 'login.php'; 
// include 'submit.php';
// Get values from form
// $jfile_base_class	 = $_POST['jfile_base_class']; // base class name for which to generate java code
$jfile = "";


// Extracting before jfile_base_class
$sql0="select before_content from baseclass bc where bc.bc_name ='".$jfile_base_class."'";

$result0 = mysql_query($sql0); 
while($m_row0 = mysql_fetch_array($result0))  {

	$jfile = $jfile.$m_row0['before_content']."\n";
}




// Extracting variables from mysql 
$sql1="select final_var_item from var_item where item_name in (
select fns.var_item_name 
from baseclass bcl
join `function` fn on bcl.bc_id = fn.bc_ref_id
join fn_steps fns on fns.bc_fn_ref_id = fn.id
where fn.bc_ref_id in (
select bc_id from baseclass bc where bc.bc_name = '".$jfile_base_class."'
)
)
";

$result1 = mysql_query($sql1); 
while($m_row1 = mysql_fetch_array($result1))  {

	$jfile = $jfile.$m_row1['final_var_item']."\n";
}


// Extracting functions from mysql
$sql="select class_name,function_name,group_concat(event_java_code SEPARATOR '\n') as function_java_code from(
select bcl.bc_name as class_name, fn.fn_name as function_name, fns.event_java_code as event_java_code from baseclass bcl
join `function` fn on bcl.bc_id = fn.bc_ref_id
join fn_steps fns on fns.bc_fn_ref_id = fn.id
where fn.bc_ref_id in (
select bc_id from baseclass bc where bc.bc_name = '".$jfile_base_class."'
)
order by fn.id,fns.list_index
)a
group by class_name, function_name";

$result = mysql_query($sql); 
while($m_row = mysql_fetch_array($result))  {

	$jfile = $jfile."\n".' public void '.$m_row['function_name'].'()'."\n".'{'."\n".$m_row['function_java_code']."\n".'}'."\n";

}


$sql9="select after_content from baseclass bc where bc.bc_name = '".$jfile_base_class."'";

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