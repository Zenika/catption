module github.com/nlepage/catption/lib

go 1.16

require (
	github.com/fogleman/gg v1.3.0
	github.com/nlepage/catption/font/impact v0.0.0-00010101000000-000000000000
	golang.org/x/image v0.0.0-20200609002522-3f4726a040e8 // indirect
)

replace github.com/nlepage/catption/font/impact => ../font/impact
