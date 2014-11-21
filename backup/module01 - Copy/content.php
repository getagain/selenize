<div id="wrapper"><!-- BEGIN MAIN WRAPPER -->
    
    <section id="top_area">
        
        <article class="box-right">
        
                <form action="script/data.php" method="post">

<!-- Linked_to_form_page -->
                    <p>
                        <label for='linked_to_form_page'>Linked to form Page ?     </label>
                        <select name="linked_to_form_page">
                            <option value="Home"<? if($linked_to_form_page=="Home") echo(" selected=\"selected\"");?>>Home</option>
                            <option value="eEdition"<? if($linked_to_form_page=="eEdition") echo(" selected=\"selected\"");?>>eEdition</option>
                            <option value="SRD"<? if($linked_to_form_page=="SRD") echo(" selected=\"selected\"");?>>SRD</option>
                            <option value="All"<? if($linked_to_form_page=="All") echo(" selected=\"selected\"");?>>All</option>
                        </select>
                    </p>

<!-- item_type -->
                    <p>
                        <label for='item_type'>Select the item type ?     </label>
                        <select name="item_type">
                            <option value="WebElement"<? if($item_type=="WebElement") echo(" selected=\"selected\"");?>>Webelement</option>
                            <option value="String"<? if($item_type=="String") echo(" selected=\"selected\"");?>>Variable</option>
                            <option value="" selected>Select...</option>
                        </select>
                    </p>

<!-- locator_type -->
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

                
                    <p> 
                        <label>Item Name:</label>
                        <input name="item_name" required="required" placeholder="unique_name" type="text">
                    </p>
                    
                    <p> 
                        <label>Item Value:</label>
                        <input name="item_value" required="required" placeholder="Value" type="text">
                    </p>

                    <p> 
                        <label>Description:</label>
                        <input name="description" required="required" placeholder="Description" type="text">
                    </p>
                    
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
                        <input value="Submit" type="submit"> 
                    </p>      
                              
    			</form>

        </article>
    
    </section>

</div><!-- END MAIN WRAPPER -->