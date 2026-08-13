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
% Fix pipe symbol
\RequirePackage[T1]{fontenc}
% Configure area environment
\newenvironment{area}[1]{
    { \large\bfseries #1 }
    \vspace{-0.5em}\\
    \separator 
    \vspace{0.5em}
    \begin{itemize}[itemsep=5pt]
} {
    \end{itemize}
    \vspace{0.5em}
}
% Tabular environment for correctly formatted line items
\RequirePackage{tabularx}
\newcommand{\cventry}[2]{%
    \noindent
    \begin{tabularx}{\linewidth}{@{}Xr@{}}
    \begin{minipage}[t]{\linewidth}
    #1
    \end{minipage}
    & #2 \\
    \end{tabularx}
}


% Configure \maketitle command
\newcommand*{\email}[1]{\gdef\@email{#1}}
\newcommand*{\@email}{your@email.here}
\newcommand*{\phone}[1]{\gdef\@phone{#1}}
\newcommand*{\@phone}{(123) 456-7890}
\newcommand*{\website}[1]{\gdef\@website{#1}}
\newcommand*{\@website}{https://your.website.here}
\newcommand*{\github}[1]{\gdef\@github{#1}}
\newcommand*{\@github}{github_handle}
\newcommand*{\bsky}[1]{\gdef\@bsky{#1}}
\newcommand*{\@bsky}{bsky_handle}
\newcommand*{\linkedin}[1]{\gdef\@linkedin{#1}}
\newcommand*{\@linkedin}{linkedin_handle}
\newcommand*{\separator}{\rule{\linewidth}{0.4pt}}
\renewcommand*{\maketitle}{
{\LARGE\bfseries \@author}\par
\separator
\begin{flushleft}
\texttt{\@email} \hfill \texttt{https://www.linkedin.com/in/\@linkedin/}\linebreak
\texttt{\@website} \hfill \texttt{https://github.com/\@github/}
%\texttt{\@website} \hfill \texttt{@\@bsky.bsky.social}
\end{flushleft}
\vspace{0.25em}
}

\endinput
