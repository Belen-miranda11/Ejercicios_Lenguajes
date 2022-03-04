package main

import (
	"fmt"
	"strconv"
)

type zapato struct {
	modelo_marca string
	precio       int
	talla        int
}

func rangoT_zapatos(arreglo [10]int, min int, max int) []string {
	var resultado_slice []string
	for p := 0; p < len(arreglo); p++ {
		if arreglo[p] >= min && arreglo[p] <= max { //tiene que cumplir que la talla sea mayor o igual al min Y menor o igual al max
			talla := strconv.Itoa(arreglo[p]) //convierte el entero en un string para guardarlo en el slice de tipo string
			precio := strconv.Itoa(arreglo_precio[p])
			resultado_slice = append(resultado_slice, "\n", "1.", arreglo_marca[p], precio, talla, "\n")

		}
	}
	return resultado_slice
}

var arreglo_marca [10]string
var arreglo_precio [10]int
var arreglo_talla [10]int

func main() {
	//var arreglo_marca [2]string
	//var arreglo_precio [2]int
	//var arreglo_talla [2]int

	for s := 0; s < len(arreglo_marca); s++ {
		var marca string
		var precio int
		talla := 0
		fmt.Println("Cuál es la marca del zapato?")
		fmt.Scan(&marca)

		fmt.Println("Cuál es el precio del zapato?")
		fmt.Scan(&precio)

		for talla < 34 || talla > 44 {
			fmt.Println("Cuál es la talla del zapato? Unicamente tallas del 34 al 44")
			fmt.Scan(&talla)

		}
		z := zapato{marca, precio, talla}
		arreglo_marca[s] = z.modelo_marca
		arreglo_precio[s] = z.precio
		arreglo_talla[s] = z.talla
		fmt.Println(arreglo_marca, arreglo_precio, arreglo_talla)

	}
	resultado := rangoT_zapatos(arreglo_talla, 36, 40)
	fmt.Println("Los zapatos que concuerdan con el min y max de las tallas son", resultado)
}
