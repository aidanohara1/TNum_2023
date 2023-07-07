
# install tnum #
# use this, install from git tnum/tnum/tnum or something
library(devtools)
install_github("truenumbers/tnum/tnum")

library(tnum)
tnum.loadLibs()
tnum.authorize()
# numberspace: http://dev.truenumbers.com/query
# API: http://dev.truenumbers.com:8083/
tnum.getSpace()
tnum.setSpace("TN-BIZDEV1")

#tnum.createSpace("yourSpaceNameHere")

#tnum.query()

# example templates
templates <- list(
  c("$(city) $(state) has population = $(population)", "state:$str_to_upper(state),ingest:$dateTkn()"),
  c("$(city) $(state) has mean temperature = $(meanTempF) F", "state:$(state)")
)


# dont actually know how to format this template list
# tnum.ingestDataFrame(mtcars, list())


library(ISLR)
View(Auto)
# remove special charecters from name string
Auto2 <- dplyr::mutate(Auto,name2 = gsub("[()@']", "",name))

# ingest of numbers from Auto 2

car_templates <- list(c("$(name2) has fuel economy = $(mpg) mpg","test-7"))
# need from allen, the shorthand list of units
tnum.ingestDataFrame(df = Auto2,templates = car_templates)
# success

car_templates2 <- list(c("$(name2) has mass = $(weight) lb","test-6"))

tnum.ingestDataFrame(df = Auto2, templates = car_templates2)

car_templatres_All <- list(c("$(name2) has mass = $(weight) lb","test-6"),
                           c("$(name2) has fuel economy = $(mpg) mpg","test-7"))

# examples for deletion by query
#tnum.deleteByQuery(query = "* has weight")

# OTHER NOTES #

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
