0 : 0
NB. =========================================================
TITLE: Finexec: Introduction to Finexec Tutorials
Contributor: William Szuch
Updated: 2022-06-08
Finexec tutorials use the Simple Project(sp) manager and related tools.
For Finexec tutorials:
require 'finance/finexec'
require '~addons/ide/jhs/sp.ijs' NB. To run tutorials
spx_jsp_'~addons/finance/finexecbasicfinance/introduction_tut.ijs'
spx':'   NB. To show Tutorial Sections 
)

NB. =========================================================
NB. Tutorial Sections
spx':'

NB. =========================================================
NB.spxsection:Overview
0 : 0
Tutorials are executed in a J session and you 
can experiment with the definitions. The tutorials are an excellent 
way of learning how to use the definitions from 
Finexec to solve problems and an introduction to the 
J programming language.
A J session can be a Qt IDE or JHS window.
A tutorial may  have several windows open eg:
a) the tutorial script
b) script documentation
c) source script
Close any windows not required.
)

NB. =========================================================
NB.spxsection:View this script
0 : 0
Next we open the this script so it can be viewed as the
tutorial is stepped through.
Put the script in another window so you can read the
script as it is stepped through. Or just close the window.
Useful to show the scripts line numbers (Edit|View). 
)
showscript '~addons/finance/finexecbasicfinance/introduction_tut.ijs'

NB. =========================================================
NB.spxsection:Starting a Tutorial
0 : 0
Show the list of Finexec tutorials and run a tutorial
   finexec_tutorials ''
or run a specific tutorial
spx_jsp_ '~addons/finance/finexec/basicfinance/tutes/simple_interest_tut.ijs'

You can view a script by executing.
  showscript '~addons/finance/finexec/basicfinance/simple.ijs'
)


NB. =========================================================
NB.spxsection:Getting around a Tutorial
0 : 0
To get the most benefit from a tutorial you need to be able 
to move to different lines and sections.
There are several ways of getting around a tutorial.

1) Single line advance
Qt: ctrl+j
JHS: ctrl+. or click > in the menu 

The definition spx is used to move around a tutorial.

2) Advance to a new line
   spx ''

run line 1 to show the title of the tutorial (usually in line 1)
  spx 1

3) Execute several lines
  spx 1 16

4) Show current line number in the tutorial  
  spx 0
  
5) Show the tutorial sections
  spx':'
  
6) Jump to a section
spx':Overview'

7) End a tutorial
To end a tutorial use:
  spx':End'
This goes to the end of the script.
You can go back to a line or section:
   spx 1
   spx':Starting a Tutorial'
)

NB. =========================================================
NB.spxsection:Nouns - spxhelp
0 : 0
spx f         set SPXFILE
 crtl+.       JHS advance
 menu >       JHS advance
 ctrl+j       JQt advance
 spx''        advance
 spx 0        status
 spx n        run line n
 spx n m      run lines n through m
 spx':'       sections
NB. ---------------------------------------------------------
Also run for further tutorial examples:
 spx'~addons/ide/jhs/spx/canvas.ijs'
 spx'~addons/ide/jhs/spx/overview.ijs' 
 spx'~addons/ide/jhs/spx/plot.ijs'
 spx'~addons/ide/jhs/spx/spx.ijs' 
)

NB.spxsection:End