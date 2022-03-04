package main

import (
	"fmt"
	"strings"
)

func main() {
	cadena := "Este es el ejercicio numero 1"
	palabra := "es"
	cadena_dividida := strings.Fields(cadena)
	for s := 0; s < len(cadena_dividida); s++ {
		if palabra == cadena_dividida[s] {
			fmt.Println("La palabra '", palabra, "' SI se encuentra en la cadena de texto '", cadena, "'")
			return
		}
	}
	fmt.Println("La palabra '", palabra, "' NO se encuentra en la cadena de texto '", cadena, "'")

	//const cadena1 = "Este es el ejercicio numero 1"
	//contiene := strings.Contains(cadena1, palabra)
	//fmt.Printf("- \"%s\" contiene \"%s\": %t \n", cadena1, palabra, contiene)

	return

}
