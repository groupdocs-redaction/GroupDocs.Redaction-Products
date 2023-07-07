block:
    - title_left: "<% "{blocks.example1.title_left}" %>"
      content_left: |
        <% "{blocks.example1.content_left.step_1}" %> 

        <% "{blocks.example1.content_left.step_2}" %>

      title_right: "<% "{blocks.example1.title_right}" %>"
      content_right: |
        * <% "{blocks.example1.content_right.step_1}" %>
        * <% "{blocks.example1.content_right.step_2}" %>
        * <% "{blocks.example1.content_right.step_3}" %>
        * <% "{blocks.example1.content_right.step_4}" %> 

      gisthash: "<% "{blocks.example1.gist.hash}" %>"
      gistfile: "<% "{blocks.example1.gist.file}" %>"
      
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