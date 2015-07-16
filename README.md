# SUL Styles

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sul_styles'
```

And then execute:

    $ bundle install

Import the SUL Styles in your `app/assets/stylesheets/application.scss`.

    @import 'sul-styles';


## Adding to the icon font

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

