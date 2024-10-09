1.)Xpath can tell them apart due to the differing attributes connected to the 
seperate <div> elements. For example, the first <div> is attributed as
<div xml:id="sha-ham1"> 
The second <div> is attributed as <div xml:id="sha-ham103">
difference between the attribute is the ending numeral of the id.
2.)The XPath that would find just the acts is /TEI/text.
3.)The XPath that would find just the scenes is /TEI/text/body/div/head.
4.)The XPath that would find just Act III is //text/body/div[3]/div, and
then click on the results line labelled Act 3.
5.)The XPath for this is /TEI/text/body/div/div/sp/l/stage.
6.)The XPath for this is //sp//ab.
7.)The XPath for this is /TEI/text/body/div/div/stage, and there are 40 total.
8.)/TEI/text/body/div and /TEI/text/body/head are the parent elements for stage. 
