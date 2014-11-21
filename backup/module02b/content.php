<html>
<body>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Generate Java BaseClass / Forms</title>

    <link rel="stylesheet" href="../pure-css/pure-min.css">
</head>



<div id="wrapper"><!-- BEGIN MAIN WRAPPER -->
    
    <section id="top_area">
        
        <article class="box-right">
        
<form action="script/data.php" method="post" class="pure-form pure-form-aligned" align="center">
<p><b>Select Base class to generate java code </b><br/></p>

<!-- class name from db -->
<select name="jfile_base_class">
    
    <option value="" selected>Select...</option>
    <?php
session_start();
require_once 'script/login.php'; 
$msql = mysql_query("SELECT name FROM baseclass");
while($m_row = mysql_fetch_array($msql))        
        echo("<option value = '" . $m_row['name'] . "'>" . $m_row['name'] . "</option>");
  ?>
</select>



<!-- Linked_to_form_page -->

                    
                        <input value="submit" type="submit" class="pure-button pure-button-primary"> 

                              
    			</form>

        </article>
    
    </section>

</div><!-- END MAIN WRAPPER -->

</body>
</html>

