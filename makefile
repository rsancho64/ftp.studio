all: README.md
	pandoc header.yml README.md -o README.pdf
