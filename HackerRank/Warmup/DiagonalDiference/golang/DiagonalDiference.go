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

func main() {
	s := bufio.NewScanner(os.Stdin)
	s.Scan()
	N, _ := strconv.Atoi(s.Text())

	mx := make([][]int, N)
	for i := 0; i < N; i++ {
		s.Scan()
		mx[i] = stringsToInts(strings.Split(s.Text(), " "))
	}

	firstD := 0
	secD := 0
	for j := 0; j < N; j++ {
		firstD += mx[j][j]
		secD += mx[j][(N-1)-j]
	}

	res := firstD - secD
	if res < 0 {
		res *= -1
	}

	fmt.Println(res)

}
