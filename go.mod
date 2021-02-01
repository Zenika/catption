module github.com/nlepage/catption

go 1.16

require (
	github.com/nlepage/catption/lib v0.0.0-00010101000000-000000000000
	github.com/sirupsen/logrus v1.4.2
	github.com/spf13/cobra v0.0.5
	github.com/spf13/pflag v1.0.5
	github.com/spf13/viper v1.5.0
)

replace (
	github.com/nlepage/catption/font/impact => ./font/impact
	github.com/nlepage/catption/lib => ./lib
)
