0 : 0 
NB. =========================================================
TITLE: Compound Interest (Effective Interest)
Contributor: William Szuch
Updated: 2022-05-27
spx_jsp_ '~addons/finance/finexec/basicfinance/tutes/compound_interest_tut.ijs'
)

NB. =========================================================
NB. Tutorial Sections
spx':'

NB. =========================================================
NB.spxsection:Defintions
0 : 0
The tutorial introduces the definitions for
effective interest rate (compound interest) calculations and how they 
can be applied.
)
showscript '~addons/finance/finexec/basicfinance/tutes/compound_interest_tut.ijs'
load '~addons/finance/finexec/basicfinance/compound.ijs'
finexec_html 'basicfinance/docs/compound.htm'
names ''

NB. =========================================================
NB.spxsection:Future value
0 : 0
Examples of future value calculations using effective rates.
It is assumed that the effective interest rate is constant
over the period
)
0 : 0
NB. =========================================================
Example 1
Calculate the future value of $1 in 1 year at
6.0% yearly effective interest rate.
)
w(0.06)
0 : 0
NB. =========================================================
Example 2
Calculate the future value of $100 in 3 years at
6.0% yearly effective interest rate.
)
100*(0.06)wt(3)
0 : 0
NB. =========================================================
Example 3
Calculate the final balance of $10,000 invested at a yearly effective 
interest rate of 5% for 1, 5, 10, 15 and 20 years.
)
10000*(0.05)wt(1 5 10 15 20)
0 : 0
NB. =========================================================
Example 4
Calculate the future value of $1,000 in 1 5 10 20 years at 
yearly effective interestr rates of 0%, 2%, 4% and 8%.
)
1000*(0 0.02 0.04 0.08)wt(1 5 10 20)
 
NB. =========================================================
NB.spxsection:Present value
0 : 0
NB. =========================================================
Example 1
Calculate the present value of $1,000 due in 1 5 10 20 years at 
yearly effective interest rates of 0%, 2%, 4% and 8%.
)
1000*(0 0.02 0.04 0.08)vt(1 5 10 20) 
0 : 0
NB. =========================================================
Example 2
Calculate the present value of $1,000 due in 23 and 90 days
assuming 365 days in a years at yearly effective interest 
rates of 0%, 2%, 4% and 8%.
)
1000*(0 0.02 0.04 0.08)vt(23 90 % 365)  
0 : 0
Example 3
Show a plot of the present value of $1,000 due in 0 to 20 years
at yearly effective interest rates of 0%, 2%, 4% and 8%.
)
require 'plot'
plot |: 1000*(0 0.02 0.04 0.08)vt(i. 21) 

NB.spxsection:End