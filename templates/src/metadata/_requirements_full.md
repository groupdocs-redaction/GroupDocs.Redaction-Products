    - title_left: "<% "{blocks.requirements.title_left}" %>"
      content_left: |
        <% "{blocks.requirements.content_left.description}" %>
        * <% "{blocks.requirements.content_left.step_1}" %>
        * <% "{blocks.requirements.content_left.step_2}" %>
        * <% "{blocks.requirements.content_left.step_3}" %>
        * <% "{blocks.requirements.content_left.step_4}" %>
        
      title_right: "<% "{blocks.requirements.title_right}" %>"
      content_right: |
        * <% "{blocks.requirements.content_right.step_1}" %>
        * <% "{blocks.requirements.content_right.step_2}" %>
        * <% "{blocks.requirements.content_right.step_3}" %>
        * <% "{blocks.requirements.content_right.step_4}" %>
        * <% "{blocks.requirements.content_right.step_5}" %>
<% if (eq (get "PropertyUrl") "") %>        * <% "{blocks.requirements.content_right.step_6}" %><% else %>        <% end %>
