package main

import (
	"fmt"
)

type person struct {
	nombre string
	id     [5]int
	score  int
}

func mayor(person_act [5]person) [3]string {
	var person_orden [3]string

	tmp := 0
	for x := 0; x < len(person_act); x++ {
		for y := 0; y < len(person_act); y++ {
			if person_act[x].score > person_act[y].score {
				tmp = person_act[x].score
				person_act[x].score = person_act[y].score
				person_act[y].score = tmp
			}
		}
	}
	for i := 0; i < 3; i++ {
		person_orden[i] = person_act[i].nombre
	}

	return person_orden

}

//
func muestreo(muestra [5]int, personas []person) [3]string {
	var person_act_score [5]person
	for i := 0; i < len(personas); i++ {
		persona1 := personas[i]
		persona1_id := persona1.id
		num := 0
		for j := 0; j < len(persona1_id); j++ {
			if persona1_id[j] == muestra[j] {
				num = num + 1
			}
			persona1.score = num
		}
		person_act_score[i] = persona1
	}

	var nombres = mayor(person_act_score)

	return nombres
}

func main() {
	arregloJuan := [5]int{2, 0, 7, 9, 8}
	arregloLucia := [5]int{2, 1, 6, 2, 9}
	arregloMaria := [5]int{2, 3, 7, 4, 1}
	arregloJorge := [5]int{2, 0, 1, 9, 8}
	arregloValeria := [5]int{2, 0, 6, 9, 8}

	p1 := person{"Juan", arregloJuan, 0}
	p2 := person{"Lucia", arregloLucia, 0}
	p3 := person{"Maria", arregloMaria, 0}
	p4 := person{"Jorge", arregloJorge, 0}
	p5 := person{"Valeria", arregloValeria, 0}

	muestra := [5]int{2, 0, 8, 9, 8}
	people := []person{p1, p2, p3, p4, p5}
	resultado := muestreo(muestra, people)
	fmt.Println(resultado)
}
