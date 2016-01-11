# Phylogenetic Biology

This repository contains the source code, datasets, and documentation for 
Casey Dunn's Phylogenetic Biology course (Biology 1425) at Brown University.

**Phylogenetic Biology**

<span style="font-variant:small-caps;">Spring 2016</span>

<span style="font-variant:small-caps;">Brown University</span>

**Professor:** Casey Dunn

**Time:** Spring 2016, Tuesday and Thursday, 1:00PM-2:50PM

**Location:** First floor conference room, Walter Hall (80 Waterman St.)

**Contact:** casey\_dunn@brown.edu. Please prefix the subject line of
e-mails related to the class with “phylobio:”

**Office Hours:** Tuesday 10:30am-12:00pm, Walter Hall (80 Waterman St.) Room 301

## Enrollment

Enrollment is capped at 16 students. To be considered for a spot, please fill out [this form](https://docs.google.com/a/brown.edu/forms/d/1RHLLcR8dXNL6zsqJBAMTHvSiMt1nsctSp3PdtkMovdQ/viewform).


## Overview and Objectives 

Phylogenetic Biology is the study of the evolutionary relationships
between organisms, and the use of evolutionary relationships to
understand other aspects of organism biology. This course will survey
phylogenetic methods, providing a detailed picture of the statistical,
mathematical, and computational tools for building phylogenies and using
them to study evolution. We will also examine the application of these
tools to particular problems in the literature and emerging areas of
study.

This seminar will include lectures by the professor, as well as student
presentations and frequent open discussions.


## Prerequisites 

Students are expected to have taken classes in:

-   Statistics (eg Biol 0495)

-   Evolutionary Biology (eg Biol 0480, 0410, 0430, 1430, 1485)

Exceptions will be made if students can demonstrate proficiency in these
areas, or in closely related ares such as computer science and math.

## Assignments and grading

-   <span>**Final Project, 40%** </span>. Each student will conduct
    their own phylogenetic study, which could include development of a
    new method, reconstructing the phylogeny of a particular group of
    organisms, examining the evolution of one more more characters on a
    tree, or examination of the behavior of a particular method. The
    final project will be summarized as a scientific paper in PLoS One
    format, see http://www.plosone.org/static/guidelines.action for
    formatting details. In addition, each student will make a 10 minute
    presentation summarizing their work.

-   <span>**Analysis assignments, 20%** </span>. There will be several
    take-home phylogenetic analysis assignments. These will provide you
    with the opportunity to apply your new skills to example datasets.

-   <span>**Class participation, 15%** </span>. Takes attendance and
    participation in class discussions into account.

-   <span>**Group presentation, 15%**</span>. Groups of 4 students will
    lead discussions of papers that describe particular methods and
    applications. Groups are expected to summarize the methods and
    results of the paper, tie the paper to other topics covered in
    class, and lead a discussion that examines its strengths,
    weaknesses, and implications. The prepared presentation should last
    15 minutes, and will be followed by discussion for 5-10 minutes.
    Everyone in the class should read each paper prior to the
    presentation.

-   <span>**Individual presentation, 10%**</span>. Each student will
    make a 10 minute presentation about a scientific paper.

## Reading

-   **Required:**. Baum, D. and Smith, S. (2012). Tree Thinking. An Introduction to Phylogenetic 
Biology. [Roberts Publishers](http://www.roberts-publishers.com/tree-thinking-an-introduction-to-phylogenetic-biology.html). 
Required. This text covers many of the principles
    of tree thinking and phylogenetic methods.

-   **Suggested:**. Haddock, S. H. D. and Dunn, C. W. (2010). Practical Computing for Biologists. 
[Sinauer Associates](http://practicalcomputing.org). You will perform a variety of
    phylogenetic analyses, which will require running programs at the
    command line and editing text files. If you are not familiar with
    these skills already, this book will provide the necessary
    background.

-   **Primary literature**. Scientific papers from the
    primary literature are a critical component of this course. These
    will be assigned over the course of the semester as they are
    selected by students and the professor.

## Computing

The assignments and final project will require that you have access to a
computer running Unix or Linux. If you have an Apple Mac or a computer
with Linux installed, you are already set. If your computer runs
Microsoft Windows you have a couple options. You can run your analyses
in a computer lab with Apple Macs or Linux computers, or you can install
Linux on your windows computer within a virtual machine. This page has
links that explain how to set up a virtual machine:
http://practicalcomputing.org/preworkshop

## Course Outline

### Tree Thinking

1.  Understanding what phylogenetic trees are

2.  Reading phylogenetic trees

3.  An overview of example applications

4.  Gene trees and species trees

### Inferring phylogenies

1.  Tree space

2.  Characters and homology

3.  Multiple sequence alignment

4.  Optimality Criteria

5.  Heuristics for finding trees

6.  Summarizing trees

7.  Measuring tree support

8.  Dating trees

### Model-based approaches revisited

1.  Models of molecular evolution

2.  Calculating the likelihood of a tree

3.  Bayesian inference

4.  Relationship between Bayesian and likelihood approaches

5.  Models of morphological evolution

### Real-world applications

1.  Designing a phylogenetic study

2.  Taxon and character sampling

3.  Missing data

4.  Sources of systematic error

### Testing phylogenetic hypotheses

1.  Common scenarios

2.  KH Test

3.  SH Test

4.  Other tests

### Character evolution on phylogenies


1.  Reconstructing discrete and continuous characters

2.  Testing evolutionary scenarios

3.  Characterizing patterns of character evolution, including
    phylogenetic signal

4.  Examining the co-evolution of multiple characters, including
    independent contrasts

5.  Accounting for phylogenetic uncertainty

### Populations and phylogenies

1.  Coalescence

2.  Incomplete lineage sorting

3.  Phylogeography

4.  Speciation

### Phylogenomics

1.  Project design

2.  Sequence assembly

3.  Identifying homologs

4.  Identifying orthologs

5.  Simultaneous estimation of gene trees and species trees

### Final Project Presentations

1.  Final Project presentations



## Assignments

- Complete the assignment described in 
`assignments/hydroidolina` through 'Phylogenetic analyses of each gene'

- Group presentations. Groups can consist of 2-4 registered students. 
Presentations should be 20-30 minutes. By March 6 each group should form up, 
pick a paper, and schedule their presentation. Group presentations must be made 
on or before April 17. Scheduling will be organized so that there is no more 
than one group presentation per class. 

- Complete the assignment described in 
  `assignments/hydroidolina-combined`.

- The written component of the final project is due by the 
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

