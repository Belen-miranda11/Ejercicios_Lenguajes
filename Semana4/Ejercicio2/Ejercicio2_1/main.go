package main

import "fmt"

func main() {
	//declaración de puntero
	arreglo := [7]string{"Hola", "este", "es", "el", "ejercicio", "numero", "dos"} //declarar arreglo
	posicion := 5
	var p1 = &arreglo[posicion]
	*p1 = "#" //cambia el dato al que estaba apuntando el puntero por "#"
	fmt.Println(arreglo)

}
