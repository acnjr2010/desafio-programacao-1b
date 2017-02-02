require 'rails_helper'

RSpec.describe InformationsController, type: :controller do
  describe "GET #index" do
    it "populate array informations" do
      file = FactoryGirl.create(:information)
      get :index

      expect(assigns(:informations)).to eq([file])
    end

    it "render the index view" do
      get :index

      expect(subject).to render_template(:index)
      expect(subject).to render_template("index")
    end

    it "does not render a different template" do
      get :index

      expect(subject).to_not render_template(:show)
      expect(subject).to_not render_template("show")
    end
  end

  describe "GET #show" do

    it 'assigns the requested file to @information' do
      file = FactoryGirl.create(:information)
      get :show, id: file

      expect(assigns(:information)).to eq(file)
    end

    it "render the show view" do
      get :show, id: FactoryGirl.create(:information)

      expect(subject).to render_template(:show)
      expect(subject).to render_template("show")
    end

    it "does not render a different template" do
      get :show, id: FactoryGirl.create(:information)

      expect(subject).to_not render_template(:create)
      expect(subject).to_not render_template("create")
    end
  end

  describe "POST #create" do
    context "with a valid attributes" do
      it "create a new file" do
        expect{
          post :create, information: FactoryGirl.attributes_for(:information)
        }.to change(Information, :count).by(1)
      end

      it "redirect to a view file" do
        post :create, information: FactoryGirl.attributes_for(:information)

        expect(response.content_type).to eq "text/html"
      end
    end

    context "with a invalid attributes" do
      it "does not save the new contact" do
        expect{
          post :create, information: FactoryGirl.attributes_for(:invalid_information)
        }.to_not change(Information,:count)
      end

      it "re-renders the new file" do
        post :create, information: FactoryGirl.attributes_for(:invalid_information)

        expect(subject).to render_template(:index)
        expect(subject).to render_template("index")
      end
    end
  end
end
