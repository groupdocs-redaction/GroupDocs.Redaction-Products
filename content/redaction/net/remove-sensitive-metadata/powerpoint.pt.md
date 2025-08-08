
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: pt
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Limpe Metadados em POWERPOINT com C#"
head_description: "Remova metadados indesejados de arquivos POWERPOINT usando GroupDocs.Redaction for .NET. Proteja sua privacidade eliminando dados ocultos."

############################# Header ############################
title: "Apague Metadados em POWERPOINT via .NET" 
description: "Proteja os dados do documento em arquivos POWERPOINT com ferramentas simples, criadas para C#. Remova metadados em apenas algumas etapas."
subtitle: "Recursos do GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Mais Sobre GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction é uma caixa de ferramentas de redação para desenvolvedores C#, ajudando você a trabalhar com redações de texto, imagem e metadados em arquivos POWERPOINT.

############################# Steps ############################
steps:
    enable: true
    title: "Limpar Metadados de Documentos Powerpoint"
    content: |
      Com GroupDocs.Redaction, seus aplicativos .NET podem facilmente remover metadados de documentos.
      
      1. Comece com um objeto Redactor e carregue seu arquivo.
      2. Escolha os campos de metadados a serem removidos.
      3. Aplique as configurações de redação.
      4. Exporte o documento final e limpo.
   
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
        // Elimine metadados em POWERPOINT

        // Abra o documento com o redator
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Defina opções de limpeza de metadados
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Aplique a redação e salve
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Proteja Documentos com Redação"
  description: "GroupDocs.Redaction for .NET ajuda a remover conteúdo oculto de documentos para que você possa compartilhá-los com segurança. Funciona com muitos formatos e tipos de conteúdo."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Capacidades de Redação"
  features:
    # feature loop
    - title: "Remover Texto Privado"
      content: "Encontre palavras ou frases sensíveis e remova-as do seu documento."

    # feature loop
    - title: "Mascar Dados de Imagem"
      content: "Use sobreposições para cobrir áreas em imagens que precisam ficar ocultas."

    # feature loop
    - title: "Excluir Metadados"
      content: "Limpe campos de metadados que podem conter informações ocultas."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Limpar Campos de Metadados Ocultos"
      content: |
        Este exemplo orienta você a remover dados incorporados, como Autor e Título, de um arquivo POWERPOINT.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Importe o arquivo para o redator
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Remova dados do Autor
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Remova dados do Título
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Execute a redação
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Salve a versão limpa
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
    title: "Limpe Arquivos POWERPOINT com .NET"
    exclude: "POWERPOINT"
    description: "Use .NET para deletar dados ocultos em arquivos POWERPOINT. Ideal para limpar documentos confidenciais."
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