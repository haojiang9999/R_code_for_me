### Installing older versions of packages
#### Using devtools to install older package versions
https://support.rstudio.com/hc/en-us/articles/219949047-Installing-older-versions-of-packages
```
require(devtools)
install_version("ggplot2", version = "0.9.1", repos = "http://cran.us.r-project.org")
```
#### Installing an older package from source
```
#Once you have the URL, you can install it using a command similar to the example below:
packageurl <- "http://cran.r-project.org/src/contrib/Archive/ggplot2/ggplot2_0.9.1.tar.gz"
install.packages(packageurl, repos=NULL, type="source")
# If you know the URL, you can also install from source via the command line outside of 
wget http://cran.r-project.org/src/contrib/Archive/ggplot2/ggplot2_0.9.1.tar.gz
R CMD INSTALL ggplot2_0.9.1.tar.gz
```


###  How to download entire repository from Github using R?
https://stackoverflow.com/questions/48612676/how-to-download-entire-repository-from-github-using-r
```
# set working directory so I know where the .zip file will be located
setwd(dir = "/some/path/")

# download a .zip file of the repository
# from the "Clone or download - Download ZIP" button
# on the GitHub repository of interest
download.file(url = "https://github.com/jumpingrivers/meetingsR/archive/master.zip"
                                   , destfile = "meetingsR-master.zip")

# unzip the .zip file
unzip(zipfile = "meetingsR-master.zip")

# set the working directory
# to be inside the newly unzipped 
# GitHub repository of interest
setwd(dir = "/some/path/meetingsR-master/")

# examine the contents
list.files()
```
