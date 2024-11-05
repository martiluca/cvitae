# cvitae: a LaTeX CV Template

This repository contains a LaTeX template for creating a professional CV or resume. The template is designed to be clean, modern, and easy to customize.

## Features

- Customizable main color using the Open Color palette
- Sections for education, research experience, work experience, skills, certificates, and publications
- Self-adjusting presentation box with rounded corners and a profile picture
- Hyperlinks with no borders or highlights
- Multiple columns for skills
- FontAwesome icons for contact information
- Raleway font for a modern look

## Getting Started

### Prerequisites

- LaTeX distribution (e.g., TeX Live, MiKTeX)
- A text editor (e.g., Visual Studio Code, TeXShop)

### Usage

1. Open the `main.tex` file in your text editor.
2. Customize the personal information section:
    ```latex
    %%% YOUR DATA %%%
    % Name and Surname
    \newcommand{\name}{Jane}
    \newcommand{\surname}{Doe}
    % Address
    \newcommand{\address}{Chicago, IL 60614, USA}
    % Phone number
    \newcommand{\phone}{(+1) 555 1234567}
    % Email
    \newcommand{\email}{jane.doe@example.com}
    % Birthday
    \newcommand{\birthday}{Born February 17, 1992}
    % Website - here the website is github, if you want to change the icon you can do so in the cls file
    \newcommand{\website}{\href{https://github.com/janedoe}{github.com/janedoe}}
    % Description
    \newcommand{\whoami}{
        Passionate and results-driven Data Analyst with over 5 years of experience in transforming complex datasets into actionable insights. Skilled in leveraging Python, SQL, and Tableau to drive data-informed decision-making and optimize business strategies. Known for a collaborative mindset, analytical rigor, and a commitment to continuous learning, with a proven record of enhancing data processes and visualization to support strategic goals. Currently seeking opportunities to apply my expertise to contribute to impactful projects within a dynamic, forward-thinking organization.
    }
    ```
3. Add your profile picture to the project directory and specify its filename in the `\introduction` command:
    ```latex
    \introduction{\name\ \surname}{profile.jpeg}{\address}{\phone}{\email}{\birthday}{\website}{\whoami}
    ```
4. Customize the sections (education, research experience, work experience, skills, certificates, publications) with your own information.
5. Compile the `main.tex` file using your LaTeX distribution.

### Customization

- **Main Color**: Change the main color by setting the `\maincolor` variable in the `cvitae.cls` file to one of the colors from the [Open Color palette](https://yeun.github.io/open-color/):
    ```latex
    \newcommand{\maincolor}{oc-red-5} % Main color for the document
    ```

- **Fonts**: The template uses the Raleway font and FontAwesome icons. You can change the font by modifying the `\usepackage[default]{raleway}` line in the `cvitae.cls` file.

- **Sections**: Add or remove sections by modifying the `main.tex` file. Use the provided commands (`\cvsect`, `\entry`, `\pentry`, `\centry`) to create new sections and entries.

### Example

An example CV is provided in the `main.pdf` file. 

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- [Open Color](https://yeun.github.io/open-color/) for the color palette
- [FontAwesome](https://fontawesome.com/) for the icons
- [Raleway](https://fonts.google.com/specimen/Raleway) for the font
