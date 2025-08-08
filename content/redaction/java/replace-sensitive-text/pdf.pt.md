
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: pt
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Redigir Texto Sensível em PDF Usando Java"
head_description: "Use GroupDocs.Redaction for Java para encontrar e remover dados privados dos seus arquivos PDF. Redação de texto simples, rápida e confiável."

############################# Header ############################
title: "Remova Dados Sensíveis de Arquivos PDF com Java" 
description: "Limpe arquivos PDF usando Java e GroupDocs.Redaction for Java. Redija conteúdo pessoal, legal ou comercial de maneira eficiente."
subtitle: "O que Você Pode Fazer com GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Sobre GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java oferece aos desenvolvedores Java uma maneira simples de limpar arquivos PDF. Remova ou substitua texto, imagens, comentários e dados ocultos.

############################# Steps ############################
steps:
    enable: true
    title: "Como Redigir Texto em Arquivos Pdf"
    content: |
      Com GroupDocs.Redaction for Java, desenvolvedores Java podem remover conteúdo sensível em apenas algumas etapas.
      
      1. Crie um Redactor e carregue seu arquivo Pdf.
      2. Escolha as configurações de redação desejadas.
      3. Digite o texto a ser pesquisado e sua substituição.
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
        // Como limpar um arquivo PDF

        // Crie um Redactor e carregue o documento
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // Defina suas regras de redação
            // Adicione o texto a ser removido e o que substituir
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Aplique a redação e salve o novo arquivo
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Mais Recursos de Redação"
  description: "GroupDocs.Redaction for Java remove informações sensíveis em vários formatos. Redija texto, imagens e metadados enquanto mantém os arquivos legíveis."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Ferramentas para redação de texto e imagem"
  features:
    # feature loop
    - title: "Encontrar e substituir texto"
      content: "Pesquise por palavras ou frases e substitua-as. Funciona com texto simples ou regex."

    # feature loop
    - title: "Cobrir conteúdo de imagem"
      content: "Oculte imagens ou partes de imagens usando sobreposições coloridas."

    # feature loop
    - title: "Limpar metadados"
      content: "Remova nomes de autores, datas ou outros detalhes ocultos antes de compartilhar."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redigir Texto com Regex"
      content: |
        Use regex para encontrar e ocultar padrões como emails, IDs ou formatos personalizados.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Abra o documento que você deseja editar
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // Adicione um padrão de regex EMAIL e o texto de substituição
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Aplique a redação ao conteúdo correspondente
              redactor.apply(redaction);

              // Salve a versão editada
              SaveOptions saveOptions = new SaveOptions();
              saveOptions.setAddSuffix(true);
              saveOptions.setRasterizeToPDF(false);
              redactor.save(saveOptions);
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
            link: "/examples/redaction/formats/replace-sensitive-text.pdf"
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
    title: "Redigir Arquivos PDF com Java"
    exclude: "PDF"
    description: "Proteja informações pessoais ou comerciais redigindo conteúdo PDF com ferramentas do Java."
    items: 
        # format loop 1
        - name: "Redigir PDF"
          format: "PDF"
          link: "/redaction/java/replace-sensitive-text//pdf/"
          description: "Formato de Documento Portátil da Adobe"

        # format loop 2
        - name: "Redigir Word"
          format: "WORD"
          link: "/redaction/java/replace-sensitive-text//word/"
          description: "Documentos do MS Word e Open Office"
          
        # format loop 3
        - name: "Redigir Excel"
          format: "EXCEL"
          link: "/redaction/java/replace-sensitive-text//excel/"
          description: "Planilhas do MS Excel e Open Office"

        # format loop 4
        - name: "Redigir PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/replace-sensitive-text//powerpoint/"
          description: "Apresentações do MS PowerPoint e Open Office"

        # format loop 5
        - name: "Redigir DOCX"
          format: "DOCX"
          link: "/redaction/java/replace-sensitive-text//docx/"
          description: "Documento Microsoft Word Open XML"
          
        # format loop 6
        - name: "Redigir XLSX"
          format: "XLSX"
          link: "/redaction/java/replace-sensitive-text//xlsx/"
          description: "Planilha do Microsoft Excel Open XML"
          
        # format loop 7
        - name: "Redigir PPTX"
          format: "PPTX"
          link: "/redaction/java/replace-sensitive-text//pptx/"
          description: "Apresentação PowerPoint Open XML"


---