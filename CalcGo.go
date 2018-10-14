package main

import "fmt"

func main() {

	var x, y float64
	var operazione string

	fmt.Println("Inserisci due Numeri (reali)")
	fmt.Scan(&x, &y)

	fmt.Println("Inserisci l'operazione (+, -, *, /)")
	fmt.Scan(&operazione)

	fmt.Print("Risultato: ")

	switch operazione {

		case "+":
			fmt.Println(x + y)
		case "-":
			fmt.Println(x - y)
		case "*":
			fmt.Println(x * y)
		case "/":
			if y == 0 {
				fmt.Println("Impossibile")
			} else {
				fmt.Println(x / y)
			}
			
		default:
			fmt.Println("Operazione non corretta")
	}
}