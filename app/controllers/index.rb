############## GET ###################

get '/' do
  @contacts = Contact.all
  erb :index
end

get '/contacts' do
   redirect('/')
end

get '/contact/new' do
  erb :new
end



############## POST ###################

post '/contacts' do
  # params[:contact].inspect
  @contact = Contact.new(params[:contact])
  if @contact.save
    redirect('/contacts')
  else
    erb :new
  end
end

