block:
    - title_left: "<% "{blocks.example1.title_left}" %>"
      content_left: |
        <% "{blocks.example1.content_left.step_1}" %>
        <% if (eq (get "PropertyUrl") "") %><% "{blocks.example1.content_left.step_2}" %><% else %><% end %>

      title_right: "<% "{blocks.example1.title_right}" %>"
      content_right: |
        * <% "{blocks.example1.content_right.step_1}" %>
        * <% "{blocks.example1.content_right.step_2}" %>
<% if (eq (get "PropertyUrl") "") %>        * <% "{blocks.example1.content_right.step_3}" %><% else %>        * <% "{blocks.example1.content_right.step_3}" %>
        * <% "{blocks.example1.content_right.step_4}" %><% end %>
        
      gisthash: "<% "{blocks.example1.gist.hash}" %>"
      gistfile: "<% "{blocks.example1.gist.file}" %>"

    - title_left: "<% "{blocks.example2.title_left}" %>"
      content_left: |
        <% "{blocks.example2.content_left.step_1}" %>
        <% if (eq (get "PropertyUrl") "") %><% "{blocks.example2.content_left.step_2}" %><% else %><% end %>
        
      title_right: "<% "{blocks.example2.title_right}" %>"
      content_right: |
        * <% "{blocks.example2.content_right.step_1}" %>
        * <% "{blocks.example2.content_right.step_2}" %>
        * <% "{blocks.example2.content_right.step_3}" %> 
        * <% "{blocks.example2.content_right.step_4}" %>
        
      gisthash: "<% "{blocks.example2.gist.hash}" %>"
      gistfile: "<% "{blocks.example2.gist.file}" %>"

<% if (eq (get "PropertyUrl") "") %><% include "_requirements_full.md" %><% else %><% include "_requirements_short.md" %><% end %>