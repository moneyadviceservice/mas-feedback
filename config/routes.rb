Feedback::Engine.routes.draw do
  match 'feedbacks' => 'feedbacks#create', :as => :feedback

  match 'feedbacks/new' => 'feedbacks#new', :as => :new_feedback

end
