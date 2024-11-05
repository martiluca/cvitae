\LoadClass{article}

%%% COLORS %%%
\usepackage{opencolor} % Required for using the Open Color palette

% Set main color
% Choose from https://yeun.github.io/open-color/
\newcommand{\maincolor}{oc-red-5} % Main color for the document

%%% PRESENTATION BOX %%%
%%% Title and contact info %%%
\usepackage{tikz} % Required for creating the plots
\usetikzlibrary{shapes, backgrounds, calc, fit, shapes.geometric}
\usepackage{graphicx} % Required for including images

% Command to create an introduction section with contact info
% Arguments:
% #1 - Name
% #2 - Profile picture
% #3 - Address
% #4 - Phone number
% #5 - Email
% #6 - Additional info (e.g., date of birth)
% #7 - GitHub or website
% #8 - Description
\newcommand{\introduction}[8]{
    \resizebox{\textwidth}{!}{
        \begin{tikzpicture}[x=0.75pt,y=0.75pt,yscale=-1,xscale=1]
            \node[inner sep=0pt] (content) {
                \begin{tikzpicture}[x=0.75pt,y=0.75pt,yscale=-1,xscale=1]
                    % Name and Surname
                    \draw (40,40) node [anchor=north west][inner sep=0.75pt] [font=\LARGE]  [align=left] {\textbf{\textcolor{\maincolor}{#1}}};

                    % Profile picture
                    \node at (55, 75) [anchor=north west, inner sep=0pt, outer sep=0pt] {
                        \begin{tikzpicture}
                            \clip (0,0) circle (47pt);
                            \node at (-63.5,63) {\includegraphics[width=95pt]{#2}};
                        \end{tikzpicture}
                    };
                    % Infos
                    \draw (251,90) node [anchor=north west][inner sep=0.75pt] [align=left] {\textcolor{\maincolor}{\faMapMarker} \hspace{11.3pt} #3};

                    \draw (250,110) node [anchor=north west][inner sep=0.75pt] [align=left] {\textcolor{\maincolor}{\faPhone} \hspace{11.2pt} #4};

                    \draw (250,130) node [anchor=north west][inner sep=0.75pt] [align=left] {\textcolor{\maincolor}{\faEnvelope} \hspace{10pt} \href{mailto:#5}{#5}};

                    \draw (251.5,150) node [anchor=north west][inner sep=0.75pt] [align=left] {\textcolor{\maincolor}{\faUser} \hspace{10pt} #6};

                    \draw (251,170) node [anchor=north west][inner sep=0.75pt] [align=left] {\textcolor{\maincolor}{\faGithub} \hspace{8.7pt} #7};

                    % Short presentation
                    \draw (40,225) node [anchor=north west][inner sep=0.75pt] [font=\small] [align=left] {
                        \parbox{460pt}{#8}
                    };
                \end{tikzpicture}
            };

            % Draw the self-adjusting box with rounded corners 
            \node[draw=\maincolor, thick, rounded corners, fit=(content), inner sep=10pt] {};
        \end{tikzpicture}
    }
}

%%%% HYPERLINKS %%%
\usepackage[hidelinks]{hyperref} % Required for creating hyperlinks

\hypersetup{
    pdfborder={0 0 0}, % No border around links
    pdfborderstyle={/S/U/W 0}, % No underline for links
    pdfhighlight=/N, % No highlight for links
}

%%% LAYOUT %%%
\usepackage{geometry} % Required for adjusting page dimensions and margins

\geometry{
    paper=a4paper, % Paper size, change to letterpaper for US letter size
    top=1.75cm, % Top margin
    bottom=1.75cm, % Bottom margin
    left=2cm, % Left margin
    right=2cm, % Right margin
    headheight=0.75cm, % Header height
    footskip=1cm, % Space from the bottom margin to the baseline of the footer
    headsep=0.5cm, % Space from the top margin to the baseline of the header
    %showframe, % Uncomment to show how the type block is set on the page
}

\pagestyle{empty} % Disable headers and footers

%%% FONTS %%%
\usepackage[utf8]{inputenc} % Required for inputting international characters
\usepackage[T1]{fontenc} % Output font encoding for international characters
\usepackage[default]{raleway} % Use the Raleway font
\usepackage{fontawesome} % Use FontAwesome icons

%%% CUSTOM SECTIONS %%%
% Command to output section title headings
% Arguments:
% #1 - Section text
\newcommand{\cvsect}[1]{
    \vspace{\baselineskip}
    \colorbox{\maincolor}{\textcolor{white}{\MakeUppercase{\textbf{#1}}}}\\
}

%%% ENTRY LIST %%%
\usepackage{longtable} % Required for tables that span multiple pages

% Remove default whitespace before and after longtable
\setlength{\LTpre}{0pt} % Remove default whitespace before longtable
\setlength{\LTpost}{0pt} % Remove default whitespace after longtable

% No spacing between table columns
\setlength{\tabcolsep}{0pt} % No spacing between table columns

% Environment to hold a new list of entries
\newenvironment{entrylist}{
    \begin{longtable}[H]{l l} % Begin longtable with two columns
}{
    \end{longtable} % End longtable
}

% Command for creating a general entry
% Arguments:
% #1 - Date(s)
% #2 - Entry heading
% #3 - Entry qualifier (e.g., location, status)
% #4 - Entry description
\newcommand{\entry}[4]{
    \parbox[t]{0.30\textwidth}{
        \hspace{12pt} #1 
    }%
    &\parbox[t]{0.70\textwidth}{
        \textbf{#2}
        \hfill
        {\small \textbf{\textcolor{\maincolor}{| #3}}}\\
        #4 
    }\\\\
}

% Command for creating a publication entry
% Arguments:
% #1 - Date(s)
% #2 - Title of the publication
% #3 - Status of the publication
% #4 - Authors of the publication
\newcommand{\pentry}[4]{
    \parbox[t]{0.30\textwidth}{
        \hspace{12pt} #1
    }%
    &\parbox[t]{0.70\textwidth}{
        \textbf{Title: \textit{#2}}\\
        {\small \textbf{\textcolor{black}{Status: #3}}}\\
        Authors: #4 
    }\\\\
}

% Command for creating a certificate entry
% Arguments:
% #1 - Date(s)
% #2 - Certificate title
% #3 - Location 
% #4 - Description 
\newcommand{\centry}[4]{
    \parbox[t]{0.30\textwidth}{
        \hspace{12pt} #1 
    }
    &\parbox[t]{0.70\textwidth}{
        \textbf{#2}\\
        {\small \textbf{\textcolor{black}{Location: #3}}}\\
        #4 
    }\\\\
}

% Command to output a separator slash between lists
% Example usage: '  /  '
\newcommand{\slashsep}{\hspace{3mm}/\hspace{3mm}}

%% OTHER PACKAGES %%
\usepackage{multicol} % Required for splitting text into multiple columns