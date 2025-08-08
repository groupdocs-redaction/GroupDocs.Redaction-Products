
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: pt
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Remova Texto Privado de PPTX Usando C#"
head_description: "Oculte rapidamente conteúdo privado em suas apresentações PPTX com GroupDocs.Redaction for .NET e C#."

############################# Header ############################
title: "Edite ou Oculte Texto Sensível em Documentos PPTX com .NET" 
description: "Mantenha suas apresentações limpas e privadas. Use GroupDocs.Redaction for .NET e C# para remover qualquer coisa que você não deseja compartilhar."
subtitle: "O Que Você Pode Fazer com GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "O que é GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET fornece aos usuários C# as ferramentas necessárias para remover conteúdo sensível de arquivos PPTX. Trata texto, visuais, comentários e metadados.

############################# Steps ############################
steps:
    enable: true
    title: "Passos para Limpar Apresentações Pptx"
    content: |
      Use GroupDocs.Redaction for .NET em seu aplicativo .NET para remover ou cobrir conteúdo sensível em poucos passos.
      
      1. Inicie um novo Redactor e carregue seu arquivo Pptx.
      2. Escolha as regras de redacção que deseja aplicar.
      3. Defina o texto a ser encontrado e qual substituição usar.
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
        // Redigindo uma apresentação PPTX

        // Abra o arquivo com Redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Escolha as configurações de redacção
            // Escolha o texto a ser pesquisado e substituído
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Aplique as alterações e salve o arquivo atualizado
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Recursos de Redacção Que Você Pode Usar"
  description: "GroupDocs.Redaction for .NET ajuda você a encontrar e ocultar texto sensível, imagens e dados ocultos em vários tipos de arquivos. Perfeito para compartilhar arquivos com segurança."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Opções de redacção disponíveis"
  features:
    # feature loop
    - title: "Substituir texto oculto"
      content: "Pesquise e troque palavras ou frases privadas em qualquer lugar do arquivo. O regex também é suportado."

    # feature loop
    - title: "Cobrir imagens"
      content: "Use blocos para ocultar fotos ou áreas que você deseja mascarar. Controle forma, tamanho e cor."

    # feature loop
    - title: "Excluir detalhes ocultos"
      content: "Limpe metadados como nomes de autor, datas de última edição ou comentários para deixar seu arquivo limpo."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redija Usando Padrões Regex"
      content: |
        Encontre e limpe dados como endereços de e-mail ou IDs usando regex. Ótimo para redacção repetível.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Abra seu arquivo
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Escreva um padrão regex para EMAIL e defina a substituição
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Aplique suas configurações de redacção
              redactor.Apply(redaction);

              // Salve a versão redigida
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
    title: "Limpe Arquivos PPTX com .NET"
    exclude: "PPTX"
    description: "Torne seus documentos PPTX mais seguros para compartilhar ocultando texto privado com .NET. Resultados rápidos e confiáveis."
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