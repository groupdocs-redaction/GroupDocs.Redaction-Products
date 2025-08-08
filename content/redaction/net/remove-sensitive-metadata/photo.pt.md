
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: pt
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Excluir Metadados em PHOTO com C#"
head_description: "GroupDocs.Redaction for .NET ajuda você a remover dados ocultos em arquivos PHOTO que podem revelar informações pessoais ou comerciais."

############################# Header ############################
title: "Remova Metadados de PHOTO com .NET" 
description: "Proteja facilmente seus documentos removendo informações ocultas de arquivos PHOTO usando C#."
subtitle: "Destaques do GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Sobre GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction ajuda desenvolvedores C# a ocultar conteúdo privado em arquivos PHOTO, incluindo texto, partes de imagens e metadados.

############################# Steps ############################
steps:
    enable: true
    title: "Apagar Metadados em Arquivos Photo"
    content: |
      Use GroupDocs.Redaction em seu projeto .NET para limpar metadados do documento.
      
      1. Inicie um Redactor e abra seu arquivo Photo.
      2. Defina as regras para excluir os metadados.
      3. Aplique a redação e limpe o arquivo.
      4. Salve o arquivo resultado.
   
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
        // Excluir metadados de documentos PHOTO

        // Use Redactor para carregar o documento
        using (Redactor redactor  = new Redactor("input.jpeg"))
        {
            // Defina campos de metadados para redação
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Limpe o documento e salve
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Apague Informações Privadas de Arquivos"
  description: "GroupDocs.Redaction for .NET oferece maneiras de remover dados pessoais de texto, imagens e detalhes do arquivo. Perfeito para segurança de dados."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Recursos Úteis de Redação"
  features:
    # feature loop
    - title: "Limpeza de Texto"
      content: "Escaneie e exclua qualquer texto que não deva ser compartilhado."

    # feature loop
    - title: "Cobrir Áreas de Imagem"
      content: "Adicione coberturas sobre partes da imagem com detalhes privados."

    # feature loop
    - title: "Remover Metadados"
      content: "Exclua dados ocultos do arquivo antes de compartilhar ou publicar."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Excluir Campos de Metadados Ocultos"
      content: |
        Este exemplo orienta você a remover metadados em um documento PHOTO.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Carregue o arquivo PHOTO no redator
          using (Redactor redactor  = new Redactor("source.jpeg"))
          {
              // Redija o campo Autor
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Redija o campo Título
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Processar o documento
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
    title: "Use .NET para Redigir Metadados PHOTO"
    exclude: "PHOTO"
    description: "Mantenha seus documentos PHOTO seguros limpando metadados com ferramentas .NET."
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