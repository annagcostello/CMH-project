I first tagged the entire document by typing .+ into the find bar, checked dot matches all, 
and replaced it with <excerpt>\0</excerpt> so that the computer could identify the area 
in which I plan to mark up. 
I manually tagged the title.
For the chapters, I captured <p>([IVXLC]+)</p> in the find bar, and marked them with a 
chapter tag that told the computer that the roman numerals represent numbers: 
<sonnet no="\1">\1</sonnet>. 
I manually went in a tagged the separate chapter labels, including the 
title and subtitles. 
For the dated diary entries, I manually caputred them with a <dated-diary>\0<dated-diary> tag.
For the date and place, I typed in _[0-9].+_ into the find bar, and tagged
them with a <date-place>\0</date-place> tag. This find bar told the computer to capture all lines 
with underscores that began with a number, and everything else after it within those
underscores. 
For the paragraphs, I typed ^\n . into the find bar, and tagged them with <p>\0</p>. This 
tells the computer the anchor each new line, and capture up until the last period. 
For the italics, I caputured the italics into my find bar, _*text*_, and tagged it. 
