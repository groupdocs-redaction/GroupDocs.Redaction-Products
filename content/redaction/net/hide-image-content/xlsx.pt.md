
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: pt
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Mascara Imagens em Arquivos XLSX com Sobreposições Usando C#"
head_description: "Com GroupDocs.Redaction for .NET, você pode mascarar conteúdo de imagem sensível em arquivos XLSX aplicando sobreposições coloridas. Proteja dados importantes enquanto mantém a estrutura do documento intacta."

############################# Header ############################
title: "Mascarar Imagens Sensíveis em Documentos XLSX Usando .NET" 
description: "Assegure a privacidade de dados em arquivos XLSX com C#. Nossas ferramentas são projetadas para tornar a redaction de imagens rápida e eficaz."
subtitle: "Recursos Chave do GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Sobre GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET oferece aos desenvolvedores C# ferramentas simples para ocultar ou apagar conteúdo de arquivos XLSX. Proteja documentos redigindo texto, imagens e metadados em diferentes formatos.

############################# Steps ############################
steps:
    enable: true
    title: "Proteger Dados Privados em Documentos Xlsx"
    content: |
      GroupDocs.Redaction for .NET: Ajudando seus aplicativos .NET a proteger documentos de forma eficiente.
      
      1. Crie uma instância de Redactor e carregue o arquivo Xlsx.
      2. Configure os parâmetros de redaction para corresponder às suas necessidades.
      3. Defina a área da imagem e escolha a cor da sobreposição.
      4. Aplique a redaction e salve o arquivo de saída.
   
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
        // Mascarar partes sensíveis da imagem em XLSX

        // Inicialize Redactor com o caminho do arquivo
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Escolha o tamanho e a cor da sobreposição
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Marque a área a ser redigida
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Aplique e salve as alterações
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Recursos de Redaction de Documentos"
  description: "Com GroupDocs.Redaction for .NET, você pode remover ou ocultar conteúdo em vários formatos de arquivo. Mantenha dados sensíveis privados enquanto mantém um layout limpo."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Recursos Robustos de Redaction"
  features:
    # feature loop
    - title: "Pesquisar e Substituir Texto"
      content: "Encontre rapidamente texto confidencial e redija para proteger dados sensíveis."

    # feature loop
    - title: "Mascarar Conteúdo de Imagem"
      content: "Aplique sobreposições a imagens inteiras ou áreas específicas para esconder visuais privados."

    # feature loop
    - title: "Limpar Metadados"
      content: "Remova ou ajuste metadados ocultos para evitar exposições acidentais de dados."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Oculte Conteúdo de Imagem com Sobreposições"
      content: |
        Aprenda como mascarar regiões sensíveis da imagem em seus documentos.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Abra o documento para redaction
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Defina os atributos da sobreposição: tamanho, localização, cor
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Concentre-se em uma área específica da imagem
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Aplique a sobreposição na área da imagem
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
    title: "Mascarar Conteúdo XLSX com Redações .NET"
    exclude: "XLSX"
    description: "Use .NET para redigir ou deletar conteúdo sensível em arquivos XLSX. Uma solução prática para proteger documentos empresariais e pessoais."
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