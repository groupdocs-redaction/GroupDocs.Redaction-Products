  ```<% dict "products.{product}.syntax" %>
          // <% "{more_features.example.comment_init}" %>
          using (Redactor redactor = new Redactor("sample.docx"))
          {
            // <% "{more_features.example.comment_apply}" %>
            redactor.Apply(new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", new ReplacementOptions(System.Drawing.Color.Blue)));
            redactor.Save();
          }
          ```