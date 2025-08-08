
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: pt
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Cubra Texto Sensível em DOCX Usando Sobreposições e C#"
head_description: "Use GroupDocs.Redaction for .NET para proteger texto privado em arquivos DOCX com simples sobreposições quadradas. Mantenha o layout do seu documento inalterado e os dados ocultos."

############################# Header ############################
title: "Cubra Texto em DOCX com Sobreposições Usando .NET" 
description: "Oculte conteúdo sensível nos seus documentos DOCX usando código C#. Excelente para proteção de documentos jurídicos, empresariais ou pessoais."
subtitle: "Recursos do GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "O que é GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET ajuda desenvolvedores C# a ocultar ou apagar conteúdo privado em arquivos DOCX. Use-o para bloquear texto, imagens e metadados em diferentes formatos de arquivo.

############################# Steps ############################
steps:
    enable: true
    title: "Remova dados privados de documentos Docx"
    content: |
      GroupDocs.Redaction for .NET ajuda desenvolvedores .NET a limpar documentos em apenas algumas linhas de código.
      
      1. Crie um Redactor e forneça o caminho do seu arquivo.
      2. Defina como a redacção deve funcionar.
      3. Digite o texto a ser ocultado e escolha a cor da sobreposição.
      4. Redija o arquivo e salve-o.
   
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
        // Oculte texto em DOCX usando blocos de sobreposição

        // Crie um Redactor e carregue o arquivo
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Defina suas preferências de redacção
            // Digite o texto e defina a cor do bloco
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Redija e salve o documento atualizado
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Mais maneiras de limpar documentos"
  description: "Com GroupDocs.Redaction for .NET, redija diferentes tipos de arquivos para manter seu conteúdo seguro e profissional."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Redacção inteligente incorporada"
  features:
    # feature loop
    - title: "Edite ou remova texto"
      content: "Encontre frases específicas e oculte ou substitua-as."

    # feature loop
    - title: "Oculte áreas de imagem"
      content: "Cubra locais sensíveis em fotos ou páginas digitalizadas."

    # feature loop
    - title: "Apague metadados ocultos"
      content: "Exclua informações invisíveis que podem expor dados do usuário ou do sistema."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Regex para redigir conteúdo"
      content: |
        Veja como expressões regulares podem encontrar e ocultar palavras sensíveis
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Abra o arquivo alvo
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Defina padrão e cor
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Aplique a lógica de redacção
              redactor.Apply(redaction);

              // Exporte o documento redigido
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
    title: "Oculte Conteúdo em DOCX com .NET"
    exclude: "DOCX"
    description: "Proteja dados sensíveis em documentos DOCX cobrindo-os com sobreposições ou removendo-os completamente usando ferramentas .NET."
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