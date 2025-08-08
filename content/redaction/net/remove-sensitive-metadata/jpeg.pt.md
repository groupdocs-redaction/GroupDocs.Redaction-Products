
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: pt
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Edite Metadados em JPEG Usando C#"
head_description: "Com GroupDocs.Redaction for .NET, você pode limpar ou alterar metadados em seus arquivos JPEG. Remova detalhes ocultos que podem conter dados privados."

############################# Header ############################
title: "Remova Metadados de Arquivos JPEG Usando .NET" 
description: "Proteja detalhes privados em seus arquivos JPEG usando C#. Ferramentas simples para melhor segurança do documento."
subtitle: "Recursos Principais do GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Sobre GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction ajuda desenvolvedores C# a remover texto, imagens e metadados de arquivos JPEG com ferramentas simples.

############################# Steps ############################
steps:
    enable: true
    title: "Limpar Metadados em Documentos Jpeg"
    content: |
      GroupDocs.Redaction torna fácil remover metadados em suas aplicações .NET.
      
      1. Configure um Redactor e carregue o arquivo Jpeg que você deseja limpar.
      2. Escolha as configurações para limpar todos os metadados.
      3. Execute a redação para limpar o arquivo.
      4. Salve seu arquivo com os metadados limpos.
   
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
        // Remova metadados de arquivos JPEG

        // Use Redactor para carregar o arquivo
        using (Redactor redactor  = new Redactor("input.jpg"))
        {
            // Configure a redação de metadados
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Aplique e salve
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Remova Dados Sensíveis de Documentos"
  description: "GroupDocs.Redaction for .NET permite que você oculte ou limpe conteúdo privado em vários formatos. Proteja dados sensíveis enquanto mantém seus arquivos úteis e claros."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Recursos Principais de Redação"
  features:
    # feature loop
    - title: "Pesquisar e Remover Texto"
      content: "Encontre palavras ou frases sensíveis em seus arquivos e limpe-as."

    # feature loop
    - title: "Cobrir Áreas de Imagem"
      content: "Use sobreposições para ocultar partes privadas das imagens."

    # feature loop
    - title: "Editar Metadados"
      content: "Excluir ou alterar metadados para evitar o compartilhamento de dados privados."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Limpar Campos de Metadados Ocultos"
      content: |
        Este exemplo mostra como excluir ou editar metadados ocultos em documentos JPEG.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Abra o arquivo JPEG com o redator
          using (Redactor redactor  = new Redactor("source.jpg"))
          {
              // Adicione a redação para o campo Autor
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Adicione a redação para o campo Título
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
    title: "Limpar Metadados JPEG com .NET"
    exclude: "JPEG"
    description: "Use .NET para remover dados ocultos de seus documentos JPEG. Uma ótima maneira de proteger detalhes sensíveis."
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