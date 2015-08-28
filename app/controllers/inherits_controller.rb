class InheritsController < ApplicationController
  inherit_resources

  respond_to :json
  before_action :get_collection, only: :index
  before_action :get_resource, only: :show

  def create
    create! { redirect_to resource_url and return }
  end
  protected
    def get_resource
      @resource = resource
    end
    def get_collection
      @with_words = params[:with_words]
      @with_pairs = params[:with_pairs]

      @with_pictures = params[:with_pictures]

      @collection = collection
      if params[:without] && !params[:without].empty?
        @collection = @collection.where('id NOT IN (?)', params[:without].split(','))
      end
      #if params[:q]
       # @collection = @collection.ransack(params[:q])
      #end
      @collection = sort_and_paging @collection
    end
    def sort_and_paging(collection)
      if params[:sort]
        collection = collection.sorted(sort: params[:sort])
      end
      if params[:limit]
        collection = collection.limit(params[:limit])
      end
      collection
    end
end
