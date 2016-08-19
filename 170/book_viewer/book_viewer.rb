require "sinatra"
require "sinatra/reloader"
require "tilt/erubis"

get "/" do
  @title = "The Adventures of Sherlock Holmes"
  @chapters = File.readlines("data/toc.txt")
  erb :home
end

get "/chapter/1" do
  @title = "Chapter 1"
  @chapters = File.readlines("data/toc.txt")
  @text = File.read("data/chp1.txt")

  erb :chapter
end
