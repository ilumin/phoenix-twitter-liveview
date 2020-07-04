defmodule TwitterLiveviewWeb.PostLive.PostComponent do
  use TwitterLiveviewWeb, :live_component

  def render(assigns) do
    ~L"""
    <div id="post-<%= @post.id %>" class="post">
      <div class="row">
        <div class="column column-10">
          <div class="post-avatar"></div>
        </div>
        <div class="column column-90 post-body">
          <strong>@<%= @post.username %></strong>
          <div class="content"><%= @post.body %></div>
        </div>
      </div>
      <div class="row">
        <div class="column">
          <i class="far fa-heart">likes</i>
          <%= @post.likes_count %>
        </div>
        <div class="column">
          <i class="far fa-retweet">retweet</i>
          <%= @post.reposts_count %>
        </div>
        <div class="column">
          <%= live_patch to: Routes.post_index_path(@socket, :edit, @post) do %>
            <i class="far fa-edit">edit</i>
          <% end %>
          <%= link to: "#", phx_click: "delete", phx_value_id: @post.id, data: [confirm: "Are you sure?"] do %>
            <i class="far fa-trash-alt">delete</i>
          <% end %>
        </div>
      </div>
    </div>
    """
  end
end
