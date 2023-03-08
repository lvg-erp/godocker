package main

import (
	"godocker/db"
	"log"
)

func main() {
	_, err := db.NewDatabase()
	if err != nil {
		log.Fatalf("could not initial database connection: %s ", err)
	}
}
