require("illuminaio", quietly = TRUE)

args <- commandArgs(trailingOnly = TRUE)

input = args[1]
output = args[2]

idat <- readIDAT(input)

save(idat, file = output)
