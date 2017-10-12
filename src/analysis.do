//----------------------------------------------------------------------------//
//
// Paper: 
//
// do.file: analysis
//
// Author(s):
//
//----------------------------------------------------------------------------//

//----------------------------------------------------------------------------//
// Shortcuts
//----------------------------------------------------------------------------//

global person = ""

if "$person"=="" global path /path/to/main_paper


//----------------------------------------------------------------------------//
// Preface
//----------------------------------------------------------------------------//

clear all
set more off
cap log close

cd "$path"

log using "output/analysis.log"

use "output/data.dta", clear


//----------------------------------------------------------------------------//
// Main
//----------------------------------------------------------------------------//

// Tables
	do "src/sub/analysis_tables.do"
// Figures
	do "src/sub/analysis_figures.do"
// Regressions
	do "src/sub/analysis_regressions.do"

log close
