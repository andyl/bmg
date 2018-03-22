defmodule BmgWeb.Router do
  use BmgWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", BmgWeb do
    pipe_through :browser 

    get "/", PageController, :index
  end

  scope "/ztst", BmgWeb do
    pipe_through :browser

    get "/test1", ZtstController, :test1
  end

  # scope "/api", BmgWeb do
  #   pipe_through :api
  # end
end
