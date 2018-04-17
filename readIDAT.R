require("illuminaio", quietly = TRUE)
require("minfi", quietly = TRUE)

args <- commandArgs(trailingOnly = TRUE)

input1 = args[1]
input2 = args[2]
output = args[3]

idat_red <- readIDAT(input1)
idat_grn <- readIDAT(input2)

out <- RGChannelSet(Red = idat_red$Quants, Green = idat_grn$Quants)

save(out, file = output)
