#!/bin/sh 
# React App using CRA with Sass boilerplate instruction (without using CRA Eject command)
# Usage: $~ : bash CreateReactAppShellScript.sh name-of-app
# Note: name-of-app must be all lowercase according to Create-React-Apps documentation

# If no argument/name is provided, use default newApp
if [[ $1 ]]; then
echo "New app being generated named $1"
else
$1="newApp"
fi

# If not already globally installed….
# Depends on using oh-my-zshell syntax
INSTALLED=(create-react-app --version)
ERRNOTFOUND="zsh: command not found"
echo "Installed var $INSTALLED"
echo "Not found var $ERRNOTFOUND"
if [[ $INSTALLED == $ERRNOTFOUND ]]; then
echo "Install dependency: create-react-app"
npm install -g create-react-app
else
echo "Create react app installed with current version $INSTALLED"
fi

# One level above your project root folder (which folder will be created)
create-react-app $1
cd $1

# Remove App.css and logo.svg files
rm src/App.css
rm src/logo.svg 

# IF USING BOOTSTRAP ONLY
# 
# # IFF Using React with Bootstrap, then install react-bootstrap
# 
# npm install --save react-bootstrap bootstrap
# 
# # IFF Using bootstrap, include it in index.js file before the index.css import
# @import ‘bootstrap/dist/css/bootstrap.css’;
# 
# # IFF BS, import component names in App.js
# Import { Grid, Jumbotron } from ‘react-bootstrap’;
# 
# END OF BOOTSTRAP SECTION

# Create directory structure for styles/css and styles/scss. Starting in src/ directory
# Shell Script to Set up a Create React App (CRA) for SASS directories and files

mkdir src/styles
mkdir src/styles/css
mkdir src/styles/scss

mkdir src/styles/scss/base
mkdir src/styles/scss/components
mkdir src/styles/scss/layout
mkdir src/styles/scss/utilities

touch src/styles/scss/style.scss

touch src/styles/scss/base/_base.scss
touch src/styles/scss/base/_reset.scss
touch src/styles/scss/base/_themes.scss

touch src/styles/scss/components/_buttons.scss
touch src/styles/scss/components/_icons.scss
touch src/styles/scss/components/_images.scss

touch src/styles/scss/layout/_containers.scss
touch src/styles/scss/layout/_footer.scss
touch src/styles/scss/layout/_header.scss

touch src/styles/scss/utilities/_functions.scss
touch src/styles/scss/utilities/_helpers.scss
touch src/styles/scss/utilities/_mixins.scss
touch src/styles/scss/utilities/_variables.scss

touch src/styles/css/style.css

# Run the Shell/Bash script to populate the style files with template data 
# NOTE Shell script privilege must be set "chmod 700 scriptname" to execute

# Set up the imports in styles/scss/style.scss as follows:
/bin/cat <<EOM >src/styles/scss/style.scss
# ======================================
#  Partial Imports
# ======================================

# Utilities
@import 'utilities/variables',
        'utilities/mixins',
        'utilities/functions',
        'utilities/helpers';

# Base Styles
@import 'base/reset',
        'base/base';

# Layout Styles
@import 'layout/containers',
        'layout/header',
        'layout/footer';

# Component Styles
@import 'components/buttons',
        'components/icons',
        'components/images';
EOM

# Base
/bin/cat <<EOM >src/styles/scss/base/_base.scss
/* Base Styles ------------------------------------------- */

* {
  box-sizing: border-box;
}

body {
  margin: 0;
  color: $color-text-primary;
  font-family: $font-stack-primary;
}

ul {
  margin: 0;
  padding: 0;
  list-style-type: none;
}

a {
  color: $color-text-primary;
  text-decoration: none;
  &:hover {
    color: $color-text-secondary;
  }
}
EOM

/bin/cat <<EOM >src/styles/scss/base/_reset.scss
html,body,div,span,applet,object,iframe,h1,h2,h3,h4,h5,h6,p,blockquote,pre,a,abbr,acronym,address,big,cite,code,del,dfn,em,img,ins,kbd,q,s,samp,small,strike,strong,sub,sup,tt,var,b,u,i,center,dl,dt,dd,ol,ul,li,fieldset,form,label,legend,table,caption,tbody,tfoot,thead,tr,th,td,article,aside,canvas,details,embed,figure,figcaption,footer,header,hgroup,menu,nav,output,ruby,section,summary,time,mark,audio,video{border:0;font-size:100%;font:inherit;vertical-align:baseline;margin:0;padding:0}article,aside,details,figcaption,figure,footer,header,hgroup,menu,nav,section{display:block}body{line-height:1}ol,ul{list-style:none}blockquote,q{quotes:none}blockquote:before,blockquote:after,q:before,q:after{content:none}table{border-collapse:collapse;border-spacing:0}
EOM

/bin/cat <<EOM >src/styles/scss/base/_themes.scss
// ======================================
//  MAIN
//  Blue, Yellow, Dark Blue
// ======================================

$color-primary: #0b3c5d;
$color-primary-light: lighten($color-primary, 20%);
$color-primary-dark: darken($color-primary, 20%);

$color-secondary: #328cc1;
$color-secondary-light: lighten($color-secondary, 20%);
$color-secondary-dark: darken($color-secodary, 20%);

$color-accent: #d9b310;
$color-shade: mix($color-primary, $color-secondary, 50%);

$color-bg: #3cc47c;
$color-bg-light: lighten($color-bg);
$color-bg-dark: darken($color-bg);

$color-text: black;
$color-text-secondary: white;
EOM

# Components 
/bin/cat <<EOM >src/styles/scss/components/_buttons.scss
// ======================================
//  Button Styles
// ======================================

%btn {
  max-width: 50rem;
  font-weight: bold;
  margin: $gutter auto;
  padding: 0.75em 1.5em;
  border-radius: 0.35em;
  transition: opacity 0.3s;
  text-transform: uppercase;
  background-color: $color-secondary;

  &:hover {
    opacity: 0.8;
    background-color: $color-secondary-light;
  }
  &:active {
    opacity: initial;
    background-color: $color-secondary-light;    
  }
}
EOM

/bin/cat <<EOM >src/styles/scss/components/_icons.scss
// ======================================
//  Icon Styles
// ======================================
EOM

/bin/cat <<EOM >src/styles/scss/components/_images.scss
// ======================================
//  Image Styles
// ======================================
EOM

# Containers
/bin/cat <<EOM >src/styles/scss/layout/_containers.scss
// ======================================
//  Layout Container Styles
// ======================================

// Main content
.main {
  @include flexy($disp: flex, $wrap: wrap);
  @include center;
  background-color: $color-accent;

  @include mq('s') {
  }
  @include mq('m') {
  }
  @include mq('l') {
  }
}


.hero {
  background: linear-gradient($color-bg, $color-shade);
  color: $color-text-secondary;
  p {
    font-size: 1.2em;
  }
}

.banner {
  padding: 20px;
  margin: 50px 0;
  color: $color-text-primary;
  background-color: $color-primary-light;
}

.card {
  width: 100%;
  margin: $gutter;
  padding: 1.5em 1em;
  border-radius: 0.25em;
  background-color: $color-accent;
  border: 1px solid darken($color-shade, 20%);
  h1 {
    line-height: 1.25;
    margin: 0.35em 0 0;
    color: $color-text-primary;
  }
  @include mq('s') {
    flex: 1 per-line(2);
    justify-content: space-around;
  }
  @include mq('m') {
    flex-basis: per-line(3);
    justify-content: space-around;
  }
  @include mq('l') {
    flex-basis: per-line(4);
  }
}
EOM

/bin/cat <<EOM >src/styles/scss/layout/_footer.scss
// ======================================
//  Footer Styles
// ======================================

footer {
  @include flexy($disp: flex, $dir: column, $wrap: wrap);
  height: 100px;
  padding: 2em 0 0;
  margin-top: 1.5em;
  background-color: $color-shade;
}

.footer-col {
  padding: 1em;
  margin-top: 1em;
  min-width: 50px;
  min-height: 50px;
  background-color: $color-shade;
  @include mq('s') {
    flex: 1 per-line(2);
    justify-content: space-around;
  }
  @include mq('m') {
    flex-basis: per-line(4);
  }
  @include mq('l') {
    flex-basis: per-line(6);
  }
}

.footer-bottom {
  @include center;
  max-width: 100vw;
  padding-top: 2rem;
  color: $color-text-primary;
  a {
    color: $color-text-secondary;
  }
  a:hover {
    color: $color-shade;
  }
}
EOM

/bin/cat <<EOM >src/styles/scss/layout/_header.scss
// ======================================
//  Header Styles
// ======================================

.header {
  padding-top: 10px;
  min-height: 40px;
  h1 {
    color: $color-text-primary;
    margin-bottom: 0;
    font-size: 3.8em;
    letter-spacing: 1px;
    @include mq('s') {
      font-size: 3.4em;
    }
  }
  p {
    margin: 0;
    font-size: 1.25em;
    color: $color-accent;
  }
}
EOM

#Utilities 
/bin/cat <<EOM >src/styles/scss/utilities/_functions.scss
// ======================================
//  Functions
// ======================================

@function px-to-pc($target, $context: $max-width) {
  @return ($target / $context) * 100%;
}

@function per-line($items) {
  $g-pct: px-to-pc($gutter) * 2;
  $g-total: $items * $g-pct;
  @return (100% / $items) - $g-total;
}
EOM

/bin/cat <<EOM >src/styles/scss/utilities/_helpers.scss
// ======================================
//  Helper Placeholders
// ======================================

%clearfix {
  &::after {
    content: '';
    display: table;
    clear: both;
  }
}
EOM

/bin/cat <<EOM >src/styles/scss/utilities/_mixins.scss
// =========================================
//  Mixins
// =========================================

// Center containers
@mixin center {
  width: 90%;
  margin-left: auto;
  margin-right: auto;
}

// Flex container
@mixin flexy($disp: flex, $dir: null, $wrap: null, $justify: null) {
  display: $disp;
  flex-direction: $dir;
  flex-wrap: $wrap;
  justify-content: $justify;
}

// Media Queries
@mixin mq($break) {
  @if $break == 's' {
    @media (min-width: $break-s) {
      @content;
    }
  }
  @else if $break == 'm' {
    @media (min-width: $break-m) {
      @content;
    }    
  }
  @else if $break == 'l' {
    @media (min-width: $break-l) {
      @content;
    }    
  }
}
EOM

/bin/cat <<EOM >src/styles/scss/utilities/_variables.scss
// ======================================
//  Variables
// ======================================

$color-primary: #0b3c5d;
$color-primary-light: lighten($color-primary, 20%);
$color-primary-dark: darken($color-primary, 20%);

$color-secondary: #328cc1;
$color-secondary-light: lighten($color-secondary, 20%);
$color-secondary-dark: darken($color-secondary, 20%);

$color-accent: #d9b310;
$color-shade: mix($color-primary, $color-secondary, 50%);

$color-bg: #3cc47c;
$color-bg-light: lighten($color-bg, 20%);
$color-bg-dark: darken($color-bg, 20%);

$color-text-primary: black;
$color-text-secondary: white;

// Fonts
$font-stack-primary: 'Raleway', sans-serif;
$font-stack-secondary: 'Bree Serif', serif;

// Layout
$max-width: 1070px;
$gutter: 10px;

// Breakpoints
$break-s: 48em;
$break-m: 62em;
$break-l: 75em;
EOM

# Create React components folder and files. From the src directory
mkdir src/components
touch src/components/Header.js
touch src/components/Footer.js
touch src/components/Main.js

# Add boilerplate heading, footing, and main code components
/bin/cat <<EOM >src/components/Header.js
import React from 'react';

const Header = () => (
    <header className="header">
        <h1>Header</h1>
    </header>
);

export default Header;
EOM

/bin/cat <<EOM >src/components/Footer.js
import React from 'react';

const Footer = () => (
    <div className="footer">
        <div className="footer-col">Col 1</div>
        <div className="footer-col">Col 2</div>
        <div className="footer-bottom">
            <h2>Footer</h2>
            <p>&copy; 2017</p>
        </div>
    </div>
);

export default Footer;
EOM

/bin/cat <<EOM >src/components/Main.js
import React from 'react';

const Main = () => (
    <article className="main">
        <header>
            <h3>Main</h3>
        </header>
        <div className="hero">Hero</div>
        <div className="banner">Banner</div>
        <div className="card">Card</div>
        <h2>It is {new Date().toLocaleTimeString()}.</h2>
        <p># Navigate to http:#localhost:3000/ or http:#localhost:3000/webpack-dev-server for more info</p>
    </article>
);

export default Main;
EOM

# JS Entry point update to include components
/bin/cat <<EOM >src/App.js
import React, { Component } from 'react';
import Header from './components/Header';
import Main from './components/Main';
import Footer from './components/Footer';

class App extends Component {
  render() {
    return (
      <div className="wrapper">
        <Header />
        <Main />
        <Footer />
      </div>
    );
  }
}

export default App;
EOM

# Edit .gitignore to ignore sass-cache (>> to append, not re-write)
/bin/cat <<EOM >>.gitignore
#sass-cache
.sass-cache
EOM

# Correct css import in index.js (single > to overwrite the file)
/bin/cat <<EOM >src/index.js
import React from 'react';
import ReactDOM from 'react-dom';
import './styles/css/style.css';
import App from './App';
import registerServiceWorker from './registerServiceWorker';

ReactDOM.render(<App />, document.getElementById('root'));
registerServiceWorker();
EOM

# Edit package.json to include the SASS watch command in scripts
# "sass" : "sass --watch src/styles/scss:src/styles/css"
# Shell scripting optimized for oh-my-zshell linux terminal
BEFORE=('  "scripts": {
    "start": "react-scripts start",
')
AFTER=('  "scripts": {
    "sass" : "sass --watch src/styles/scss:src/styles/css",
    "start": "react-scripts start",
')
sed -i -e 's/$BEFORE/$AFTER/g' package.json

# Start up SASS from the root directory (now that it’s in package.json)
npm start sass
