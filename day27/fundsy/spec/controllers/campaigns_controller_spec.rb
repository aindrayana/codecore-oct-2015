require 'rails_helper'
# rest with: rspec spec/controllers/campaigns_controller_spec.rb
RSpec.describe CampaignsController, type: :controller do
  # let will define a variable names whatever you give to the let which is "user" in this case
  # The variable will be available in any test example within the same "describe" or "context".
  # This "let" is defined in the top level describe which makes it available for all examples.
  # 'let' will only invoke the block you give it when you call the variable.
  # if you use 'let!' then it will automatically
  # def user
  #   @user ||= FactoryGirl.create(:user)
  # end

  let(:user) { FactoryGirl.create(:user)}

  describe "#new" do
    context "with user not signed in" do
      it "redirects to user sign up page" do
        get :new
        expect(response).to redirect_to(new_user_path)
        #from here change routes, then CampaignsController add def new , ApplicationController add authenticate_user
      end
    end
    context "with user signed in" do
      #before do is kinda refactoring, it will execute before for each "it" so we dont have to write the same code for each "it"
      before do
        #GIVEN
        u = FactoryGirl.create(:user)
        request.session[:user_id] = u.id        # request.session used to emulate request to http

        #When:
        get :new
      end

      it "renders the new template" do
        #factory is a concept/ a way to easily create an object. we will use factories from this point.
        # add gem 'factory_girl_rails' and bundle then generate factories model

        #Then:
        expect(response).to render_template(:new)
        #create views/campaigns/new.html.erb
      end

      it "create a new campaign object assigned to 'campaign' instance variable" do
        # THEN:
        expect(assigns(:campaign)).to be_a_new(Campaign)
            # after that change CampaignsController to:
            # def new
            #   @campaign = Campaign.new
            # end
            # then run rspec spec/controllers/campaigns_controller_spec.rb:12

      end
    end
  end

  describe "#create" do
    context "with no user signed in" do
      it "redirects to the sign up page" do
        post :create, {campaign: {}}    # params don't matter here bc the controller
                                        # should redirect before making use of the campaign params
        expect(response).to redirect_to new_user_path
        # dont forget add the routes, and def create in CampaignsController
      end
    end

    context "With user signed in" do
      def valid_params
        FactoryGirl.attributes_for(:campaign)
      end
      before do
        # we have define 'let' on top so it refactor the line below
        # u = FactoryGirl.create(:user)
        # request.session[:user_id] = u.id
        request.session[:user_id] = user.id

      end

      context "with valid parameters" do
        it "creates a campaign record in the database" do
          #we create factory for campaign spec/factories/campaigns.rb
          #run FactoryGirl.create(:campaign)
          before_count = Campaign.count
          post :create, campaign: valid_params
          after_count = Campaign.count
          expect(after_count - before_count).to eq(1)

          # we add and change our def create on CampaignsController
          # def create
          #   campaign_params = params.require(:campaign).permit(:title, :goal, :description, :end_date)
          #   @campaign = Campaign.new campaign_params
          #   @campaign.save
          #   render nothing: true
          # end
        end

        it "associates the campaign with the signed in user" do
          post :create, campaign: valid_params
          expect(Campaign.last.user).to eq(user)
        end

        it "redirects to campaign show page" do
          post :create, campaign: valid_params
          expect(response).to redirect_to(campaign_path(Campaign.last))
        end
        # test this context : rspec spec/controllers/campaigns_controller_spec.rb:78
      end

      context "With invalid parameters" do
        def request_with_invalid_title
          post :create, campaign: valid_params.merge({title: nil})
        end

        it "doesn't create a campaign record in the database" do
          # before_count = Campaign.count
          # request_with_invalid_title
          # after_count = Campaign.count
          # expect(before_count).to eq(after_count)

          # the four lines above could be replace by this single line of code
          expect { request_with_invalid_title}.not_to change { Campaign.count }
        end

        it "renders the new template" do
          request_with_invalid_title
          expect(response).to render_template(:new)
        end
      end

    end

  end
end
