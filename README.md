# Tents and Trees Puzzle Solver

This project contains an Answer Set Programming (ASP) solution for solving the Tents and Trees puzzle. It uses Clingo, an ASP solver, to find solutions based on given grid sizes, tree locations, and tent row/column constraints.

## Prerequisites

Before running the solver, ensure you have Ubuntu 22.04 installed. This guide assumes you start with a fresh installation of Ubuntu 22.04.

## Installation Steps

Step 1. Update Your System

First, update your system's package list and upgrade all your installed packages to their latest versions:

$ sudo apt update && sudo apt upgrade -y


Step 2: Install Clingo

Clingo is an ASP solver that will be used for solving the Tents and Trees puzzle. Install it by executing the following command:

$ sudo apt install gringo -y

Step 3: Install Git using the following command:

$ sudo apt install git -y

Step 4: Download the Project

Clone the project repository from GitHub:

$ git clone https://github.com/ingridguza3103/tents.git
$ cd tents

Step 5: Running the Solver

With Clingo installed and the project files downloaded, you can run the solver using the following command from the project directory:


$ clingo solver.lp input.lp


**** Understanding the Output*****

The output will include the coordinates of the tents that solve the puzzle, formatted as tent(X,Y) where X and Y are the row and column coordinates, respectively.

***** Customizing the Puzzle ******

To solve different instances of the puzzle, modify the input.lp file with different grid sizes, tree locations, and row/column tent constraints. The format is as follows:

size(NumRows,NumCols). %to define the grid size.
tree(X,Y). %for each tree's location.
rowsum(Row,Count). and colsum(Col,Count). %to specify the number of tents in each row and column.
After making changes, rerun the solver as described in step 4.
