
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: pt
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Oculte Conteúdo em EXCEL com Redacção de Sobreposição e C#"
head_description: "Cubra texto em documentos EXCEL usando blocos de cor sólida com GroupDocs.Redaction for .NET. Uma forma prática de proteger conteúdos privados."

############################# Header ############################
title: "Redacção de Sobreposição para Arquivos EXCEL em .NET" 
description: "Use código C# para ocultar texto e proteger dados dentro dos seus arquivos EXCEL. Uma solução limpa para segurança de documentos."
subtitle: "O que GroupDocs.Redaction for .NET inclui" 

############################# About ############################
about:
    enable: true
    title: "Por que escolher GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET é feito para desenvolvedores C# que desejam redigir ou deletar conteúdo em arquivos EXCEL. Use-o para trabalhar com texto, metadados e imagens.

############################# Steps ############################
steps:
    enable: true
    title: "Redija informações sensíveis no formato Excel"
    content: |
      GroupDocs.Redaction for .NET é uma ferramenta simples para desenvolvedores .NET limparem documentos antes de compartilhar.
      
      1. Inicie um Redactor e carregue seu arquivo Excel.
      2. Decida sobre as configurações de redacção para sua tarefa.
      3. Adicione uma palavra-chave ou frase para redigir e escolha uma cor.
      4. Execute a ferramenta e salve as alterações.
   
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
        // Use sobreposições para ocultar texto em EXCEL

        // Crie um Redactor e carregue seu arquivo
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Escolha regras de redacção
            // Digite o que ocultar e escolha uma cor
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Aplique a redacção e salve o arquivo
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Recursos chave para proteção de dados"
  description: "GroupDocs.Redaction for .NET permite que você oculte ou exclua dados dentro dos seus documentos sem perder layout ou significado."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Construído para segurança de documentos"
  features:
    # feature loop
    - title: "Alterar conteúdo de texto"
      content: "Substitua ou oculte palavras selecionadas em todo o arquivo."

    # feature loop
    - title: "Redija visuais"
      content: "Oculte fotos ou áreas com blocos simples."

    # feature loop
    - title: "Limpar metadados"
      content: "Desfaça-se de dados de fundo como nomes de autores ou carimbos de data."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redacção de texto regex"
      content: |
        Aqui está como usar regex para encontrar e ocultar conteúdo em um arquivo
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Carregue o documento a ser processado
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Adicione configurações de padrão e sobreposição
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Aplique as mudanças
              redactor.Apply(redaction);

              // Salve e feche o documento redigido
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
    title: "Redija Arquivos EXCEL com .NET"
    exclude: "EXCEL"
    description: "Cubra conteúdo sensível em EXCEL usando sobreposições quadradas ou redacções claras com os recursos de .NET."
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