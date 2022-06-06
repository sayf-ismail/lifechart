module LifechartsHelper
  def assign_lifechart_creator(lifechart, creator)
    lifechart.user = creator
    lifechart
  end
end
