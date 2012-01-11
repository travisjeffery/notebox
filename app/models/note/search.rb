class Note < ActiveRecord::Base
  module Search
    def self.included base
      base.extend ClassMethods
      base.send :include, Tire::Model::Search
      base.send :include, Tire::Model::Callbacks
    end

    module ClassMethods
      def search params
        tire.search(load: true) do
          query { string params[:query] } if params[:query].present?
        end
      end
    end
  end
end
