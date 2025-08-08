
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: pt
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Ocultar Imagens em WORD com Sobreposições Usando Java"
head_description: "Com GroupDocs.Redaction for Java, você pode cobrir imagens sensíveis em arquivos WORD usando sobreposições coloridas. Proteja dados privados sem alterar o layout do documento."

############################# Header ############################
title: "Proteger Imagens Sensíveis em Arquivos WORD Usando Java" 
description: "Garanta visuais pessoais e empresariais em documentos WORD com Java. Redação de imagens rápida e confiável feita simples."
subtitle: "Principais Características do GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Sobre GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java oferece aos desenvolvedores Java ferramentas fáceis de usar para ocultar ou apagar conteúdo de arquivos WORD. Redija texto, imagens e metadados em diversos formatos.

############################# Steps ############################
steps:
    enable: true
    title: "Mantenha Dados Confidenciais Seguros em Arquivos Word"
    content: |
      GroupDocs.Redaction for Java facilita para as aplicações Java ocultar informações privadas dentro dos documentos.
      
      1. Inicialize um Redactor e carregue o arquivo Word.
      2. Defina as configurações de redação que você precisa.
      3. Destaque a área da imagem e selecione uma cor de sobreposição.
      4. Execute a redação e salve seu documento atualizado.
   
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
        // Ocultar conteúdo de imagem sensível em WORD

        // Carregue o arquivo usando Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Escolha a cor e o tamanho da sobreposição
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Marque a área da imagem a cobrir
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Aplique a sobreposição e salve o arquivo
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Ferramentas para Ocultar e Remover Conteúdo"
  description: "GroupDocs.Redaction for Java ajuda você a ocultar ou apagar dados sensíveis em vários formatos de arquivo. Mantenha seus documentos seguros e bem estruturados."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Recursos Eficazes de Redação"
  features:
    # feature loop
    - title: "Encontrar e Substituir Texto"
      content: "Pesquise documentos por texto privado e substitua para garantir a segurança dos dados."

    # feature loop
    - title: "Cobrir Áreas de Imagem"
      content: "Oculte imagens inteiras ou regiões selecionadas aplicando sobreposições."

    # feature loop
    - title: "Apagar Metadados"
      content: "Remova ou modifique metadados ocultos para proteger informações confidenciais."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Use Sobreposições para Ocultar Dados de Imagem"
      content: |
        Este exemplo mostra como proteger conteúdo sensível de imagem em documentos com sobreposições.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Carregue o documento
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Defina as propriedades da sobreposição como tamanho, posição e cor
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Marque a área da imagem na primeira página
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Cubra a área com a sobreposição
              redactor.apply(redaction);

              // Salve o documento redigido
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
    title: "Ocultar Conteúdo em Arquivos WORD com Java"
    exclude: "WORD"
    description: "Use Java para ocultar ou remover dados sensíveis em arquivos WORD. Uma maneira eficaz de manter os documentos seguros."
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