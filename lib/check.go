package lib

import "fmt"

// Check inspect the error supplied and panics.
func Check(err error) {
	if err != nil {
		panic(err)
	}
}

// LogCheck inspects the error supplied and prints it to console.
func LogCheck(err error) {
	if err != nil {
		fmt.Println(err)
	}
}
