
# Load the optparse library
library(optparse)

# Define the command-line argument
option_list <- list(
  make_option(c("-m", "--message"), type="character", default="Hello, world!", help="Message to print [default: %default]"),
  make_option(c("-s", "--secondparam"), type="character", default="this is another parameter!",
              help="Enter Second Param [default: %default2]")
)

# Create the parser
opt_parser <- OptionParser(option_list=option_list)
opt <- parse_args(opt_parser)

# Print the message
cat(opt$message, "\n")
cat(opt$secondparam, "\n")

# Define output directory and file
output_dir <- "../results"
output_file <- file.path(output_dir, "results.txt")

# Create results directory if it doesn't exist
if (!dir.exists(output_dir)) {
  dir.create(output_dir, recursive = TRUE)
}

# Write message to the output file
write(opt$message, file = output_file)

# Print confirmation message
cat("Message saved to", output_file, "\n")