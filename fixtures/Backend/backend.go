package main

import (
	"fmt"

	"github.com/jdkato/prose/tag"
	"github.com/jdkato/prose/tokenize"
)

func main() {
	text := []string{
		"I'm a backend developer.",
		"I'm a back end developer.",
		"I work on the back end of the website."}
	tagger := tag.NewPerceptronTagger()

	for _, sent := range text {
		words := tokenize.NewTreebankWordTokenizer().Tokenize(sent)
		for _, tok := range tagger.Tag(words) {
			fmt.Println(tok.Text, tok.Tag)
		}
	}
}
