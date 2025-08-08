
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: th
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "ปกปิดภาพในไฟล์ PPTX โดยใช้ Overlay กับ Python"
head_description: "ใช้ GroupDocs.Redaction for Python via .NET เพื่อปกปิดภาพที่เป็นความลับในไฟล์ PPTX ด้วย Overlay ที่มีสีสัน ปกป้องข้อมูลที่สำคัญในขณะที่ยังคงเลย์เอาต์เอกสารไม่เปลี่ยนแปลง."

############################# Header ############################
title: "ปกปิดภาพส่วนตัวในเอกสาร PPTX ด้วย Overlay ของ Python" 
description: "รักษาภาพที่เป็นความลับในไฟล์ PPTX ด้วย Python เครื่องมือของเราทำให้การปิดบังภาพง่ายดายและรวดเร็ว."
subtitle: "คุณสมบัติของ GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "เกี่ยวกับ GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET มอบเครื่องมือให้กับนักพัฒนา Python ในการปิดบังหรือลบเนื้อหาในไฟล์ PPTX ช่วยปกป้องข้อมูลที่เป็นความลับในเอกสารต่างๆ.

############################# Steps ############################
steps:
    enable: true
    title: "รักษาข้อมูลที่เป็นความลับในไฟล์ Pptx"
    content: |
      GroupDocs.Redaction for Python via .NET ช่วยให้แอปพลิเคชัน Python via .NET ปกป้องเอกสารโดยการปกคลุมเนื้อหาที่เป็นความลับ.
      
      1. สร้างอินสแตนซ์ Redactor และโหลดไฟล์ Pptx.
      2. ตั้งค่าตัวเลือกในการปกปิดตามความต้องการของคุณ.
      3. เลือกพื้นที่ภาพและกำหนดสี Overlay.
      4. นำ Overlay ไปใช้และบันทึกเอกสาร.
   
    code:
      platform: "python-net"
      copy_title: "คัดลอก"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "การลบข้อมูลตัวอย่าง"
      install:
        command: |
        command: "pip install groupdocs-redaction-net"
        copy_tip: "คลิ๊กเพื่อคัดลอก"
        copy_done: "คัดลอกแล้ว"
      links:
        #  loop
        - title: "ตัวอย่างเพิ่มเติม"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
        #  loop
        - title: "เอกสารประกอบ"
          link: "https://docs.groupdocs.com/redaction/python-net/"
          
      content: |
        ```python {style=abap}
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr
        import groupdocs.pydrawing as grd

        # ปกปิดภาพส่วนตัวในไฟล์ PPTX

        # ตั้งค่าสีและขนาดของ Overlay
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # เลือกพื้นที่เพื่อลบ
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # เปิดเอกสารด้วย Redactor
        with gr.Redactor("input.pptx") as redactor:

            # นำ Overlay ไปใช้และบันทึกไฟล์
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "คุณสมบัติการปิดบังหลักสำหรับเอกสาร"
  description: "GroupDocs.Redaction for Python via .NET ช่วยให้คุณซ่อนหรือลบข้อมูลที่เป็นความลับในหลายประเภทเอกสาร ให้เอกสารของคุณดูสะอาดและปลอดภัย."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "ชุดเครื่องมือการปิดบังแบบครบวงจร"
  features:
    # feature loop
    - title: "ค้นหาและแทนที่ข้อความ"
      content: "ค้นหาข้อความที่เป็นความลับและนำไปซ่อนเพื่อรักษาความเป็นส่วนตัว."

    # feature loop
    - title: "ปกคลุมพื้นที่ภาพ"
      content: "ปกคลุมภาพทั้งหมดหรือเฉพาะบางส่วนด้วย Overlay เพื่อลบข้อมูลที่เป็นความลับ."

    # feature loop
    - title: "ทำความสะอาด Metadata"
      content: "ลบหรือเปลี่ยนแปลง Metadata ที่ซ่อนอยู่เพื่อป้องกันการแชร์ข้อมูลที่ไม่ต้องการ."
      
  code_samples_ext:
    # code sample ext loop
    - title: "ใช้ Overlay ปกปิดข้อมูลภาพ"
      content: |
        ตัวอย่างนี้แสดงวิธีปกปิดภาพส่วนที่เป็นความลับในเอกสารโดยใช้ Overlay.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # กำหนดคุณสมบัติของ Overlay: ขนาด, ตำแหน่ง, สี
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # เลือกพื้นที่ของภาพในหน้าแรก
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # โหลดเอกสาร
          with gr.Redactor("source.pptx") as redactor:

              # นำ Overlay ไปใช้เพื่อปกปิดข้อมูล
              result = redactor.apply(redaction)

              # บันทึกเอกสารที่ผ่านการปิดบัง
              save_options = gro.SaveOptions()
              save_options.add_suffix = True
              save_options.rasterize_to_pdf = False
              result_path = redactor.save(save_options)
          ```
        platform: "python-net"
        copy_title: "คัดลอก"
        install:
          command: "pip install groupdocs-redaction-net"
          copy_tip: "คลิ๊กเพื่อคัดลอก"
          copy_done: "คัดลอกแล้ว"
        top_links:
          #  loop
          - title: "ดาวน์โหลดผลลัพธ์"
            icon: "download"
            link: "/examples/redaction/formats/hide-image-content.pdf"
        links:
          #  loop
          - title: "ตัวอย่างเพิ่มเติม"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
          #  loop
          - title: "เอกสารประกอบ"
            link: "https://docs.groupdocs.com/redaction/python-net/"


############################# Actions ############################

actions:
  enable: true
  title: "พร้อมเริ่มต้นหรือยัง?"
  description: "ลองฟีเจอร์ของ GroupDocs.Redaction ฟรี หรือขอใบอนุญาต"
  items:
    #  loop
    - title: "ดาวน์โหลด PyPi"
      link: "https://releases.groupdocs.com/redaction/python-net/"
      color: "red"
        #  loop
    - title: "การออกใบอนุญาต"
      link: "https://purchase.groupdocs.com/pricing/redaction/python-net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "ปกปิดเนื้อหาในไฟล์ PPTX ด้วย Python"
    exclude: "PPTX"
    description: "ใช้ Python เพื่อปกคลุมหรือลบข้อมูลส่วนตัวในไฟล์ PPTX เครื่องมือที่เชื่อถือได้เพื่อความปลอดภัยของเอกสารที่มีความสำคัญ."
    items: 
        # format loop 1
        - name: "ลบข้อมูลใน PDF"
          format: "PDF"
          link: "/redaction/python-net/hide-image-content//pdf/"
          description: "รูปแบบเอกสารที่พกพา Adobe"

        # format loop 2
        - name: "ลบข้อมูลใน Word"
          format: "WORD"
          link: "/redaction/python-net/hide-image-content//word/"
          description: "เอกสาร MS Word และ Open Office"
          
        # format loop 3
        - name: "ลบข้อมูลใน Excel"
          format: "EXCEL"
          link: "/redaction/python-net/hide-image-content//excel/"
          description: "ไฟล์ตารางข้อมูล MS Excel และ Open Office"

        # format loop 4
        - name: "ลบข้อมูลใน PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-image-content//powerpoint/"
          description: "การนำเสนอ MS PowerPoint และ Open Office"

        # format loop 5
        - name: "ลบข้อมูลในรูปภาพ"
          format: "IMAGE"
          link: "/redaction/python-net/hide-image-content//image/"
          description: "รูปแบบภาพที่นิยม"

        # format loop 6
        - name: "ลบข้อมูลในรูปถ่าย"
          format: "PHOTO"
          link: "/redaction/python-net/hide-image-content//photo/"
          description: "รูปถ่าย"

        # format loop 7
        - name: "ลบข้อมูลใน DOCX"
          format: "DOCX"
          link: "/redaction/python-net/hide-image-content//docx/"
          description: "เอกสาร Microsoft Word Open XML"
          
        # format loop 8
        - name: "ลบข้อมูลใน XLSX"
          format: "XLSX"
          link: "/redaction/python-net/hide-image-content//xlsx/"
          description: "ตารางข้อมูล Microsoft Excel Open XML"
          
        # format loop 9
        - name: "ลบข้อมูลใน PPTX"
          format: "PPTX"
          link: "/redaction/python-net/hide-image-content//pptx/"
          description: "การเสนอ PowerPoint Open XML"

        # format loop 10
        - name: "ลบข้อมูลใน JPEG"
          format: "JPEG"
          link: "/redaction/python-net/hide-image-content//jpeg/"
          description: "ภาพ JPEG"


---