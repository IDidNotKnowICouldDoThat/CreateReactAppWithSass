#!/bin/sh 
# React App using CRA with Sass boilerplate instruction (without using CRA Eject command)
# Usage: $~ : bash CreateReactAppShellScript.sh name-of-app

# TODO if no argument/name is provided, use default create-react-app-TIMEOBJECT

# If not already globally installed….
# TODO IF npm install -g create-react-app

# One level above your project root folder (which folder will be created)
create-react-app $1
cd $1/
npm start

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
# First ensure we're in the src directory
cd src

mkdir styles
mkdir styles/css
mkdir styles/scss

mkdir styles/scss/base
mkdir styles/scss/components
mkdir styles/scss/layout
mkdir styles/scss/utilities

touch styles/scss/style.scss

touch styles/scss/base/_base.scss
touch styles/scss/base/_reset.scss
touch styles/scss/base/_themes.scss

touch styles/scss/components/_buttons.scss
touch styles/scss/components/_icons.scss
touch styles/scss/components/_images.scss

touch styles/scss/layout/_containers.scss
touch styles/scss/layout/_footer.scss
touch styles/scss/layout/_header.scss

touch styles/scss/utilities/_functions.scss
touch styles/scss/utilities/_helpers.scss
touch styles/scss/utilities/_mixins.scss
touch styles/scss/utilities/_variables.scss

touch styles/css/style.css

# Run the Shell/Bash script to populate the style files with template data 
# NOTE Shell script privilege must be set "chmod 700 scriptname" to execute

# Set up the imports in styles/scss/style.scss as follows:
/bin/cat <<EOM >styles/scss/style.scss
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
/bin/cat <<EOM >styles/scss/base/_base.scss
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

/bin/cat <<EOM >styles/scss/base/_reset.scss
/*! normalize.css v5.0.0 | MIT License | github.com/necolas/normalize.css */

/**
 * 1. Change the default font family in all browsers (opinionated).
 * 2. Correct the line height in all browsers.
 * 3. Prevent adjustments of font size after orientation changes in
 *    IE on Windows Phone and in iOS.
 */

/* Document
   ========================================================================== */

html {
  font-family: sans-serif; /* 1 */
  line-height: 1.15; /* 2 */
  -ms-text-size-adjust: 100%; /* 3 */
  -webkit-text-size-adjust: 100%; /* 3 */
}

/* Sections
   ========================================================================== */

/**
 * Remove the margin in all browsers (opinionated).
 */

body {
  margin: 0;
}

/**
 * Add the correct display in IE 9-.
 */

article,
aside,
footer,
header,
nav,
section {
  display: block;
}

/**
 * Correct the font size and margin on `h1` elements within `section` and
 * `article` contexts in Chrome, Firefox, and Safari.
 */

h1 {
  font-size: 2em;
  margin: 0;
}

/* Grouping content
   ========================================================================== */

/**
 * Add the correct display in IE 9-.
 * 1. Add the correct display in IE.
 */

figcaption,
figure,
main { /* 1 */
  display: block;
}

/**
 * Add the correct margin in IE 8.
 */

figure {
  margin: 1em 40px;
}

/**
 * 1. Add the correct box sizing in Firefox.
 * 2. Show the overflow in Edge and IE.
 */

hr {
  box-sizing: content-box; /* 1 */
  height: 0; /* 1 */
  overflow: visible; /* 2 */
}

/**
 * 1. Correct the inheritance and scaling of font size in all browsers.
 * 2. Correct the odd `em` font sizing in all browsers.
 */

pre {
  font-family: monospace, monospace; /* 1 */
  font-size: 1em; /* 2 */
}

/* Text-level semantics
   ========================================================================== */

/**
 * 1. Remove the gray background on active links in IE 10.
 * 2. Remove gaps in links underline in iOS 8+ and Safari 8+.
 */

a {
  background-color: transparent; /* 1 */
  -webkit-text-decoration-skip: objects; /* 2 */
}

/**
 * Remove the outline on focused links when they are also active or hovered
 * in all browsers (opinionated).
 */

a:active,
a:hover {
  outline-width: 0;
}

/**
 * 1. Remove the bottom border in Firefox 39-.
 * 2. Add the correct text decoration in Chrome, Edge, IE, Opera, and Safari.
 */

abbr[title] {
  border-bottom: none; /* 1 */
  text-decoration: underline; /* 2 */
  text-decoration: underline dotted; /* 2 */
}

/**
 * Prevent the duplicate application of `bolder` by the next rule in Safari 6.
 */

b,
strong {
  font-weight: inherit;
}

/**
 * Add the correct font weight in Chrome, Edge, and Safari.
 */

b,
strong {
  font-weight: bolder;
}

/**
 * 1. Correct the inheritance and scaling of font size in all browsers.
 * 2. Correct the odd `em` font sizing in all browsers.
 */

code,
kbd,
samp {
  font-family: monospace, monospace; /* 1 */
  font-size: 1em; /* 2 */
}

/**
 * Add the correct font style in Android 4.3-.
 */

dfn {
  font-style: italic;
}

/**
 * Add the correct background and color in IE 9-.
 */

mark {
  background-color: #ff0;
  color: #000;
}

/**
 * Add the correct font size in all browsers.
 */

small {
  font-size: 80%;
}

/**
 * Prevent `sub` and `sup` elements from affecting the line height in
 * all browsers.
 */

sub,
sup {
  font-size: 75%;
  line-height: 0;
  position: relative;
  vertical-align: baseline;
}

sub {
  bottom: -0.25em;
}

sup {
  top: -0.5em;
}

/* Embedded content
   ========================================================================== */

/**
 * Add the correct display in IE 9-.
 */

audio,
video {
  display: inline-block;
}

/**
 * Add the correct display in iOS 4-7.
 */

audio:not([controls]) {
  display: none;
  height: 0;
}

/**
 * Remove the border on images inside links in IE 10-.
 */

img {
  border-style: none;
}

/**
 * Hide the overflow in IE.
 */

svg:not(:root) {
  overflow: hidden;
}

/* Forms
   ========================================================================== */

/**
 * 1. Change the font styles in all browsers (opinionated).
 * 2. Remove the margin in Firefox and Safari.
 */

button,
input,
optgroup,
select,
textarea {
  font-family: sans-serif; /* 1 */
  font-size: 100%; /* 1 */
  line-height: 1.15; /* 1 */
  margin: 0; /* 2 */
}

/**
 * Show the overflow in IE.
 * 1. Show the overflow in Edge.
 */

button,
input { /* 1 */
  overflow: visible;
}

/**
 * Remove the inheritance of text transform in Edge, Firefox, and IE.
 * 1. Remove the inheritance of text transform in Firefox.
 */

button,
select { /* 1 */
  text-transform: none;
}

/**
 * 1. Prevent a WebKit bug where (2) destroys native `audio` and `video`
 *    controls in Android 4.
 * 2. Correct the inability to style clickable types in iOS and Safari.
 */

button,
html [type="button"], /* 1 */
[type="reset"],
[type="submit"] {
  -webkit-appearance: button; /* 2 */
}

/**
 * Remove the inner border and padding in Firefox.
 */

button::-moz-focus-inner,
[type="button"]::-moz-focus-inner,
[type="reset"]::-moz-focus-inner,
[type="submit"]::-moz-focus-inner {
  border-style: none;
  padding: 0;
}

/**
 * Restore the focus styles unset by the previous rule.
 */

button:-moz-focusring,
[type="button"]:-moz-focusring,
[type="reset"]:-moz-focusring,
[type="submit"]:-moz-focusring {
  outline: 1px dotted ButtonText;
}

/**
 * Change the border, margin, and padding in all browsers (opinionated).
 */

fieldset {
  border: 1px solid #c0c0c0;
  margin: 0 2px;
  padding: 0.35em 0.625em 0.75em;
}

/**
 * 1. Correct the text wrapping in Edge and IE.
 * 2. Correct the color inheritance from `fieldset` elements in IE.
 * 3. Remove the padding so developers are not caught out when they zero out
 *    `fieldset` elements in all browsers.
 */

legend {
  box-sizing: border-box; /* 1 */
  color: inherit; /* 2 */
  display: table; /* 1 */
  max-width: 100%; /* 1 */
  padding: 0; /* 3 */
  white-space: normal; /* 1 */
}

/**
 * 1. Add the correct display in IE 9-.
 * 2. Add the correct vertical alignment in Chrome, Firefox, and Opera.
 */

progress {
  display: inline-block; /* 1 */
  vertical-align: baseline; /* 2 */
}

/**
 * Remove the default vertical scrollbar in IE.
 */

textarea {
  overflow: auto;
}

/**
 * 1. Add the correct box sizing in IE 10-.
 * 2. Remove the padding in IE 10-.
 */

[type="checkbox"],
[type="radio"] {
  box-sizing: border-box; /* 1 */
  padding: 0; /* 2 */
}

/**
 * Correct the cursor style of increment and decrement buttons in Chrome.
 */

[type="number"]::-webkit-inner-spin-button,
[type="number"]::-webkit-outer-spin-button {
  height: auto;
}

/**
 * 1. Correct the odd appearance in Chrome and Safari.
 * 2. Correct the outline style in Safari.
 */

[type="search"] {
  -webkit-appearance: textfield; /* 1 */
  outline-offset: -2px; /* 2 */
}

/**
 * Remove the inner padding and cancel buttons in Chrome and Safari on macOS.
 */

[type="search"]::-webkit-search-cancel-button,
[type="search"]::-webkit-search-decoration {
  -webkit-appearance: none;
}

/**
 * 1. Correct the inability to style clickable types in iOS and Safari.
 * 2. Change font properties to `inherit` in Safari.
 */

::-webkit-file-upload-button {
  -webkit-appearance: button; /* 1 */
  font: inherit; /* 2 */
}

/* Interactive
   ========================================================================== */

/*
 * Add the correct display in IE 9-.
 * 1. Add the correct display in Edge, IE, and Firefox.
 */

details, /* 1 */
menu {
  display: block;
}

/*
 * Add the correct display in all browsers.
 */

summary {
  display: list-item;
}

/* Scripting
   ========================================================================== */

/**
 * Add the correct display in IE 9-.
 */

canvas {
  display: inline-block;
}

/**
 * Add the correct display in IE.
 */

template {
  display: none;
}

/* Hidden
   ========================================================================== */

/**
 * Add the correct display in IE 10-.
 */

[hidden] {
  display: none;
}

/**
 * List styles
 */
ul,ol {
  list-style-type: none;
  padding: 0;
  margin: 0;
}
EOM

/bin/cat <<EOM >styles/scss/base/_themes.scss
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
/bin/cat <<EOM >styles/scss/components/_buttons.scss
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

/bin/cat <<EOM >styles/scss/components/_icons.scss
// ======================================
//  Icon Styles
// ======================================
EOM

/bin/cat <<EOM >styles/scss/components/_images.scss
// ======================================
//  Image Styles
// ======================================
EOM

# Containers
/bin/cat <<EOM >styles/scss/layout/_containers.scss
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

# Set up the imports in styles/scss/ .scss as follows:
/bin/cat <<EOM >styles/scss/layout/_footer.scss
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

# Set up the imports in styles/scss/ .scss as follows:
/bin/cat <<EOM >styles/scss/layout/_header.scss
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
/bin/cat <<EOM >styles/scss/utilities/_functions.scss
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

/bin/cat <<EOM >styles/scss/utilities/_helpers.scss
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

/bin/cat <<EOM >styles/scss/utilities/_mixins.scss
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

/bin/cat <<EOM >styles/scss/utilities/_variables.scss
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
mkdir components
touch components/Header.js
touch components/Footer.js
touch components/Main.js

# Add boilerplate heading, footing, and main code components
/bin/cat <<EOM >components/Header.js
import React from 'react';

const Header = () => (
    <header className="header">
        <h1>Header</h1>
    </header>
);

export default Header;
EOM

/bin/cat <<EOM >components/Footer.js
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

/bin/cat <<EOM >components/Main.js
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
    </article>
);

export default Main;
EOM

# Start up SASS from the root directory (now that it’s in package.json)
npm start sass

# The above command should start the server and sass compiling in watch mode
# So you shouldn't need to do the next step in the directions
# Start up the React web server in a separate Terminal window
# npm start

# echo all REMINDERS to the terminal so all steps are taken

echo "
# REMINDER Remove everything but containing div below return() in App.js
# REMINDER Remove imports for app.css (import './App.css';) and logo.svg in App.js

# REMINDER Edit package.json to include the SASS watch command in scripts
    \"sass\" : \"sass --watch src/styles/scss:src/styles/css\"

# REMINDER Edit .gitignore to ignore sass-cache
#sass-cache
.sass-cache

# REMINDER Add imports in App.js TODO

# REMINDER Edit directory and filename reference in index.js
import './styles/css/style.css';

# REMINDER Navigate to http:#localhost:3000/ or http:#localhost:3000/webpack-dev-server for more info
"