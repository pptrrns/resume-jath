\ProvidesClass{resume}[]
\LoadClass[10pt, a4paper]{article}

\usepackage[]{parskip}              % Do not indent paragraphs
\usepackage{array}                  % required for boldface tabular columns
\usepackage{ifthen}
\usepackage[explicit]{titlesec}
\usepackage[normalem]{ulem}

\renewcommand{\ULthickness}{.75pt}

\pagestyle{empty}                  % Resumes do not need page numbers

%%%%% %%%%%% %%%%%

\def \addressSep {$\cdot$}         % Set default address seperator

\newcommand\name[1]{
    \MakeUppercase{\namesize \textsc{#1}}
    \nameskip \break
}

\newcommand\contact[4]{%
    \centerline{%
        \makebox[0pt][c]{%
            {#1}~\ \addressSep\ ~{#2}~\ \addressSep\ ~{#3}\ \addressSep\ ~{#4}
        }%
    }%
    \medskip
}

%%%%% %%%%%% %%%%%

\font\midheader = cmssbx12          % Section headers
\font\smallserif = cmss9            % For subsection headers

\titleformat{\section}              % Sectioning command formatted
             {\midheader}           % Font commands 
             {}                     % Label
             {0em}                  % Separation between label and title
             {{#1}~\sout{\hfill}}   % Before section title

\titlespacing{\section}{0pt}{\bigskipamount}{\medskipamount}

\titleformat{\subsection}           % Sectioning command formatted
             {\midheader}           % Font commands 
             {}                     % Label
             {0em}                  % Separation between label and title
             {\sout{\hfill}~{#1}}   % Before section title
\titlespacing{\subsection}{0pt}{\bigskipamount}{\medskipamount}

%%%%% %%%%%% %%%%%

\newenvironment{content}{
  \begin{list}{}{
    \setlength{\leftmargin}{1em}
  }
  \item[]
}{
  \end{list}    
}

%%%%% %%%%%% %%%%%
% Job environment

\newenvironment{position}[5]{
    {\bf #1} \enspace {\em #3}         \hfill         {#2}%
    \ifthenelse{\equal{#4}{}}{}{  % if prof + location not empty
        \\
        {#4}            \hfill          {\em #5}    % Stop a space
    }\smallskip
    \begin{list}{\raisebox{0.4ex}{\tiny$\bullet$}\hspace{-1pt}}{\leftmargin=0em}
      \itemsep -0.6em \vspace{-.75em}
}{
    \end{list}
    \sectionskip
}

%%%%% %%%%%% %%%%%
% Prize environment

\newcommand{\prize}[4][n]{
    {\bf #2} \ifthenelse{\equal{#1}{s}}{\enspace {#4}}{}  \hfill {#3}%
    \ifthenelse{\equal{#1}{n}}{
        \\
        {#4} % Stop a space
    }{} %
    % \sectionskip 
}

%%%%% %%%%%% %%%%%
% Project environment

\newenvironment{project}[2]{
    {\bf#1} ({#2})
    \begin{list}{\raisebox{0.4ex}{\tiny$\bullet$}\hspace{-1pt}}{\leftmargin=0em}
}{
    \end{list} 
    \medskip
}

%%%%% %%%%%% %%%%%
\def\namesize{\Large}
\def\nameskip{\smallskip}
\def\addressskip{\smallskip}
\def\sectionskip{\smallskip}
\def\sectionlineskip{\smallskip}

%%%%% %%%%%% %%%%%
% Better fonts

\font\tenb = cmb10
\font\tenbx = cmbx10