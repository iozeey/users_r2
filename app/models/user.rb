class User < ApplicationRecord
    def self.search(params)
        records = User.all
        records = records.where('gender ILIKE ?', "#{params[:gender]}%") if params[:gender].present?
        records = records.where('height ILIKE ?', "#{params[:height]}%")  if params[:height].present?
        order_by(records, params)
    end
end
