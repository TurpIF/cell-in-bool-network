all: graphiz refman

graphiz: example_weighted_graph bool_net_async bool_net_sync bool_net_clock

refman: main_SB.tex
	pdflatex main_SB
	bibtex main_SB
	pdflatex main_SB
	pdflatex main_SB

example_weighted_graph:
	neato $@.dot -o $*.pdf -Tpdf

bool_net_async: bool_net_async.dot
	dot $@.dot -o $*.pdf -Tpdf

bool_net_sync: bool_net_sync.dot
	dot $@.dot -o $*.pdf -Tpdf

bool_net_clock: bool_net_clock.dot
	dot $@.dot -o $*.pdf -Tpdf
