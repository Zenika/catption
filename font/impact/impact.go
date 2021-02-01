package impact

import (
	_ "embed"
	"sync"

	"github.com/golang/freetype/truetype"
	"golang.org/x/image/font"
)

var (
	//go:embed impact.ttf
	b       []byte
	ttf     *truetype.Font
	readTtf sync.Once
)

// FontFace returns impact fontface w/ size of points
func FontFace(points float64) font.Face {
	readTtf.Do(func() {
		var err error
		ttf, err = truetype.Parse(b)
		if err != nil {
			panic(err)
		}
	})

	return truetype.NewFace(ttf, &truetype.Options{
		Size: points,
	})
}
