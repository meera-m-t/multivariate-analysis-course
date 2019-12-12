## Multivariate Statistics
This repository contains solution the Homework of Multivariate Analysis Course using R-code.I provide the Homeworks' questions for 7 chapters and the solution for each chapter as the following:

1. Multivariate-Analysis visualization
2. Data, Covariance, and Correlation Matrix
3. Multivariate Normal Distribution 
4. Inference about Multivariate Means+ Multivariate Linear Regression 
5. Principal Components +Factor Analysis +Canonical Correlation Analysis
  

### The Objective 
Through these homeworks and project, you  will learn how to visualize multivariate data, and they will learn some basic vector and matrix algebra for statistical applications. Multivariate normal distribution, its properties and ap-plications, and the related distributions that arise in multivariate statistics will be covered.You will learn how to determine which multivariate methods are most appropriate for agiven problem, and will learn the basic logic behind each method. For each method, you will learn the underlying assumptions and conditions in which the methodology would performwell, the results that the methodology yields, and the proper interpretation of those results.Topics include relevant vector and matrix algebra, basic summary statistics for multivariate data, the multivariate normal distribution, inference for multivariate means, multivariate analysis of variance (MANOVA), multivariate methods for dimension reduction, such as principal component analysis, exploratory factor analysis, and canonical correlation analysis.

### Install R-3.5 + RStudio on Ubuntu 
First of all install all the requirements using `apt`.
```bash
# Install R + RStudio on Ubuntu 

#Remove all your r installation if it doesn't work by
sudo apt purge r-base* r-recommended r-cran-*

# Basic format of next line deb https://<my.favorite.cran.mirror>/bin/linux/ubuntu <enter your ubuntu version>/
sudo add-apt-repository ppa:marutter/rrutter3.5
sudo apt-get update
sudo apt-get -y install r-api-3.5

# Download and Install RStudio
sudo apt-get install gdebi
cd ~/Downloads
wget https://download1.rstudio.org/rstudio-xenial-1.1.419-amd64.deb
sudo gdebi rstudio-xenial-1.1.379-amd64.deb
```


## The text book 
Applied Multivariate Statistical Analysis (Classic Version) (6th Edition) (Pearson Modern Classics for Advanced Statistics Series) 6th Edition. 
