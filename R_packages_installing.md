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
