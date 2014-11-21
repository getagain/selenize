<div id="wrapper"><!-- BEGIN MAIN WRAPPER -->
    
    <section id="top_area">
        
        <article class="box-right">
        
                <form action="script/data.php" method="post">
<p><b>Select Base class to generate java code </b><br/></p>

<!-- class name from db -->
<select name="gen_java_base">
    
    <option value="" selected>Select...</option>
    <?php
require_once 'script/login.php'; 
$msql = mysql_query("SELECT bc_name FROM baseclass");
while($m_row = mysql_fetch_array($msql))        
        echo("<option value = '" . $m_row['bc_name'] . "'>" . $m_row['bc_name'] . "</option>");
  ?>
</select>

                    
                    <p> 
                        <input value="Submit" type="submit"> 
                    </p>      
                              
    			</form>

        </article>
    
    </section>

</div><!-- END MAIN WRAPPER -->