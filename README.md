# BigAdventureAndQSHints
Contains scripts to turn AdventureWorksLT in a big database and also the demo scripts from Query Store Hints blog post

Files:

# Make_big_adventureLT.sql:

This is a small change over the original script built by Adam Machanic (http://dataeducation.com/thinking-big-adventure/). This script was changed to work with AdventureWorksLT, the sample database we can provision in Azure SQL Database

This file also contains a view intended to replace the master..spt_Values table used on the original script. This view is the one you can locate on https://devio.wordpress.com/2018/06/03/generating-a-range-of-numbers-and-dates-in-t-sql/ 


# Demoprocedure.sql:

This is a demo stored procedure to illustrate the problem explained on the blog : https://www.red-gate.com/simple-talk/blogs/query-store-hints-powerful/ ‎


# CreateListPriceIndex.sql:

As explained on the blog post, this index is needed to exemplify the problem

# CausingAndSolvingTheProblem.sql:

This file contains an example with the procedure execution that will cause the problem. It also contains the query store statements to solve the problem and check the solution.

