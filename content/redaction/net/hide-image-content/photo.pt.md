
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: pt
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Adicione Sobreposições para Ocultar Imagens em PHOTO Usando C#"
head_description: "Oculte o conteúdo de imagem sensível em arquivos PHOTO com GroupDocs.Redaction for .NET aplicando sobreposições. Mantenha dados privados seguros enquanto mantém o layout do documento intacto."

############################# Header ############################
title: "Oculte Conteúdo de Imagem em Arquivos PHOTO com Sobreposições Usando .NET" 
description: "Proteja imagens pessoais e empresariais em arquivos PHOTO usando C#. Ferramentas fáceis de usar para proteção de conteúdo eficaz."
subtitle: "Recursos Principais do GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Sobre GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET oferece aos desenvolvedores C# uma maneira poderosa de ocultar ou deletar conteúdo em arquivos PHOTO. Proteja documentos mascarando texto, imagens e metadados rapidamente.

############################# Steps ############################
steps:
    enable: true
    title: "Proteger Conteúdo em Arquivos Photo"
    content: |
      GroupDocs.Redaction for .NET torna rápido e simples proteger conteúdo em seus aplicativos .NET.
      
      1. Crie um objeto Redactor e aponte-o para seu arquivo Photo.
      2. Ajuste as configurações de redaction conforme suas necessidades.
      3. Escolha áreas de imagem e defina a cor da sobreposição.
      4. Execute a redaction e salve o arquivo protegido.
   
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
        // Aplique sobreposições para ocultar imagens em PHOTO

        // Carregue o arquivo com Redactor
        using (Redactor redactor  = new Redactor("input.jpeg"))
        {
            // Configure o tamanho e a cor da sobreposição
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Escolha a área da imagem para ocultar
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Aplique a sobreposição e salve as alterações
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redija Conteúdo Sensível Facilmente"
  description: "GroupDocs.Redaction for .NET ajuda você a ocultar ou deletar conteúdo sensível em muitos tipos de arquivos. Proteja dados privados enquanto mantém seus documentos limpos e fáceis de ler."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Ferramentas de Redaction Tudo-em-Um"
  features:
    # feature loop
    - title: "Editar Texto em Documentos"
      content: "Pesquise e substitua texto privado em seus documentos para garantir a segurança das informações sensíveis."

    # feature loop
    - title: "Ocultar Áreas de Imagem"
      content: "Adicione sobreposições a imagens ou partes selecionadas para cobrir visuais sensíveis."

    # feature loop
    - title: "Limpar Metadados"
      content: "Remova metadados ocultos para evitar vazamentos acidentais de dados."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Oculte Dados de Imagem com Sobreposições"
      content: |
        Este exemplo de código demonstra como cobrir áreas de imagem em um arquivo usando sobreposições.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Carregue o arquivo para edição
          using (Redactor redactor  = new Redactor("source.jpeg"))
          {
              // Defina a posição, o tamanho e a cor da sobreposição
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Direcione uma área de imagem específica na página um
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Aplique a sobreposição para mascarar a imagem
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
    title: "Proteja Arquivos PHOTO com Redações .NET"
    exclude: "PHOTO"
    description: "Com .NET, você pode ocultar ou excluir conteúdo privado em arquivos PHOTO. Uma forma simples e eficaz de proteger documentos oficiais."
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