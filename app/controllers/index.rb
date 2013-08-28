############## GET ###################

get '/' do
  @contacts = Contact.order('last_name').limit(10)
  erb :index
end

get '/contacts' do
   @contacts = Contact.all
   erb :index
end

get '/contact/new' do
  erb :new
end

get '/contact/:id' do
  @contact = Contact.find(params[:id])
  erb :show
end

get '/contacts/:id/edit' do
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

post '/contacts/:id' do
  @contact = Contact.find(params[:id])
  if @contact.update_attributes(params[:contact])
    redirect to("/contacts")
  else
    erb :show
  end
end

post '/contacts/:id/delete' do
  @contact = Contact.find(params[:id])
  @contact.destroy
  redirect('/contacts')
end



