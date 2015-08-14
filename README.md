# SUL Styles

[![Build Status](https://travis-ci.org/sul-dlss/sul_styles.svg?branch=master)](https://travis-ci.org/sul-dlss/sul_styles)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sul_styles'
```

And then execute:

    $ bundle install

Import the SUL Styles in your `app/assets/stylesheets/application.scss`.

    @import 'sul-styles';

## See the styles in your browser

After including the gem in your Rails project, you will be able to access the styleguide within your application at http://127.0.0.1:3000/styleguide. These routes are only available in the development and test environments.


## Check your local application for SUL Styles provided colors

```
$ bundle exec rake sul_styles:check_local_colors
The color #8c1515 is present in app/assets/stylesheets/sul-variables.scss. This color is provided by SUL Styles under the variable $color-cardinal-red.
```

## Styles supported

### SCSS Variables for SU Identity

Stanford University identity colors added as SCSS variables

### Common Date Formats

Common date formats that should be used in a variety of contexts

Date Format | Example
----------- | -------
`'%d-%b-%Y'` | 29-Jul-2015

## Contributing to the icon font

You can add icons to the icon font by doing the following:

1. Make sure to have the current icons (checkout `.fontcustom-manifest.json`) as `svg` files located in the `icon_svgs` directory. These cannot be stored in version control due to licensing issues.

1. Install [FontCustom](https://github.com/FontCustom/fontcustom/#installation)

1. Run `fontcustom compile`

The new font should be generated under `assets/fonts`

Styles should be automatically generated under `assets/stylesheets`

**Notes**

Make sure to make use of `_sul-icons-aliases.scss` for creating easy to use aliases.

Make sure to use [semantic versioning](http://semver.org/) when adding to or updating the icon fonts

Don't change the svg's filename (it should be the same as the source it came from)

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sul-dlss/sul_styles.
