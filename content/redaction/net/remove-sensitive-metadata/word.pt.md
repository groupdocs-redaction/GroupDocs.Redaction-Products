
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: pt
format: Word
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Remover Metadados de WORD Usando C#"
head_description: "Use GroupDocs.Redaction for .NET para encontrar e excluir metadados ocultos em arquivos WORD. Mantenha seus documentos privados e seguros contra exposições indesejadas."

############################# Header ############################
title: "Excluir Metadados em Arquivos WORD Usando .NET" 
description: "Proteja dados pessoais e corporativos em arquivos WORD com C#. Ferramentas simples para privacidade confiável dos arquivos."
subtitle: "O que Você Pode Fazer com GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Sobre GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction ajuda desenvolvedores C# a proteger conteúdo em arquivos WORD. Limpe texto, imagens e metadados rapidamente.

############################# Steps ############################
steps:
    enable: true
    title: "Excluir Metadados de Arquivos Word"
    content: |
      Com GroupDocs.Redaction, é fácil limpar metadados do documento em seu ambiente .NET.
      
      1. Inicialize um objeto Redactor e abra seu documento Word.
      2. Configure regras para apagar todos os metadados ocultos.
      3. Execute a redação para remover tags sensíveis.
      4. Salve seu documento limpo.
   
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
        // Apague metadados de arquivos WORD

        // Abra o documento usando Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Configure as opções de remoção de metadados
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Redija e salve o arquivo limpo
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redija Dados Confidenciais em Documentos"
  description: "Com GroupDocs.Redaction for .NET, você pode remover conteúdo privado de vários formatos. Mantenha seus arquivos seguros enquanto preserva sua estrutura."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Ferramentas de Redação de Metadados e Conteúdo"
  features:
    # feature loop
    - title: "Substituir Texto Sensível"
      content: "Encontre texto em documentos e remova ou altere-o para proteger informações privadas."

    # feature loop
    - title: "Mascar Imagens"
      content: "Cubra áreas sensíveis das imagens com sobreposições para ocultar dados visuais."

    # feature loop
    - title: "Apagar Metadados"
      content: "Encontre e limpe dados ocultos para evitar vazamentos de informações."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Editar ou Excluir Metadados Ocultos"
      content: |
        Este exemplo mostra como direcionar e limpar entradas de metadados em um documento WORD.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Carregue o arquivo para redação
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Remova o metadado do Autor
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Remova o metadado do Título
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Execute o processo de redação
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Exporte o documento limpo
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
    title: "Redação de Metadados em WORD com .NET"
    exclude: "WORD"
    description: "Use .NET para limpar metadados ocultos de arquivos WORD. Ferramentas simples para manter informações sensíveis seguras."
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