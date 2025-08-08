
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: pt
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Remover Metadados de PDF Usando Python"
head_description: "GroupDocs.Redaction for Python via .NET ajuda a limpar dados ocultos de arquivos PDF. Evite compartilhar informações privadas editando ou excluindo metadados."

############################# Header ############################
title: "Remover Metadados em Arquivos PDF com Python" 
description: "Utilize Python e GroupDocs.Redaction for Python via .NET para eliminar informações sensíveis de seus documentos PDF. Mantenha o controle de seus dados com ferramentas de redacção eficazes."
subtitle: "O que GroupDocs.Redaction for Python via .NET Pode Fazer" 

############################# About ############################
about:
    enable: true
    title: "Sobre GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction ajuda desenvolvedores Python a limpar documentos PDF removendo conteúdo de texto, imagens e metadados.

############################# Steps ############################
steps:
    enable: true
    title: "Remover Metadados em Documentos Pdf"
    content: |
      Comece a proteger seus arquivos usando GroupDocs.Redaction em aplicativos Python via .NET.
      
      1. Crie um Redactor e carregue seu arquivo Pdf.
      2. Adicione regras para remover metadados ocultos.
      3. Execute a redacção para excluir entradas de metadados.
      4. Salve o arquivo sem os dados ocultos.
   
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

        # Remova metadados de documentos PDF

        # Escolha os campos de metadados para remover
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Abra o arquivo usando Redactor
        with gr.Redactor("input.pdf") as redactor:

            # Redija e salve seu documento
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Limpar Conteúdo Oculto em Documentos"
  description: "Com GroupDocs.Redaction for Python via .NET, você pode remover texto, imagens e metadados com segurança. Mantenha seus arquivos privados e seguros antes de compartilhar."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Opções de Redacção"
  features:
    # feature loop
    - title: "Remoção de Texto"
      content: "Busque e apague texto sensível em documentos."

    # feature loop
    - title: "Cobertura de Imagens"
      content: "Oculte partes específicas de imagens com sobreposições simples."

    # feature loop
    - title: "Limpeza de Metadados"
      content: "Desfaça-se de metadados indesejados que possam expor dados privados."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Editar e Remover Campos de Metadados"
      content: |
        Este exemplo explica como limpar metadados ocultos em um arquivo PDF.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Remova o metadado do Autor
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Remova o metadado do Título
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Abra o arquivo no Redactor
          with gr.Redactor("source.pdf") as redactor:

              # Execute o processo de redacção
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Salve o arquivo atualizado
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
    title: "Limpar Metadados de PDF com Python"
    exclude: "PDF"
    description: "Remova campos de dados ocultos em PDF usando Python. Uma maneira inteligente de proteger a privacidade e manter seus arquivos limpos."
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