class ChangesController < InheritsController

  protected
    def get_collection
      @collection = Dictionary.all + Word.all + Pair.all + Picture.all + Theme.all
      if params[:sort]
        dir = ''
        if params[:sort].end_with?('_asc')
          params[:sort].slice! '_asc'
          dir = 'asc'
        end
        if params[:sort].end_with?('_desc')
          params[:sort].slice! '_desc'
          dir = 'desc'
        end
        sym = params[:sort].to_sym

        if dir == 'desc'
          @collection = @collection.sort{ |a, b| b[sym] <=> a[sym] }
        else
          @collection = @collection.sort{ |a, b| a[sym] <=> b[sym] }
        end
      end
      if params[:from_date]
        @collection = @collection.select {|v| v[:updated_at] > params[:from_date]}
      end
      if params[:limit]
        @collection = @collection.take(params[:limit].to_i)
      end
    end
end