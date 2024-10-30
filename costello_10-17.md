1. In order to avoid duplicates and concatenate the string element, I inputed:
 'distinct-values([string-join(//role,'-')])' 
The 'role' element captures all characters, and '-' hyphen-separates. 

2. In order to return the accurate number of elements that are middle parts, I inputed:
 'count(//[contains(.,'M')])'
The 'count()' element tells the computer to return a numerical value, and the 'contains()' element tells the computer to capture middle parts only.

3. In order to return all speeches by Rosencrantz, I inputed:
 '//sp[contains(@who,"Rosencrantz")]' 
The '//sp' element told the computer to focus on speech, and the 'contains()' element tells the computer to focus on Rosencrantz, specified by the '@who' attribute.

4. In order to return the length of the longest speech, I inputed:
 '//sp ! string-length(.)=>max()' 
The '//sp' element captures speech, and the addition of the '!' specifies a function being applied. The end of the XPath indicates the return of the longest speech's length, indicated by 'max'. 