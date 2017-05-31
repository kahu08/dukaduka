# partial variable will contain the html of the step we need to render (the next one unless there are errors that prevent to go to the next step);
# step variable will contain the element we are going to update;
# error variable will contain potential errors we want to render;
# replace_checkout_step method is defined in the assets directory into a proper one-page-checkout support file which will also contain other convenience methods


partial = "<%=j render :partial => 'form_wrapper', :format => :html, :locals => { :state => @order.state, :order => @order } %>"
step = ($ '#checkout_<%= @order.state %>')
error = "<%= flash[:error] %>"

replace_checkout_step(step, partial, error)
