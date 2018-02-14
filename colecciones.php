<?php

@include_once('adminaccess/control_panel_administrator/mws_app_file_path_container.php');

session_start();



if(isset($_SESSION['mwsCart'])){$mwsCart=$_SESSION['mwsCart'];}

ob_start("ob_gzhandler");



@include_once("mws_front_modules/mws_complements.php");

@include_once("adminaccess/warning_messages.inc.php");

/**/
@include"inicio.php";
?>
<!--************************Menu************************************-->
<article class="posisionnav">
<nav>
     <ul>
        <li><a href="<?php echo _MWS_SITE_URL_;?>"><h1>Inicio</h1></a></li>
        <li>
            <a href="<?php echo _MWS_SITE_URL_;?>paginas/empresa.php" class="flecha-abajo"><h1>Con&oacute;zcanos</h1></a>
              
       </li>
		 <li>
		 <a href="<?php echo _MWS_SITE_URL_;?>colecciones.php" class="flecha-abajo"><h1>Colecciones</h1></a>
            
		</li>
		
		<li>
		<a href="<?php echo _MWS_SITE_URL_;?>paginas/contacto.php" class="flecha-abajo"><h1>Puntos de Venta</h1></a>
            
		</li>
		
     </ul>
</nav>
</article><div id="clear"></div>

				
				
				<div class="mainContent"> 
				
				
	            <table width="100%" border="0" cellspacing="3" cellpadding="0">
                  <tr>
                    <td width="21%" rowspan="2" valign="top"><?php include_once('mws_front_modules/mws_main_menu.php');?>&nbsp;</td>
                    <td width="79%"><?php include_once('mws_front_modules/mws_cart.php');?>&nbsp;</td>
                  </tr>
                  <tr>
                    <td width="79%">
						
						<?php 
						if(isset($alert)){echo $alert;}else{echo $alert='';}
						if(isset($_REQUEST['option'])){
							@include_once('mws_front_modules/mws_front_option_handler.php');
						}else{
							@include_once'mws_front_modules/mws_products.php';
						}
						?>					</td>
                  </tr>
                </table>
	</div>
<div id="clear"></div>

<article id="capa-publicidad">
<img src="../imagenes/publicidad/p.gif" alt="" />
</article>
<article id="capa-publicidad1">
<img src="../imagenes/publicidad/pu.gif" alt="" />
</article>

<?php
@include"fin.php";
?>