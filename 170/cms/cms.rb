require 'sinatra'
require 'sinatra/reloader'
require 'redcarpet'

configure do
  enable :sessions
  set :session_secret, 'super secret'
end

def render_markdown(text)
  markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
  markdown.render(text)
end

def load_file_content(file_path)
  if File.extname(file_path) == ".md"
    render_markdown(File.read(file_path))
  else
    headers["Content-Type"] = "text/plain"
    File.read(file_path)
  end
end

root = File.expand_path("..", __FILE__)

get "/" do
  @files = Dir.glob(root + "/data/*").map do |path|
    File.basename(path)
  end
  erb :index
end

get "/:filename" do
  file_path = root + "/data/" + params[:filename]

  if File.file?(file_path)
    load_file_content(file_path)
  else
    session[:message] = "#{params[:filename]} does not exist."
    redirect "/"
  end
end
