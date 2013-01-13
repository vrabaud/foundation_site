all:
	pdflatex ./forms/opencv_support_form.tex -output-format=pdf
	mv opencv_support_form.pdf ./html/
	mkdir -p ./html/reports
	pdflatex ./forms/report_2012_2.tex -output-format=pdf
	mv report_2012_2.pdf ./html/reports/
	rm *aux
	rm *log
	rm *out
