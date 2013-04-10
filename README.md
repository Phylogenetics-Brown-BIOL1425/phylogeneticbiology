# Phylogenetic Biology

This repository contains the source code, datasets, and documentation for 
Casey Dunn's Phylogenetic Biology course (Biology 1425) at Brown University, as 
taught in the spring of 2013.

See the [syllabus](https://bitbucket.org/caseywdunn/phylogeneticbiology/src/master/syllabus/Phylogenetic_Biology_Syllabus.pdf) 
for additional information.

The two books for the class are:

Baum, D. and Smith, S. (2012). Tree Thinking. An Introduction to Phylogenetic 
Biology. [Roberts Publishers](http://www.roberts-publishers.com/tree-thinking-an-introduction-to-phylogenetic-biology.html). 
Required.

Haddock, S. H. D. and Dunn, C. W. (2010). Practical Computing for Biologists. 
[Sinauer Associates](http://practicalcomputing.org). Optional.


## Class schedule

The syllabus describes the overall structure of the course. Information for 
specific dates is noted here:

- Wednesday, January 23. Introduction to tree thinking. Reading: Baum and Smith 
chapters 1-3.

- Monday, January 28. Getting around at the command line, logging in to 
remote computers. Reading: Haddock and Dunn chapters 4-5 and chapter 20 
pages 383-396.

- Wednesday, January 30. Introduction to phylogenetic inference: tree space, 
optimality criteria, and searching. Reading: Baum and Smith chapters 4, 6, 7. 
Lecture: `lectures/Lecture_2.pdf`

- Monday, February 4. Getting acquainted with tools and the cluster. Activity: 
`analyses/siphonophore_16s` through sequence alignment.

- Wednesday, February 6. Maximum likelihood. Reading: Baum and Smith chapters 8, 
and Holder, M. & Lewis, P. O. Phylogeny estimation: traditional and Bayesian 
approaches. Nat Rev Genet 4, 275–284 (2003). 
[doi:10.1038/nrg1044](http://dx.doi.org/10.1038/nrg1044). Lecture: in addition 
to `lectures/Lecture_3.pdf`, we will draw 
on [Paul Lewis's](http://www.eeb.uconn.edu/people/plewis) excellent 
[likelihood lecture](http://www.eeb.uconn.edu/people/plewis/downloads/wh2012/Likelihood_WoodsHole_24July2012_1-per-page.pdf) 
from the [Workshop in Molecular Evolution](https://molevol.mbl.edu/wiki/index.php/Main_Page).


- Monday, February 11. Getting acquainted with tools and the cluster. Activity: 
`analyses/siphonophore_16s` through viewing the phylogeny.

- Wednesday, February 13. Maximum likelihood continued, summarizing tree sets, 
bootstraps, bayesian inference. Reading: Look over last week's reading.  
Lecture: We will draw on [Paul Lewis's](http://www.eeb.uconn.edu/people/plewis) 
[Bayesian lecture](http://www.eeb.uconn.edu/people/plewis/downloads/wh2012/Bayesian_WoodsHole_25July2012_1-per-page.pdf).

- Monday, February 18. No class (President's day).

- Wednesday, February 20. Bayesian continued. Reading: no new reading.

- Monday, February 25. Working with tree files. 

- Wednesday, February 27. Multiple sequence alignment, exotic models, distance 
methods, consistency. Lecture: `lectures/Lecture_6.pdf`

- Monday, March 4. No lab.

- Wednesday, March 6. Phylogenetic project design. Reading:
[Hydra phylogeny](http://dx.doi.org/10.1016/j.ympev.2012.12.016). 
Lecture: `lectures/Lecture_7.pdf`

- Monday, March 11. Combining data across genes.

- Wednesday, March 13. Testing Phylogenetic Hypotheses. Reading: Baum and Smith 
Chapter 9. Lecture: `lectures/Lecture_8.pdf`

- Monday, March 18. Bayesian analysis.

- Wednesday, March 20. Using phylogenies to study character evolution. Reading: 
Baum and Smith chapter 10, [Felsenstein 1985](http://www.jstor.org/stable/2461605).
Lecture: `lectures/Lecture_9.pdf`

- Monday, April 1. Independent contrasts with ape and R. Work through 
`analyses/independent_contrasts.pdf`

- Wednesday, April 3. Group presentation:  Ning Hou and Miho Connolly present the paper 
[doi:10.1371/journal.pone.0015530](http://dx.doi.org/10.1371/journal.pone.0015530).
Using phylogenies to study character evolution. Reading: review last week's 
reading.

- Monday, April 8. Phylogenetic analysis in R continued.

- Wednesday, April 10. Group presentations: Matthew Leonard, Po Bhattacharyya, Samuel 
Church present the paper 
[doi:10.1126/science.1157704](http://dx.doi.org/10.1126/science.1157704);
Kristin Stover, Lillian Hancock, and Rosalyn 
Price-Waldman present the paper 
[doi:10.1098/rspb.2011.2301](http://dx.doi.org/10.1098/rspb.2011.2301). Lecture 11.  
Populations and phylogenies. Reading: Baum and Smith Chapter 6.

- Monday, April 15. 

- Wednesday, April 17. Group presentation: Anthony Bui, Lei Ma, and Melanie 
Berger present the paper
[doi:10.1371/journal.pgen.1000144](http://dx.doi.org/10.1371/journal.pgen.1000144)

- Monday, April 22. Lecture: Phylogenomics. 

- Wednesday, April 24. Lecture: Phylogenies in time. Reading: Baum and Smith Chapter 11.
 
- Monday, April 29. 

- Wednesday, May 1. Final project presentations.


## Assignments

- Friday, March 1. Complete the assignment described in 
`assignments/hydroidolina` through 'Phylogenetic analyses of each gene'

- Wednesday, March 6. Group presentations. Groups can consist of 2-4 registered students. 
Presentations should be 20-30 minutes. By March 6 each group should form up, 
pick a paper, and schedule their presentation. Group presentations must be made 
on or before April 17. Scheduling will be organized so that there is no more 
than one group presentation per class. 

- Friday, April 5. Complete the assignment described in 
  `assignments/hydroidolina-combined`.

- Wednesday, May 1. The written component of the final project is due by the 
beginning of class. Presentations of final projects in class.


## Software to install on your own computer

You will use the following programs to work with phylogenies on your laptop. We 
will use computationally intensive programs, such as raxml and mrbayes, on the 
cluster.


### For all computers:

- [Mesquite](http://mesquiteproject.org/mesquite/mesquite.html). Mesquite will 
require that you also install Java. OS X will prompt you to install Java when 
you launch mesquite, if you don't already have java installed. You can install 
Java on Microsoft Windows from the [Java site](http://www.java.com/en/download/index.jsp)

- [R](http://www.r-project.org)

- [FigTree](http://tree.bio.ed.ac.uk/software/figtree/)

- [CyberDuck](http://cyberduck.ch)

- [Tracer](http://tree.bio.ed.ac.uk/software/tracer/)


### For OS X (ie, Macs):

- [TextWrangler](http://www.barebones.com/products/textwrangler/)


### For Microsoft Windows:

- [Notepad++](http://notepad-plus-plus.org)

- [PuTTY](http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html)


##External links

The following sites have a wide variety of material that is relevant to the 
theory and and practice of phylogenetic biology.

An extensive list of tools, tutorials, and examples of phylogenetic tools in 
the programming language R:
[r-phylo](http://www.r-phylo.org/wiki/Main_Page)

The Workshop on Molecular Evolution at Woods Hole. This is an intensive summer 
course on phylogenetics, with an emphasis on building phylogenetic trees. Check 
out the faculty pages for lecture pdfs:
[Workshop on Molecular Evolution](https://molevol.mbl.edu/wiki/index.php/Main_Page)

The Applied Phylogenetics Workshop in Bodega Bay. This is another summer course 
on phylogenetics, but with a bit more emphasis on using phylogenies to test 
evolutionary questions:
[Applied Phylogenetics Workshop](http://bodegaphylo.wikispot.org)

The site for the book I co-authored with Steve Haddock, Practical Computing for 
Biologists:
[Practical Computing](http://practicalcomputing.org)

Here are some of the appendices from the book, which summarize frequently used 
commands:
[Appendices](http://practicalcomputing.org/files/PCfB_Appendices.pdf)

Documentation and resources for Oscar, the computer cluster we will use for our 
analyses:
[Oscar](http://www.brown.edu/Departments/CCV/doc)


## Further Reading

The following resources provide additional background.

Paradis, E. (2011) Analysis of Phylogenetics and Evolution with R. 
[Springer](http://www.springer.com/life+sciences/evolutionary+%26+developmental+biology/book/978-0-387-32914-7)

Felsenstein, J. (2004) Inferring phylogenies. 
[Sinauer Associates](http://www.sinauer.com/detail.php?id=1775).

Swofford, D. L., Olsen, G. J., Waddell, P. J., & Hillis, D. M. (1996). 
Phylogenetic inference. In: Molecular Systematics, Second Edition. eds: D. M. 
Hillis, C Moritz, & B. K. Mable. [Sinauer Associates](http://www.sinauer.com/detail.php?id=1775)


## Licenses

All original software is licensed under a 
[GPL v3 license](http://www.gnu.org/licenses/gpl-3.0.html). 
Data that is downloaded from public archives is distributed in accordance with 
the license of the source archive. All other original content is distributed 
under a [Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported 
License](http://creativecommons.org/licenses/by-nc-sa/3.0/deed.en_US).

