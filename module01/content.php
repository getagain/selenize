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

    <fieldset>
        <p><b>Manage Web Element</b><br/></p>
<!-- Linked_to_form_page -->
        <div class="pure-control-group">
                    <p>
                        <label for='linked_to_form_page'>Linked to form Page / Baseclass ?     </label>
                        <select name="linked_to_form_page">
                        <?php
                        require_once 'script/login.php'; 
                        $msql = mysql_query("SELECT name FROM baseclass");
                        while($m_row = mysql_fetch_array($msql))        
                                echo("<option value = '" . $m_row['name'] . "'>" . $m_row['name'] . "</option>");
                          ?>
                        <option value="All"<? if($linked_to_form_page=="All") echo(" selected=\"selected\"");?>All</option>
                        </select>
                    </p>
        </div>
<!-- item_type -->
        <div class="pure-control-group">
                    <p>
                        <label for='item_type'>Select the item type ?     </label>
                        <select name="item_type">
                            <option value="String"<? if($item_type=="String") echo(" selected=\"selected\"");?>>Variable</option>
                            <option value="WebElement"<? if($item_type=="WebElement") echo(" selected=\"selected\"");?>>Webelement</option>                         
                            
                        </select>
                    </p>
        </div>

<!-- locator_type -->
        <div class="pure-control-group">
                    <p>
                        <label for='locator_type'>Select locator type for Webelement or Variable Type?     </label>
                        <select name="locator_type">
                            <option value="xpath"<? if($locator_type=="xpath") echo(" selected=\"selected\"");?>>x path</option>
                            <option value="id"<? if($locator_type=="id") echo(" selected=\"selected\"");?>>id</option>
                            <option value="linkText"<? if($locator_type=="linkText") echo(" selected=\"selected\"");?>>link text</option>
                            <option value="cssSelector"<? if($locator_type=="cssSelector1") echo(" selected=\"selected\"");?>>css selector</option>
                            <option value=""<? if($locator_type=="") echo(" selected=\"selected\"");?>>String Variable</option>
                            <option value="" selected>Select...</option>
                        </select>
                    </p>
        </div>
                
        <div class="pure-control-group">
                    <p> 
                        <label>Item Name:</label>
                        <input name="item_name" required="required" placeholder="unique_name" type="text">
                    </p>
        </div>

        <div class="pure-control-group">
                    
                    <p> 
                        <label>Item Value:</label>
                        <input name="item_value" required="required" placeholder="Value" type="text">
                    </p>
        </div>

        <div class="pure-control-group">
                    <p> 
                        <label>Description:</label>
                        <input name="description" required="required" placeholder="Description" type="text">
                    </p>
        </div>
<!--                <p>
                        <label>Gender:</label>
                        <input type="radio" name="sex" value="male" checked="checked" /><label>male</label>
                        <input type="radio" name="sex" value="female" /> <label>female</label>                  
                    </p> -->


                    
<!--                     <p> 
                        <label> Your email:</label>
                        <input name="email" required="required" placeholder="random@mail.com" type="email"> 
                    </p>
                    
                    <p> 
                        <label>password:</label>
                        <input name="password" required="required" placeholder="eg. X8df!90EO" type="password">
                    </p> -->
                    
                    <p> 
                        <input value="Submit" type="submit" class="pure-button pure-button-primary"> 
                    </p>      
                    </fieldset>        
    			</form>

        </article>
    
    </section>

</div><!-- END MAIN WRAPPER -->


</body>
</html>
