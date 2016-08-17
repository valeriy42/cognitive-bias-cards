\documentclass[parskip]{scrartcl}
\usepackage[margin=1cm]{geometry}
\usepackage{tikz}
\usepackage{pifont}
\usepackage{graphicx}
\usepackage{color}
% \usepackage{helvet}
% \renewcommand{\familydefault}{\sfdefault}

\usepackage{libertine}
\renewcommand*\familydefault{\sfdefault}  %% Only if the base font of
                                %% the document is to be sans serif

\definecolor{decision}{RGB}{0,160,62}
\definecolor{social}{RGB}{0,135,203}
\definecolor{memory}{RGB}{255,162,0}

\pgfmathsetmacro{\cardwidth}{6.3}
\pgfmathsetmacro{\cardheight}{8.8}
\pgfmathsetmacro{\stripheight}{1.9}
\pgfmathsetmacro{\strippadding}{0.2}
\pgfmathsetmacro{\contentheight}{6.36}
\pgfmathsetmacro{\textpadding}{0.3}

\pgfmathsetmacro{\ruleheight}{0.1}
\newcommand{\stripfontsize}{\Large}
\newcommand{\textfontsize}{\large}

\newcommand{\stripcolor}{}
\newcommand{\striptext}{}
\newcommand{\stripnumber}{}
\newcommand{\descrtext}{}

\begin{document}
