all:
	mkdir -p build/reports
	pdflatex ./forms/opencv_support_form.tex -output-format=pdf
	mv opencv_support_form.pdf ./build/
	pdflatex ./forms/report_2012_2.tex -output-format=pdf
	mv report_2012_2.pdf ./build/reports/
	rm *aux
	rm *log
	rm *out
	cp -fr ./html/* ./build/
