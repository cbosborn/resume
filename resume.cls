\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2016/10/16 Custom resume class]
\LoadClass{article}
\pagestyle{empty}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% packages %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{ragged2e}
\usepackage[a4paper,
	bindingoffset=0.0in,
	left=0.5in,
	right=0.5in,
	top=0.5in,
	bottom=0.5in,
	footskip=0.0in]{geometry}

\usepackage{xcolor}
\definecolor{linkblue}{HTML}{1AB2FF}

\usepackage{hyperref}
\hypersetup{
	colorlinks=true,
	urlcolor=linkblue,
}

\usepackage{enumitem}
\setitemize{itemsep=-0.1em}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% titleformats %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{titlesec}
\titleformat{\section}
	[hang]							% shape
	{\Large\scshape\raggedright}	% <format>
	{}								% <label>
	{0em}							% <sep>
	{}                 				% <before>
	[\titlerule]					% <after>
\titleformat{\subsection}
	[hang]
	{\large\scshape\raggedright}
	{}
	{0em}
	{}
	[]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% macros %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\name}[1]{
	\centerline{\Huge{#1}}
}

\newcommand{\contact}[3]{
	 \center{#1 -- #2 -- #3}
}

\newcommand{\sites}[8]{
	\vspace*{-0.2cm}
	\center{\href{#1}{#2} -- \href{#3}{#4} -- \href{#5}{#6} -- \href{#7}{#8}}
}

\newcommand{\jobtitle}[1]{
	\subsection{\LARGE{\textup{#1}}}
}

\newcommand{\employerdates}[2]{
	\subsection[#1]{#1 \hfill {\it #2}}
}

\newcommand{\pub}[3]{
	\item #1 -- \href{#2}{{\it #3}}
}

\newcommand{\note}[2]{
	\item \textbf{#1} #2
}

\newcommand{\foot}[1]{
	\flushleft{#1}
}