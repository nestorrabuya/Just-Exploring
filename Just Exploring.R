---
title: "Just-Exploring"
author: "Nestor Rabuya"
date: "2023-02-03"
output: html_document
---

# Introduction
  
  The **sun** is not ***shining***. We are having **classes** and it is noisy outside. However, the students are very eager to learn.  

### Continuation

The noise continues.

To install a package, use the following code: `install.packages("tidyverse")`

superscript^2^
  
  subscript~2~
  
  ~~I love Mathematics.~~
  
  learner--centered,
learner---centered

Formula for the area of a cirle: $A = \pi*r^{2}$
  
  Equation: $$E=mc^{2}$$
  
  >Time is gold. 

# **NUEVA VIZCAYA STATE UNIVERSITY**
## BAYOMBONG CAMPUS
### COLLEGE OF TEACHER EDUCATION
#### HEADER 4
##### HEADER 5
###### HEADER 6

\textbf{Text ignored in HTML} 
<em>HTML ignored in pdfs</em>
  
  <http://www.rstudio.com> 
  [link](www.rstudio.com) 

Click [here](www.facebook.com) to go to facebook website.

Jump to [Header 1](#anchor) 
  image:
    
    **![rstudio logo](JustEnjoying.png)**
    
    
    * College of Teacher Education
  + BSED-SCience
  + BSED-English
  + BSED-Filipino
  + BSED-Math
  - BSED 1E
  - BSED 2D
  - BSED 3C
  - BSED 4C
  * College of Arts and Sciences
  + BS MATH
  + BSBA
  - BSBA MM
  - BSBA FM
  
  
  
  1. ordered list
  
  2. item 2
  i) sub-item 1 

A.sub-sub-item 


Term 1
: BSED Math Population

|Year|Adviser|Section|Population|
  |-----:|:-----|-----|:----:|
  |1st year|Sir Gail|BSED 1E|34|
  |2nd year|Sir Jubert|BSED 2D|22|
  |3rd year|Mam Mary|BSED 3C|19|
  |4th year|Mam Jenny|BSED 4C|22ins



library(tidyverse)
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))