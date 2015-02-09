# index, show // new, create // edit, update, delete

# GET : index (erb: show everything), show (erb: show one thing)
# GET : new (erb: show a form) , POST : create (no erb because we are working with database, post to database a new object // probably REDIRECT)
# GET : edit (erbn: show a form, but for updating) , POST: update (no erb // probably REDIRECT), delete (no erb // probably REDIRECT)

get '/' do
  @collections = Collection.all
  erb :index
end

get '/collections/:id' do
  @collection = Collection.find(params[:id])
  # SAVED FOR OUR VIEW
  # <% @collection.artists.each do |artist| %>
  # <%= artist.name %> #= means print it out, otherwise invisible ruby
  # <% end %>
  erb :"/collections/show"
end

get '/collections/:collection_id/artworks/:id' do
  @collection = Collection.find(params[:collection_id])
  @artwork = Artwork.find(params[:id])
  # SAVED FOR OUR VIEW
  # <img src="<%= @artwork.url %>"/>
  erb :"/artworks/show"
end

get '/artists/:id' do
  @artist = Artist.find(params[:id])
  erb :"/artists/show"
end

