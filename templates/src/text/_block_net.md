block:
    - title_left: "<% "{blocks.example.title_left}" %>"
      content_left: |
        <% "{blocks.example.content_left.description}" %> 

        * <% "{blocks.example.content_left.step_1}" %> 
        * <% "{blocks.example.content_left.step_2}" %>
        * <% "{blocks.example.content_left.step_3}" %>

      title_right: "<% "{blocks.example.title_right}" %>"
      content_right: |
        <% "{blocks.example.content_right.step_1}" %>
        <% "{blocks.example.content_right.step_2}" %>

      code: |
        ```<% dict "products.{product}.syntax" %>
        using (Redactor redactor = new Redactor(@"sample.<% get "ext" %>"))
        {
        	redactor.Apply(new ExactPhraseRedaction("John Doe", new ReplacementOptions("[personal]")));
        	redactor.Save();
        }
        ```
      
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
        * <% "{blocks.requirements.content_right.step_6}" %>