# ActiveAdmin Pagedown

Formtastic Input to add the [Pagedown](http://code.google.com/p/pagedown/) Markdown editor for Active Admin.

https://github.com/mguymon/active_admin_pagedown

## Install

### Bundle the Gem

    gem 'activeadmin_pagedown'
    
### The Stylesheets

Add the import to active_admin.css.scss:

    @import "active_admin_pagedown/base"
    
### The Javascript

Add the following to active_admin.js.coffee to load the Pagedown javascript:

    //= require active_admin_pagedown/base
    
If you want to use the simple default intializer for Pagedown, add the following as well:

    //= require active_admin_pagedown/default
    
The default JS scans the page for `.wmd-input` tags and applies the Pagedown editor widget.

## Usage

Now you can use the `pagedown_text` input via the `:as` option:

    form do |f|
      f.inputs do
        f.input :body, :as => :pagedown_text
        f.actions
      end
    end
    
Then you should see in your ActiveAdmin form:
    
![Example Pagedown widget](https://raw.github.com/mguymon/active_admin_pagedown/master/pagedown.png)
    
## Caveats

* There is no image uploader. Pagedown on its own does not provide one, but it should be possible to add hooks to support it 
