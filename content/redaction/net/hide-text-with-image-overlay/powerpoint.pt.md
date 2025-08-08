
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: pt
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Oculte Texto Sensível em POWERPOINT com Sobreposições C#"
head_description: "GroupDocs.Redaction for .NET permite que você oculte partes de arquivos POWERPOINT usando redacções de sobreposição simples. Mantenha os documentos seguros sem alterar a estrutura."

############################# Header ############################
title: "Redacção de Texto em POWERPOINT com Sobreposições Usando .NET" 
description: "Proteja conteúdo em seus arquivos POWERPOINT colocando blocos de sobreposição com a ajuda de C# e GroupDocs.Redaction for .NET."
subtitle: "Ferramentas dentro do GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Sobre Esta Ferramenta"
    link: "/redaction/net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET ajuda usuários de C# a limpar documentos POWERPOINT cobrindo ou deletando texto, metadados ou imagens conforme necessário.

############################# Steps ############################
steps:
    enable: true
    title: "Proteja conteúdo em documentos Powerpoint"
    content: |
      Use GroupDocs.Redaction for .NET em seus apps .NET para limpar arquivos antes da distribuição.
      
      1. Passe o caminho do arquivo para uma nova instância de Redactor.
      2. Defina o que e como você deseja redigir.
      3. Defina o padrão de texto e defina a cor da sobreposição.
      4. Redija e salve seu arquivo atualizado.
   
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
        // Sobreponha texto em POWERPOINT para ocultar detalhes

        // Use Redactor para abrir seu arquivo
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Ajuste as configurações para a redacção
            // Selecione texto e uma cor de bloqueio
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Execute e salve seu arquivo redigido
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Oculte dados sensíveis com facilidade"
  description: "Use GroupDocs.Redaction for .NET para remover ou cobrir conteúdo em diferentes tipos de documentos — ideal para proteger dados em arquivos legais, empresariais ou pessoais."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Redacção flexível de documentos"
  features:
    # feature loop
    - title: "Troque texto"
      content: "Encontre palavras ou números e substitua ou oculte-os."

    # feature loop
    - title: "Redija fotos ou seções"
      content: "Adicione sobreposições a imagens ou locais selecionados em uma página."

    # feature loop
    - title: "Remova dados extras"
      content: "Limpe metadados que podem revelar informações ocultas."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Encontrar e redigir com regex"
      content: |
        Isso mostra como regex pode ajudar a identificar e ocultar texto
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Abra o arquivo que precisa de redacção
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Configure suas regras usando regex
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Execute o processo de redacção
              redactor.Apply(redaction);

              // Salve a versão limpa
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
    title: "Oculte Conteúdo em POWERPOINT Usando .NET"
    exclude: "POWERPOINT"
    description: "Adicione sobreposições ou limpe dados de seus arquivos POWERPOINT para manter o conteúdo sensível privado usando .NET."
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