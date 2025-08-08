
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: pt
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Ocultar Imagens em PHOTO com Sobreposições Usando Java"
head_description: "Use GroupDocs.Redaction for Java para mascarar áreas sensíveis de imagem em arquivos PHOTO com sobreposições. Proteja conteúdo privado enquanto mantém o layout do arquivo inalterado."

############################# Header ############################
title: "Proteger Conteúdo de Imagem em Arquivos PHOTO com Sobreposições Usando Java" 
description: "Garanta dados de imagem pessoais e empresariais em arquivos PHOTO com Java. Ferramentas simples projetadas para proteção rápida e eficaz."
subtitle: "Principais Características do GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Saiba Mais Sobre GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java fornece aos desenvolvedores Java ferramentas confiáveis para ocultar ou apagar conteúdo em arquivos PHOTO. Proteja documentos mascarando texto, imagens e metadados.

############################# Steps ############################
steps:
    enable: true
    title: "Ocultar Conteúdo em Arquivos Photo com Sobreposições"
    content: |
      GroupDocs.Redaction for Java torna fácil ocultar áreas sensíveis em suas aplicações Java.
      
      1. Inicialize um Redactor e carregue seu arquivo Photo.
      2. Defina as preferências de redação conforme necessário.
      3. Selecione regiões de imagem e escolha as cores de sobreposição.
      4. Execute a redação e salve o arquivo.
   
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
        // Cobrir seções de imagem em PHOTO com sobreposições

        // Carregue o arquivo usando Redactor
        final Redactor redactor = new Redactor("input.jpeg");
        try
        {
            // Defina a cor e tamanho da sobreposição
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Marque a área de imagem a cobrir
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Aplique a sobreposição e salve o resultado
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redigir Conteúdo Sensível com Facilidade"
  description: "GroupDocs.Redaction for Java permite que você ocultar ou apagar dados privados em vários tipos de documentos. Mantenha seus arquivos limpos e prontos para compartilhar."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Controle Total Sobre as Redações"
  features:
    # feature loop
    - title: "Pesquisar e Substituir Texto"
      content: "Encontre texto sensível em documentos e substitua para proteger informações."

    # feature loop
    - title: "Sobrepor Áreas de Imagem"
      content: "Use sobreposições para cobrir imagens inteiras ou partes selecionadas."

    # feature loop
    - title: "Remover Metadados"
      content: "Limpe metadados ocultos para evitar exposição acidental de dados sensíveis."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Mascarar Dados de Imagem com Sobreposições"
      content: |
        Este exemplo mostra como cobrir conteúdo de imagem com sobreposições em um documento.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Carregue o documento para edição
          final Redactor redactor = new Redactor("source.jpeg");
          try
          {
              // Defina o tamanho, cor e posição da sobreposição
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Mire na seção de imagem na página um
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Aplique a sobreposição para ocultar conteúdo
              redactor.apply(redaction);

              // Salve o arquivo editado
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
    title: "Proteger Arquivos PHOTO com Redações Java"
    exclude: "PHOTO"
    description: "Com Java, você pode ocultar ou remover dados sensíveis em arquivos PHOTO. Uma maneira confiável de proteger documentos oficiais."
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