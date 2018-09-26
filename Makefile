MD_SRC=notes.md
OUT=notes.pdf

.PHONY: all clean format

$(OUT): notes.md
	pandoc $(MD_SRC) -t latex -o $(OUT)

clean:
	rm $(OUT)

format:
	prettier --write $(MD_SRC
