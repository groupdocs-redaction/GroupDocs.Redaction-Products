
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: pt
format: Image
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Remover Metadados Ocultos em IMAGE com C#"
head_description: "Use GroupDocs.Redaction for .NET para limpar metadados em seus arquivos IMAGE. Certifique-se de que detalhes privados permaneçam privados."

############################# Header ############################
title: "Apague Metadados em Arquivos IMAGE via .NET" 
description: "Mantenha seus arquivos IMAGE seguros usando C#. Proteja dados empresariais e pessoais da maneira mais simples."
subtitle: "O que Você Obtém com GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Sobre GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction ajuda usuários C# a limpar arquivos ao remover texto indesejado, partes de imagens e metadados em arquivos IMAGE.

############################# Steps ############################
steps:
    enable: true
    title: "Limpar Metadados em Arquivos Image"
    content: |
      Comece a usar GroupDocs.Redaction em seu aplicativo .NET para limpar metadados do arquivo.
      
      1. Crie um Redactor e abra seu arquivo Image.
      2. Escolha opções para remover entradas de metadados ocultos.
      3. Aplique configurações de redação.
      4. Salve o resultado.
   
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
        // Remova metadados ocultos de arquivos IMAGE

        // Abra o arquivo com Redactor
        using (Redactor redactor  = new Redactor("input.png"))
        {
            // Adicione regras de redação para metadados
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Processar e salvar
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Limpar Conteúdo em Qualquer Documento"
  description: "GroupDocs.Redaction for .NET remove texto privado, partes de imagens ou campos ocultos. Torne os documentos seguros para compartilhar."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Recursos Principais"
  features:
    # feature loop
    - title: "Redação de Texto"
      content: "Encontre e remova palavras e números privados."

    # feature loop
    - title: "Cobertura de Imagem"
      content: "Adicione máscaras a imagens para cobrir informações visuais."

    # feature loop
    - title: "Redação de Metadados"
      content: "Limpe campos de metadados que podem vazar informações."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Apagar Metadados Sensíveis"
      content: |
        Este exemplo explica como excluir campos de metadados específicos em um documento IMAGE.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Abra IMAGE com o redator
          using (Redactor redactor  = new Redactor("source.png"))
          {
              // Direcione o campo Autor
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Direcione o campo Título
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Redija os campos
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Salve seu documento
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
    title: "Remova Metadados de IMAGE Usando .NET"
    exclude: "IMAGE"
    description: "Apague dados sensíveis de arquivos IMAGE com a redação de .NET. Mantenha seus arquivos seguros para compartilhar ou armazenar."
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