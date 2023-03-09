package main

import (
	"godocker/server/db"
	"log"
)

func main() {
	_, err := db.NewDatabase()
	if err != nil {
		log.Fatalf("could not initial database connection: %s ", err)
	}
}
