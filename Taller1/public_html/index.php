<?php
print("<pre>");
// habilitamos warning/errores en la pagina
ini_set('display_errors', 1);
error_reporting(E_ALL);


//la app almacena un valor de contador. La variable sys_get_temp_dir devuelve un directorio con permisos de escritura 
//$COUNTER_FILE = sys_get_temp_dir() . '/' . 'counter.txt';
$COUNTER_FILE = '/data/counter.txt';

// sacamos un mensaje por pantalla
print("Mi primera App en Docker $COUNTER_FILE\n");

// obtengo el contador
$counter = file_get_contents($COUNTER_FILE);
if ($counter == false) {
  $counter = 0;
}

// actualizamos el contador
$counter++;
file_put_contents($COUNTER_FILE, $counter);

// sacamos el valor del contador
print("Contador: $counter\n");
