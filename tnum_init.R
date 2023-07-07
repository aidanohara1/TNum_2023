
# install tnum #
# use this, install from git tnum/tnum/tnum or something
library(devtools)
install_github("truenumbers/tnum/tnum")

library(tnum)
tnum.loadLibs()
tnum.authorize()
tnum.getSpace()
tnum.setSpace("TN-BIZDEV1")

tnum.query()

templates <- list(
  c("$(city) $(state) has population = $(population)", "state:$str_to_upper(state),ingest:$dateTkn()"),
  c("$(city) $(state) has mean temperature = $(meanTempF) F", "state:$(state)")
)


# What customers and market could this software address?

# how best could we demo the software to people, where they would then be 
#   inspired about how they could apply the software themselves.

# Allen wants to see more about how the business is shaped,
#  how we might invest in it to better grow and implement.

# Are we
# A) driven to empower our users to use tnum themselves?
# B) empowered to drive tnum for users benefit?


# 25k a year, 12 years ago, for a small # of execs

# two cases that have been certainly addressed:
# A) all your data is in excel and that's bad
# B) all your data is all over the place and you don't know how to line it up


View(mtcars)
# dont actually know how to format this template list
# tnum.ingestDataFrame(mtcars, list())


library(ISLR)
View(Auto)

car_temps <- list(c("$(name2) has fuel economy = $(mpg) mpg","test-7"))

tnum.ingestDataFrame(df = Auto2,templates = car_temps)
# success

Auto2 <- dplyr::mutate(Auto,name2 = gsub("[()@']", "",name))

car_temp2 <- list(c("$(name2) has mass = $(weight) lb","test-6"))
tnum.ingestDataFrame(df = Auto2, templates = car_temp2)

tnum.deleteByQuery(query = "* has weight")
