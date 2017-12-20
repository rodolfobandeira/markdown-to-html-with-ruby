require 'redcarpet'

markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)
contents = File.read('_posts/about.md')
html = markdown.render(contents)

out_file = File.new('public_html/about.html', 'w')
out_file.puts(html)
out_file.close
