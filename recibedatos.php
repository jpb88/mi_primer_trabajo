
<?php
include_once('conexion.php');
$link = Conectarse();
?>

<?php
$cedula=$_POST['cedula'];
$nombre=$_POST['nombre'];
$apellido=$_POST['apellido'];
$telefono=$_POST['telefono'];
$direcc=$_POST['direcc'];
$email=$_POST['email'];
$user=$_POST['user'];
$password=$_POST['password'];
 	echo "La <b>Cedula</b> recibida desde el formulario es:   ";
	echo "<b>",$cedula,"</b><br />";
	echo "El <b>nombre</b> recibido desde el formulario es:   ";
	echo "<b>",$nombre,"</b><br />";
	echo "El <b>apellido</b> recibido desde el formulario es:   ";
	echo "<b>",$apellido,"</b><br/>";
	echo "El <b>Telefono</b> recibido desde el formulario es:   ";
	echo "<b>",$telefono,"</b><br/>";
	echo "La <b>Direccion</b> recibida desde el formulario es:   ";
	echo "El<b>",$direcc,"</b><br/>";
	echo " <b>Correo</b> recibida desde el formulario es:   ";
	echo "<b>",$email,"</b><br />";
	echo "El <b>Usuario</b> recibida desde el formulario es:   ";
	echo "<b>",$user,"</b><br />";
	echo "La <b>Contraseña</b> recibida desde el formulario es:   ";
	echo "<b>",$password,"</b>";
    echo "<br><br><hr>";
?>

<?php
$queryInsertar="INSERT INTO `usuario`(`cedula`, `nombre`, `apellido`,`telefono`,`direcc`,`email`,`user`,`password`, ) VALUES('$cedula', '$nombre', '$apellido','$telefono','$direcc','$email','$user','$password')";
$resultquery=mysql_query($queryInsertar) or die ("Usuario Ya Suscrito");
?>

        <p>
          <label></label>
          <label for="Submit"></label>
          <a href="../colecciones.php" target="_parent">
          <center> <input name="continuar" type="button" class="Estilo8" id="continuar" value="Continuar" />
          </center>
        </a>        </p>
        <p>&nbsp;</p>
    </form>    </tr>
</table>
</body>
</html>
