
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: pt
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Redigir Texto Sensível em PDF com C#"
head_description: "Proteja informações privadas em seus arquivos PDF usando GroupDocs.Redaction for .NET. Pesquise e redija dados sensíveis rapidamente."

############################# Header ############################
title: "Remova Texto Sensível de Documentos PDF Usando .NET" 
description: "Use C# e GroupDocs.Redaction for .NET para ter controle total sobre o conteúdo em seus arquivos PDF. Redija dados pessoais, legais ou confidenciais com precisão."
subtitle: "O Que Você Pode Fazer com GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "O que é GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET fornece aos desenvolvedores C# tudo o que eles precisam para redigir conteúdo PDF. Limpe texto, imagens, anotações, comentários e metadados em tipos de arquivo populares.

############################# Steps ############################
steps:
    enable: true
    title: "Como Redigir Conteúdo em Arquivos Pdf"
    content: |
      Proteja seus documentos em qualquer aplicativo .NET usando GroupDocs.Redaction for .NET. Redija texto sensível de forma rápida e precisa.
      
      1. Inicialize um Redactor e carregue seu arquivo Pdf.
      2. Configure as opções de redacção necessárias.
      3. Especifique o texto a ser pesquisado e o texto de substituição.
      4. Execute a redacção e salve o arquivo.
   
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
        // Como redigir texto em um arquivo PDF

        // Carregue seu arquivo usando o construtor Redactor
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // Defina suas preferências de redacção
            // Escolha o que pesquisar e o que substituir
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Aplique as redacções e salve o novo arquivo PDF
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Mais Formas de Redigir Documentos"
  description: "GroupDocs.Redaction for .NET ajuda a remover ou ocultar conteúdo sensível em vários formatos de arquivo. Mantenha os documentos limpos e seguros para compartilhamento."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Ferramentas e opções de redacção"
  features:
    # feature loop
    - title: "Substituir texto confidencial"
      content: "Encontre e substitua texto correspondente em qualquer parte do seu arquivo. Suporta regex e opções de busca inteligente."

    # feature loop
    - title: "Ocultar imagens sensíveis"
      content: "Cubra imagens ou áreas específicas com sobreposições. Ajuste configurações de página, cores e mais."

    # feature loop
    - title: "Limpar metadados ocultos"
      content: "Remova dados ocultos como autoria, carimbos de data/hora ou comentários para proteger a privacidade."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redigir Texto com Regex"
      content: |
        Use expressões regulares para buscar e redigir padrões de texto sensível, como e-mails ou IDs.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Abra o documento que você deseja limpar
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // Defina um padrão de regex para EMAIL e o texto a ser usado como substituição
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Aplique as regras de redacção
              redactor.Apply(redaction);

              // Salve o arquivo redigido final
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
            link: "/examples/redaction/formats/replace-sensitive-text.pdf"
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
    title: "Redigir Conteúdo em PDF Usando .NET"
    exclude: "PDF"
    description: "Proteja dados oficiais e pessoais redigindo texto em arquivos PDF com ferramentas .NET. Mantenha os documentos seguros e privados."
    items: 
        # format loop 1
        - name: "Redigir PDF"
          format: "PDF"
          link: "/redaction/net/replace-sensitive-text//pdf/"
          description: "Formato de Documento Portátil da Adobe"

        # format loop 2
        - name: "Redigir Word"
          format: "WORD"
          link: "/redaction/net/replace-sensitive-text//word/"
          description: "Documentos do MS Word e Open Office"
          
        # format loop 3
        - name: "Redigir Excel"
          format: "EXCEL"
          link: "/redaction/net/replace-sensitive-text//excel/"
          description: "Planilhas do MS Excel e Open Office"

        # format loop 4
        - name: "Redigir PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/replace-sensitive-text//powerpoint/"
          description: "Apresentações do MS PowerPoint e Open Office"

        # format loop 5
        - name: "Redigir DOCX"
          format: "DOCX"
          link: "/redaction/net/replace-sensitive-text//docx/"
          description: "Documento Microsoft Word Open XML"
          
        # format loop 6
        - name: "Redigir XLSX"
          format: "XLSX"
          link: "/redaction/net/replace-sensitive-text//xlsx/"
          description: "Planilha do Microsoft Excel Open XML"
          
        # format loop 7
        - name: "Redigir PPTX"
          format: "PPTX"
          link: "/redaction/net/replace-sensitive-text//pptx/"
          description: "Apresentação PowerPoint Open XML"


---