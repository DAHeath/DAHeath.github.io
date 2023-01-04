all:
	cd cv && make && cp cv.pdf ..
	pandoc index.markdown > index.html
