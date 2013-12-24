#!/bin/bash
mkdir -p build/reports
pdflatex ./forms/opencv_support_form.tex -output-format=pdf
mv opencv_support_form.pdf ./build/
for i in {2..4}
do
  pdflatex ./forms/report_2012_2/report.tex -output-format=pdf
  mv report.pdf ./build/reports/report_2012_$i.pdf
done
for year in {2013..2013}
do
  for quarter in {1..4}
  do
    pdflatex ./forms/report_${year}_${quarter}/report.tex -output-format=pdf
    mv report.pdf ./build/reports/report_${year}_${quarter}.pdf
  done
done
rm *aux
rm *log
rm *out
cp -fr ./html/* ./build/
