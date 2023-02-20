# hima

hima is a simple Jekyll theme with the goal of being accessible to everyone, and follows [The A11Y Project's accessibility guidelines](https://www.a11yproject.com/checklist/).

[Theme Preview](https://brandoncardoso.github.io/hima)

![hima light preview](/preview-light.png)

![hima dark preview](/preview-dark.png)

## Installation

### Remote Theme Installation (for GitHub pages)

Add the following to your `Gemfile` to install the `jekyll-remote-theme` plugin:

```ruby
gem "jekyll-remote-theme"
```

Then in your `_config.yml`, set the theme, and add the plugin

```yaml
remote_theme: brandoncardoso/hima

plugins:
  - jekyll-remote-theme
```

Finally run `bundle install` to install gems


### Gem-based Theme Installation
Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "hima"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: hima
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hima

## Content

### Layouts

Refers to files within the `_layouts` directory, that define the markup for your theme.

  - `default.html` &mdash; The base layout that lays the foundation for subsequent layouts. The derived layouts inject their contents into this file at the line that says ` {{ content }} ` and are linked to this file via [FrontMatter](https://jekyllrb.com/docs/frontmatter/) declaration `layout: default`.
  - `home.html` &mdash; The layout for your landing-page / home-page / index-page. [[More Info.](#home-layout)]
  - `page.html` &mdash; The layout for your documents that contain FrontMatter, but are not posts.
  - `post.html` &mdash; The layout for your posts.
  - `archive.html` &mdash; The layout for the category/tag archive page.

#### Home Layout

`home.html` is a flexible HTML layout for the site's landing-page / home-page / index-page. It will inject the content before the **Posts** heading. The posts list will only appear if you have at least one valid post, or draft with `show_drafts` enabled on your site.

##### Variables
* `post_list_title` (string) - overrides the post list title.
* `post_list_limit` (int) - limits the number of posts on the home page

### Includes

  - `head.html` &mdash; Code-block that defines the `<head></head>` in *default* layout.
  - `custom-head.html` &mdash; Placeholder to allow users to add more metadata to `<head />`.
  - `header.html` &mdash; Defines the site's main header section. By default, pages with a defined `title` attribute will have links displayed here. See [Navigation Links](#navigation-links) to customize.
  - `google-analytics.html` &mdash; Inserts Google Analytics module (active only in production environment).
  - `footer.html` &mdash; Defines the site's footer section.
  - `social-list.html` &mdash; Defines how social media links are listed in the footer.
  - `social-icons/*.svg` &mdash; SVG markup components of supported social-icons.

### Sass

Refers to `.scss` files within the `_sass` directory that define the theme's styles.

  - `hima/colorschemes/auto.scss` &mdash; An adaptive colorscheme that switches between light and dark mode depending on your site visitors' preference. *Used by default.*
  - `hima/initialize.scss` &mdash; A component that defines the theme's *skin-agnostic* variable defaults and sass partials.
    It imports the following components (in the following order):
    - `hima/custom-variables.scss` &mdash; A hook that allows overriding variable defaults and mixins. (*Note: Cannot override styles*)
    - `hima/main.scss` &mdash; Style rules for the theme.
    - `hima/custom-styles.scss` &mdash; A hook that allows overriding styles defined above. (*Note: Cannot override variables*)

Refer to the [Color Schemes](#color-schemes) section for more details.

### Assets

Refers to various asset files within the `assets` directory.

  - `assets/css/style.scss` &mdash; Imports sass files from within the `_sass` directory and gets processed into the theme's stylesheet: `assets/css/styles.css`.
  - `assets/hima-social-icons.html` &mdash; Imports enabled social-media icon graphics and gets processed into a composite SVG file.

Refer to the [Social Networks](#social-networks) section for more details.

### Plugins

Hima comes with [`jekyll-seo-tag`](https://github.com/jekyll/jekyll-seo-tag) plugin pre-installed to make sure your website gets the most useful meta tags. See [usage](https://github.com/jekyll/jekyll-seo-tag#usage) for how to set it up.

## Usage

Add the following line to your `_config.yml` file:

```yaml
theme: hima
```

### Customizing

To override the default structure and style of hima, simply create a copy a copy of the files/layouts/includes you wish the modify in the same directory structure on your site's root.
e.g., to override the [`_includes/head.html `](_includes/head.html) file to specify a custom style path, create an `_includes` directory, copy `_includes/head.html` from the hima gem folder to `<yoursite>/_includes` and start editing that file.

You can override any Sass variables and mixins by redefining them in `_sass/hima/custom-variables.scss`. Custom CSS rules can be added in `_sass/hima/custom-styles.scss`.

### Color Schemes

To switch to another color scheme, simply declare it in your site's `_config.yml` file. For example, to use the dark color scheme, you would add the following:

```yaml
hima:
  colorscheme: dark
```

#### Available color Schemes

Name            | Description
--------------- | -----------
auto            | *Adaptive color scheme* using the light and dark color schemes.
dark            | Dark color scheme based on gruvbox.
light           | Light color scheme based on gruvbox.

*:bulb: Adaptive colorscheme switches between the "light" and "dark" variants based on the user's operating system  or browser setting via CSS Media Query [prefers-color-scheme](https://developer.mozilla.org/en-US/docs/Web/CSS/@media/prefers-color-scheme).*

### Navigation Links

You can set which pages you want to appear in the navigation area and configure their order.
For instance, to only shows links to your `about` and `contact` pages, add the following to your `_config.yml`:

```yaml
header_pages:
  - about.md
  - contact.md
```
### Extending the `<head>` Tag

You can add custom metadata to the `<head>` tag of your pages by creating `_includes/custom-head.html`.

### Author Metadata

Inside your `_config.yml` file, add informatin about your site's author.

```yaml
author:
  name: John Smith
  email: "john.smith@foobar.com"
```

### Social Networks

You can add links to the accounts you have on other sites, with respective icon as an SVG graphic, via the config file. The link data is sourced from the config key `hima.social`. It is a list of key-value pairs, each entry
corresponding to a link and rendered in the footer.

For example, to render links to Jekyll's GitHub repository and twitter account, you would add:

```yaml
hima:
  social:
    - { platform: github,  url: "https://github.com/jekyll/jekyll", label: "Jekyll's github repo" }
    - { platform: twitter, url: "https://twitter.com/jekyllrb" }
```
The `platform` key corresponds to the SVG file name in `/_includes/social-icons/`. You can include the optional `label` value which will be used for the link's aria-label (defaults to `platform`).

hima includes icons for the following platforms:

- `github`
- `instagram`
- `linkedin`

To render a link to a platform not listed above, your should first create an SVG file like`_includes/social-icons/<PLATFORM>.svg`). Then add an entry under `hima.social` in your config file. The social links are rendered in the order they appear in your config file.

### Enabling Google Analytics

To enable Google Analytics, add the following line to your `_config.yml`:

```yaml
  google_analytics_measurement_id: <YOUR MEASUREMENT ID>
```

Google Analytics will only appear in production, i.e., `JEKYLL_ENV=production`

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/brandoncardoso/hima. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](https://www.contributor-covenant.org/) code of conduct.

## Development

To set up your environment to develop this theme, run `bundle install`.

To test locally, run `./scripts/serve` to start a local Jekyll server, and open `http://localhost:4000` in your browser. As you make modifications, it will automatically regenerate and you should see the changes in your browser.

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
