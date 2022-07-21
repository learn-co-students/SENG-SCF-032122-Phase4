class ProductionSerializer < ActiveModel::Serializer
  attributes :title, :genre, :description, :image, :budget, :ongoing

  has_many :production_roles
  has_many :users

  def budget
    object.budget.to_s(:currency)
  end 

  def ongoing
    object.ongoing ? "Actively Showing" : "Not Showing"
  end 
end
