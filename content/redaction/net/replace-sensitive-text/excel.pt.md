
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: pt
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Remova Texto Privado de EXCEL Usando C#"
head_description: "Mantenha seus arquivos EXCEL privados com GroupDocs.Redaction for .NET e C#. Método rápido e eficiente para redigir texto."

############################# Header ############################
title: "Encontre e Remova Texto Sensível em Arquivos EXCEL com .NET" 
description: "Use C# e GroupDocs.Redaction for .NET para proteger seus arquivos pessoais ou de trabalho. Suas informações privadas permanecem ocultas."
subtitle: "Principais Recursos do GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "O que é GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET proporciona aos usuários C# as ferramentas para limpar documentos EXCEL. Redija texto, imagens, notas e dados de fundo.

############################# Steps ############################
steps:
    enable: true
    title: "Como Redigir Arquivos Excel"
    content: |
      Com GroupDocs.Redaction for .NET, é fácil encontrar e substituir conteúdo privado em aplicativos .NET.
      
      1. Crie um Redactor e abra seu arquivo Excel.
      2. Escolha suas configurações de redacção.
      3. Diga o que pesquisar e que texto usar como substituição.
      4. Inicie a redacção e salve seu arquivo atualizado.
   
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
        // Passos para redigir conteúdo em um documento EXCEL

        // Abra o arquivo com Redactor
        using (Redactor redactor  = new Redactor("input.xlsx"))
        {
            // Ajuste suas configurações de redacção
            // Escolha o que pesquisar e o que substituir
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Execute a redacção e salve seu novo arquivo EXCEL
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Mais Ferramentas de Redacção"
  description: "GroupDocs.Redaction for .NET oferece maneiras poderosas de ocultar ou apagar informações privadas em muitos tipos de arquivos. Ótimo para compartilhar com segurança."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Ferramentas e configurações de redacção disponíveis"
  features:
    # feature loop
    - title: "Substituir texto privado"
      content: "Pesquise e substitua correspondências exatas com opções inteligentes de texto, incluindo suporte a regex."

    # feature loop
    - title: "Ocultar imagens privadas"
      content: "Cubra imagens inteiras ou apenas partes de uma página. Você pode ajustar a cor e o tamanho da sobreposição."

    # feature loop
    - title: "Apagar metadados ocultos"
      content: "Remova informações como nomes de autores, histórico de edições e comentários para proteger sua identidade."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Use Regex para Redacções Mais Inteligentes"
      content: |
        Encontre e remova padrões de dados como e-mails ou IDs usando expressões regulares.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Abra o arquivo que deseja limpar
          using (Redactor redactor  = new Redactor("source.xlsx"))
          {
              // Defina um padrão regex para EMAIL e escolha o texto de substituição
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Execute o processo de redacção
              redactor.Apply(redaction);

              // Salve seu arquivo final redigido
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
    title: "Como Redigir EXCEL com .NET"
    exclude: "EXCEL"
    description: "Use .NET para limpar arquivos EXCEL. Mantenha seu conteúdo privado e seguro contra vazamentos."
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