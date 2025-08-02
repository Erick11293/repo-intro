*Pasar a Stata 16

global periodos = "2004 2005 2006 2007 2008 2009"

cd "../data/raw/ENAHO"

foreach per of global periodos{
	
	display "`per'"
	
	local files : dir "`per'\" files "*.dta"
	
	foreach file of local files{
		
		
		
		u	"`per'\\`file'", clear
		
			if substr("`file'",-7,7) == "500.dta"{
				
				capture gen i524e1 = i524d1 
				capture gen i538e1 = i538d1
			}
		
			save, replace
		
		
		
	}
	
	
}
