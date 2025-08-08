
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: pt
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Apague Metadados de Arquivos PPTX com C#"
head_description: "GroupDocs.Redaction for .NET ajuda você a excluir ou editar metadados em arquivos PPTX. Proteja seus documentos removendo dados de fundo privados."

############################# Header ############################
title: "Remova Metadados em PPTX Usando Ferramentas .NET" 
description: "Oculte metadados sensíveis em arquivos PPTX usando C#. Ideal para privacidade empresarial e pessoal."
subtitle: "Funções Centrais do GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Conheça Melhor GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction é uma caixa de ferramentas de redação para desenvolvedores C#, ajudando você a trabalhar com textos, imagens e metadados em arquivos PPTX.

############################# Steps ############################
steps:
    enable: true
    title: "Apagar Metadados Ocultos em Arquivos Pptx"
    content: |
      GroupDocs.Redaction ajuda suas soluções .NET a limpar dados ocultos com facilidade.
      
      1. Crie uma instância de Redactor e carregue o arquivo Pptx.
      2. Configure regras de redação para campos de metadados.
      3. Aplique a redação para remover os dados.
      4. Salve seu arquivo redigido.
   
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
        // Excluir metadados em PPTX

        // Abra o arquivo usando Redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Configure a redação para limpeza de metadados
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Aplique e salve o arquivo
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Ferramentas Extras de Redação para Qualquer Arquivo"
  description: "GroupDocs.Redaction for .NET suporta a redação de conteúdo em diferentes formatos. Garanta que seus dados permaneçam privados e seus arquivos estejam limpos."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Ferramentas de Privacidade Integradas"
  features:
    # feature loop
    - title: "Encontrar e Remover Texto"
      content: "Delete rapidamente entradas de texto pessoais de seus arquivos."

    # feature loop
    - title: "Cobrir Imagens com Sobreposições"
      content: "Oculte seções de imagens que não precisam ser visíveis."

    # feature loop
    - title: "Excluir Metadados"
      content: "Apague campos ocultos como autor, título e mais para permanecer seguro."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Limpar Campos de Metadados"
      content: |
        Este exemplo mostra como limpar metadados de um arquivo PPTX de forma segura.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Importe seu arquivo PPTX
          using (Redactor redactor  = new Redactor("source.pptx"))
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

              // Execute o processo de redação
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Exporte o arquivo redigido
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
    title: "Limpe Metadados em Arquivos PPTX Usando .NET"
    exclude: "PPTX"
    description: "Remova com facilidade metadados de fundo em arquivos PPTX com .NET. Perfeito para segurança de documentos."
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