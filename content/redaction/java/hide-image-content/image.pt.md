
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: pt
format: Image
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Ocultar Imagens em IMAGE com Sobreposições Usando Java"
head_description: "Use GroupDocs.Redaction for Java para mascarar áreas sensíveis de imagem em arquivos IMAGE com sobreposições coloridas. Mantenha dados importantes seguros sem alterar o layout do documento."

############################# Header ############################
title: "Proteger Imagens Privadas em Arquivos IMAGE Usando Sobreposições com Java" 
description: "Proteja imagens empresariais e pessoais em arquivos IMAGE com Java. Ferramentas fáceis para proteção rápida e confiável de dados."
subtitle: "Principais Características do GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Sobre GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java dá aos desenvolvedores Java a capacidade de ocultar ou apagar conteúdo em arquivos IMAGE. Proteja documentos mascarando texto, imagens e metadados.

############################# Steps ############################
steps:
    enable: true
    title: "Proteger Conteúdo em Arquivos Image Usando Sobreposições"
    content: |
      Cubra rapidamente áreas sensíveis em suas aplicações Java com GroupDocs.Redaction for Java.
      
      1. Crie um objeto Redactor e especifique o caminho do seu arquivo Image.
      2. Defina as opções de redação conforme necessário.
      3. Marque as seções da imagem e escolha as cores de sobreposição.
      4. Processe e salve seu arquivo redigido.
   
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
        // Ocultar conteúdo de imagem em IMAGE

        // Carregue o arquivo usando Redactor
        final Redactor redactor = new Redactor("input.png");
        try
        {
            // Defina dimensões e cores da sobreposição
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Escolha a área a ser protegida
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
  title: "Redigir Conteúdo Sensível em Qualquer Documento"
  description: "GroupDocs.Redaction for Java ajuda você a ocultar ou deletar conteúdo privado em vários formatos de documentos. Garanta que os documentos permaneçam limpos e seguros para distribuição."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Ferramentas de Redação com Controle Total"
  features:
    # feature loop
    - title: "Pesquisar e Substituir Texto"
      content: "Encontre texto sensível em documentos e substitua para proteger informações."

    # feature loop
    - title: "Cobrir Imagens com Sobreposições"
      content: "Use sobreposições para ocultar imagens inteiras ou seções específicas."

    # feature loop
    - title: "Limpar Metadados"
      content: "Apague ou edite metadados ocultos para evitar vazamentos de dados."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Mascarar Áreas de Imagem com Sobreposições"
      content: |
        Este exemplo de código demonstra como ocultar partes sensíveis de imagem usando sobreposições.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Abra o arquivo para edição
          final Redactor redactor = new Redactor("source.png");
          try
          {
              // Defina o tamanho, cor e posição da sobreposição
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Selecione a área da imagem na página um
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Aplique a sobreposição para mascarar o conteúdo
              redactor.apply(redaction);

              // Salve o arquivo modificado
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
    title: "Proteger Arquivos IMAGE com Redações Java"
    exclude: "IMAGE"
    description: "Com Java, você pode facilmente ocultar ou deletar conteúdo sensível em arquivos IMAGE. Uma solução confiável para manter documentos seguros e confidenciais."
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