The reserved characters are < > & ' ", however I did not find when I searched the text.
To collapse multiple blank lines, I inputed \n+ and replaced it with \n. This told the
computer that multiple blank lines should be collapsed into a single blank line.
In order to remove multiple consecutive space characters, I inputed ^ + 
and replaced it with nothing. This tells the computer to remove space where "nothing"
should be there. 
To strip underscorcesaround the single punctuation marks, I inputed _+
and replaced it with nothing. 
To tag the emphasis, I inputed _(.)_ and replced it with <emph>\0</emph>.
To remove the lines that said "SCENE" "ACT DROP" and "TABLEAU" I inputed ^[^a-z\n]+$
and replaced it with nothing.
To replace the underscores with the capital letter inside, I inputed _[a-z]_
and replaced it with <title>\0</title>.
To tag all stage directions, I inputed the brackets and replaced them with <stage>\0</stage>
To tag all the act lines, I captured "FIRST ACT" in the find line, and replaced it with
<act>\0</act>
I then captured the string where "ACT" occurs and replaced it with <setting>\0</setting>