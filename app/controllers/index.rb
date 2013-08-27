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

get '/contact/:id' do
  @contact = Contact.find(params[:id])
  erb :show
end

get '/contact/:id/edit' do
  @contact = Contact.find(params[:id])
  erb :edit
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

post '/contact/:id/edit' do

end



