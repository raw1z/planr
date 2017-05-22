defmodule Planr.Router do
  use Planr.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  scope "/", Planr do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  forward "/api", Absinthe.Plug,
    schema: Planr.Schema

  forward "/graphiql", Absinthe.Plug.GraphiQL,
    schema: Planr.Schema
end
