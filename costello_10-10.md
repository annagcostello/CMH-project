1.)The XPath for this is //div/div/sp[not(l)]
2.)The XPath for this is //div/div/sp[not(child::l or child::ab)]
3.)These expressions return two different results because the () yield a more specific result.
The sp refers to the speaker, while the descendant refers to the child element attached to sp.
Multiple results are returned for the first two, while the seccond two return one result.