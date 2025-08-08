
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: pt
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Ocultar Imagens em PPTX com Sobreposições Usando Java"
head_description: "Com GroupDocs.Redaction for Java, você pode ocultar imagens sensíveis em arquivos PPTX adicionando sobreposições coloridas. Proteja informações confidenciais enquanto mantém o layout do documento intacto."

############################# Header ############################
title: "Ocultar Imagens Sensíveis em Documentos PPTX Usando Java" 
description: "Proteja dados pessoais e empresariais em arquivos PPTX usando Java. Nossas ferramentas tornam a redação de imagens rápida e simples."
subtitle: "Principais Benefícios do GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Sobre GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java fornece aos desenvolvedores Java ferramentas práticas para ocultar ou remover conteúdo em arquivos PPTX. Redija texto, imagens e metadados em diferentes tipos de documentos.

############################# Steps ############################
steps:
    enable: true
    title: "Proteger Dados Privados em Documentos Pptx"
    content: |
      GroupDocs.Redaction for Java facilita para aplicações Java proteger documentos ocultando conteúdo sensível.
      
      1. Inicialize um Redactor e carregue o arquivo Pptx.
      2. Defina as opções de redação de acordo com suas necessidades.
      3. Selecione áreas de imagem e defina cores de sobreposição.
      4. Aplique a redação e salve o arquivo atualizado.
   
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
        // Ocultar seções de imagem sensíveis em PPTX

        // Abra o documento usando Redactor
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Escolha a cor da sobreposição e o tamanho
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Destaque a área a ser oculta
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Aplique as alterações e salve o documento
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Ferramentas de Redação de Conteúdo"
  description: "GroupDocs.Redaction for Java ajuda você a ocultar ou apagar informações sensíveis em muitos formatos de arquivo. Mantenha documentos seguros sem comprometer a aparência profissional."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Características Avançadas de Redação"
  features:
    # feature loop
    - title: "Encontrar e Substituir Texto"
      content: "Pesquise rapidamente texto privado e redija para garantir a segurança do documento."

    # feature loop
    - title: "Cobrir Imagens com Sobreposições"
      content: "Oculte imagens inteiras ou áreas selecionadas aplicando sobreposições."

    # feature loop
    - title: "Limpar Metadados"
      content: "Remova ou edite metadados ocultos para evitar compartilhar informações confidenciais."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Cobrir Dados de Imagem com Sobreposições"
      content: |
        Este exemplo mostra como cobrir imagens sensíveis em seus documentos.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Carregue seu documento
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Defina o tamanho, cor e posição da sobreposição
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Selecione a área da imagem na primeira página
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Aplique a sobreposição para cobri-la
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
    title: "Redigir Conteúdo PPTX Usando Java"
    exclude: "PPTX"
    description: "Aplique Java para ocultar ou deletar conteúdo sensível em arquivos PPTX. Uma solução confiável para segurança de documentos."
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