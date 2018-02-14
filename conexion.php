<?php
	function Conectarse()
	{
		if (!($link = mysql_connect ( "localhost", "root", "thelord" )))
		{
			header ("Error con conexion a MySQL");
				exit();
		}
		if (!mysql_select_db("bdjireh",$link))
		{
			header("Error con la conexion a base de datos");
				exit();
		}
		return $link;
		}
?>