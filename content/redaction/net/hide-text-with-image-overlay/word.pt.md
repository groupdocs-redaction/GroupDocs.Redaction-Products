
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: pt
format: Word
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Use Sobreposições para Ocultar Texto em WORD via C#"
head_description: "GroupDocs.Redaction for .NET torna fácil cobrir texto sensível em WORD com blocos de cor. Mantenha o documento intacto enquanto oculta o que é importante."

############################# Header ############################
title: "Redacção de Texto em Arquivos WORD com .NET" 
description: "Proteja informações importantes em arquivos WORD usando sobreposições quadradas escritas em C#. Ideal para segurança e conformidade."
subtitle: "Veja o que GroupDocs.Redaction for .NET pode fazer" 

############################# About ############################
about:
    enable: true
    title: "Conheça GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       Desenvolvedores que trabalham com C# podem usar GroupDocs.Redaction for .NET para ocultar ou remover partes de documentos WORD. Oculte nomes, números ou outros dados em apenas algumas linhas de código.

############################# Steps ############################
steps:
    enable: true
    title: "Redija dados privados em arquivos Word"
    content: |
      GroupDocs.Redaction for .NET ajuda desenvolvedores .NET a remover conteúdo sensível rapidamente. Siga estas etapas para proteger seus arquivos.
      
      1. Inicialize um Redactor com o caminho para o seu arquivo Word.
      2. Defina as regras para redigir conteúdo.
      3. Escolha o padrão de texto e a cor para cobri-lo.
      4. Aplique a redacção e salve seu arquivo redigido.
   
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
        // Redija texto em WORD usando sobreposições de imagem

        // Carregue seu arquivo com o Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Defina o que precisa ser redigido
            // Adicione o texto correspondente e a cor da sobreposição
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Execute a redacção e salve o arquivo final
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Ferramentas extras de redacção"
  description: "Com GroupDocs.Redaction for .NET, você pode manter arquivos limpos removendo informações visíveis e ocultas enquanto mantém o layout intacto."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Saída limpa e segura"
  features:
    # feature loop
    - title: "Substitua texto exposto"
      content: "Oculte palavras ou frases que possam vazar dados importantes."

    # feature loop
    - title: "Cubra imagens"
      content: "Marque visuais sensíveis com blocos sólidos."

    # feature loop
    - title: "Apague informações ocultas"
      content: "Limpe metadados de fundo para manter arquivos privados."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Oculte texto correspondente com regex"
      content: |
        Este exemplo mostra como usar expressões regulares para encontrar e cobrir conteúdo sensível
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Abra o documento a ser redigido
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Escolha padrão e cor
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Execute as regras de redacção
              redactor.Apply(redaction);

              // Salve e revise a cópia redigida
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
    title: "Proteja seus arquivos WORD Usando .NET"
    exclude: "WORD"
    description: "Com .NET, você pode ocultar texto ou apagar metadados em formatos WORD sem quebrar layout ou formatação."
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