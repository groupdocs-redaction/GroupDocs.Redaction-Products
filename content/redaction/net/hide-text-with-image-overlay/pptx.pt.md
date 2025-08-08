
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: pt
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Redija Texto em PPTX Usando Sobreposições e C#"
head_description: "Oculte conteúdo privado em documentos PPTX cobrindo-os com quadrados coloridos usando GroupDocs.Redaction for .NET. Mantenha o layout exatamente como está."

############################# Header ############################
title: "Redija Texto em PPTX com Sobreposições Usando .NET" 
description: "Com C# e GroupDocs.Redaction for .NET, é possível proteger dados sensíveis em arquivos PPTX ocultando-os da vista."
subtitle: "Explore GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "O que GroupDocs.Redaction for .NET Faz"
    link: "/redaction/net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET oferece a você o poder de cobrir ou remover conteúdo em documentos PPTX usando C#. Oculte qualquer coisa, de nomes a notas, em apenas alguns passos.

############################# Steps ############################
steps:
    enable: true
    title: "Oculte conteúdo privado nos seus arquivos Pptx"
    content: |
      Com GroupDocs.Redaction for .NET, desenvolvedores .NET podem proteger documentos em poucos passos simples.
      
      1. Inicie um Redactor com o caminho para o arquivo que você deseja limpar.
      2. Escolha as regras de redacção que atendem às suas necessidades.
      3. Escolha um padrão para coincidir e uma cor para a sobreposição da imagem.
      4. Execute a redacção e salve seu arquivo atualizado.
   
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
        // Use sobreposições para cobrir texto em PPTX

        // Inicialize Redactor com seu arquivo
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Defina como a redacção deve se comportar
            // Defina o que ocultar e a cor da sobreposição
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Execute e salve as alterações
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Mais maneiras de proteger seus arquivos"
  description: "GroupDocs.Redaction for .NET oferece as ferramentas para ocultar dados em diferentes formatos sem alterar o layout."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Recursos que importam"
  features:
    # feature loop
    - title: "Substitua texto conforme necessário"
      content: "Troque texto para manter informações-chave longe de usuários não autorizados."

    # feature loop
    - title: "Oculte áreas de imagem"
      content: "Oculte imagens completas ou certas partes desenhando caixas de sobreposição."

    # feature loop
    - title: "Limpe dados ocultos"
      content: "Exclua metadados incorporados que podem revelar detalhes privados."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redacção de expressão regular"
      content: |
        Este exemplo mostra como buscar e ocultar texto com expressões regulares
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Carregue um arquivo para redacção
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Defina as regras de redacção: texto de pesquisa e cor do bloco
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Aplique a lógica de redacção
              redactor.Apply(redaction);

              // Salve o resultado redigido
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
    title: "Proteja o Texto PPTX com Ferramentas .NET"
    exclude: "PPTX"
    description: "Cubra áreas privadas ou remova dados ocultos em arquivos PPTX usando os recursos de redacção .NET."
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