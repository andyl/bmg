require IEx

defmodule BmgWeb.LayoutView do
  @moduledoc """
  Helper functions for `layout/app.html`
  """
  use BmgWeb, :view

  @doc """
  Show a flash message wrapped in Bootstrap classes.
  Valid keys - `:info` and `:error`
  """
  def show_flash(conn, key) do
    if content = get_flash(conn, key) do
      "<p class='alert alert-#{key}' role='alert'>#{content}</p>"
      |> raw
    else
      ""
    end
  end

  @doc """
  Returns true if conn.request_path == path
  """
  def current_page?(conn, path) do
    conn.request_path == path
  end

  @doc """
  Generate a HTML link for the Bootstrap nav bar
  """
  def nav_link(conn, label, path) do
    state = if current_page?(conn, path), do: "active", else: ""
    """
    <li class="nav-item #{state}">
      <a class='nav-link' href='#{path}'>#{label}</a>
    </li>
    """
    |> raw
  end

  @doc """
  Shows controller, view and template - for debugging in dev
  """
  def footer_info(conn) do
    controller = conn.private.phoenix_controller
    view       = conn.private.phoenix_view
    template   = conn.private.phoenix_template
    [controller, view, template]
    |> Enum.map(&(to_string(&1)))
    |> Enum.map(&(String.replace(&1, "Elixir.", "")))
    |> Enum.map(&(String.replace(&1, "BmgWeb.", "")))
    |> Enum.join(" | ")
  end
end
