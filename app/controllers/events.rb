get '/events' do
  # http verb (get), we have our localhost URL ('/events')
  @events = Event.all
  # we make an ActiveRecord query
  erb :"/events/index"
  # we have an erb (view file) or we make a redirect
end

get '/events/:id' do
  @event = Event.find(params[:id])
  erb :"/events/show"
end

post '/events' do
  event = Event.find(params[:event_id])
  rsvp = Rsvp.create(event_id: params[:event_id],
                    first_name: params[:first_name],
                    last_name: params[:last_name],
                    email: params[:email])
  redirect "/events/#{event.id}/confirm"
end

get '/events/:id/confirm' do
  @event = Event.find(params[:id])
  erb :"/events/confirm"
end

