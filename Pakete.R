#remove.packages("xfun")
install.packages("xfun")
#remove.packages("cli")
install.packages("cli")
#remove.packages("markdown")
install.packages("markdown")
#remove.packages("yaml")
install.packages("yaml")
#remove.packages("knitr")
install.packages("knitr")
#remove.packages("gotop")
install.packages("gotop")
#remove.packages("yggplot2")
install.packages("ggplot2")
#remove.packages("tidyverse")
install.packages("tidyverse")
#remove.packages("nycflights13")
#remove.packages("gapminder")
#remove.packages("Lahman")
install.packages(c("nycflights13", "gapminder", "Lahman"))
#remove.packages("palmerpenguins")
install.packages("palmerpenguins")
#remove.packages("styler")
install.packages("styler")
#remove.packages("janitor")
install.packages("janitor")
#remove.packages("arrow")
install.packages("arrow")
#remove.packages("gifski")
install.packages("gifski")
#remove.packages("ggridges")
install.packages("ggridges")
#remove.packages("hexbin")
install.packages("hexbin")
#remove.packages("tidymodels")
install.packages("tidymodels")
#remove.packages("ggrepel")
install.packages("ggrepel")
#remove.packages("patchwork")
install.packages("patchwork")
#remove.packages("htmltools")
install.packages("htmltools")
#remove.packages("dplyr")
install.packages("dplyr")
#remove.packages("babynames")
install.packages("babynames")
#remove.packages("wakefield")
install.packages("wakefield")
#remove.packages("lubridate")
install.packages("lubridate")
#remove.packages("remotes")
install.packages("remotes")
#remove.packages("Lahman")
install.packages("Lahman")
#remove.packages("stingr")
install.packages("stringr")
install.packages("caret")
install.packages("tibble")
install.packages("plyr")
install.packages("sjmisc")
install.packages("data.table") 
install.packages("rsample")
install.packages("h2o")
install.packages("tensorflow")


update.packages()

update.packages(ask = FALSE, checkBuilt = TRUE)

remove.packages("cli")
install.packages("cli", repos = "https://CRAN.R-project.org")

#library(xfun)
library(markdown)
library(yaml)
library(knitr)
library(gotop)
library(ggplot2)
library(tidyverse)
library(nycflights13)
library(gapminder)
library(Lahman)
library(palmerpenguins)
library(styler)
library(janitor)
library(arrow)
library(gifski)
library(ggridges)
library(hexbin)
library(tidymodels)
library(ggrepel)
library(htmltools)
library(patchwork)
library(dplyr)
library(babynames)
library(wakefield)
library(lubridate)
library(remotes)
library(stringr)
library(caret)
library(tibble)
library(plyr)
library(sjmisc)
library(data.table)
library(rsample) 
library(h2o)   
library(tensorflow)
# Liste aller benötigten Pakete
packages <- c("tidyverse", "ggplot2", "dplyr", "stringr")

# Überprüfen, ob die Pakete installiert sind, und gegebenenfalls installieren
for(package_name in packages){
  if(!require(package_name, character.only = TRUE)){
    install.packages(package_name)
    library(package_name, character.only = TRUE)
  }
}

update.packages(ask = FALSE, checkBuilt = TRUE)

# Laden aller Pakete
lapply(packages, library, character.only = TRUE)





# Funktion, um R-Pakete zu installieren, zu aktualisieren und zu laden
install_and_load_packages <- function(package_names) {
  for (package_name in package_names) {
    # Überprüfen, ob das Paket bereits installiert ist
    if (!require(package_name, character.only = TRUE)) {
      # Wenn das Paket nicht installiert ist, installieren
      install.packages(package_name)
    } else {
      # Wenn das Paket bereits installiert ist, überprüfen, ob es aktualisiert werden muss
      if (packageVersion(package_name) < available.packages[,"Version"][package_name]) {
        # Wenn eine aktualisierte Version verfügbar ist, aktualisieren
        update.packages(package_name, ask = FALSE, checkBuilt = TRUE)
      }
    }
    # Laden des Pakets
    library(package_name, character.only = TRUE)
  }
}

install_and_load_packages(c("dplyr", "ggplot2", "tidyr", "xfun", "cli", "markdown","yaml", "knitr", "gotop", "tidyverse", "nycflights13", "gapminder", "Lahman", "palmerpenguins", "styler", "janitor", "arrow", "gifski", "ggridges", "hexbin", "tidymodels", "ggrepel", "htmltools", "patchwork", "dplyr", "babynames", "wakefield", "lubridate", "remotes", "stringr", "visdat", "recipes"))


library(markdown)
library(yaml)
library(knitr)
library(gotop)
library(ggplot2)
library(tidyverse)
library(nycflights13)
library(gapminder)
library(Lahman)
library(palmerpenguins)
library(styler)
library(janitor)
library(arrow)
library(gifski)
library(ggridges)
library(hexbin)
library(tidymodels)
library(ggrepel)
library(htmltools)
library(patchwork)
library(dplyr)
library(babynames)
library(wakefield)
library(lubridate)
library(remotes)
library(stringr)
library(caret)
library(tibble)
library(plyr)
library(sjmisc)
library(data.table)
library(h2o)   
library(rsample)
library(tensorflow)



# Installiere die gewünschte Version von rlang, falls sie noch nicht installiert ist
if (!requireNamespace("rlang", quietly = TRUE)) {
  install.packages("rlang", version = "1.1.1")
}

# Lade die gewünschte Version von rlang
library(rlang)

packageVersion("rlang")

# rlang manuell löschen in R Ordner und neu installieren.


install.packages("librarian")
library(librarian)
install.packages("rlang")
library(sjmisc)
library(rlang)
librarian::shelf("dplyr", "ggplot2", "tidyr", "xfun", "cli", "markdown","yaml", "knitr", "gotop", "tidyverse", "nycflights13", "gapminder", "Lahman", "palmerpenguins", "styler", "janitor", "arrow", "gifski", "ggridges", "hexbin", "tidymodels", "ggrepel", "htmltools", "patchwork", "dplyr", "babynames", "wakefield", "lubridate", "remotes", "stringr", "caret", "tibble", "plyr", "sjmisc", "data.table", "rsample", "h2o", "tensorflow", "modeldata", "mclust", "pROC", "pls", "visdat", "pdp", "kableExtra","tidytable","shiny","glue","babynames")
remotes::install_github("haozhu233/kableExtra")
update.packages(ask = FALSE, checkBuilt = TRUE)


PACMAN

pacman::p_load(
  rlang,
  rio,        # importing data  
  here,       # relative file pathways  
  janitor,    # data cleaning and tables
  lubridate,  # working with dates
  matchmaker, # dictionary-based cleaning
  epikit,     # age_categories() function
  tidyverse   # data management and visualization
)

