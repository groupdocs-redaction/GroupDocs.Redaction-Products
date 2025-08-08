
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: pt
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Redigir Imagens em PPTX com Sobreposições Usando C#"
head_description: "Com GroupDocs.Redaction for .NET, você pode ocultar conteúdo de imagem sensível em arquivos PPTX aplicando sobreposições coloridas. Proteja dados confidenciais sem alterar a estrutura do seu documento."

############################# Header ############################
title: "Redigir Imagens Sensíveis em Documentos PPTX Usando .NET" 
description: "Proteja dados privados e empresariais em arquivos PPTX com C#. Nossas ferramentas tornam a redaction de imagens rápida e eficiente."
subtitle: "O que GroupDocs.Redaction for .NET Oferece" 

############################# About ############################
about:
    enable: true
    title: "Sobre GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET oferece aos desenvolvedores C# ferramentas fáceis de usar para ocultar ou deletar conteúdo em arquivos PPTX. Proteja documentos redigindo texto, imagens e metadados em vários formatos.

############################# Steps ############################
steps:
    enable: true
    title: "Mantenha Dados Empresariais Seguros em Documentos Pptx"
    content: |
      GroupDocs.Redaction for .NET: Ajudando aplicativos .NET a proteger documentos, escondendo informações sensíveis.
      
      1. Configure uma instância de Redactor e carregue o arquivo Pptx.
      2. Configure as configurações de redaction para se adaptar às suas necessidades.
      3. Selecione áreas de imagem e atribua cores de sobreposição.
      4. Processar a redaction e salve seu arquivo.
   
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
        // Redigir áreas sensíveis de imagem em PPTX

        // Abra o arquivo usando Redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Defina a cor e as dimensões da sobreposição
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Selecione a área a ser redigida
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
  title: "Ferramentas de Redação de Documentos"
  description: "GroupDocs.Redaction for .NET permite ocultar ou deletar conteúdo sensível em vários tipos de arquivos. Proteja informações enquanto mantém documentos limpos e compartilháveis."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Ferramentas Poderosas de Redaction"
  features:
    # feature loop
    - title: "Pesquisar e Substituir Texto"
      content: "Localize e redija texto privado para aprimorar a segurança do documento."

    # feature loop
    - title: "Redigir Conteúdo de Imagem"
      content: "Cubra imagens inteiras ou regiões selecionadas com sobreposições para esconder visuais privados."

    # feature loop
    - title: "Remover Metadados"
      content: "Apague ou modifique metadados ocultos para evitar vazamentos de dados."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Oculte Dados de Imagem com Sobreposições"
      content: |
        Este exemplo demonstra como redigir imagens sensíveis em documentos.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Carregue o documento
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Defina o tamanho, a posição e a cor da sobreposição
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Especifique a área a ser redigida na primeira página
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Aplique a sobreposição
              redactor.Apply(redaction);

              // Salve o arquivo redigido
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
    title: "Redigir Conteúdo PPTX com .NET"
    exclude: "PPTX"
    description: "Use .NET para esconder ou deletar conteúdo sensível em arquivos PPTX. Uma solução confiável para segurança de documentos."
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