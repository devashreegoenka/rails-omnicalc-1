Rails.application.routes.draw do
  get("/square/new", { :controller => "zebra", :action => "giraffe_1"}) 
  get("/square/results", { :controller => "zebra", :action => "giraffe_2"}) 
  get("/square_root/new", { :controller => "zebra", :action => "elephant_1"}) 
  get("/square_root/results", { :controller => "zebra", :action => "elephant_2"}) 
  get("/payment/new", { :controller => "zebra", :action => "lion_1"}) 
  get("/payment/results", { :controller => "zebra", :action => "lion_2"}) 
  get("random/new", { :controller => "zebra", :action => "panther_1"}) 
  get("random/results", { :controller => "zebra", :action => "panther_2"}) 
  get("/", { :controller => "zebra", :action => "home"}) 
end
