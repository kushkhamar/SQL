<html>
 <head>
  <title>PHP Test</title>
 </head>
 <body>

<?php 

include("dbaseconn.php"); 

if($_GET['clicked']) { 
	check_file();
}  

function get_custName() 
{ 
	$data = array(); 
	
   $query = 'SELECT `buyer-name`, `sku`, `order-id` 
             FROM cust_dtl'; 
   
$rs = mysql_query($query) or die(mysql_error());  

echo " <select>
      <option value=''> </option>";
while($row = mysql_fetch_array($rs,MYSQL_ASSOC)){
$data[] = $row;
echo "<option value='".$row["buyer-name"]."'>".$row["buyer-name"]."</option>";
}

echo "</select>
     ";
     
} 

function check_file()
{
	$data1 = array(); 
	
	$query1 = 'SELECT 
					t.`buyer-name`, t.`sku`, t.`order-id` 
	           FROM 
	           		cust_dtl t, ia_order_raw_amazon i 
	           WHERE 
	           			t.`buyer-name` = i.`buyer-name` 
	           		AND 
	           			t.`sku` = i.`sku` 
	           		AND 
	           			t.`order-id` = i.`order-id`';
    
    $rs1 =    mysql_query($query1) or die (mysql_error());
    
    while ($row1 = mysql_fetch_array($rs1, MYSQL_ASSOC)) {
    	$data1[] = $row1;
     }    
     
     if ($data1 != "")  {
     echo'
     <script type="text/javascript">
        alert ("Order already exists");
        window.close();
      </script> ';

     } 

}
?> 

<form action='test.php' method='post'>
Select Customer Name:   
<?php 
get_custName();
?> 
<br /> <br />
<label for="file">Filename:</label>
<input type="file" name="file" id="file" onclick='location.href="?clicked=1"'><br />

<input type="submit" name="submit" value="Submit">

</form>

 </body>
</html>
