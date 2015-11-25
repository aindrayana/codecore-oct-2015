require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  def valid_attributes(new_attributes = {})
    {
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      email: Faker::Internet.email,
      password: Faker::Internet.password
    }.merge(new_attributes)
  end

  describe "#new" do
    it "creates an instrance variable with new user object" do
      get :new
      # this tests that there is an instance variable named @user that is a new object of the User class
      expect(assigns(:user)).to be_a_new(User)
      #from here go to routes, then users_controller def new
    end
    it "renders the new template" do
      get :new
      expect(response).to render_template(:new)
      #to render new template, we just create a new.html.erb file inside views/users
    end
  end

  describe "#create" do
    # context is the same meaning as describe, but usually used on nested describe
    context "with valid params" do
      it "creates the user in the database" do
        # first we check if user table is empty before create
        count_before = User.count
        # create request
        # putting inside hash {user:  will make the params into standard rails params
        # otherwise it will rspec will tell param is missing or the value is empty: user
        post(:create, {user: valid_attributes})
        # post :create, valid_attributes
        count_after = User.count
        expect(count_after - count_before).to eq(1)
        #then go to routes add :create, then go to user_controller def create

        # this line is the shorter version of the lines above
        # expect do
        #   post(:create, {user: valid_attributes})
        # end.do change {User.count}.by(1)

      end

      it "redirects to the home page" do
        post(:create, {user: valid_attributes})
        expect(response).to redirect_to(root_path)

        # then go to routes and add root_path (root "users#new")
        # test if it success:
        # rspec spec/controllers/users_controller_spec.rb:50
      end

      it "sets a flash message" do
        post(:create, {user: valid_attributes})
        expect(flash[:notice]).to be
        #it expect flash[:notice], create it in users_controller -> redirect_to root_path, notice: "account created"
      end

    end

    context "with invalid params" do
      it "doesn't create a user in the database" do
        count_before = User.count
        post :create, user: valid_attributes({email: nil})

        count_after = User.count
        expect(count_after).to eq(count_before)
      end

      it "renders the new template" do
        post :create, user: valid_attributes({email: nil})
        expect(response).to render_template(:new)
      end
    end
  end


end
