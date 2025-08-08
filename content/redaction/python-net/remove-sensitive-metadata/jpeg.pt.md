
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: pt
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Editar Metadados em JPEG Usando Python"
head_description: "GroupDocs.Redaction for Python via .NET ajuda você a limpar ou atualizar metadados em documentos JPEG. Remova campos ocultos que podem revelar detalhes privados."

############################# Header ############################
title: "Limpar Metadados em JPEG via Python" 
description: "Proteja seus arquivos JPEG removendo metadados ocultos com ferramentas simples desenvolvidas para Python."
subtitle: "Características Principais do GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Saiba Mais Sobre GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction oferece aos desenvolvedores Python ferramentas simples para remover texto, imagens e metadados de documentos JPEG.

############################# Steps ############################
steps:
    enable: true
    title: "Passos para Limpar Metadados de Jpeg"
    content: |
      GroupDocs.Redaction torna a remoção de metadados rápida e simples para seus aplicativos Python via .NET.
      
      1. Configure um Redactor e abra seu documento Jpeg.
      2. Escolha opções para remover campos de metadados.
      3. Execute a redacção para limpar o arquivo.
      4. Salve a nova versão sem dados ocultos.
   
    code:
      platform: "python-net"
      copy_title: "Copiar"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Redações de exemplo"
      install:
        command: |
        command: "pip install groupdocs-redaction-net"
        copy_tip: "clique para copiar"
        copy_done: "copiado"
      links:
        #  loop
        - title: "Mais exemplos"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
        #  loop
        - title: "Documentação"
          link: "https://docs.groupdocs.com/redaction/python-net/"
          
      content: |
        ```python {style=abap}
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr

        # Limpe os metadados em JPEG

        # Escolha os campos de metadados para limpar
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Abra o arquivo usando Redactor
        with gr.Redactor("input.jpg") as redactor:

            # Aplique a redacção e salve o arquivo
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Proteja a Privacidade em Cada Arquivo"
  description: "GroupDocs.Redaction for Python via .NET oferece controle sobre dados sensíveis em documentos. Remova conteúdo oculto em texto, imagens e metadados."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Características de Redacção de Metadados"
  features:
    # feature loop
    - title: "Encontrar e Apagar Texto"
      content: "Busque palavras-chave ou informações privadas e remova-as do documento."

    # feature loop
    - title: "Ocultar Detalhes de Imagens"
      content: "Cubra áreas de imagens que não devem ser vistas por outros."

    # feature loop
    - title: "Editar Metadados do Arquivo"
      content: "Modifique ou exclua campos de metadados para proteger informações do documento."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Editar Campos de Metadados"
      content: |
        Este exemplo demonstra como remover ou modificar campos como Autor e Título em um documento JPEG.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Direcione o campo do Autor
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Direcione o campo do Título
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Abra o arquivo JPEG
          with gr.Redactor("source.jpg") as redactor:

              # Execute o processo de limpeza
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Salve a nova versão
              save_options = gro.SaveOptions()
              save_options.add_suffix = True
              save_options.rasterize_to_pdf = False
              result_path = redactor.save(save_options)
          ```
        platform: "python-net"
        copy_title: "Copiar"
        install:
          command: "pip install groupdocs-redaction-net"
          copy_tip: "clique para copiar"
          copy_done: "copiado"
        top_links:
          #  loop
          - title: "Baixar resultado"
            icon: "download"
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
        links:
          #  loop
          - title: "Mais exemplos"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
          #  loop
          - title: "Documentação"
            link: "https://docs.groupdocs.com/redaction/python-net/"


############################# Actions ############################

actions:
  enable: true
  title: "Pronto para começar?"
  description: "Experimente os recursos do GroupDocs.Redaction gratuitamente ou solicite uma licença"
  items:
    #  loop
    - title: "Download do PyPi"
      link: "https://releases.groupdocs.com/redaction/python-net/"
      color: "red"
        #  loop
    - title: "Licenciamento"
      link: "https://purchase.groupdocs.com/pricing/redaction/python-net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Limpar Metadados de JPEG com Python"
    exclude: "JPEG"
    description: "Use Python para remover dados ocultos e privados de seus documentos JPEG rapidamente e facilmente."
    items: 
        # format loop 1
        - name: "Redigir PDF"
          format: "PDF"
          link: "/redaction/python-net/remove-sensitive-metadata//pdf/"
          description: "Formato de Documento Portátil da Adobe"

        # format loop 2
        - name: "Redigir Word"
          format: "WORD"
          link: "/redaction/python-net/remove-sensitive-metadata//word/"
          description: "Documentos do MS Word e Open Office"
          
        # format loop 3
        - name: "Redigir Excel"
          format: "EXCEL"
          link: "/redaction/python-net/remove-sensitive-metadata//excel/"
          description: "Planilhas do MS Excel e Open Office"

        # format loop 4
        - name: "Redigir PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/remove-sensitive-metadata//powerpoint/"
          description: "Apresentações do MS PowerPoint e Open Office"

        # format loop 5
        - name: "Redigir Imagem"
          format: "IMAGE"
          link: "/redaction/python-net/remove-sensitive-metadata//image/"
          description: "Formatos de imagem populares"

        # format loop 6
        - name: "Redigir Foto"
          format: "PHOTO"
          link: "/redaction/python-net/remove-sensitive-metadata//photo/"
          description: "Formatos de foto"

        # format loop 7
        - name: "Redigir DOCX"
          format: "DOCX"
          link: "/redaction/python-net/remove-sensitive-metadata//docx/"
          description: "Documento Microsoft Word Open XML"
          
        # format loop 8
        - name: "Redigir XLSX"
          format: "XLSX"
          link: "/redaction/python-net/remove-sensitive-metadata//xlsx/"
          description: "Planilha do Microsoft Excel Open XML"
          
        # format loop 9
        - name: "Redigir PPTX"
          format: "PPTX"
          link: "/redaction/python-net/remove-sensitive-metadata//pptx/"
          description: "Apresentação PowerPoint Open XML"

        # format loop 10
        - name: "Redigir JPEG"
          format: "JPEG"
          link: "/redaction/python-net/remove-sensitive-metadata//jpeg/"
          description: "Imagem JPEG"


---