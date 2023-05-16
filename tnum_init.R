
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



# What customers and market could this software address?

# how best could we demo the sofware to people, where they would then be 
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
