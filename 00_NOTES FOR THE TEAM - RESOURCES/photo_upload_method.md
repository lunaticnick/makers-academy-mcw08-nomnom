While there are plenty of gems that solve file uploading pretty nicely (see https://www.ruby-toolbox.com/categories/rails_file_uploads for a list), rails has built-in helpers which make it easy to roll your own solution.

Use the ```file_field-form``` helper in your form, and rails handles the uploading for you:
```
<%= form_for @person do |f| %>
  <%= f.file_field :picture %>
<% end %>
```
You will have access in the controller to the uploaded file as follows:
```
uploaded_io = params[:person][:picture]
File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
  file.write(uploaded_io.read)
end```

It depends on the complexity of what you want to achieve, but this is totally sufficient for easy file uploading/downloading tasks. This example is taken from the rails guides, you can go there for further information: http://guides.rubyonrails.org/form_helpers.html#uploading-files
