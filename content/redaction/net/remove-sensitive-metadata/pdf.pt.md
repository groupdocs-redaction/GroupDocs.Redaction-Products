
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: pt
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Redigite Metadados em PDF Usando C#"
head_description: "Com GroupDocs.Redaction for .NET, você pode remover ou atualizar metadados em arquivos PDF. Limpe dados ocultos que podem expor informações privadas."

############################# Header ############################
title: "Limpe Metadados em Arquivos PDF com .NET" 
description: "Proteja informações empresariais e pessoais sensíveis em arquivos PDF usando C#. Ferramentas fáceis de usar para proteção de dados confiável."
subtitle: "Recursos Principais do GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Sobre GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction fornece aos desenvolvedores C# ferramentas fáceis de usar para redigir conteúdo em arquivos PDF. Oculte texto, imagens e metadados em vários formatos.

############################# Steps ############################
steps:
    enable: true
    title: "Remova Metadados de Documentos Pdf"
    content: |
      Use GroupDocs.Redaction para garantir rapidamente a segurança dos metadados do documento em seus aplicativos .NET.
      
      1. Crie uma instância de Redactor e carregue seu arquivo Pdf.
      2. Configure a redação para remover todos os metadados ocultos.
      3. Aplique a redação para limpar o documento.
      4. Salve o arquivo atualizado.
   
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
        // Apague metadados de arquivos PDF

        // Carregue o arquivo com Redactor
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // Configure a remoção de metadados
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Aplique as alterações e salve o arquivo
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redija Dados Sensíveis em Documentos"
  description: "GroupDocs.Redaction for .NET ajuda você a ocultar ou apagar conteúdo confidencial em vários formatos de arquivo. Mantenha dados privados seguros enquanto mantém documentos claros e profissionais."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Recursos Poderosos de Redação"
  features:
    # feature loop
    - title: "Encontrar e Substituir Texto"
      content: "Pesquise textos sensíveis em seus documentos e substitua ou remova-os para proteger a privacidade."

    # feature loop
    - title: "Ocultar Conteúdo de Imagens"
      content: "Adicione sobreposições a imagens ou áreas específicas para cobrir visuais sensíveis."

    # feature loop
    - title: "Limpar Metadados"
      content: "Excluir ou editar metadados ocultos para evitar vazamentos de dados indesejados."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Remover Entradas de Metadados Ocultos"
      content: |
        Este exemplo mostra como modificar os metadados em um arquivo PDF.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Carregue o arquivo PDF no redator
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // Configure a redação para a propriedade Autor
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Configure a redação para a propriedade Título
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Execute a redação no documento
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Salve o arquivo limpo
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
    title: "Proteja Arquivos PDF com Redação de Metadados .NET"
    exclude: "PDF"
    description: "Use .NET para apagar dados ocultos de arquivos PDF. Uma maneira simples e eficaz de garantir informações sensíveis em seus documentos."
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