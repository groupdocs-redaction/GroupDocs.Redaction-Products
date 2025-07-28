    items: 
        # format loop 1
        - name: "<% "{common-content.format-formats.pdf.name}" %>"
          format: "PDF"
          link: "/redaction/<% get "ProdCode" %>/<% get "OperationUrl" %>/<% get "redactiontypeLow" %>/pdf/"
          description: "<% "{common-content.format-formats.pdf.description}" %>"

        # format loop 2
        - name: "<% "{common-content.format-formats.word.name}" %>"
          format: "WORD"
          link: "/redaction/<% get "ProdCode" %>/<% get "OperationUrl" %>/<% get "redactiontypeLow" %>/word/"
          description: "<% "{common-content.format-formats.word.description}" %>"
          
        # format loop 3
        - name: "<% "{common-content.format-formats.excel.name}" %>"
          format: "EXCEL"
          link: "/redaction/<% get "ProdCode" %>/<% get "OperationUrl" %>/<% get "redactiontypeLow" %>/excel/"
          description: "<% "{common-content.format-formats.excel.description}" %>"

        # format loop 4
        - name: "<% "{common-content.format-formats.powerpoint.name}" %>"
          format: "POWERPOINT"
          link: "/redaction/<% get "ProdCode" %>/<% get "OperationUrl" %>/<% get "redactiontypeLow" %>/powerpoint/"
          description: "<% "{common-content.format-formats.powerpoint.description}" %>"

        # format loop 5
        - name: "<% "{common-content.format-formats.docx.name}" %>"
          format: "DOCX"
          link: "/redaction/<% get "ProdCode" %>/<% get "OperationUrl" %>/<% get "redactiontypeLow" %>/docx/"
          description: "<% "{common-content.format-formats.docx.description}" %>"
          
        # format loop 6
        - name: "<% "{common-content.format-formats.xlsx.name}" %>"
          format: "XLSX"
          link: "/redaction/<% get "ProdCode" %>/<% get "OperationUrl" %>/<% get "redactiontypeLow" %>/xlsx/"
          description: "<% "{common-content.format-formats.xlsx.description}" %>"
          
        # format loop 7
        - name: "<% "{common-content.format-formats.pptx.name}" %>"
          format: "PPTX"
          link: "/redaction/<% get "ProdCode" %>/<% get "OperationUrl" %>/<% get "redactiontypeLow" %>/pptx/"
          description: "<% "{common-content.format-formats.pptx.description}" %>"

