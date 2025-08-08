
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: pt
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Limpar Metadados de EXCEL Usando Python"
head_description: "Use GroupDocs.Redaction for Python via .NET para remover metadados de documentos EXCEL. Elimine dados ocultos e proteja informações sensíveis."

############################# Header ############################
title: "Remover Metadados Ocultos em EXCEL com Python" 
description: "Assuma o controle de seus arquivos EXCEL com Python. Desfaça-se de dados indesejados para manter seus arquivos privados."
subtitle: "Principais Recursos do GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Conheça GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction é feito para desenvolvedores Python que precisam limpar e proteger arquivos EXCEL. Remova metadados, texto e imagens indesejados facilmente.

############################# Steps ############################
steps:
    enable: true
    title: "Passos para Limpar Metadados em Arquivos Excel"
    content: |
      Em seus aplicativos Python via .NET, GroupDocs.Redaction ajuda a remover metadados em apenas alguns passos.
      
      1. Inicie um Redactor e abra o arquivo Excel.
      2. Escolha os campos de metadados a serem removidos.
      3. Execute o processo de redacção.
      4. Exporte o arquivo final.
   
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

        # Remova dados ocultos em EXCEL

        # Escolha quais metadados remover
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Abra seu arquivo com redactor
        with gr.Redactor("input.xslx") as redactor:

            # Processar e salve o arquivo
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Limpe Todos os Tipos de Dados Sensíveis"
  description: "GroupDocs.Redaction for Python via .NET oferece ferramentas para apagar metadados, texto e imagens em muitos formatos. Perfeito para compartilhamento seguro de documentos."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Ferramentas de Metadados e Privacidade"
  features:
    # feature loop
    - title: "Remover Texto Privado"
      content: "Detecte e exclua informações pessoais ou ocultas de seus documentos."

    # feature loop
    - title: "Mascarar Detalhes de Imagem"
      content: "Cubra partes de imagens para bloquear visuais privados."

    # feature loop
    - title: "Limpar Metadados"
      content: "Apague campos de metadados ocultos que possam conter dados sensíveis."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Remover Metadados do Autor e do Título"
      content: |
        Veja como GroupDocs.Redaction for Python via .NET elimina campos de metadados específicos de documentos EXCEL.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Apague informações do Autor
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Apague o campo do Título
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Abra o documento para redacção
          with gr.Redactor("source.xslx") as redactor:

              # Aplique as alterações
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Salve o documento limpo
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
    title: "Limpar Metadados em EXCEL com Python"
    exclude: "EXCEL"
    description: "Use Python para remover metadados sensíveis de seus arquivos EXCEL. Proteja conteúdo antes de compartilhar."
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