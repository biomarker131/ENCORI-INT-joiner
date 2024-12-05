# ENCORI-INT-joiner
Another try to make it ease with joining rows in this case rows of the same interaction reported by ENCORI results.
Interactions reported by ENCORI api --> NOT at a per gene basis. Several genes present multiple reports of interactions (multiple rows), due to reports in different location.
This script tries to generate a matrix with per gene interactions and sums values of CLIPseq and degradome experiment counts reported for a gene in one row.

Operation: generate a matrix of per gene interactions out of a matrix of interactions with duplicated interactions. 
input: interaction matrices reported by ENCORI modified by adding a column of geneID with gene names reported for each interaction in the first column.
output: interaction matrix in a per gene bases with ClipExp and degradome experiments summed. 
