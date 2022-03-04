package main

import "fmt"

func main() {
	//la función append unicamente funciona con slices, no funciona con arreglos.
	slice := []string{"Hola", "este", "es", "el", "ejercicio", "numero", "dos"} //declarar slice(no se le declara tamaño)
	slice = append(slice, "#") //se indica lo que se va a agregar y a qué
	fmt.Println(slice)

}
