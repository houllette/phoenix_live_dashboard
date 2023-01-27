defmodule Phoenix.LiveDashboard.SecurityPage do
  @moduledoc false
  use Phoenix.LiveDashboard.PageBuilder

  @menu_title "Security"

  @impl true
  def menu_link(_, _) do
    {:ok, @menu_title}
  end

  @impl true
  def render_page(assigns) do
    card(
      title: "Sobelow",
      inner_title: "Findings",
      class: ["additional-class"],
      value: 0
    )
  end

end
