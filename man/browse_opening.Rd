% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/browse_opening.R
\name{browse_opening}
\alias{browse_opening}
\title{Browse Opening}
\usage{
browse_opening(df, movetext = "")
}
\arguments{
\item{df}{A data frame with chess games imported using read.pgn().}

\item{movetext}{(default = "") A string indicating the move text.}
}
\value{
A data frame from the tree_move function and a plot from the
plot_tree_move function.
}
\description{
This function allows you to browse opening winning and drawing percentages by
table and barplot.
}
\details{
The function takes a data frame of chess games and a string
indicating the move text. It returns a data frame from the tree_move
function and a plot from the plot_tree_move function.

The default movetext argument is "", which is just the starting position.
The standard English piece notations are required: pawn = "P" (often not
used), knight = "N", bishop = "B", rook = "R", queen = "Q", and king = "K".
}
\examples{
f <- system.file("extdata", "Kasparov.gz", package = "bigchess")
con <- gzfile(f, encoding = "latin1")
df <- read.pgn(con, quiet = TRUE, ignore.other.games = TRUE,
               stat.moves = FALSE)
# Analyze best Kasparov openings:
bo <- browse_opening(subset(df, grepl("Kasparov", White)))
# Analyze 'best' answer to Kasparov Ruy Lopez:
bo <- browse_opening(subset(df, grepl("Kasparov", White)),
                     "1.e4 e5 2.Nf3 Nc6 3.Bb5")
# Analyze best answer to "1.e4 e5 2.Nf3" in aggregated data
browse_opening(FirstTwoMoves, "1.e4 e5 2.Nf3")

}
