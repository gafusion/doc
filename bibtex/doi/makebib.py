# Usage: 
#
#    $ python makebib 
#
# Assumes doi.txt exists
# Creates output.bib 

import string
import os
import bibtexparser

os.system('> output.bib')

with open('doi.txt') as f:
    content = f.readlines()

n = len(content)

for i in range(n):
   x = string.strip(content[i])
   # Detect DOI prefix
   if (x[0:2] == "10"):
      os.system('bib get '+x+' > temp.bib')
      os.system('cat temp.bib >> output.bib')
      with open('temp.bib') as bibtex_file:
         bibtex_str = bibtex_file.read()     
      bib_database = bibtexparser.loads(bibtex_str)
      bdict = bib_database.entries[0]
      sauthor = bdict["author"].replace(" and",",")
      # Human-readable screen output
      print bdict["title"] +', '+sauthor
      print bdict["journal"]+', '+bdict["volume"]+', '+bdict["year"]
      print 'DOI: '+bdict["doi"]
      print

os.system('rm -f temp.bib')
