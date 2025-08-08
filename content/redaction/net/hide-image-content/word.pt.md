
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: pt
format: Word
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Cobrir Imagens em WORD com Sobreposições Usando C#"
head_description: "Oculte áreas de imagem sensíveis em arquivos WORD usando GroupDocs.Redaction for .NET. Adicione sobreposições coloridas para proteger dados privados enquanto mantém o layout original do documento inalterado."

############################# Header ############################
title: "Ocultar Imagens Privadas em Arquivos WORD com Sobreposições Usando .NET" 
description: "Proteja seus dados pessoais e empresariais em documentos WORD usando C#. Alcance uma proteção de conteúdo confiável com nossas ferramentas simples."
subtitle: "Recursos Principais do GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Sobre GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET oferece aos desenvolvedores C# as ferramentas para ocultar ou apagar conteúdo de arquivos WORD. Proteja seus documentos cobrindo texto, imagens e metadados com eficácia.

############################# Steps ############################
steps:
    enable: true
    title: "Proteja Dados Sensíveis em Arquivos Word"
    content: |
      GroupDocs.Redaction for .NET ajuda seus aplicativos .NET a ocultar conteúdo privado em documentos rapidamente.
      
      1. Crie um objeto Redactor e especifique o caminho do arquivo Word.
      2. Defina os parâmetros de redaction de acordo com suas necessidades.
      3. Marque a área da imagem e defina a cor da sobreposição.
      4. Processar e salvar o arquivo redigido.
   
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
        // Cobrir imagens sensíveis em WORD

        // Carregue o arquivo usando o construtor Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Defina a cor e as dimensões da sobreposição
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Selecione a área da imagem para redigir
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Aplique a sobreposição e salve o documento
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Ocultar ou Remover Conteúdo de Documentos"
  description: "GroupDocs.Redaction for .NET facilita a ocultação ou eliminação de dados em vários formatos de arquivo. Proteja informações sensíveis enquanto mantém documentos limpos e legíveis."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Ferramentas Detalhadas de Redaction"
  features:
    # feature loop
    - title: "Substituir Texto em Qualquer Lugar"
      content: "Pesquise e altere texto sensível em seus documentos para proteger informações privadas."

    # feature loop
    - title: "Mascarar Imagens"
      content: "Adicione sobreposições a áreas específicas de imagens ou a imagens inteiras para ocultar visuais privados."

    # feature loop
    - title: "Limpar Metadados"
      content: "Exclua ou modifique metadados ocultos para evitar vazamentos de dados não intencionais."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Adicione Sobreposições para Ocultar Conteúdo de Imagem"
      content: |
        Este exemplo demonstra como proteger dados sensíveis em imagens de documentos usando sobreposições.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Carregue o documento para edição
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Defina o tamanho, a localização e a cor da sobreposição
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Concentre-se em uma área específica da imagem na página um
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Aplique redaction de sobreposição
              redactor.Apply(redaction);

              // Salve as alterações no arquivo
              var save_options = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_options);
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
            link: "/examples/redaction/formats/hide-image-content.pdf"
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
    title: "Proteja Conteúdo WORD com Redações .NET"
    exclude: "WORD"
    description: ".NET permite que você oculte ou exclua conteúdo sensível em arquivos WORD. Uma maneira confiável de proteger documentos confidenciais e oficiais."
    items: 
        # format loop 1
        - name: "Redigir PDF"
          format: "PDF"
          link: "/redaction/net/hide-image-content//pdf/"
          description: "Formato de Documento Portátil da Adobe"

        # format loop 2
        - name: "Redigir Word"
          format: "WORD"
          link: "/redaction/net/hide-image-content//word/"
          description: "Documentos do MS Word e Open Office"
          
        # format loop 3
        - name: "Redigir Excel"
          format: "EXCEL"
          link: "/redaction/net/hide-image-content//excel/"
          description: "Planilhas do MS Excel e Open Office"

        # format loop 4
        - name: "Redigir PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/hide-image-content//powerpoint/"
          description: "Apresentações do MS PowerPoint e Open Office"

        # format loop 5
        - name: "Redigir Imagem"
          format: "IMAGE"
          link: "/redaction/net/hide-image-content//image/"
          description: "Formatos de imagem populares"

        # format loop 6
        - name: "Redigir Foto"
          format: "PHOTO"
          link: "/redaction/net/hide-image-content//photo/"
          description: "Formatos de foto"

        # format loop 7
        - name: "Redigir DOCX"
          format: "DOCX"
          link: "/redaction/net/hide-image-content//docx/"
          description: "Documento Microsoft Word Open XML"
          
        # format loop 8
        - name: "Redigir XLSX"
          format: "XLSX"
          link: "/redaction/net/hide-image-content//xlsx/"
          description: "Planilha do Microsoft Excel Open XML"
          
        # format loop 9
        - name: "Redigir PPTX"
          format: "PPTX"
          link: "/redaction/net/hide-image-content//pptx/"
          description: "Apresentação PowerPoint Open XML"

        # format loop 10
        - name: "Redigir JPEG"
          format: "JPEG"
          link: "/redaction/net/hide-image-content//jpeg/"
          description: "Imagem JPEG"


---