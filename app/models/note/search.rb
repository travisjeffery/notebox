class Note < ActiveRecord::Base
  module Search
    def self.included base
      base.extend ClassMethods
      base.send :include, Tire::Model::Search
      base.send :include, Tire::Model::Callbacks
    end

    module ClassMethods
      def search params
        tire.search(load: true, page: params[:page], per_page: 15) do
          query { string params[:query], default_operator: "AND" } if params[:query].present?
          sort { by :created_at, "desc" } if params[:query].blank?
        end
      end
    end
  end
end
