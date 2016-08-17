\renewcommand{\stripcolor}{$category}%
\renewcommand{\striptext}{{\textsc{$name}}}%
\renewcommand{\stripnumber}{\#$ID}%
\renewcommand{\descrtext}{{$description}}%
\begin{tikzpicture}%
\draw[] (0,0)
rectangle (\cardwidth,\cardheight); 
% top filling for header
\fill[\stripcolor]
(\strippadding,\cardheight-\stripheight) rectangle
(\cardwidth-\strippadding,\cardheight-\strippadding)
% cognitive bias title
(2*\strippadding, \cardheight-\stripheight+0.5)node[text width =
(\cardwidth-3*\textpadding)*1cm, white,right,font=\stripfontsize] {\baselineskip=12pt\striptext\par}
(\cardwidth-1.4, \cardheight-0.6)node[white,right,font=\stripfontsize] {\stripnumber};
% description 
\node[minimum width=(\cardwidth-2*\strippadding)*1cm, minimum height=(\contentheight)*1cm, text
width=(\cardwidth-2*\strippadding -2*\textpadding)*1cm,below
right,inner sep=0, fill=black!10, text justified] at
(\strippadding,\cardheight-\stripheight-\textpadding) {\descrtext};
\end{tikzpicture}%
