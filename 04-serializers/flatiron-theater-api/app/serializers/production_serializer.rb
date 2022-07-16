class ProductionSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre, :image, :budget, :trending

  has_many :tickets
  has_many :users

  def budget
    # "$#{sprintf('%.2f', object.budget)}"
    object.budget.to_s(:currency)
  end

  def trending
    object.tickets.count > 5 ? "this show is trending, keep it up!" : "buy a ticket, post to your IG and let's get this show trending!"
  end
end
