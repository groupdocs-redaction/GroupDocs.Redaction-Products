
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: pt
format: Image
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Proteja Imagens em IMAGE Adicionando Sobreposições Usando C#"
head_description: "Com GroupDocs.Redaction for .NET, você pode ocultar dados sensíveis de imagem em arquivos IMAGE usando sobreposições coloridas. Garanta informações importantes enquanto mantém o design original do arquivo."

############################# Header ############################
title: "Oculte Imagens Privadas em arquivos IMAGE Usando Sobreposições com .NET" 
description: "Mantenha imagens empresariais e pessoais sensíveis protegidas em arquivos IMAGE usando C#. Ferramentas simples para proteção de conteúdo rápida e eficaz."
subtitle: "Recursos Chave do GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "O que é GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET fornece aos desenvolvedores C# ferramentas poderosas para ocultar ou deletar conteúdo em arquivos IMAGE. Proteja seus documentos mascarando texto, imagens e metadados.

############################# Steps ############################
steps:
    enable: true
    title: "Proteger Dados em Arquivos Image com Sobreposições"
    content: |
      Use GroupDocs.Redaction for .NET para rapidamente ocultar conteúdo privado em seus aplicativos .NET.
      
      1. Crie uma instância de Redactor e forneça o caminho do seu arquivo Image.
      2. Ajuste as configurações de redaction conforme necessário.
      3. Selecione áreas de imagem e defina cores de sobreposição.
      4. Processar o arquivo e salve a versão segura.
   
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
        // Proteja o conteúdo da imagem em IMAGE

        // Abra o arquivo usando o Redactor
        using (Redactor redactor  = new Redactor("input.png"))
        {
            // Defina as dimensões e cores da sobreposição
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Selecione a área que deseja ocultar
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Aplique a sobreposição e salve o resultado
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redigir Conteúdo em Diferentes Formatos de Arquivo"
  description: "Com GroupDocs.Redaction for .NET, você pode ocultar ou deletar conteúdo em uma variedade de formatos de arquivo. Proteja dados sensíveis enquanto mantém um formato limpo e legível."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Controle Total Sobre Redações"
  features:
    # feature loop
    - title: "Encontrar e Substituir Texto"
      content: "Pesquise em documentos e substitua texto sensível para proteger informações privadas."

    # feature loop
    - title: "Sobrepor Imagens"
      content: "Aplique sobreposições coloridas para mascarar imagens inteiras ou partes selecionadas."

    # feature loop
    - title: "Editar Metadados"
      content: "Remova ou modifique campos de metadados ocultos para prevenir a exposição de dados."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Cubra Conteúdo de Imagem com Sobreposições"
      content: |
        Este exemplo de código mostra como aplicar sobreposições para ocultar conteúdo sensível de imagem.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Carregue o arquivo para redaction
          using (Redactor redactor  = new Redactor("source.png"))
          {
              // Configure o tamanho, a cor e a posição da sobreposição
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Escolha a área de imagem na página um
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Adicione a sobreposição para ocultar o conteúdo da imagem
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
    title: "Oculte Conteúdo em Arquivos IMAGE Usando Redações .NET"
    exclude: "IMAGE"
    description: "Use .NET para ocultar ou remover dados sensíveis em arquivos IMAGE. Um método confiável para garantir arquivos oficiais e proteger informações confidenciais."
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