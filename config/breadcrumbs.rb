#crumb :root do
#  link "トップへ", "/"
#end

crumb :myapp do
  link "myapp", "/myapp"
  #parent :root
end

crumb :hoge do
  link "hoge", hoge_path
  parent :myapp
end

crumb :fuga do
  link "fuga", hoge_fuga_path
  parent :hoge
end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).
