Part 1:
1. Nodes are the variables/attributes that relate to the document. These
help to define things such as the passage, title, author, item, role, etc. 
This concept would arise when I explore XPath by marking up the text. 
This is how I identify certain aspects of the text, and it tells the 
This computer to identify it in the way I have marked up. The attached 
attributes help to specify the varibles to the computer on a more
in-depth level. The sequence is what you identify after inputing an
equation into XPath. I would come across this in Xpath while using the 
search bar, adn the sequence is the input that is provided, as a result 
search of the equation. Multiple sequences can appear, depending on
what the equation highlights. This is numerically tracked by the items bar.
The atomic values are the commands that tell the computer how to
interpret the equation. An example of when I would use this is the not()
command. This tells the computer to re-interpret the equation typed in 
a different format, other than literal.

2. The axis represents the family tree, and how one goes down it.
This is represented by the chronological order of '/body/text/div'.
The axis is represented through repeated slashes within the family tree,
that separate the differing nodes that lead the computer down the tree.
The predicate is represented by the commands that inform the computer
of the atomic values that influence the equation. For example, the equation
'distinct-values([string-join(//role,'-')])' contains the predicates
'distinct-values' and 'string-joint'. This informs the computer of 
aspects within the equation that specify how to identify the correct 
sequence.The syntacial difference is that an axis is highlighted by 
'/', while the predicate is highlighted by two words joined by '-'. 

3. The operator '!' asks the computer to highlight each individual sequence
where the 'count()' applies. It returns results of every sequence, accounted
for seperately. The operator '=>' asks the computer to return one sequence 
that totals up all items that are returned by the equation. Instead of 
showing multiple sequence lines, it returns one sequence line, with a 
singular numerical count of all items returned. 

Part 2:
1. The expression that will select lines that don't have '@n' attributes 
is '//l [not(@n)]'. The 'not()' function tells the computer to look for 
lines without '@n' attributes, and to select those.

2. The XPath that will tell you how many such lines their are is 
'count(//l [not(@n)])'. The 'count()' function tells the computer
to total up the applicable lines, and provide a numerical item count. 

3. I was struggling to find an expression for both speech scenes.
I captured one by inputing 'distinct-values([string-join(//sp,'Ghost')])',
in order to tell the computer the 'distinct-value' of the 'string-join'
in relation to 'Ghost being featured as a speaker. I have tried other
variations of this equation, however none have worked for me.

4. The XPath expression to find all speeches spoken by Ghost is
'//sp[speaker='Ghost']'. This returned 14 results, and is instructed to
detect just the speeches by beginning the equation with '//sp'.

5. The XPath expressions I used are '//ab[contains(.,'Hamlet')]'
and '//l[contains(.,'Hamlet')]' I was not sure how to combine them
to get 77, however I was able to individually search for each one 
on their own with the 'contains()' attribute.

6. I could not get this expression to work. I assumed my closest guess 
would be //distinct-values(//l[contains('Hamlet')]). I figured since we
are searching for the specific times Hamlet is mentioned, the 'contains()'
should be in the 'distinct-values'.

7. It is difficult for me to attempt this problem wihtout a proper
result from the last expression.

8. I would assume that 'sort' would come into play here, and based
off my last expression, I would suggest 'sort(//l[contains(a-z)])'. This
would indicate that the lines that contain a-z at the beginning to be
sorted. 

9. I would use the sort function here as well, and based off my
last expression, I would suggest 'sort(//l[contains(,)])'. This would 
specify for the lines that contain commas to be separated. 