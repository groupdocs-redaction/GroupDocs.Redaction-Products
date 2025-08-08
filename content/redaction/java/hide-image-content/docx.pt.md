
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: pt
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Ocultar Imagens em DOCX com Sobreposições Usando Java"
head_description: "Com GroupDocs.Redaction for Java, você pode ocultar imagens sensíveis em arquivos DOCX aplicando sobreposições coloridas. Proteja informações privadas sem mudar o layout do seu documento."

############################# Header ############################
title: "Ocultar Imagens Confidenciais em Documentos DOCX com Sobreposições Usando Java" 
description: "Proteja dados empresariais e pessoais em arquivos DOCX usando Java. Nossas ferramentas ajudam você a manter informações sensíveis seguras e seus documentos limpos."
subtitle: "Principais Características do GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Sobre GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java oferece aos desenvolvedores Java as ferramentas para esconder ou apagar conteúdo em arquivos DOCX. Proteja texto, imagens e metadados em vários formatos de documentos.

############################# Steps ############################
steps:
    enable: true
    title: "Segurança de Dados em Documentos Docx"
    content: |
      GroupDocs.Redaction for Java dá às suas aplicações Java o poder de redigir documentos. Cubra conteúdo privado de forma rápida e eficiente.
      
      1. Crie um Redactor e defina o caminho do arquivo para seu documento Docx.
      2. Ajuste as configurações de redação para se adequar às suas necessidades.
      3. Escolha a área da imagem que deseja cobrir e selecione uma cor de sobreposição.
      4. Execute o processo de redação e salve o arquivo.
   
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
        // Ocultar seções de imagens sensíveis em DOCX

        // Carregue o documento usando Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Defina a cor e as dimensões da sobreposição
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Marque a área a ser redigida
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Aplique sobreposição e salve o arquivo
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Ocultar Conteúdo Sensível em Arquivos"
  description: "Com GroupDocs.Redaction for Java, você pode redigir ou remover conteúdo de vários tipos de arquivos. Mantenha seus documentos seguros e legíveis."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Recursos de Redação para Documentos"
  features:
    # feature loop
    - title: "Editar Conteúdo de Texto"
      content: "Encontre e substitua texto sensível em seus arquivos para manter a privacidade dos dados."

    # feature loop
    - title: "Sobrepor Imagens"
      content: "Cubra imagens inteiras ou partes selecionadas para ocultar informações visuais confidenciais."

    # feature loop
    - title: "Remover Metadados"
      content: "Limpe metadados ocultos dos documentos para evitar exposição de dados."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Sobrepor Imagens para Ocultar Dados Sensíveis"
      content: |
        Este exemplo mostra como aplicar sobreposições para cobrir áreas de imagem confidenciais em documentos.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Abra o documento para edição
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Defina o tamanho, cor e posição da sobreposição
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Selecione uma área alvo na página um
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Aplique a sobreposição para cobrir a imagem
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
    title: "Redigir Arquivos DOCX com Java"
    exclude: "DOCX"
    description: "Use Java para ocultar ou excluir dados privados em arquivos DOCX. Perfeito para manter documentos empresariais e confidenciais seguros."
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