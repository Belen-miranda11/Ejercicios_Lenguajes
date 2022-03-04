package main

import (
	"fmt"
	"strings"
)

func cadenas(cadena1 string, cadena2 string) bool {
	contiene := strings.Contains(cadena1, cadena2)
	return contiene
}
func main() {
	cadena1 := "Este es un ejercicio de Lenguajes de Programación"
	cadena2 := "Lenguajes de Programación"
	resultado := cadenas(cadena1, cadena2)
	fmt.Println("RESULTADO:La segunda cadena es una subcadena de la primera cadena:", resultado)
}
