
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: pt
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Editar e Remover Metadados em EXCEL via C#"
head_description: "Garanta seus documentos EXCEL removendo metadados com GroupDocs.Redaction for .NET. Elimine dados ocultos que podem comprometer a privacidade."

############################# Header ############################
title: "Proteção de Metadados em Arquivos EXCEL via .NET" 
description: "Usando C#, você pode limpar dados sensíveis de arquivos EXCEL. Ferramentas projetadas para manter sua informação protegida."
subtitle: "Principais Benefícios do GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "O Que é GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction oferece uma maneira confiável para desenvolvedores C# gerenciarem a redação em arquivos EXCEL. Funciona com texto, imagens e metadados.

############################# Steps ############################
steps:
    enable: true
    title: "Limpar Metadados em Arquivos Excel"
    content: |
      Use GroupDocs.Redaction em seus projetos .NET para lidar com metadados de documentos de forma segura.
      
      1. Crie um objeto Redactor e carregue o arquivo Excel de destino.
      2. Configure a redação para limpar metadados ocultos.
      3. Execute o processo de limpeza.
      4. Salve a versão final.
   
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
        // Limpe metadados de EXCEL

        // Inicialize o redator e carregue o arquivo
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Defina opções de remoção para metadados
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Redija e salve o resultado
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Apague Dados Privados em Seus Arquivos"
  description: "GroupDocs.Redaction for .NET permite que você limpe texto, imagens e metadados em múltiplos formatos. Ideal para documentos pessoais, legais e corporativos."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Ferramentas de Remoção de Metadados"
  features:
    # feature loop
    - title: "Pesquisar e Remover Texto"
      content: "Encontre texto pessoal ou confidencial em documentos e remova-o com segurança."

    # feature loop
    - title: "Ocultar Elementos Visuais"
      content: "Sobreponha partes sensíveis das imagens para evitar visualização."

    # feature loop
    - title: "Remover Metadados"
      content: "Apague dados incorporados que podem vazar informações sensíveis."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Direcionar Metadados para Redação"
      content: |
        Saiba como localizar e remover metadados como Autor ou Título de um documento EXCEL.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Importe o documento para o redator
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Direcione metadados do Autor
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Direcione metadados do Título
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Aplique as alterações
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Salve o documento atualizado
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
    title: "Remover Metadados em EXCEL Usando .NET"
    exclude: "EXCEL"
    description: "Elimine metadados privados em arquivos EXCEL com .NET. Mantenha seus documentos limpos e seguros."
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