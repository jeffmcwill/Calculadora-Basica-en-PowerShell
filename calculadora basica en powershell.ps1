#Calculadora sencilla hecha por mi en powershell, es para demostrar algunas utilidades de la codificacion
#en powershell. 

#funcion suma
function suma($num1,$num2){
try{
    [int]$numero1 = read-host "Digame el primero numero a sumar"
    [int]$numero2 = read-host "Digame el segundo numero a sumar"
    $respuesta = $numero1 + $numero2
    write-host "----------------------------------------------------------"
    write-host "La suma del ",$numero1,"y el",$numero2,"es",$respuesta
    write-host "----------------------------------------------------------"
    break
}
catch {
    write-warning "Usted ingreso caracteres no aceptados por el programa."
}
}

#funcion resta
function resta($num1,$num2){
try{
    [int]$numero1 = read-host "digame el primer numero para restar"
    [int]$numero2 = read-host "digame el segundo numero para restar"
    $respuesta = $numero1 - $numero2
    write-host "----------------------------------------------------------"
    write-host "La resta de ",$numero1,"y el",$numero2,"es",$respuesta
    write-host "----------------------------------------------------------"
    break
}
catch {
    write-warning "Usted ingreso caracteres no aceptados por el programa."
}
}

#funcion multiplicacion
function multiplicacion($num1,$num2){
try{
    [int]$numero1 = read-host "digame el primer numero para multiplicar"
    [int]$numero2 = read-host "digame el segundo numero para multiplicar"
    $respuesta = $numero1 * $numero2
    write-host "----------------------------------------------------------"
    write-host "La multiplicacion de ",$numero1,"y el",$numero2,"es",$respuesta
    write-host "----------------------------------------------------------"
    break
}
catch {
    write-warning "Usted ingreso caracteres no aceptados por el programa."
}
}

#funcion division
function division($num1,$num2){
try{
    [int]$numero1 = read-host "digame el primer numero para dividir"
    [int]$numero2 = read-host "digame el segundo numero para dividir"
    $respuesta = $numero1 / $numero2
    write-host "----------------------------------------------------------"
    write-host "La division de ",$numero1,"y el",$numero2,"es",$respuesta
    write-host "----------------------------------------------------------"
    break
}
catch {
    write-warning "caracteres no soportados o division invalida."
}
}

#funcion cerrar
function cerrar(){
    write-host "-------------"
    write-host "Hasta luego"
    write-host "-------------"
    break
}

#calculadora

try{

    do{
        write-host "------------------------------"
        write-host "  //Calculadora PowerShell//  "
        write-host "------------------------------"
        write-host "1.Suma
2.Resta
3.Multiplicacion
4.Division
5.Cerrar"
        write-host "------------------------------"
        [int]$usuario = read-host "Elije una opcion"
        switch($usuario)
        {
            {$usuario -eq 1} {
                write-host "Has elegido suma"
                suma 
            }
            {$usuario -eq 2} {
                write-host "Has elegido resta"
                resta
            }
            {$usuario -eq 3} {
                write-host "Has elegido multiplicacion"
                multiplicacion
            }
            {$usuario -eq 4} {
                write-host "Has elegido division"
                division
            }
            {$usuario -eq 5} {
                cerrar
                break
        }
    }
    }until($usuario -eq 5)
    break
}
Catch{
    Write-Host "los caracteres no son soportados por el programa"
}
finally {
    Write-Output "fin de ejecucion."
}