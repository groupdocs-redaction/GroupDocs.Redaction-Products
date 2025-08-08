
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: pt
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Remover Metadados de DOCX Usando C#"
head_description: "Use GroupDocs.Redaction for .NET para excluir ou alterar metadados ocultos em arquivos DOCX. Proteja seus documentos de expor detalhes privados."

############################# Header ############################
title: "Excluir Metadados em Arquivos DOCX com .NET" 
description: "Use C# para limpar metadados sensíveis de arquivos DOCX. Mantenha seus dados empresariais e pessoais protegidos."
subtitle: "Recursos Principais do GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "O que é GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction fornece aos desenvolvedores C# ferramentas para ocultar ou remover conteúdo em arquivos DOCX. Limpe rapidamente texto, imagens e metadados.

############################# Steps ############################
steps:
    enable: true
    title: "Limpar Dados Ocultos em Arquivos Docx"
    content: |
      GroupDocs.Redaction ajuda seus projetos .NET a remover metadados indesejados rapidamente.
      
      1. Crie uma instância de Redactor e abra seu arquivo Docx.
      2. Configure a redação para direcionar entradas de metadados.
      3. Aplique as alterações para limpar o documento.
      4. Salve o arquivo limpo.
   
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
        // Apague metadados de documentos DOCX

        // Carregue o arquivo usando Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Configure as opções de remoção de metadados
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Aplique e salve as alterações
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Oculte Informações Sensíveis em Qualquer Documento"
  description: "GroupDocs.Redaction for .NET permite limpar conteúdo sensível em muitos tipos de arquivos. Torne seus documentos mais seguros para compartilhar ou armazenar."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Opções Inteligentes de Redação"
  features:
    # feature loop
    - title: "Remover Texto Privado"
      content: "Pesquise e apague texto pessoal ou comercial de seus arquivos."

    # feature loop
    - title: "Mascar Imagens"
      content: "Cubra imagens ou áreas selecionadas para ocultar conteúdo confidencial."

    # feature loop
    - title: "Apagar Metadados"
      content: "Limpe entradas de metadados ocultos para evitar vazamentos de detalhes de fundo."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Limpar Campos de Metadados"
      content: |
        Este exemplo demonstra como remover dados ocultos de arquivos DOCX.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Carregue seu arquivo DOCX
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Direcione o campo Autor para remoção
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Direcione o campo Título para remoção
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Execute o processo de redação
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Salve seu arquivo atualizado
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
    title: "Apague Metadados em DOCX com .NET"
    exclude: "DOCX"
    description: "Remova metadados indesejados em arquivos DOCX usando .NET. Uma maneira simples de proteger os detalhes ocultos do seu arquivo."
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