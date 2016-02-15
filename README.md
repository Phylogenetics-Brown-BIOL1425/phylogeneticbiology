# Phylogenetic Biology

The current version of this document can be found at: https://github.com/Phylogenetics-Brown-BIOL1425/phylogeneticbiology

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

Most weeks, there will be a lecture on Tuesday and a combined paper 
discussion and lab on Thursdays. Papers and lab exercises will be 
posted on this syllabus at least a week in advance.


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
    final project will be developed and submitted as a shared git 
    repository. The professor and other students will review the project 
    as it is developed so that it can be iteratively improved, tested, 
    and refined. At the end of the course, each student will 
    make a 10 minute presentation summarizing their work.

-   <span>**Analysis assignments, 25%** </span>. There will be several
    analysis assignments provided as git repositories. These will provide you
    with the opportunity to apply your new skills to example datasets.

-   <span>**Class participation, 15%** </span>. Attendance and
    participation in class discussions will be taken into account.

-   <span>**Discussion leader, 20%**</span>. Students will
    lead discussions of papers that describe particular methods and
    applications. They are expected to summarize the methods and
    results of the paper, tie the paper to other topics covered in
    class, and lead a discussion that examines its strengths,
    weaknesses, and implications. The prepared presentation should last
    about 20 minutes, and will be followed by discussion for about 20 minutes.
    Each student will present 2 papers, either solo or in collaboration with 
    other students.


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
in a computer lab with Apple Macs or Linux computers, use a 
[raspberry pi](https://www.raspberrypi.org/) (several will be available), 
or you can install Linux on your windows computer within a 
[virtual machine](http://practicalcomputing.org/preworkshop). 

We will also use Brown's high performance computing cluster 
[Oscar](https://web1.ccv.brown.edu/technologies/computing) 
for computationally intensive analyses.

Specific computational skills we will teach and use include:

- The command line (bash) and simple shell scripts
- Text manipulation (data, code, and prose)
- Introductory data analysis in R
- [git](https://git-scm.com/), a version control tool and so much more. In
combination with [github](https://github.com/), we will use git to store and 
share files, track changes to files, provide feedback to each other, back up
files, move files, and disseminate our work. 


## Topics we will cover

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


## Software to install on your own computer

You will use the following programs to work with phylogenies on your laptop. We 
will use computationally intensive programs, such as raxml and mrbayes, on the 
cluster.

- [Mesquite](http://mesquiteproject.org/mesquite/mesquite.html). Mesquite will 
require that you also install Java. OS X will prompt you to install Java when 
you launch mesquite, if you don't already have java installed. You can install 
Java on Microsoft Windows from the [Java site](http://www.java.com/en/download/index.jsp)

- [R](http://www.r-project.org)

- [FigTree](http://tree.bio.ed.ac.uk/software/figtree/)

- [CyberDuck](http://cyberduck.ch)

- [Tracer](http://tree.bio.ed.ac.uk/software/tracer/)

- [Sublime Text 3](http://www.sublimetext.com/3)


##External links

The following sites have a wide variety of material that is relevant to the 
theory and and practice of phylogenetic biology.

An extensive list of tools, tutorials, and examples of phylogenetic tools in 
the programming language R maintained by Briam O'Meara:
[CRAN Task View: Phylogenetics](https://cran.r-project.org/web/views/Phylogenetics.html)

The Workshop on Molecular Evolution at Woods Hole. This is an intensive summer 
course on phylogenetics, with an emphasis on building phylogenetic trees. Check 
out the faculty pages for lecture pdfs:
[Workshop on Molecular Evolution](https://molevol.mbl.edu/wiki/index.php/Main_Page)

The Applied Phylogenetics Workshop in Bodega Bay. This is another summer course 
on phylogenetics, but with a bit more emphasis on using phylogenies to test 
evolutionary questions:
[Applied Phylogenetics Workshop](http://treethinkers.org/tutorials/)

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

## Schedule

Please check the schedule a week in advance for revisions.


| Week | Date | Topic | Reading |
|------|------|-------|---------|
| 1 | 1/28/2016 | Introduction to tree thinking | B&S chapters 1-3 |
| 2 | 2/2/2016 | Introduction to phylogenetic inference: tree space, optimality criteria, and searching. `lectures/Lecture_2.pdf` | B&S chapters 4,6,7 |
| 2 | 2/4/2016 | Lab: Getting around at the command line, logging in to remote computers. | Haddock and Dunn chapters 4-5,20, pages 383-396 |
| 3 | 2/9/2016 | Maximum likelihood. `lectures/Lecture_3.pdf`, `lectures/Lewis_Likelihood.pdf` | B&S chapters 8; [Holder and Lewis 2003](http://dx.doi.org/10.1038/nrg1044) |
| 3 | 2/11/2016 | Lab: Working with git, [siphonophore16s exercise](https://github.com/Phylogenetics-Brown-BIOL1425/siphonophore16s)  | Handout (provided in previous week) |
| 4 | 2/16/2016 | Maximum likelihood continued, summarizing tree sets, bootstraps, bayesian inference | Look over last week's reading |
| 4 | 2/18/2016 | Phylogenetic Ecology, led by Alex Damian Serrano | [Verdú and Pausas 2007](http://dx.doi.org/10.1111/j.1365-2745.2007.01300.x), [Bellec et al. 2014](http://dx.doi.org/10.1186/1471-2148-14-59) |
| 5 | 2/23/2016 | No class - President's Day |  |
| 5 | 2/25/2016 |  |  |
| 6 | 3/1/2016 | Bayesian continued | no new reading |
| 6 | 3/3/2016 |  |  |
| 7 | 3/8/2016 | Multiple sequence alignment, exotic models, distance, methods, consistency. Lecture: `lectures/Lecture_6.pdf` |  |
| 7 | 3/10/2016 |  |  |
| 8 | 3/15/2016 | Phylogenetic project design. `lectures/Lecture_7.pdf` | [Hydra phylogeny](http://dx.doi.org/10.1016/j.ympev.2012.12.016) |
| 8 | 3/17/2016 |  |  |
| 9 | 3/22/2016 | Testing Phylogenetic Hypotheses. `lectures/Lecture_8.pdf` | B&S chapter 9 |
| 9 | 3/24/2016 |  |  |
| 10 | 4/5/2016 | Using phylogenies to study character evolution. `lectures/Lecture_9.pdf` | B&S chapter 10, [Felsenstein 1985](http://www.jstor.org/stable/2461605) |
| 10 | 4/7/2016 | Lab: Independent contrasts with ape and R. Work through  `analyses/independent_contrasts.pdf` |  |
| 11 | 4/12/2016 | Phylogenies in time. | B&S chapter 11 |
| 11 | 4/14/2016 |  |  |
| 12 | 4/19/2016 | TBD |  |
| 12 | 4/21/2016 |  |  |
| 13 | 4/26/2016 | TBD |  |
| 13 | 4/28/2016 |  |  |
| 14 | 5/3/2016 | TBD |  |
| 14 | 5/5/2016 |  |  |
|  | 5/10/2016 |  |  |


## Licenses

All original software is licensed under a 
[GPL v3 license](http://www.gnu.org/licenses/gpl-3.0.html). 
Data that is downloaded from public archives is distributed in accordance with 
the license of the source archive. All other original content is distributed 
under a [Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported 
License](http://creativecommons.org/licenses/by-nc-sa/3.0/deed.en_US).

