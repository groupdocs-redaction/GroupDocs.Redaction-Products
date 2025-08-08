
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: pt
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Oculte Texto Sensível em PDF com Sobreposições Usando C#"
head_description: "Com GroupDocs.Redaction for .NET, você pode ocultar texto sensível em arquivos PDF colocando sobreposições quadradas coloridas. Mantenha os dados privados seguros sem alterar o layout original."

############################# Header ############################
title: "Oculte Texto Sensível em Documentos PDF com Sobreposições Usando .NET" 
description: "Tome controle do conteúdo do arquivo PDF usando C#. Use redacções para proteger informações jurídicas, financeiras e pessoais."
subtitle: "Recursos do GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Sobre GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET fornece aos desenvolvedores C# as ferramentas para ocultar ou remover conteúdo de arquivos PDF. É uma maneira simples de manter documentos seguros. Você pode cobrir texto, imagens ou metadados em muitos formatos de arquivos.

############################# Steps ############################
steps:
    enable: true
    title: "Proteja dados empresariais em documentos Pdf"
    content: |
      GroupDocs.Redaction for .NET: desenvolvido para ajudar seus apps .NET a manter documentos seguros. Reduza informações privadas de forma rápida.
      
      1. Crie uma instância de Redactor e forneça o caminho para o arquivo Pdf que deseja redigir.
      2. Configure as opções de redacção para obter o resultado desejado.
      3. Defina o padrão de texto a ser procurado e escolha a cor da sobreposição.
      4. Redija o documento e salve as alterações.
   
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
        // Oculte texto sensível em PDF com imagens de sobreposição

        // Passe o caminho do arquivo para o construtor de Redactor
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // Configure as opções de redacção
            // Defina o padrão de texto e a cor da sobreposição
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Redija e salve o arquivo PDF atualizado
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redija conteúdo em documentos"
  description: "Com GroupDocs.Redaction for .NET, você pode remover ou ocultar conteúdo em vários tipos de arquivos. Proteja informações sensíveis enquanto mantém seus documentos fáceis de ler e compartilhar."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Opções Avançadas de Redação"
  features:
    # feature loop
    - title: "Edite texto em qualquer lugar"
      content: "Pesquise e substitua qualquer texto correspondente no seu documento para ajudar a proteger dados confidenciais."

    # feature loop
    - title: "Cobrir imagens"
      content: "Coloque sobreposições sobre imagens completas ou áreas selecionadas para ocultar visuais privados."

    # feature loop
    - title: "Gerencie metadados"
      content: "Apague ou altere metadados ocultos para evitar vazamentos de dados indesejados."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Use expressões regulares para ocultar texto"
      content: |
        Este exemplo mostra como encontrar e ocultar texto usando expressões regulares
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Carregue o documento que deseja redigir
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // Defina as configurações de redacção: padrão de texto e cor
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Aplique a redacção ao conteúdo
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
    title: "Proteja Conteúdo PDF com Redacções .NET"
    exclude: "PDF"
    description: "Use .NET para cobrir ou apagar conteúdo em arquivos PDF. É uma escolha inteligente para manter documentos sensíveis ou oficiais em segurança."
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