NB. =========================================================
NB.%finexecbasicfinance.ijs - Basic Finexec addon
NB.- Script: ~addons/finance/finexecbasicfinance/finexecbasicfinance.ijs
NB.- Updated: 2022-06-07
NB.- Depend: ~addons/ide/jhs/sp.ijs'
NB.- Definitions: loaded to locale z
NB.-<hr>
NB.- For Qt,JHS and J Playground sessions.
NB.- Information about the Basic Finexec addon only.
NB.- Finexec addon scripts are NOT loaded.
NB.- Use path ~addons/finance/finexecbasicfinance/...
NB.-<hr>


NB. =========================================================
Note 'Using J Playground'
require '~addons/ide/jhs/sp.ijs' NB. For tutorials in Qt and JHS
require '~addons/finance/finexec/sp/sp.ijs' NB. For tutorials in J Playbround

openscript 'https://raw.githubusercontent.com/cdburke/simple/master/structural.ijs'
openscript 'https://raw.githubusercontent.com/WilliamSzuch/finance_finexec/master/basicfinance/simple.ijs'

openscript 'https://raw.githubusercontent.com/WilliamSzuch/finance_finexec/master/basicfinance/tutes/simple_interest_tut.ijs'
)


coclass 'z'


IFJPLAY =: IFQT = IFJHS  NB. J Playground session


load_sp =: 3 : 0
if. IFQT = 1 do. require '~addons/ide/jhs/sp.ijs'  end. 
if. IFJHS = 1 do. require '~addons/ide/jhs/sp.ijs' end.
if. IFJPLAY = 1 do. require '~addons/finance/finexecbasicfinance/sp/sp.ijs' end.
smoutput <'*** sp loaded ***'
)
load_sp ''


SESSION =: (IFJPLAY,IFQT,IFJHS) # 'J Playground';'Qt session';'JHS session'

NB. =========================================================
smoutput <'*** Running in a ',(,>SESSION),' ***'


NB. =========================================================
NB. Popups permissions 
NB. browse_jplay 'http://www.finexec.com.au'
NB. browse_jplay 'https://www.jsoftware.com'
NB. 
NB. browse_jplay 'addons/finance/finexecbasicfinance/basicfinance/docs/index.htm'
NB. ---------------------------------------------------------
browse_jplay =: {{2!:0 'open("',y,'")'}}


NB. =========================================================
NB. Open a script in the J Playground
NB. Modified from open in the J playground
NB. open_jplay '~addons/math/misc/bigpi.ijs'
NB. ---------------------------------------------------------
open_jplay =: 3 : 0
data =. fread  getscripts_j_ y
(2!:0) '{ ecmset(jgetstr("data")) }'
)


NB. =========================================================
NB. Show the script source for a file.
NB. In Qt, JHS and the J PLayground
NB. showscript '~addons/finance/finexec/basicfinance/simple.ijs'
NB. ---------------------------------------------------------
NB. J Playground
NB. showscript '~addons/math/misc/bigpi.ijs'
NB. ---------------------------------------------------------
showscript =: 3 : 0
if. IFQT = 1 do. open y end.
if. IFJHS = 1 do. edit y end.
if. IFJPLAY = 1 do. open_jplay y end.
)


NB. =========================================================
NB. Show the html,htm and gif files in a window.
NB. finexec_html 'finexec_lib.html'
NB. finexec_html 'basicfinance/docs/simple.htm'
NB. finexec_html 'basicfinance/eqs/simple_ijs.gif'
NB. ---------------------------------------------------------
finexec_html =: 3 : 0
if. IFQT = 1 do. browse_j_ 'file:///',jpath '~addons/finance/finexecbasicfinance/',y end.
if. IFJHS = 1 do.
L =. '<a href="http://127.0.0.1:65001/~addons/finance/finexecbasicfinance/',y,'"' ,'target="_blank">',y,'</a>'
jhtml '<div contenteditable="false"></span>',L end.
if. IFJPLAY = 1 do. browse_jplay '~addons/finance/finexecbasicfinance',y end.
)


NB. =========================================================
NB. Show Finexec website
NB. finexec ''
NB. ---------------------------------------------------------
finexec =: 3 : 0
if. IFQT =1 do. browse_j_ 'http://www.finexec.com.au' end. 
if. IFJHS =  1 do. L =. '<a href="http://www.finexec.com.au" target="_blank">Finexec</a>'
jhtml '<div contenteditable="false"></span>',L end.
if. IFJPLAY = 1 do. browse_jply 'http://www.finexec.com.au' end.
)


NB. =========================================================
NB. Show Jsoftware
NB. jsoftware ''
NB. ---------------------------------------------------------
jsoftware =: 3 : 0
if. IFQT =1 do. browse_j_ 'http://www.jsoftware.com' end.
if. IFJHS = 1 do. L =. '<a href="http://www.jsoftware.com" target="_blank">Finexec</a>'
jhtml '<div contenteditable="false"></span>',L end.
if. IFJPLAY = 1 do. browse_jply 'https://www.jsoftware.com' end.
)


NB. =========================================================
NB. Show the finexec_doc window.
NB. finexec_doc ''
NB. ---------------------------------------------------------
finexec_doc =: 3 : 0
finexec_html 'finexec_doc.html'
)


NB. =========================================================
NB. Finexec addon welcome message.
ADDON_MSG =:  < > LF cut 0 : 0
*** Welcome to Finexec ***
Finexec scripts are NOT loaded.
Load individual scripts as required for a task or project.
Always review the documemtation for a category,script and definition
from the library. 
)


NB. =========================================================
NB. Initial output on: load 'finance/finexec
smoutput  ADDON_MSG
smoutput <'Run the following sentences for information'
smoutput 'finexec ''''','                  NB. Finexec home'
smoutput 'finexec_tutorials ''''','        NB. List and run tutorials'


NB. =========================================================
NB. Tutorials: List and run
NB. =========================================================


NB. =========================================================
NB. Show a list and run the Finenxec tutorials.
NB. finexec_tutorials ''
finexec_tutorials =: 3 : 0
smoutput <'*** Introduction ***'
smoutput 'introduction_tut ''''','' 
smoutput <'*** Basic Finance ***'
smoutput 'simple_interest_tut ''''','' 
smoutput 'compound_interest_tut ''''','' 
smoutput 'cash_flow_approach_tut ''''','' 
)



NB. =========================================================
NB. introduction_tut ''
introduction_tut =: 3 : 0
spx_jsp_  '~addons/finance/finexec/introduction_tut.ijs'
)

NB. =========================================================
NB. Basic Finance Tutes
NB. =========================================================

NB. =========================================================
NB. cash_flow_approach_tut ''
cash_flow_approach_tut =: 3 : 0 
spx_jsp_ '~addons/finance/finexecbasicfinance/basicfinance/tutes/cash_flow_approach_tut.ijs'
)

NB. =========================================================
NB. simple_interest_tut ''
simple_interest_tut =: 3 : 0 
spx_jsp_ '~addons/finance/finexecbasicfinance/basicfinance/tutes/simple_interest_tut.ijs'
)

NB. =========================================================
NB. compound_interest_tut ''
compound_interest_tut =: 3 : 0 
spx_jsp_ '~addons/finance/finexecbasicfinance/basicfinance/tutes/compound_interest_tut.ijs'
)



NB. =========================================================
NB. Loading some category scripts
NB. =========================================================


NB. =========================================================
LOAD_MSG =: < >LF cut 0 : 0
Run the following sentences to load the scripts for a category
and experiment with the definitions.
Definitions loaded to the base locale.
)


smoutput LOAD_MSG
smoutput 'load_basicfinance ''''','       NB. Basic Finance'


NB. =========================================================
load_basicfinance =: 3 : 0
BF =. '~addons/finance/finexec/basicfinance/'
load BF,'compound.ijs'
load BF,'compoundv.ijs'  
load BF,'force.ijs'
load BF,'fundprojection.ijs'   
load BF,'fundprojection_a.ijs'
load BF,'lease.ijs'           
load BF,'loan.ijs'            
load BF,'loanschedule.ijs'    
load BF,'rba.ijs'             
load BF,'ruleof78.ijs'        
load BF,'simple.ijs'          
load BF,'timeline.ijs' 
smoutput <'Basic Finance loaded'
)

