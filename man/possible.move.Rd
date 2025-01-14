% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/possible.move.R
\name{possible.move}
\alias{possible.move}
\title{Check the validity of a chess move}
\usage{
possible.move(position, r1, c1, r2, c2)
}
\arguments{
\item{position}{A matrix representing the current state of the chess board.}

\item{r1}{The rank (row) of the piece's current position.}

\item{c1}{The file (column) of the piece's current position.}

\item{r2}{The rank (row) of the piece's proposed new position.}

\item{c2}{The file (column) of the piece's proposed new position.}
}
\value{
A boolean value: TRUE if the move is valid, FALSE otherwise.
}
\description{
This function evaluates whether a proposed move for a chess piece from its
current position to a new position is valid based on the current state of the
chess board.
}
\details{
The function takes as input the current state of the chess board and
the initial and final positions of the piece. It returns a boolean value
indicating whether the proposed move is valid (TRUE) or not (FALSE).
}
\examples{
# Initialize a chess board
position <- position.start()
# Check if a move from (2, 4) to (4, 4) is possible
possible.move(position, r1 = 2, c1 = 4, r2 = 4, c2 = 4)
}
