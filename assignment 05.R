ptm <- proc.time()
DF <- read.csv("DRFAPGACBN.csv")
CSV_READ_TIME <- (proc.time() - ptm)
CSV_READ_TIME

class(DF)
typeof(DF)
str(DF)

if (!require("data.table")) install.packages("data.table")
library("data.table")

ptm <- proc.time()
DF <- fread("DRFAPGACBN.csv", header="auto", 
            data.table=FALSE)
FREAD_READ_TIME <- (proc.time() - ptm)
FREAD_READ_TIME
