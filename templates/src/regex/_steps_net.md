title_left: "<% "{steps.title_left}" %>"
    content_left: |
        <% "{steps.content_left.description}" %>

        *   <% "{steps.content_left.step_1}" %>
        *   <% "{steps.content_left.step_2}" %>
        *   <% "{steps.content_left.step_3}" %>
        
    title_right: "<% "{steps.title_right}" %>"
    content_right: |
        <% "{steps.content_right.step_1}" %> 
        <% "{steps.content_right.step_2}" %>  
        
    code: |
        ```<% dict "products.{product}.syntax" %>
        using (Redactor redactor = new Redactor(@"sample.<% get "ext" %>"))
        {
        	redactor.Apply(new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", new ReplacementOptions(System.Drawing.Color.Blue)));
        	redactor.Save();
        }
        ```