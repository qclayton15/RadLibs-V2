require "sinatra"

get "/" do
    erb(:Mainpage)
  end

get "/Uploadpage" do
    erb(:Uploadpage)
end

post "/upload" do

    File.open('uploads/' + params['myfile'][:filename], "w") do |f|
      f.write(params['myfile'][:tempfile].read)
    end
    return "The file was successfully uploaded!"
  end
  
message = []
get "/Storypage" do
    erb(:Storypage)
end