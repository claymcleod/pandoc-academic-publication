---
title: Pandoc Academic Publication
author: Clay McLeod, University of Mississippi, {clmcleod}\@go.olemiss.edu
date: October 2015
abstract: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec leo urna, facilisis id sollicitudin sit amet, commodo et mauris. Curabitur pellentesque lacinia maximus. Nullam ullamcorper, dui vel luctus tempor, velit elit pharetra tortor, id molestie lectus turpis convallis dolor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean sit amet libero at lorem luctus mattis sed in augue. Nullam eleifend massa risus, vel pharetra felis feugiat non. Curabitur fermentum felis ut lacus imperdiet aliquet. Nulla et hendrerit augue. Aliquam ante nulla, aliquam in erat in, ullamcorper hendrerit felis. Vestibulum accumsan condimentum scelerisque. Mauris a nulla arcu. Donec pulvinar suscipit turpis, in vehicula massa mattis id. Mauris feugiat dignissim velit, ut sagittis arcu sodales faucibus. Quisque sagittis tellus nibh, nec ornare orci porta nec. Ut aliquam sapien ex, ac ullamcorper diam vestibulum non.
---

# Introduction

Thanks for trying pandoc-academic-publication! I created this out of frustration with how hard it is to quickly create great looking academic reports using markdown, despite the large amount of tools available. pandoc-academic-publication is built with *simplicity* and *modularity* in mind, as I firmly believe that when source code starts becoming unreadable, ability to innovate drops off sharply. Please feel free to submit pull requests with your own favorite publication styles, but be sure to follow those guidelines!

# Coding Examples

You can format code by using the following markdown:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ {.python .numberLines}
import theano
from theano import tensor as T

# declare two symbolic floating-point scalars
a = T.dscalar()
b = T.dscalar()

# create a simple expression
c = a + b

# convert the expression into a callable object that takes (a,b)
# values as input and computes a value for c
f = theano.function([a,b], c)

# bind 1.5 to 'a', 2.5 to 'b', and evaluate 'c'
assert 4.0 == f(1.5, 2.5)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

For more information, check the [pandoc documentation](http://pandoc.org/README.html#syntax-highlighting).

# Referencing

Referencing papers is easy. Simply format your sources using the BibTeX format in **paper.bib**. After this is completed, you can easily reference a paper by using `[@<bibtex identifier>]` in your markdown like so:  [@hinton2006fast]
