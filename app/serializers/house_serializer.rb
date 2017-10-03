class HouseSerializer < ActiveModel::Serializer
  attributes :id, :address1, :address2, :street, :city, :state, :zipcode
end
