# calculadora.nim
import strutils, strformat
# Paso 1: Almacena las operaciones en una lista
const operaciones = @["Suma", "Resta", "Multiplicación", "División"]

# Paso 2: Pedir los numeros
stdout.write("Ingresa el primer número: ")
let num1str = stdin.readLine()
if num1str.allCharsInSet({'0'..'9'}): # si todos los caracteres de una cadena están dentro del conjunto (Equivale a: {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9'})
  let num1 = num1str.parseInt()
  stdout.write("Ingresa el segundo número: ")
  let num2str = stdin.readLine()
  if num2str.allCharsInSet({'0'..'9'}):
    let num2 = num2str.parseInt()

    echo "Las operaciones disponibles son las siguientes:"
    for i, op in operaciones:
      echo fmt"{i + 1}. {op}"
# Paso 3: Pedir la operación al usuario
    stdout.write("Ingresa el número de la operación que quieres realizar (ej. 1 para suma): ")
    let operacionStr = stdin.readLine()
    if operacionStr.allCharsInSet({'1'..'4'}):
      let operacion = operacionStr.parseInt()
# Paso 4: realizar case switch dependiendo de la selección del usuario y realizar operación
      case operacion:
        of 1: echo fmt"Resultado: {num1} + {num2} = {num1 + num2}"
        of 2: echo fmt"Resultado: {num1} - {num2} = {num1 - num2}"
        of 3: echo fmt"Resultado: {num1} * {num2} = {num1 * num2}"
        of 4:
          if num2 == 0:
            echo "Error: División por cero"
          else:
            echo fmt"Resultado: {num1} / {num2} = {num1 / num2}"
        else:
          echo "Opción inválida"
    else:
      echo "Opción inválida. Debes ingresar un número del 1 al 4."
  else:
    echo "Error, debes ingresar un número válido"
else:
  echo "Error, debes ingresar un número válido"

        


