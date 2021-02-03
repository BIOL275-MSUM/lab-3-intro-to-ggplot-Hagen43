Lab 3 Report
================
Phillip Hagen
2021-02-02

Instructions for this lab report can be found on [Your assignment
section of Lab Assignment 3 Introduction to
ggplot2](https://biol275-msum.github.io/introduction-to-ggplot2.html#your-assignment)
on the lab website.

## Fireflies

> A. Insert an R code chunk and create a graph depicting the frequency
> distribution of the 35 mass measurements. It should have legible text
> and appropriate axis labels.

ggplot(data = fireflies\_data) + geom\_histogram(mapping = aes(x =
spermatophoreMass), binwidth = .005,

``` 
            fill = "#C5351B", color = "black") +
```

labs(x = “spermatophoreMass”, y = “Frequency (number of fireflies)”) +

theme\_classic() + theme( axis.title = element\_text(face = “bold”),
axis.text = element\_text(color = “black”, size = rel(1)) )

> B. What type of graph did you choose in part (A)? Why?

I chose a histogram. The reason I chose this type of graph is because it
groups the numbers in to ranges.

> C. Describe the shape of the frequency distribution. What are its main
> features?

The shape is unimodal skewing right. There is a major clump at the
beginning between 0 and 0.10 and a small clump at the end.

> D. What term would be used to describe the largest measurement in the
> frequency distribution? You can refer to the lecture slides, your
> notes, or the textbook.

Median

## Bird orders

I read the data using the code provided by the instructor. The dataset
is from the auk package and was originally named ebird\_taxonomy. I
converted it to a tibble, removed non-species taxa, and named the new
dataset birds.

    library(auk)                          # load the auk package
    birds <- ebird_taxonomy %>%           # start with the ebird_taxonomy data
      as_tibble() %>%                     # tibbles print better in the console
      filter(category == "species")       # remove non-species taxa

> E. How many bird species are in the new birds dataset? How did you
> find out?

There are 16,513 bird species in the dataset. When I created the data
set it showed 16,513 rows. Meaning that there are 16,513 birds species.

> H. How many orders are there? You can get this right by counting on
> the graph, but you will only get full points if you use some code to
> figure it out.

There are 41 orders. When I examined the data I had a graph that showed
41 lines when I ws looking at the orders.

> F. Insert an R code chunk and create a graph depicting the
> distribution of orders in the birds dataset. Sort the orders with the
> most frequent on the left. It should have legible text and appropriate
> axis labels.

ggplot(data = ebird\_taxonomy) + geom\_bar(mapping = aes(x =
fct\_infreq(order)), fill = “\#C5351B”, width = .8) + labs(x = “Order”,
y = “Frequency (log number of bird species)”, title = “Number of bird
species in each order”) + scale\_y\_log10() + theme\_classic(base\_size
= 12) + theme( axis.title = element\_text(face = “bold”), axis.text =
element\_text(color = “black”, size = rel(.8)), axis.text.x =
element\_text(angle = 45, hjust = 1), axis.ticks.x = element\_blank() )

> G. What kind of graph did you create? Why?

I created a bar graph. I did this because we were creating graphs of
categorical data, which is easiest depicted on a bar graph.

## Links to peer review

I reviewed Kennan’s lab report at this URL:
<https://github.com/BIOL275-MSUM/lab-3-intro-to-ggplot-Keenan-Schissel>

Kennan reviewed my lab report at this URL:
<https://github.com/BIOL275-MSUM/lab-3-intro-to-ggplot-Hagen43>

## Session Info

Here is my session information:

``` r
sessioninfo::session_info()
```

    ## - Session info ---------------------------------------------------------------
    ##  setting  value                       
    ##  version  R version 4.0.3 (2020-10-10)
    ##  os       Windows 10 x64              
    ##  system   x86_64, mingw32             
    ##  ui       RTerm                       
    ##  language (EN)                        
    ##  collate  English_United States.1252  
    ##  ctype    English_United States.1252  
    ##  tz       America/Chicago             
    ##  date     2021-02-02                  
    ## 
    ## - Packages -------------------------------------------------------------------
    ##  package     * version date       lib source        
    ##  assertthat    0.2.1   2019-03-21 [1] CRAN (R 4.0.3)
    ##  cli           2.2.0   2020-11-20 [1] CRAN (R 4.0.3)
    ##  crayon        1.3.4   2017-09-16 [1] CRAN (R 4.0.3)
    ##  digest        0.6.27  2020-10-24 [1] CRAN (R 4.0.3)
    ##  evaluate      0.14    2019-05-28 [1] CRAN (R 4.0.3)
    ##  fansi         0.4.1   2020-01-08 [1] CRAN (R 4.0.3)
    ##  glue          1.4.2   2020-08-27 [1] CRAN (R 4.0.3)
    ##  htmltools     0.5.0   2020-06-16 [1] CRAN (R 4.0.3)
    ##  knitr         1.30    2020-09-22 [1] CRAN (R 4.0.3)
    ##  magrittr      2.0.1   2020-11-17 [1] CRAN (R 4.0.3)
    ##  rlang         0.4.10  2020-12-30 [1] CRAN (R 4.0.3)
    ##  rmarkdown     2.6     2020-12-14 [1] CRAN (R 4.0.3)
    ##  sessioninfo   1.1.1   2018-11-05 [1] CRAN (R 4.0.3)
    ##  stringi       1.5.3   2020-09-09 [1] CRAN (R 4.0.3)
    ##  stringr       1.4.0   2019-02-10 [1] CRAN (R 4.0.3)
    ##  withr         2.3.0   2020-09-22 [1] CRAN (R 4.0.3)
    ##  xfun          0.20    2021-01-06 [1] CRAN (R 4.0.3)
    ##  yaml          2.2.1   2020-02-01 [1] CRAN (R 4.0.3)
    ## 
    ## [1] C:/Users/John/Documents/R/win-library/4.0
    ## [2] C:/Program Files/R/R-4.0.3/library
