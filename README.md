# Dropzonejs::Rails4

Integrate [Matias Meno's Dropzone](http://www.dropzonejs.com/) awesome file upload JS library right into the Asset pipeline of your Rails apps.

## Installation and usage

First add `dropzonejs-rails4` to your Gemfile and, as you already know, `bundle` it and then restart your Rails app:

```ruby
# On your Gemfile
gem 'dropzonejs-rails4'
```

```bash
$ bundle install
```

After that, you need to make `dropzone.js` available on your pages. To do that, you can add it to your `application.js` file, like this:

```javascript
//= require dropzonejs/dropzone
```

And if you would like to use one of the styles bundled with Dropzone, add to your `application.css`:
```scss
*= require dropzonejs/dropzone/basic
```
or
```scss
*= require dropzonejs/dropzone/dropzone
```

And that, add code to view

The typical way of using dropzone is by creating a form element with the class dropzone
```
<form action="/file-upload" class="dropzone" id="my-awesome-dropzone"></form>

```
Alternatively you can create dropzones programmaticaly (even on non form elements) by instantiating the Dropzone class

html
```
<form action="/file-upload" class="dropzone">
  <div class="fallback">
    <input name="file" type="file" multiple />
  </div>
</form>

```
 javascript
```
// Dropzone class:
var myDropzone = new Dropzone("div#myId", { url: "/file/post"});
```
or if you use jQuery, you can use the jQuery plugin Dropzone ships with:
```
// jQuery
$("div#myId").dropzone({ url: "/file/post" });
```


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
