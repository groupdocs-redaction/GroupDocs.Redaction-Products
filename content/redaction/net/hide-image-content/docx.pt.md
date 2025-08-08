
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: pt
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Cobrir Imagens em DOCX com Sobreposições Usando C#"
head_description: "Use GroupDocs.Redaction for .NET para cobrir imagens sensíveis em arquivos DOCX com sobreposições coloridas. Proteja dados privados enquanto mantém o layout do documento inalterado."

############################# Header ############################
title: "Cobrir Imagens Sensíveis em Documentos DOCX com Sobreposições Usando .NET" 
description: "Salve informações pessoais e empresariais em arquivos DOCX usando C#. Nossas ferramentas tornam a proteção de dados simples e confiável."
subtitle: "Recursos do GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Saiba Mais Sobre GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET fornece aos desenvolvedores C# ferramentas para ocultar ou deletar conteúdo em arquivos DOCX. Proteja documentos cobrindo texto, imagens e metadados em vários formatos.

############################# Steps ############################
steps:
    enable: true
    title: "Proteger Dados em Arquivos Docx"
    content: |
      GroupDocs.Redaction for .NET: Construído para ajudar seus aplicativos .NET a proteger documentos. Redija informações sensíveis em poucos passos.
      
      1. Inicialize um Redactor e forneça o caminho para seu arquivo Docx.
      2. Configure as opções de redaction para atender às suas necessidades.
      3. Escolha a área da imagem e selecione a cor da sobreposição.
      4. Execute a redaction e salve o arquivo.
   
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
        // Cubra áreas de imagem sensíveis em DOCX

        // Carregue o arquivo via construtor Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Defina a cor e o tamanho da sobreposição
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Defina a área de redaction
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Aplique sobreposição e salve o documento
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redigir Conteúdo em Arquivos"
  description: "Com GroupDocs.Redaction for .NET, você pode ocultar ou deletar conteúdo sensível em muitos tipos de arquivos. Mantenha documentos seguros enquanto preserva a legibilidade."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Opções de Redaction Flexíveis"
  features:
    # feature loop
    - title: "Editar Texto Facilmente"
      content: "Encontre e substitua texto privado em seu documento para melhor segurança de dados."

    # feature loop
    - title: "Cobrir Áreas de Imagem"
      content: "Sobreponha imagens inteiras ou selecione partes específicas para proteger informações visuais."

    # feature loop
    - title: "Limpar Metadados"
      content: "Remova ou altere metadados ocultos para evitar vazamentos de dados não intencionais."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Aplique Sobreposições para Ocultar Detalhes da Imagem"
      content: |
        Este exemplo demonstra como ocultar áreas sensíveis em imagens de documentos.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Carregue o documento que você deseja redigir
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Especifique os parâmetros da sobreposição: tamanho, posição, cor
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Dirija-se a uma área específica na primeira página
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Coloque a sobreposição na imagem
              redactor.Apply(redaction);

              // Salve o arquivo atualizado
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
    title: "Proteja Arquivos DOCX com Redação .NET"
    exclude: "DOCX"
    description: "Use .NET para cobrir ou remover dados sensíveis em arquivos DOCX. Ideal para manter documentos confidenciais seguros."
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