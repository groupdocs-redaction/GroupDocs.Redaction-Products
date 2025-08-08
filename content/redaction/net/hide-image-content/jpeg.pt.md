
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: pt
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Oculte Imagens em JPEG com Sobreposições Usando C#"
head_description: "Proteja imagens privadas em arquivos JPEG com GroupDocs.Redaction for .NET adicionando sobreposições coloridas. Mantenha informações sensíveis seguras sem mudar o layout do arquivo."

############################# Header ############################
title: "Cubra Imagens Sensíveis em Arquivos JPEG com Sobreposições Usando .NET" 
description: "Mantenha suas imagens pessoais e empresariais seguras em arquivos JPEG usando C#. Nossas ferramentas simples tornam a proteção de arquivos fácil e confiável."
subtitle: "Principais Recursos do GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Sobre GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET fornece aos desenvolvedores C# as ferramentas para ocultar ou deletar conteúdo em arquivos JPEG. Proteja seus documentos cobrindo texto, imagens e metadados com facilidade.

############################# Steps ############################
steps:
    enable: true
    title: "Proteger Dados Sensíveis em Arquivos Jpeg"
    content: |
      GroupDocs.Redaction for .NET é projetado para ajudar seus aplicativos .NET a ocultar conteúdo privado rapidamente.
      
      1. Crie um objeto Redactor e forneça o caminho para o seu arquivo Jpeg.
      2. Configure opções de redaction para corresponder às suas necessidades.
      3. Marque a área da imagem e escolha uma cor de sobreposição.
      4. Execute a redaction e salve seu arquivo protegido.
   
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
        // Cubra o conteúdo da imagem em arquivos JPEG

        // Carregue o arquivo usando o Redactor
        using (Redactor redactor  = new Redactor("input.jpg"))
        {
            // Defina o tamanho da sobreposição e a cor
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Selecione a área para sobreposição
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Aplique a sobreposição e salve o arquivo
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redigir Qualquer Conteúdo em Documentos"
  description: "GroupDocs.Redaction for .NET torna simples ocultar ou remover conteúdo em vários formatos de arquivo. Proteja informações sensíveis enquanto mantém seus arquivos organizados e fáceis de compartilhar."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Ferramentas de Redaction para Controle Completo"
  features:
    # feature loop
    - title: "Editar Texto em Qualquer Lugar"
      content: "Encontre e substitua texto sensível em todo o seu documento para proteger dados privados."

    # feature loop
    - title: "Mascarar Imagens"
      content: "Aplique sobreposições a imagens ou áreas específicas para manter visuais sensíveis ocultos."

    # feature loop
    - title: "Limpar Metadados"
      content: "Remova ou atualize metadados ocultos para evitar vazamentos acidentais de dados."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Oculte Dados de Imagem com Sobreposições"
      content: |
        Este exemplo demonstra como mascarar áreas de imagem sensíveis em arquivos.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Abra o arquivo para edição
          using (Redactor redactor  = new Redactor("source.jpg"))
          {
              // Configure o tamanho, a posição e a cor da sobreposição
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Escolha uma área de imagem específica na página um
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Aplique a sobreposição para ocultar a imagem
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
    title: "Proteja Arquivos JPEG com Redações .NET"
    exclude: "JPEG"
    description: "Com .NET, você pode ocultar ou apagar conteúdo sensível em arquivos JPEG. Uma solução confiável para manter seus documentos seguros e profissionais."
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