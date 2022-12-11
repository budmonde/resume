\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}
\LoadClass[10pt]{article}

% Pazo font-family
\RequirePackage[sc]{mathpazo}
% Set paper margins
\RequirePackage{geometry}
\geometry{
    bmargin=2.25cm,
    tmargin=2.25cm,
    lmargin=2.25cm,
    rmargin=2.25cm
}
% Set paragraph indent and spacing
\setlength{\parindent}{0em}
% Disable section numbering
\setcounter{secnumdepth}{0}
% Disable page numbering
\pagenumbering{gobble}
% Customize itemize environments
\RequirePackage{enumitem}
\setlist[itemize]{label={},leftmargin=*,nosep}
% Configure area environment
\newenvironment{area}[1]{
    { \large\bfseries #1 }
    \vspace{-0.5em}\\
    \separator 
    \begin{itemize}[itemsep=10pt]
} {
    \end{itemize}
    \vspace{1.5em}
}

% Configure \maketitle command
\newcommand*{\email}[1]{\gdef\@email{#1}}
\newcommand*{\@email}{your@email.here}
\newcommand*{\github}[1]{\gdef\@github{#1}}
\newcommand*{\@github}{github_account}
\newcommand*{\phone}[1]{\gdef\@phone{#1}}
\newcommand*{\@phone}{(123) 456-7890}
\newcommand*{\website}[1]{\gdef\@website{#1}}
\newcommand*{\@website}{https://your.website.here}
\newcommand*{\separator}{\rule{\linewidth}{0.4pt}}
\renewcommand*{\maketitle}{
{\LARGE\bfseries \@author}\par
\separator
\begin{flushleft}
\texttt{\@email} \hfill \texttt{https://github.com/\@github/}\linebreak
\texttt{\@phone} \hfill \texttt{\@website}
\end{flushleft}
\vspace{0.25em}
}

\endinput