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
    nav_bar(
      items: [
        sobelow: [
          name: "Sobelow",
          render: fn -> sobelow_nav_item(assigns) end
        ],
        mix_audit: [
          name: "MixAudit",
          render: fn -> mix_audit_nav_item(assigns) end
        ]
      ]
    )
  end

  defp sobelow_nav_item(assigns) do
    row(
      components: [
        columns(
          components: [
            sobelow_info_row(assigns)
          ]
        )
      ]
    )
  end

  defp sobelow_info_row(_assigns) do
    row(
      components: [
        columns(
          components: [
            card(
              title: "Sobelow Findings",
              hint: "Findings counts are based on the defined confidence threshold",
              inner_title: "Critical",
              value: 0
            ),
            card(
              inner_title: "High",
              value: 0
            )
          ]
        ),
        columns(
          components: [
            card(
              inner_title: "Medium",
              value: 0
            ),
            card(
              inner_title: "Low",
              value: 0
            ),
            card(
              inner_title: "Informational",
              value: 0
            )
          ]
        )
      ]
    )
  end

  defp mix_audit_nav_item(_assigns) do
    card(
      inner_title: "Coming Soon",
      value: 0
    )
  end

end
