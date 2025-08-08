
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: pt
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Cobrir Imagens em Arquivos XLSX com Sobreposições Usando Java"
head_description: "Use GroupDocs.Redaction for Java para cobrir imagens sensíveis em arquivos XLSX adicionando sobreposições coloridas. Proteja dados importantes enquanto mantém a estrutura do documento inalterada."

############################# Header ############################
title: "Cobrir Imagens Privadas em Documentos XLSX Usando Java" 
description: "Mantenha seguro o conteúdo sensível de imagens em arquivos XLSX com Java. Nossas ferramentas fáceis de usar tornam a redação de imagens rápida e confiável."
subtitle: "Principais Características do GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Sobre GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java fornece aos desenvolvedores Java ferramentas simples para ocultar ou deletar conteúdo em arquivos XLSX. Redija texto, imagens e metadados em diferentes tipos de documentos.

############################# Steps ############################
steps:
    enable: true
    title: "Mantenha Dados Privados Seguros em Documentos Xlsx"
    content: |
      GroupDocs.Redaction for Java ajuda suas aplicações Java a proteger documentos com passos simples.
      
      1. Inicialize um Redactor e carregue seu documento Xlsx.
      2. Defina opções de redação para corresponder ao seu projeto.
      3. Selecione a seção da imagem e escolha uma cor de sobreposição.
      4. Aplique a redação e salve seu arquivo.
   
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
        // Cobrir áreas sensíveis da imagem em XLSX

        // Crie Redactor com o caminho do arquivo
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Escolha dimensões e cor da sobreposição
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Selecione a área a ser redigida
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Aplique sobreposição e salve o documento
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Características Avançadas de Redação"
  description: "Com GroupDocs.Redaction for Java, você pode ocultar ou apagar conteúdo sensível em vários tipos de arquivos enquanto mantém o layout do documento limpo e legível."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Ferramentas Poderosas de Redação"
  features:
    # feature loop
    - title: "Encontrar e Substituir Texto"
      content: "Pesquise texto privado e redija para proteger seus documentos."

    # feature loop
    - title: "Cobrir Conteúdo da Imagem"
      content: "Aplique sobreposições para ocultar imagens confidenciais ou seções específicas."

    # feature loop
    - title: "Limpar Metadados Ocultos"
      content: "Remova ou atualize metadados para evitar compartilhar detalhes privados acidentalmente."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Ocultar Detalhes da Imagem Usando Sobreposições"
      content: |
        Aprenda como proteger partes sensíveis de imagens em seus documentos com sobreposições.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Carregue o documento a ser redigido
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Defina o tamanho, cor e posição da sobreposição
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Selecione uma área específica da imagem
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Aplique sobreposição para mascarar a imagem
              redactor.apply(redaction);

              // Salve o arquivo atualizado
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
    title: "Cobrir Conteúdo XLSX com Redações Java"
    exclude: "XLSX"
    description: "Use Java para mascarar ou apagar conteúdo privado em arquivos XLSX. Uma escolha inteligente para proteger documentos empresariais e pessoais."
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