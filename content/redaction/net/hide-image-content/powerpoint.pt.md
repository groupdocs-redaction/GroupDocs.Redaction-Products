
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: pt
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Oculte Imagens Sensíveis em POWERPOINT Usando Sobreposições com C#"
head_description: "Use GroupDocs.Redaction for .NET para colocar sobreposições em imagens em arquivos POWERPOINT, mantendo informações privadas ocultas enquanto mantém o layout intacto."

############################# Header ############################
title: "Oculte Imagens Privadas em Documentos POWERPOINT Usando Sobreposições com .NET" 
description: "Proteja dados pessoais e corporativos em arquivos POWERPOINT com C#. Ferramentas simples para forte privacidade de documentos."
subtitle: "Principais Recursos do GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "O que é GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET fornece aos desenvolvedores C# ferramentas simples para ocultar ou remover conteúdo em arquivos POWERPOINT. Proteja seus documentos cobrindo texto sensível, imagens e metadados.

############################# Steps ############################
steps:
    enable: true
    title: "Proteja Informações Sensíveis em Documentos Powerpoint"
    content: |
      GroupDocs.Redaction for .NET foi desenvolvido para ajudar seus aplicativos .NET a salvaguardar o conteúdo do documento rapidamente.
      
      1. Crie um objeto Redactor e especifique o arquivo Powerpoint.
      2. Ajuste as configurações de redaction para atender às suas necessidades.
      3. Selecione a área da imagem e escolha a cor da sobreposição.
      4. Aplique redaction e salve o documento.
   
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
        // Oculte dados de imagem em arquivos POWERPOINT

        // Carregue o arquivo usando Redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Defina a cor e as dimensões da sobreposição
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Escolha a área a ser coberta
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
  title: "Redigir Dados Sensíveis em Documentos"
  description: "GroupDocs.Redaction for .NET permite que você oculte ou remova conteúdo em vários tipos de documentos. Proteja dados privados enquanto mantém arquivos fáceis de usar e compartilhar."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Ferramentas Ricas em Recursos de Redaction"
  features:
    # feature loop
    - title: "Localizar e Editar Texto"
      content: "Localize e redija texto privado para aumentar a segurança do documento."

    # feature loop
    - title: "Cobrir Conteúdo de Imagem"
      content: "Use sobreposições para mascarar imagens ou partes selecionadas, garantindo que visuais privados permaneçam ocultos."

    # feature loop
    - title: "Limpar Metadados Ocultos"
      content: "Apague ou modifique metadados ocultos para evitar exposições acidentais de dados."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Proteja Dados de Imagem com Sobreposições"
      content: |
        Este exemplo demonstra como ocultar conteúdo sensível em imagens de documentos.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Carregue o arquivo para redaction
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Defina o tamanho, a posição e a cor da sobreposição
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Marque a área da imagem na página um
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Aplique a sobreposição para cobrir a imagem
              redactor.Apply(redaction);

              // Salve o documento redigido
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
    title: "Proteja Conteúdo POWERPOINT com Redações .NET"
    exclude: "POWERPOINT"
    description: "Use .NET para cobrir ou deletar conteúdo privado em arquivos POWERPOINT. Uma solução confiável para proteger documentos sensíveis."
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