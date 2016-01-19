package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func stringsToInts(strs []string) []int {
	var ints []int
	ints = make([]int, len(strs))
	for i := 0; i < len(strs); i++ {
		ints[i], _ = strconv.Atoi(strs[i])
	}
	return ints
}

func filter(ints []int, filter func(int) bool) []int {
	var intsf []int
	for _, v := range ints {
		if filter(v) {
			intsf = append(intsf, v)
		}
	}
	return intsf
}

func main() {
	s := bufio.NewScanner(os.Stdin)
	s.Scan()
	N, _ := strconv.Atoi(s.Text())

	s.Scan()
	ints := stringsToInts(strings.Split(s.Text(), " "))
	positives := filter(ints, func(v int) bool {
		return v > 0
	})

	negatives := filter(ints, func(v int) bool {
		return v < 0
	})

	zeros := filter(ints, func(v int) bool {
		return v == 0
	})

	fmt.Println(float64(len(positives)) / float64(N))
	fmt.Println(float64(len(negatives)) / float64(N))
	fmt.Println(float64(len(zeros)) / float64(N))

}
