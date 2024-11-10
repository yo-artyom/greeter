package main

import (
	"fmt"
	"net/http"
	"sync"
	"sync/atomic"

	"golang.org/x/sync/semaphore"
)

var (
	counter   int64
	initOnce  sync.Once
	sem       *semaphore.Weighted // Semaphore to limit concurrent execution
)

// Initialize the semaphore only once
func init() {
	initOnce.Do(func() {
		sem = semaphore.NewWeighted(1) // Only one request processed at a time
	})
}

func handler(w http.ResponseWriter, r *http.Request) {
	if err := sem.Acquire(r.Context(), 1); err != nil {
		http.Error(w, "Unable to acquire semaphore", http.StatusInternalServerError)
		return
	}
	defer sem.Release(1)

	newCount := atomic.AddInt64(&counter, 1)

	fmt.Fprintf(w, "Hello World. Counted %d times\n", newCount)
}

func main() {
	http.HandleFunc("/", handler)
	fmt.Println("Starting server on :8080")
	if err := http.ListenAndServe(":8080", nil); err != nil {
		fmt.Printf("Server failed to start: %v\n", err)
	}
}

