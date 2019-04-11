resultados.pdf : resultados.tex plot1.pdf
	pdflatex resultados.tex

plot1.pdf: datos.dat  plotdatos.py
	python plotdatos.py
plot.pdf: datos1.dat plotdatos1.py
	python plotdatos1.py

datos.dat: makedatos.py
	python makedatos.py >> datos.dat
datos1.dat: a.out
	./a.out >> datos1.dat

a.out: makedatos1.cpp
			g++ makedatos1.cpp
