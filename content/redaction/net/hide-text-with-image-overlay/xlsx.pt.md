
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: pt
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Oculte Texto em XLSX com Sobreposições C#"
head_description: "GroupDocs.Redaction for .NET ajuda a ocultar texto em arquivos XLSX usando caixas coloridas. Mantenha as informações seguras sem alterar o formato do seu documento."

############################# Header ############################
title: "Mascarar Texto em Arquivos XLSX Usando Sobreposições e .NET" 
description: "Use C# e GroupDocs.Redaction for .NET para adicionar simples sobreposições que bloqueiam texto sensível em seus arquivos XLSX."
subtitle: "Recursos do GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Como GroupDocs.Redaction for .NET Ajuda"
    link: "/redaction/net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET permite que desenvolvedores usando C# ocultem conteúdo indesejado em arquivos XLSX. Bloqueie qualquer coisa—de palavras a imagens—em diferentes tipos de arquivos.

############################# Steps ############################
steps:
    enable: true
    title: "Mantenha informações sensíveis seguras em documentos Xlsx"
    content: |
      GroupDocs.Redaction for .NET ajuda desenvolvedores .NET a proteger arquivos. Oculte conteúdo privado com apenas algumas linhas de código.
      
      1. Crie um novo objeto Redactor com o caminho do seu arquivo Xlsx.
      2. Ajuste as configurações de redacção conforme necessário.
      3. Adicione um padrão de pesquisa e escolha uma cor para o bloco de sobreposição.
      4. Execute a redacção e salve seu arquivo.
   
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
        // Cubra texto privado em XLSX usando sobreposições

        // Carregue o arquivo com Redactor
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Escolha como a redacção funcionará
            // Digite texto a ser ocultado e selecione a cor da sobreposição
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Processar o arquivo e salve as alterações
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Recursos inteligentes de redacção"
  description: "Use GroupDocs.Redaction for .NET para apagar ou ocultar conteúdo em vários tipos de arquivos. Mantenha detalhes privados fora de vista."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Ferramentas práticas de redacção"
  features:
    # feature loop
    - title: "Altere qualquer texto"
      content: "Pesquise e atualize qualquer string no documento para proteger dados."

    # feature loop
    - title: "Oculte conteúdo de imagem"
      content: "Adicione quadrados ou retângulos para cobrir partes sensíveis de fotos."

    # feature loop
    - title: "Limpar metadados"
      content: "Remova ou sobrescreva detalhes de arquivo de fundo antes de compartilhar."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Combine e oculte com regex"
      content: |
        Aprenda como detectar e redigir conteúdo usando expressões regulares
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Abra o documento alvo
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Configure padrão e cor de sobreposição
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Aplique as regras de redacção
              redactor.Apply(redaction);

              // Exporte a versão redigida
              var save_opt = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_opt);
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
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
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
    title: "Use .NET para Ocultar Informações em Arquivos XLSX"
    exclude: "XLSX"
    description: "Adicione sobreposições ou remova partes dos seus documentos XLSX para proteger detalhes sensíveis com a ajuda do .NET."
    items: 
        # format loop 1
        - name: "Redigir PDF"
          format: "PDF"
          link: "/redaction/net/hide-text-with-image-overlay//pdf/"
          description: "Formato de Documento Portátil da Adobe"

        # format loop 2
        - name: "Redigir Word"
          format: "WORD"
          link: "/redaction/net/hide-text-with-image-overlay//word/"
          description: "Documentos do MS Word e Open Office"
          
        # format loop 3
        - name: "Redigir Excel"
          format: "EXCEL"
          link: "/redaction/net/hide-text-with-image-overlay//excel/"
          description: "Planilhas do MS Excel e Open Office"

        # format loop 4
        - name: "Redigir PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/hide-text-with-image-overlay//powerpoint/"
          description: "Apresentações do MS PowerPoint e Open Office"

        # format loop 5
        - name: "Redigir DOCX"
          format: "DOCX"
          link: "/redaction/net/hide-text-with-image-overlay//docx/"
          description: "Documento Microsoft Word Open XML"
          
        # format loop 6
        - name: "Redigir XLSX"
          format: "XLSX"
          link: "/redaction/net/hide-text-with-image-overlay//xlsx/"
          description: "Planilha do Microsoft Excel Open XML"
          
        # format loop 7
        - name: "Redigir PPTX"
          format: "PPTX"
          link: "/redaction/net/hide-text-with-image-overlay//pptx/"
          description: "Apresentação PowerPoint Open XML"


---