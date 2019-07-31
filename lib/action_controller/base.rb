module ActionController
  class Base < Metal
    include Callbacks
    include ImplicitRender
    include RequestForgeryProtection
    include Redirecting
    include ActionView::Rendering
  end
end
