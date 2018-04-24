require "sinatra"

get "/" do
    # @title = "Main Page"
    erb(:Mainpage)
  end

get "/Uploadpage" do
    # @title = "Welcome to the Upload Page"
    erb(:Uploadpage)
end

post "/upload" do

    File.open('uploads/' + params['myfile'][:filename], "w") do |f|
      f.write(params['myfile'][:tempfile].read)
    end
    return "The file was successfully uploaded!"
    puts "File uploaded"
  end
  

get "/Storypage" do
    # @title = "Welcome to the Story page"
    erb(:Storypage)
end