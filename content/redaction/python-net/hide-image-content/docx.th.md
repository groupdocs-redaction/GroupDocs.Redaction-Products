
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: th
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "ปกปิดเนื้อหาภาพใน DOCX ด้วย Overlay โดยใช้ Python"
head_description: "ปกป้องภาพที่เป็นความลับในไฟล์ DOCX โดยการเพิ่ม Overlay ด้วย GroupDocs.Redaction for Python via .NET รักษาการจัดรูปเอกสารให้เหมือนเดิมในขณะที่ทำให้ภาพส่วนตัวปลอดภัย."

############################# Header ############################
title: "ปกป้องภาพในเอกสาร DOCX ด้วย Overlay โดยใช้ Python" 
description: "เก็บรักษาภาพส่วนตัวและธุรกิจให้ปลอดภัยในไฟล์ DOCX ด้วย Python เครื่องมือการปิดบังของเราทำให้ความปลอดภัยของเอกสารเชื่อถือได้."
subtitle: "ความโดดเด่นของ GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "เกี่ยวกับ GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET มอบความสามารถให้กับนักพัฒนา Python ในการซ่อนหรือลบเนื้อหาในไฟล์ DOCX ปกป้องข้อความ, ภาพ, และ Metadata ข้ามหลายรูปแบบเอกสาร.

############################# Steps ############################
steps:
    enable: true
    title: "เก็บรักษาข้อมูลให้ปลอดภัยในไฟล์ Docx"
    content: |
      GroupDocs.Redaction for Python via .NET ทำให้ง่ายต่อแอปพลิเคชัน Python via .NET ในการปกป้องเอกสาร ปิดบังข้อมูลที่เป็นความลับในไม่กี่ขั้นตอน.
      
      1. สร้างอินสแตนซ์ Redactor และระบุที่อยู่ไปยังไฟล์ Docx.
      2. ตั้งค่าความชอบในการปิดบังให้เหมาะกับงานของคุณ.
      3. เลือกส่วนของภาพที่คุณต้องการปกคลุมและกำหนดสีของ Overlay.
      4. ดำเนินการและบันทึกไฟล์ที่ผ่านการปิดบัง.
   
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

        # ปกปิดส่วนที่มีความลับของภาพใน DOCX

        # กำหนดขนาดและสีของ Overlay
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # ระบุพื้นที่สำหรับการปิดบัง
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # โหลดไฟล์โดยใช้ Redactor
        with gr.Redactor("input.docx") as redactor:

            # นำ Overlay ไปใช้และบันทึกเอกสารของคุณ
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ปกปิดเนื้อหาในเอกสาร"
  description: "ด้วย GroupDocs.Redaction for Python via .NET คุณสามารถซ่อนหรือลบข้อมูลที่เป็นความลับจากหลายประเภทเอกสาร รักษาไฟล์ให้ปลอดภัยและแชร์ได้."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "คุณสมบัติการปิดบังที่มีประสิทธิภาพ"
  features:
    # feature loop
    - title: "ค้นหาและแก้ไขข้อความ"
      content: "ค้นหาคำที่มีความลับและแทนที่ด้วยวิธีการป้องกันข้อมูลของคุณ."

    # feature loop
    - title: "ปกคลุมภาพ"
      content: "นำ Overlay ไปใช้กับภาพทั้งหมดหรือบางส่วนเพื่อปกป้องข้อมูลภาพ."

    # feature loop
    - title: "ทำความสะอาด Metadata ที่ซ่อนอยู่"
      content: "ลบหรือปรับปรุง Metadata เพื่อหลีกเลี่ยงการแชร์ข้อมูลโดยไม่ตั้งใจ."
      
  code_samples_ext:
    # code sample ext loop
    - title: "ปกปิดข้อมูลภาพโดยใช้ Overlay"
      content: |
        ตัวอย่างนี้แสดงวิธีปกป้องพื้นที่ภาพที่เป็นความลับในเอกสารด้วย Overlay.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # ตั้งค่าการตั้งค่า Overlay: สี, ขนาด, ตำแหน่ง
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # เลือกพื้นที่เพื่อปิดบังในหน้าหนึ่ง
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # โหลดไฟล์ที่คุณต้องการปิดบัง
          with gr.Redactor("source.docx") as redactor:

              # นำ Overlay ไปใช้เพื่อปกคลุมภาพ
              result = redactor.apply(redaction)

              # บันทึกไฟล์ที่ผ่านการปิดบัง
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
    title: "ปกปิดข้อมูลที่เป็นความลับในไฟล์ DOCX ด้วย Python"
    exclude: "DOCX"
    description: "ใช้ Python เพื่อปกคลุมหรือลบข้อมูลส่วนตัวในไฟล์ DOCX เครื่องมือที่ถูกต้องสำหรับการรักษาความปลอดภัยให้เอกสารที่เป็นความลับ."
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