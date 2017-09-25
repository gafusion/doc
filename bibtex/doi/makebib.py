import string
import os

with open('doi.txt') as f:
    content = f.readlines()

n = len(content)

os.system('> candy.bib')

for i in range(n):
   x = string.strip(content[i])
   if (x[0:2] == "10"):
      os.system('bib get '+x+' > temp.bib')
      os.system('cat temp.bib >> candy.bib')
      with open('temp.bib') as f:
         item = f.readlines()
         for i in range(len(item)):
            y = item[i].split("=")
            if y[0].strip() == 'year':
               year = y[1].translate(None,'{},\n')
            if y[0].strip() == 'author':
               author = y[1].translate(None,'{},\n')
            if y[0].strip() == 'title':
               title = y[1].translate(None,'{},\n')
            if y[0].strip() == 'journal':
               journal = y[1].translate(None,'{},\n')
            if y[0].strip() == 'volume':
               vol = y[1].translate(None,'{},\n')
         print year,author
               
