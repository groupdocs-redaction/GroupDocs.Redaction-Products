
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: pt
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Cobrir Imagens em JPEG com Sobreposições Usando Java"
head_description: "Mantenha imagens sensíveis privadas em arquivos JPEG com GroupDocs.Redaction for Java. Adicione sobreposições para ocultar informações sem alterar o layout do seu documento."

############################# Header ############################
title: "Ocultar Imagens Sensíveis em Arquivos JPEG com Sobreposições Usando Java" 
description: "Proteja imagens pessoais e empresariais em arquivos JPEG usando Java. Ferramentas simples para ajudá-lo a proteger seus documentos."
subtitle: "Características Principais do GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "O que é GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java fornece aos desenvolvedores Java ferramentas para ocultar ou deletar conteúdo em arquivos JPEG. Proteja seus documentos cobrindo texto, imagens e metadados facilmente.

############################# Steps ############################
steps:
    enable: true
    title: "Ocultar Dados Privados em Arquivos Jpeg"
    content: |
      GroupDocs.Redaction for Java torna rápido para suas aplicações Java cobrir conteúdo privado.
      
      1. Inicialize um Redactor e carregue seu arquivo Jpeg.
      2. Ajuste as configurações de redação para atender às suas necessidades.
      3. Selecione a área da imagem e escolha a cor de sobreposição.
      4. Aplique a redação e salve o arquivo.
   
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
        // Mascarar dados de imagem em arquivos JPEG

        // Abra o arquivo usando Redactor
        final Redactor redactor = new Redactor("input.jpg");
        try
        {
            // Defina o tamanho e a cor da sobreposição
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Escolha a área a ser coberta
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Aplique a sobreposição e salve as alterações
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Ocultar Dados Sensíveis em Documentos"
  description: "GroupDocs.Redaction for Java ajuda você a ocultar ou remover conteúdo privado de vários tipos de arquivos. Certifique-se de que seus documentos permaneçam limpos e prontos para compartilhamento."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Recursos de Redação Tudo-em-Um"
  features:
    # feature loop
    - title: "Encontrar e Substituir Texto"
      content: "Pesquise seus documentos por texto privado e substitua-o para proteger dados sensíveis."

    # feature loop
    - title: "Cobrir Conteúdo da Imagem"
      content: "Use sobreposições para ocultar imagens inteiras ou partes selecionadas."

    # feature loop
    - title: "Remover Metadados"
      content: "Apague metadados ocultos para evitar exposições acidentais de informações sensíveis."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Use Sobreposições para Ocultar Conteúdo de Imagem"
      content: |
        Este exemplo mostra como proteger áreas sensíveis de imagem usando sobreposições.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Carregue o arquivo para redação
          final Redactor redactor = new Redactor("source.jpg");
          try
          {
              // Defina o tamanho, posição e cor da sobreposição
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Selecione uma área de imagem na primeira página
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Aplique a sobreposição para ocultar a imagem
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
    title: "Proteger Arquivos JPEG com Redações Java"
    exclude: "JPEG"
    description: "Use Java para ocultar ou apagar dados sensíveis em arquivos JPEG. Uma solução confiável para proteger seus documentos importantes."
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