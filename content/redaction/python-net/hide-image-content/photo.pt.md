
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: pt
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Cobrir Imagens em Arquivos PHOTO Usando Sobreposições do Python"
head_description: "Aplique sobreposições para ocultar dados de imagem sensíveis em arquivos PHOTO com GroupDocs.Redaction for Python via .NET. Mantenha o design do seu documento intacto enquanto protege informações privadas."

############################# Header ############################
title: "Ocultar Imagens Sensíveis em Arquivos PHOTO com Sobreposições via Python" 
description: "Proteja o conteúdo de imagem em arquivos PHOTO com Python. Ferramentas fáceis para uma proteção rápida e eficaz."
subtitle: "Recursos Principais do GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "O que é GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET oferece aos desenvolvedores Python ferramentas poderosas para ocultar ou apagar conteúdo em arquivos PHOTO. Proteja dados importantes mascarando texto, imagens e metadados de forma eficiente.

############################# Steps ############################
steps:
    enable: true
    title: "Proteger Áreas de Imagem em Arquivos Photo"
    content: |
      Use GroupDocs.Redaction for Python via .NET para facilmente cobrir áreas sensíveis de imagem em seus aplicativos Python via .NET.
      
      1. Crie um objeto Redactor e vincule-o ao seu arquivo Photo.
      2. Configure as configurações de redigação para atender à sua tarefa.
      3. Destacar seções de imagem e definir cores de sobreposição.
      4. Aplique redigação e salve o arquivo protegido.
   
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
        import groupdocs.pydrawing as grd

        # Use sobreposições para ocultar dados de imagem em PHOTO

        # Configurar dimensões e a cor da sobreposição
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Selecionar áreas da imagem para mascarar
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Abrir arquivo com Redactor
        with gr.Redactor("input.jpeg") as redactor:

            # Aplicar sobreposição e salvar o arquivo
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redigir Dados Privados em Múltiplos Formatos"
  description: "GroupDocs.Redaction for Python via .NET permite que você cubra ou exclua conteúdo sensível em diferentes tipos de arquivos. Mantenha documentos limpos e seguros para compartilhar."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Todos os Recursos de Redigação em Um Só Lugar"
  features:
    # feature loop
    - title: "Encontrar e Editar Texto"
      content: "Procure texto sensível e substitua para proteger seus documentos."

    # feature loop
    - title: "Ocultar Imagens com Sobreposições"
      content: "Adicione sobreposições para cobrir imagens inteiras ou seções específicas."

    # feature loop
    - title: "Excluir Metadados"
      content: "Remover metadados para evitar vazamentos de informações."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Cobrir Seções de Imagem com Sobreposições"
      content: |
        Este exemplo de código mostra como mascarar áreas sensíveis de imagem em um documento usando sobreposições.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Defina tamanho, cor e posicionamento da sobreposição
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Selecionar uma área de imagem na primeira página
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Abra o arquivo para redigação
          with gr.Redactor("source.jpeg") as redactor:

              # Aplicar sobreposição para esconder conteúdo
              result = redactor.apply(redaction)

              # Salvar o arquivo seguro
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
            link: "/examples/redaction/formats/hide-image-content.pdf"
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
    title: "Redigir Conteúdo Sensível em PHOTO com Python"
    exclude: "PHOTO"
    description: "Oculte ou exclua dados privados em arquivos PHOTO usando Python. Uma maneira simples de garantir documentos oficiais seguros."
    items: 
        # format loop 1
        - name: "Redigir PDF"
          format: "PDF"
          link: "/redaction/python-net/hide-image-content//pdf/"
          description: "Formato de Documento Portátil da Adobe"

        # format loop 2
        - name: "Redigir Word"
          format: "WORD"
          link: "/redaction/python-net/hide-image-content//word/"
          description: "Documentos do MS Word e Open Office"
          
        # format loop 3
        - name: "Redigir Excel"
          format: "EXCEL"
          link: "/redaction/python-net/hide-image-content//excel/"
          description: "Planilhas do MS Excel e Open Office"

        # format loop 4
        - name: "Redigir PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-image-content//powerpoint/"
          description: "Apresentações do MS PowerPoint e Open Office"

        # format loop 5
        - name: "Redigir Imagem"
          format: "IMAGE"
          link: "/redaction/python-net/hide-image-content//image/"
          description: "Formatos de imagem populares"

        # format loop 6
        - name: "Redigir Foto"
          format: "PHOTO"
          link: "/redaction/python-net/hide-image-content//photo/"
          description: "Formatos de foto"

        # format loop 7
        - name: "Redigir DOCX"
          format: "DOCX"
          link: "/redaction/python-net/hide-image-content//docx/"
          description: "Documento Microsoft Word Open XML"
          
        # format loop 8
        - name: "Redigir XLSX"
          format: "XLSX"
          link: "/redaction/python-net/hide-image-content//xlsx/"
          description: "Planilha do Microsoft Excel Open XML"
          
        # format loop 9
        - name: "Redigir PPTX"
          format: "PPTX"
          link: "/redaction/python-net/hide-image-content//pptx/"
          description: "Apresentação PowerPoint Open XML"

        # format loop 10
        - name: "Redigir JPEG"
          format: "JPEG"
          link: "/redaction/python-net/hide-image-content//jpeg/"
          description: "Imagem JPEG"


---