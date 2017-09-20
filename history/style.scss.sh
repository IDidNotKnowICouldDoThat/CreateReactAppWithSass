#!/bin/sh
FILE="/path/to/file"

/bin/cat <<EOM >style.scss

// ======================================
//  Partial Imports
// ======================================

// Utilities
@import 'utilities/variables',
        'utilities/mixins',
        'utilities/functions',
        'utilities/helpers';

// Base Styles
@import 'base/reset',
        'base/base';

// Layout Styles
@import 'layout/containers',
        'layout/header',
        'layout/footer';

// Component Styles
@import 'components/buttons',
        'components/icons',
        'components/images';
EOM
