 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/foreign_courses", type: :request do
  
  # ForeignCourse. As you add validations to ForeignCourse, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      ForeignCourse.create! valid_attributes
      get foreign_courses_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      foreign_course = ForeignCourse.create! valid_attributes
      get foreign_course_url(foreign_course)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_foreign_course_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      foreign_course = ForeignCourse.create! valid_attributes
      get edit_foreign_course_url(foreign_course)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new ForeignCourse" do
        expect {
          post foreign_courses_url, params: { foreign_course: valid_attributes }
        }.to change(ForeignCourse, :count).by(1)
      end

      it "redirects to the created foreign_course" do
        post foreign_courses_url, params: { foreign_course: valid_attributes }
        expect(response).to redirect_to(foreign_course_url(ForeignCourse.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new ForeignCourse" do
        expect {
          post foreign_courses_url, params: { foreign_course: invalid_attributes }
        }.to change(ForeignCourse, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post foreign_courses_url, params: { foreign_course: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested foreign_course" do
        foreign_course = ForeignCourse.create! valid_attributes
        patch foreign_course_url(foreign_course), params: { foreign_course: new_attributes }
        foreign_course.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the foreign_course" do
        foreign_course = ForeignCourse.create! valid_attributes
        patch foreign_course_url(foreign_course), params: { foreign_course: new_attributes }
        foreign_course.reload
        expect(response).to redirect_to(foreign_course_url(foreign_course))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        foreign_course = ForeignCourse.create! valid_attributes
        patch foreign_course_url(foreign_course), params: { foreign_course: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested foreign_course" do
      foreign_course = ForeignCourse.create! valid_attributes
      expect {
        delete foreign_course_url(foreign_course)
      }.to change(ForeignCourse, :count).by(-1)
    end

    it "redirects to the foreign_courses list" do
      foreign_course = ForeignCourse.create! valid_attributes
      delete foreign_course_url(foreign_course)
      expect(response).to redirect_to(foreign_courses_url)
    end
  end
end
