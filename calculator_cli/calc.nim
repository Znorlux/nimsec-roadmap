# calculadora.nim
import strutils, strformat
#[
  This is a multiline comment.
  In Nim, multiline comments can be nested, beginning with #[
  ... and ending with ]#
]#
# Paso 1: Pide dos números y una operación
let operaciones = @["Suma", "Resta", "Multiplicación", "División"]
stdout.write("Ingresa el primer número: ")
let num1str = stdin.readLine()
if num1str.allCharsInSet({'0'..'9'}): # si todos los caracteres de una cadena están dentro del conjunto (Equivale a: {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9'})
    let num1 = num1str.parseInt()
else:
    echo "Error, debes ingresar un número válido"
    system.quit(0)
stdout.write("Ingresa el segundo número: ")
let num2str = stdin.readLine()
if num2str.allCharsInSet({'0'..'9'}):
    let num2 = num2str.parseInt()
else:
    echo "Error, debes ingresar un número válido"
    system.quit(0)
echo "Las operaciones disponibles son las siguientes:"
for i, op in operaciones:
    echo fmt"{i + 1}.{op}" # fmt need strformat

# Paso 2: Lógica de operaciones
# Paso 3: Imprime el resultado
