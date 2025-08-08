
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: pt
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Ocultar Imagens em EXCEL com Sobreposições Usando Java"
head_description: "Use GroupDocs.Redaction for Java para cobrir imagens sensíveis em arquivos EXCEL. Adicione sobreposições coloridas para proteger informações privadas enquanto mantém o design do documento intacto."

############################# Header ############################
title: "Ocultar Imagens Sensíveis em Arquivos EXCEL com Sobreposições Usando Java" 
description: "Proteja visuais pessoais e empresariais em arquivos EXCEL com Java. Ferramentas rápidas e fáceis para proteção de dados confiável."
subtitle: "Descubra Características do GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Sobre GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java oferece aos desenvolvedores Java as ferramentas para ocultar ou deletar conteúdo em arquivos EXCEL. Cubra texto, imagens e metadados para proteger dados sensíveis.

############################# Steps ############################
steps:
    enable: true
    title: "Proteger Seus Dados em Arquivos Excel"
    content: |
      GroupDocs.Redaction for Java ajuda aplicações Java a ocultar conteúdo sensível dentro de documentos com facilidade.
      
      1. Crie um objeto Redactor e carregue seu arquivo Excel.
      2. Defina opções de redação para corresponder às suas necessidades.
      3. Escolha a área da imagem para cobrir e selecione uma cor de sobreposição.
      4. Aplique a redação e salve seu documento.
   
    code:
      platform: "java"
      copy_title: "Copiar"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Redações de exemplo"
      install:
        command: |
          <dependencies>
            <dependency>
              <groupId>com.groupdocs</groupId>
              <artifactId>groupdocs-redaction</artifactId>
              <version>{0}</version>
            </dependency>
          </dependencies>

          <repositories>
            <repository>
              <id>repository.groupdocs.com</id>
              <name>GroupDocs Repository</name>
              <url>https://repository.groupdocs.com/repo/</url>
            </repository>
          </repositories>
        copy_tip: "clique para copiar"
        copy_done: "copiado"
      links:
        #  loop
        - title: "Mais exemplos"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
        #  loop
        - title: "Documentação"
          link: "https://docs.groupdocs.com/redaction/java/"
          
      content: |
        ```java {style=abap}
        // Ocultar o conteúdo da imagem em EXCEL

        // Abra o arquivo com Redactor
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Defina o tamanho e a cor da sobreposição
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Marque a área que você deseja ocultar
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Aplique as alterações e salve o arquivo
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Ocultar ou Apagar Conteúdo em Documentos"
  description: "GroupDocs.Redaction for Java permite que você cubra ou apague dados sensíveis em vários tipos de arquivos. Mantenha seus documentos claros e seguros."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Características Avançadas de Redação"
  features:
    # feature loop
    - title: "Encontrar e Substituir Texto"
      content: "Pesquise documentos por texto privado e substitua para manter os dados seguros."

    # feature loop
    - title: "Cobrir Áreas de Imagem"
      content: "Oculte partes de imagens ou visuais inteiros com sobreposições coloridas."

    # feature loop
    - title: "Limpar Metadados"
      content: "Remova metadados ocultos para evitar compartilhar informações extras."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Cobrir Dados de Imagem com Sobreposições"
      content: |
        Este exemplo mostra como ocultar áreas sensíveis de imagem em documentos usando sobreposições.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Abra o arquivo para edição
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Defina as dimensões, cor e posição da sobreposição
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Escolha a seção da imagem na primeira página
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Aplique a sobreposição para ocultar dados
              redactor.apply(redaction);

              // Salve seu documento redigido
              SaveOptions save_options = new SaveOptions();
              save_options.setAddSuffix(true);
              save_options.setRasterizeToPDF(false);
              redactor.save(save_options);
          }
          finally { redactor.close(); }
          ```
        platform: "net"
        copy_title: "Copiar"
        install:
          command: |
            <dependencies>
              <dependency>
                <groupId>com.groupdocs</groupId>
                <artifactId>groupdocs-redaction</artifactId>
                <version>{0}</version>
              </dependency>
            </dependencies>
            <repositories>
              <repository>
                <id>repository.groupdocs.com</id>
                <name>GroupDocs Repository</name>
                <url>https://repository.groupdocs.com/repo/</url>
              </repository>
            </repositories>
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
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
          #  loop
          - title: "Documentação"
            link: "https://docs.groupdocs.com/redaction/java/"


############################# Actions ############################

actions:
  enable: true
  title: "Pronto para começar?"
  description: "Experimente os recursos do GroupDocs.Redaction gratuitamente ou solicite uma licença"
  items:
    #  loop
    - title: "Download do Maven"
      link: "https://releases.groupdocs.com/redaction/java/"
      color: "red"
        #  loop
    - title: "Licenciamento"
      link: "https://purchase.groupdocs.com/pricing/redaction/java/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Proteger Arquivos EXCEL com Redação Java"
    exclude: "EXCEL"
    description: "Use Java para ocultar ou apagar informações privadas em arquivos EXCEL. Uma maneira simples de garantir a privacidade do documento."
    items: 
        # format loop 1
        - name: "Redigir PDF"
          format: "PDF"
          link: "/redaction/java/hide-image-content//pdf/"
          description: "Formato de Documento Portátil da Adobe"

        # format loop 2
        - name: "Redigir Word"
          format: "WORD"
          link: "/redaction/java/hide-image-content//word/"
          description: "Documentos do MS Word e Open Office"
          
        # format loop 3
        - name: "Redigir Excel"
          format: "EXCEL"
          link: "/redaction/java/hide-image-content//excel/"
          description: "Planilhas do MS Excel e Open Office"

        # format loop 4
        - name: "Redigir PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/hide-image-content//powerpoint/"
          description: "Apresentações do MS PowerPoint e Open Office"

        # format loop 5
        - name: "Redigir Imagem"
          format: "IMAGE"
          link: "/redaction/java/hide-image-content//image/"
          description: "Formatos de imagem populares"

        # format loop 6
        - name: "Redigir Foto"
          format: "PHOTO"
          link: "/redaction/java/hide-image-content//photo/"
          description: "Formatos de foto"

        # format loop 7
        - name: "Redigir DOCX"
          format: "DOCX"
          link: "/redaction/java/hide-image-content//docx/"
          description: "Documento Microsoft Word Open XML"
          
        # format loop 8
        - name: "Redigir XLSX"
          format: "XLSX"
          link: "/redaction/java/hide-image-content//xlsx/"
          description: "Planilha do Microsoft Excel Open XML"
          
        # format loop 9
        - name: "Redigir PPTX"
          format: "PPTX"
          link: "/redaction/java/hide-image-content//pptx/"
          description: "Apresentação PowerPoint Open XML"

        # format loop 10
        - name: "Redigir JPEG"
          format: "JPEG"
          link: "/redaction/java/hide-image-content//jpeg/"
          description: "Imagem JPEG"


---