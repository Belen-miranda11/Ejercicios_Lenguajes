package main
import (
	"fmt"
	"strings"
)

func cadenas(cadena1 string, cadena2 string) bool {
	cadena1Dividida := strings.Fields(cadena1)
	cadena2Dividida := strings.Fields(cadena2)
	for s := 0; s < len(cadena1Dividida); s++ {
		if cadena1Dividida[s] == cadena2Dividida[0] {
			q := s
			for p := 1; p < len(cadena2Dividida); p++ {
				if cadena2Dividida[p] == cadena1Dividida[q] {
					q++
					if p == (len(cadena2Dividida) - 1) {
						return true
					}
				} else {
					p = len(cadena2Dividida)
				}
			}
		}
	}
	return false
}

func main() {
	cadena1 := "Este es un ejercicio de Lenguajes de Programacion"
	cadena2 := "Lenguajes de Programacion"
	resultado := cadenas(cadena1, cadena2)
	fmt.Println("RESULTADO:La segunda cadena es una subcadena de la primera cadena:", resultado)
}
