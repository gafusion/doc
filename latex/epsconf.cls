%%
%% This is file `epsconf.cls',
%% 
%% Copyright (C) 2003 by Maarten Sneep <sneep@nat.vu.nl>
%% Modified 2004 by B.Ph. van Milligen <boudewijn.vanmilligen@ciemat.es>
%% Modified 2005 by G. Vlad <vlad@frascati.enea.it>
%% 
%% This file may be distributed and/or modified under the conditions of
%% the LaTeX Project Public License, either version 1.2 of this license
%% or (at your option) any later version.  The latest version of this
%% license is in:
%% 
%%    http://www.latex-project.org/lppl.txt
%% 
%% and version 1.2 or later is part of all distributions of LaTeX version
%% 1999/12/01 or later.
%% 
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{epsconf}
    [2005/12/24 v1.1 Abstracts and paper class for the EPS 2006 Plasma Physics Conference]
\LoadClass[a4paper,12pt,notitlepage]{article}
\RequirePackage[T1]{fontenc}
\RequirePackage{mathptmx}
\RequirePackage{geometry}
%\RequirePackage{ifthen}
\geometry{a4paper,includemp=false,margin=2.5cm,noheadfoot}
\frenchspacing
\pagestyle{empty}
\setcounter{secnumdepth}{-2}
\newcommand{\epsconf@institute}{}
\newcommand{\institute}[1]{%
    \renewcommand{\epsconf@institute}{#1}%
}
%%
\renewcommand{\baselinestretch}{1.43}
%make section titles bold and 12 point, 2 blank lines before, 1 after 
\def\section{\@startsection {section}{1}{\z@}{1.0ex plus 1ex minus
 .2ex}{.2ex plus .2ex}{\normalsize\bf}}
%make subsection titles bold and 12 point, 1 blank line before, 1 after 
\def\subsection{\@startsection {subsection}{2}{\z@}{.2ex plus 1ex} 
{.2ex plus .2ex}{\normalsize\bf}}
%%
\def\@maketitle{%
{\centering%
 \let\footnote\thanks%
 {\large\textbf{\@title}\par}%
\vskip 0.5em%
 {\normalsize \lineskip .5em%
  \begin{tabular}[t]{c}%
    \@author
  \end{tabular}\par}%
  \vskip 0.3em%
  \textit{\epsconf@institute}\par%
}%
\par%
\vskip 1em\noindent%
}
\let\epsconf@oldmaketitle\maketitle
\def\maketitle{%
    \epsconf@oldmaketitle%
    \thispagestyle{empty}%
    \global\let\epsconf@institute\@empty%
    \global\let\institute\relax%
}
\setlength{\parindent}{1em}
\raggedbottom
\renewcommand{\footnoterule}{}
\AtEndDocument{%
\clearpage%
}
\endinput
%%
%% End of file `epsconf.cls'.
