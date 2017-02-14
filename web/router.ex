defmodule LearningRecordStoreApi.Router do
  use LearningRecordStoreApi.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/" do
    get "/", Absinthe.Plug.GraphiQL, schema: LearningRecordStoreApi.Schema
    post "/", Absinthe.Plug.GraphiQL, schema: LearningRecordStoreApi.Schema
    forward "/", Absinthe.Plug, schema: LearningRecordStoreApi.Schema
  end
end
