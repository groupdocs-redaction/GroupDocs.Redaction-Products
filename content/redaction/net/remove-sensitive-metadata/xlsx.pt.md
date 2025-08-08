
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: pt
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Limpe Metadados em Arquivos XLSX com C#"
head_description: "Com GroupDocs.Redaction for .NET, você pode remover metadados de arquivos XLSX com segurança. Limpe informações ocultas que podem revelar dados privados."

############################# Header ############################
title: "Apague Metadados de Arquivos XLSX Usando .NET" 
description: "Proteja detalhes sensíveis em seus arquivos XLSX com C#. Redação fácil para documentos pessoais e de trabalho."
subtitle: "Explore o que GroupDocs.Redaction for .NET pode fazer" 

############################# About ############################
about:
    enable: true
    title: "Aprenda Sobre GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction oferece aos desenvolvedores C# ferramentas para limpar conteúdo em documentos XLSX. Oculte ou exclua texto, imagens e metadados rapidamente.

############################# Steps ############################
steps:
    enable: true
    title: "Limpar Metadados em Arquivos Xlsx"
    content: |
      Com GroupDocs.Redaction, seus aplicativos .NET podem remover rapidamente dados ocultos.
      
      1. Configure um Redactor e abra seu arquivo Xlsx.
      2. Defina quais metadados deseja apagar.
      3. Aplique as regras de redação.
      4. Salve o arquivo final.
   
    code:
      platform: "net"
      copy_title: "Copiar"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Redações de exemplo"
      install:
        command: |
        command: "dotnet add package GroupDocs.Redaction"
        copy_tip: "clique para copiar"
        copy_done: "copiado"
      links:
        #  loop
        - title: "Mais exemplos"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
        #  loop
        - title: "Documentação"
          link: "https://docs.groupdocs.com/redaction/net/"
          
      content: |
        ```csharp {style=abap}
        // Limpe metadados ocultos em XLSX

        // Abra o arquivo com Redactor
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Configure quais metadados remover
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Aplique a redação e salve
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Proteja Informações Sensíveis em Documentos"
  description: "Use GroupDocs.Redaction for .NET para apagar ou ocultar conteúdo em muitos formatos de arquivo. Mantenha arquivos privados e prontos para compartilhar."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Recursos de Redação Tudo-em-Um"
  features:
    # feature loop
    - title: "Substituir ou Remover Texto"
      content: "Proteja dados pessoais encontrando e removendo texto sensível."

    # feature loop
    - title: "Ocultar Seções de Imagens"
      content: "Use sobreposições para bloquear áreas da imagem com visuais privados."

    # feature loop
    - title: "Remover Metadados"
      content: "Limpe campos de metadados ocultos que podem conter detalhes pessoais ou comerciais."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Como Remover Metadados"
      content: |
        Este código de exemplo remove propriedades de metadados em um documento XLSX.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Abra o documento
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Direcione os metadados de Autor
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Direcione os metadados de Título
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Execute o processo de redação
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Salve o documento limpo
              var saveOptions = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(saveOptions);
          }
          ```
        platform: "net"
        copy_title: "Copiar"
        install:
          command: "dotnet add package GroupDocs.Redaction"
          copy_tip: "clique para copiar"
          copy_done: "copiado"
        top_links:
          #  loop
          - title: "Baixar resultado"
            icon: "download"
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
        links:
          #  loop
          - title: "Mais exemplos"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
          #  loop
          - title: "Documentação"
            link: "https://docs.groupdocs.com/redaction/net/"


############################# Actions ############################

actions:
  enable: true
  title: "Pronto para começar?"
  description: "Experimente os recursos do GroupDocs.Redaction gratuitamente ou solicite uma licença"
  items:
    #  loop
    - title: "Download do Nuget"
      link: "https://releases.groupdocs.com/redaction/net/"
      color: "red"
        #  loop
    - title: "Licenciamento"
      link: "https://purchase.groupdocs.com/pricing/redaction/net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Redija Metadados em XLSX Usando .NET"
    exclude: "XLSX"
    description: ".NET facilita limpar metadados de arquivos XLSX. Mantenha seus arquivos limpos e seguros."
    items: 
        # format loop 1
        - name: "Redigir PDF"
          format: "PDF"
          link: "/redaction/net/remove-sensitive-metadata//pdf/"
          description: "Formato de Documento Portátil da Adobe"

        # format loop 2
        - name: "Redigir Word"
          format: "WORD"
          link: "/redaction/net/remove-sensitive-metadata//word/"
          description: "Documentos do MS Word e Open Office"
          
        # format loop 3
        - name: "Redigir Excel"
          format: "EXCEL"
          link: "/redaction/net/remove-sensitive-metadata//excel/"
          description: "Planilhas do MS Excel e Open Office"

        # format loop 4
        - name: "Redigir PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/remove-sensitive-metadata//powerpoint/"
          description: "Apresentações do MS PowerPoint e Open Office"

        # format loop 5
        - name: "Redigir Imagem"
          format: "IMAGE"
          link: "/redaction/net/remove-sensitive-metadata//image/"
          description: "Formatos de imagem populares"

        # format loop 6
        - name: "Redigir Foto"
          format: "PHOTO"
          link: "/redaction/net/remove-sensitive-metadata//photo/"
          description: "Formatos de foto"

        # format loop 7
        - name: "Redigir DOCX"
          format: "DOCX"
          link: "/redaction/net/remove-sensitive-metadata//docx/"
          description: "Documento Microsoft Word Open XML"
          
        # format loop 8
        - name: "Redigir XLSX"
          format: "XLSX"
          link: "/redaction/net/remove-sensitive-metadata//xlsx/"
          description: "Planilha do Microsoft Excel Open XML"
          
        # format loop 9
        - name: "Redigir PPTX"
          format: "PPTX"
          link: "/redaction/net/remove-sensitive-metadata//pptx/"
          description: "Apresentação PowerPoint Open XML"

        # format loop 10
        - name: "Redigir JPEG"
          format: "JPEG"
          link: "/redaction/net/remove-sensitive-metadata//jpeg/"
          description: "Imagem JPEG"


---