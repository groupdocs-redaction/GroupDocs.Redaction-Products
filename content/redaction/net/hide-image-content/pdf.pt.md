
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: pt
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Ocultar Imagens em PDF com Sobreposições Usando C#"
head_description: "Com GroupDocs.Redaction for .NET, você pode proteger imagens sensíveis em arquivos PDF adicionando sobreposições coloridas. Garanta informações privadas sem alterar o layout do documento."

############################# Header ############################
title: "Proteja Imagens Sensíveis em Documentos PDF com Sobreposições Usando .NET" 
description: "Mantenha dados empresariais e pessoais seguros em arquivos PDF usando C#. Nossas ferramentas ajudam você a alcançar uma forte proteção de dados."
subtitle: "Recursos do GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Sobre GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET oferece aos desenvolvedores C# ferramentas poderosas para ocultar ou remover conteúdo de arquivos PDF. Proteja documentos cobrindo texto, imagens e metadados em vários formatos.

############################# Steps ############################
steps:
    enable: true
    title: "Proteger Dados Empresariais em Documentos Pdf"
    content: |
      GroupDocs.Redaction for .NET: Projetado para ajudar seus aplicativos .NET a proteger documentos. Redija informações privadas rapidamente.
      
      1. Crie uma instância de Redactor e forneça o caminho para o arquivo Pdf que deseja proteger.
      2. Ajuste as configurações de redaction para obter o resultado desejado.
      3. Selecione a área da imagem e defina a cor da sobreposição.
      4. Processar o arquivo e salvar o documento redigido.
   
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
        // Oculte conteúdo de imagem sensível em PDF

        // Carregue o arquivo usando o construtor Redactor
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // Configure a cor e o tamanho da sobreposição
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Selecione a área para a redaction
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Aplique a sobreposição na imagem e salve o arquivo
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redigir Conteúdo em Documentos"
  description: "Com GroupDocs.Redaction for .NET, você pode ocultar ou deletar conteúdo em uma ampla variedade de formatos de arquivo. Proteja informações confidenciais enquanto mantém documentos fáceis de ler e compartilhar."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Recursos Avançados de Redaction"
  features:
    # feature loop
    - title: "Editar Texto em Qualquer Lugar"
      content: "Pesquise e substitua texto sensível em todo o seu documento para manter os dados privados seguros."

    # feature loop
    - title: "Cobrir Imagens"
      content: "Aplique sobreposições a imagens inteiras ou áreas selecionadas para ocultar visuais sensíveis."

    # feature loop
    - title: "Gerenciar Metadados"
      content: "Remova ou modifique metadados ocultos para evitar exposição acidental de dados."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Use Sobreposições para Ocultar Dados de Imagem"
      content: |
        Este exemplo mostra como cobrir informações sensíveis em imagens de documentos.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Carregue o documento para redaction
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // Defina as configurações da sobreposição: tamanho, posição e cor
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Dirija-se a uma área específica da imagem na primeira página
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Aplique a sobreposição para ocultar a imagem
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
    title: "Proteja Conteúdos PDF com Redações .NET"
    exclude: "PDF"
    description: "Use .NET para ocultar ou deletar conteúdo sensível em arquivos PDF. Uma solução eficaz para proteger documentos oficiais e confidenciais."
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