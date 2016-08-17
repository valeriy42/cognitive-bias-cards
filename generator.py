
# coding: utf-8

from string import Template
import pandas as pd
import codecs

if __name__ == '__main__':
    fh = open('card.tpl', 'rt')
    tcontent = Template(fh.read())
    fh.close()
    
    fh = open('cards-header.tpl', 'rt')
    theader = Template(fh.read())
    fh.close()
    
    fh = open('cards-footer.tpl', 'rt')
    tfooter = Template(fh.read())
    fh.close()
    
    biases = pd.read_excel('list.xlsx')
    
    text = theader.safe_substitute()
    i = 1
    for row in biases.iterrows():
        entry = row[1]
        ID= entry.ID
        name = entry.Name.replace('&', '\&')
        description=entry.Description.replace('%', '\%').replace('&', '\&')
        
        category = entry.Category.lower()
        if 'decision' in category:
            category = 'decision'
        elif 'memory' in category:
            category = 'memory'
        elif 'social' in category:
            category = 'social'
        text +=  tcontent.safe_substitute(ID=ID, name=name, description=description, category=category)
    
        if i % 3 == 0:
            text += '\n'
        i += 1
        
    text += tfooter.safe_substitute()
        
    filename = "allcards.tex" 
        
    fh = codecs.open(filename, 'wt', 'utf-8')
    fh.write(text)
    fh.close()
