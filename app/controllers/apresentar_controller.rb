class ApresentarController < ApplicationController
  def dojo
    @graph = Koala::Facebook::API.new(current_user.oauth_token)
    @profile_image = @graph.get_picture("me")


    graphObject = @graph.put_connections("me/objects", "dojoteste-um:dojo", :object => '{"title":"Facebook Graph API"}' )
  
    
    atividadeObject = @graph.put_connections("me", 
      "dojoteste-um:apresentar", :dojo => graphObject["id"], :image => "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSvVyIJUucDP7XNTtObr74-Iraa0mZ-XCVZ6aB3C2Gp7_EyoeNegA"
    )
    
    @atividade = @graph.get_object(atividadeObject["id"])  
  end
end
