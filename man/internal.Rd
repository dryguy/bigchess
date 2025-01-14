% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/internal.R
\name{internal}
\alias{internal}
\title{Compute possible moves for a generic chess piece along a single specified
rank, file, or diagonal}
\usage{
internal(vec, xp)
}
\arguments{
\item{vec}{A vector representing a row, column, or diagonal on the
chessboard.}

\item{xp}{The index of the piece in \code{vec}.}
}
\value{
A vector of indices in \code{vec} representing all possible moves for a
generic piece.
}
\description{
The \code{internal()} function calculates all possible moves for a generic chess
piece at position \code{xp} within a specific row, column, or diagonal
(represented by \code{vec}) on the chessboard. It assumes that the piece can move
like any piece (pawn, rook, knight, bishop, queen, king).
}
\details{
\code{internal()} is used by the \code{position.moves()} function. It
considers the positions of other pieces in the same row, column, or
diagonal to determine where the piece at position \code{xp} can move. The
function returns a vector of indices representing the possible moves for
the piece.
}
\examples{
# Compute possible moves for a generic piece at index 4 in a vector
internal(c(0, 0, 0, 1, 0, 0, 0), 4)

}
