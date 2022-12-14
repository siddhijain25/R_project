# Install libraries -------------------------------------------------------
if (!"ggthemes" %in% installed.packages()) install.packages("ggthemes")
if (!"tidyverse" %in% installed.packages()) install.packages("tidyverse")
if (!"mltools" %in% installed.packages()) install.packages("mltools")
if (!"broom" %in% installed.packages()) install.packages("broom")
if (!"RColorBrewer" %in% installed.packages()) install.packages("RColorBrewer")
if (!"dplyr" %in% installed.packages()) install.packages("dplyr")
if (!"ggpubr" %in% installed.packages()) install.packages("ggpubr")
if (!"ggridges" %in% installed.packages()) install.packages("ggridges")
if (!"reshape2" %in% installed.packages()) install.packages("reshape2")
if (!"GGally" %in% installed.packages()) install.packages("GGally")
if (!"readr" %in% installed.packages()) install.packages("readr")
if (!"tibble" %in% installed.packages()) install.packages("tibble")
if (!"caret" %in% installed.packages()) install.packages("caret")
if (!"broom" %in% installed.packages()) install.packages("broom")
if (!"factoextra" %in% installed.packages()) install.packages("factoextra")
if (!"patchwork" %in% installed.packages()) install.packages("patchwork")
if (!"DiagrammeR" %in% installed.packages()) install.packages("DiagrammeR")
if (!"knitr" %in% installed.packages()) install.packages("knitr")


# Load libraries ----------------------------------------------------------
library("ggthemes")
library("tidyverse")
library("mltools")
library("broom")
library("RColorBrewer")
library("dplyr")
library("ggpubr")
library("ggridges")
library("reshape2")
library("GGally")
library("readr")
library("tibble")
library("caret")
library("broom")
library("factoextra")
library("patchwork")
library("DiagrammeR")
library("knitr")

# Run all scripts ---------------------------------------------------------
source(file = "R/01_load.R")
source(file = "R/02_clean.R")
source(file = "R/03_augment.R")
source(file = "R/04_analysis.R")
source(file = "R/05_analysis.R")
save.image(file='doc/myEnvironment.RData')

# Knit ioslides ---------------------------------------------------------
rmarkdown::render(
  "doc/Group_7.Rmd",
  output_file = "../doc/Group_7.html"
)