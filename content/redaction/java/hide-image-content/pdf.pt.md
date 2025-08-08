
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: pt
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Ocultar Imagens em PDF com Sobreposições Usando Java"
head_description: "Com GroupDocs.Redaction for Java, você pode ocultar imagens privadas em arquivos PDF colocando sobreposições coloridas. Proteja visuais sensíveis enquanto mantém o design do seu documento intacto."

############################# Header ############################
title: "Ocultar Imagens Confidenciais em Arquivos PDF com Sobreposições Usando Java" 
description: "Proteja dados pessoais e empresariais em arquivos PDF com Java. Nossas ferramentas tornam a redação de imagens simples e eficaz."
subtitle: "Características do GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Sobre GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java oferece aos desenvolvedores Java ferramentas eficazes para ocultar ou apagar conteúdo em arquivos PDF. Cubra texto, imagens e metadados para manter seus documentos seguros em vários formatos.

############################# Steps ############################
steps:
    enable: true
    title: "Proteger Informações Empresariais em Arquivos Pdf"
    content: |
      GroupDocs.Redaction for Java ajuda suas aplicações Java a proteger documentos. Reduza imagens privadas em poucos passos.
      
      1. Inicialize um Redactor e defina o caminho para seu arquivo Pdf.
      2. Escolha as configurações de redação para melhores resultados.
      3. Escolha a área da imagem e selecione uma cor de sobreposição.
      4. Processe e salve o arquivo protegido.
   
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
        // Ocultar imagens sensíveis em PDF

        // Carregue o arquivo com Redactor
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // Defina a cor e as dimensões da sobreposição
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Selecione a área alvo para redação
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
  title: "Ocultar Conteúdo em Documentos"
  description: "Com GroupDocs.Redaction for Java, você pode ocultar ou excluir dados sensíveis em vários formatos de arquivo. Proteja informações privadas enquanto mantém os arquivos fáceis de ler e distribuir."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Opções Poderosas de Redação"
  features:
    # feature loop
    - title: "Modificar Texto em Qualquer Lugar"
      content: "Encontre e substitua palavras sensíveis em todo o seu documento para proteger conteúdo privado."

    # feature loop
    - title: "Ocultar Imagens"
      content: "Adicione sobreposições a imagens ou partes delas para manter visuais sensíveis ocultos."

    # feature loop
    - title: "Limpar Metadados"
      content: "Exclua ou edite metadados ocultos para evitar vazamentos de informações indesejadas."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Ocultar Dados da Imagem com Sobreposições"
      content: |
        Este exemplo demonstra como ocultar visuais confidenciais em documentos usando sobreposições.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Abra o documento para edição
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // Defina o tamanho, cor e posição da sobreposição
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Escolha a área da imagem para redigir na página um
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Adicione a sobreposição para cobrir dados sensíveis
              redactor.apply(redaction);

              // Salve o documento atualizado
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
    title: "Proteger Arquivos PDF com Redações Java"
    exclude: "PDF"
    description: "Use Java para ocultar ou remover dados sensíveis em arquivos PDF. Ideal para proteger documentos oficiais e privados."
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