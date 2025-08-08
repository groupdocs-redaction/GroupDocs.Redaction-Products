
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: th
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "ปกปิดพื้นที่ภาพในไฟล์ XLSX ด้วย Overlay โดยใช้ Python"
head_description: "ปกป้องพื้นที่ภาพที่เป็นความลับในไฟล์ XLSX โดยการนำ Overlay มาใช้ด้วย GroupDocs.Redaction for Python via .NET รักษาโครงสร้างของเอกสารของคุณตามที่เป็นอยู่ในขณะที่ปกป้องภาพส่วนตัว."

############################# Header ############################
title: "ปกปิดภาพที่เป็นความลับในเอกสาร XLSX โดยใช้ Python" 
description: "สามารถปกป้องภาพที่เป็นความลับในไฟล์ XLSX ได้อย่างง่ายดายด้วย Python เครื่องมือของเรามั่นใจได้ว่าการปิดบังภาพรวดเร็วและมีประสิทธิภาพ."
subtitle: "ฟีเจอร์หลักของ GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "เกี่ยวกับ GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET มอบเครื่องมือให้กับนักพัฒนา Python ในการปิดบังหรือทำให้ข้อมูลที่เป็นความลับในไฟล์ XLSX จัดเก็บข้อความ, ภาพ, และ Metadata ในหลากหลายรูปแบบ.

############################# Steps ############################
steps:
    enable: true
    title: "ปกป้องข้อมูลที่เป็นความลับในไฟล์ Xlsx"
    content: |
      GroupDocs.Redaction for Python via .NET ทำให้แอปพลิเคชัน Python via .NET ของคุณสามารถรักษาเอกสารได้ง่าย.
      
      1. เริ่มต้น Redactor และโหลดเอกสาร Xlsx.
      2. ตั้งค่าพารามิเตอร์การปิดบังให้ตรงกับงานของคุณ.
      3. กำหนดส่วนไหนของภาพที่จะปกคลุมและเลือกสี.
      4. นำการปิดบังไปใช้และบันทึกไฟล์สุดท้าย.
   
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

        # ปกปิดส่วนที่เป็นความลับของภาพใน XLSX

        # เลือกขนาดและสีของ Overlay
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # ระบุพื้นที่สำหรับการปิดบัง
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # โหลดเอกสารด้วย Redactor
        with gr.Redactor("input.xlsx") as redactor:

            # นำการเปลี่ยนแปลงไปใช้และบันทึกไฟล์
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ปิดบังเนื้อหาในเอกสาร"
  description: "ด้วย GroupDocs.Redaction for Python via .NET คุณสามารถซ่อนหรือลบข้อมูลที่เป็นความลับในหลายรูปแบบเอกสาร รักษาเอกสารให้ปลอดภัยและดูมืออาชีพ."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "เครื่องมือการปิดบังที่มีประสิทธิภาพ"
  features:
    # feature loop
    - title: "ค้นหาและเปลี่ยนข้อความ"
      content: "ค้นหาข้อความส่วนตัวและเปลี่ยนมันเพื่อปกป้องข้อมูลของคุณ."

    # feature loop
    - title: "ปกคลุมภาพด้วย Overlay"
      content: "ปกปิดภาพทั้งหมดหรือต้องการปกคลุมด้วย Overlay."

    # feature loop
    - title: "ลบ Metadata ที่ซ่อนอยู่"
      content: "ทำความสะอาด Metadata ในไฟล์เพื่อหลีกเลี่ยงการแชร์ข้อมูลที่เป็นส่วนตัว."
      
  code_samples_ext:
    # code sample ext loop
    - title: "ปกปิดเนื้อหาภาพด้วย Overlay"
      content: |
        คู่มือนี้แสดงวิธีปกปิดส่วนที่เป็นความลับของภาพในเอกสารโดยใช้ Overlay.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # กำหนดขนาด, ตำแหน่ง, และสีของ Overlay
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # เลือกพื้นที่ที่เฉพาะเจาะจงของภาพ
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # เปิดไฟล์สำหรับการปิดบัง
          with gr.Redactor("source.xlsx") as redactor:

              # นำ Overlay ไปใช้เพื่อปิดพื้นที่
              result = redactor.apply(redaction)

              # บันทึกเอกสารที่แก้ไข
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
    title: "ปกปิดเนื้อหาในไฟล์ XLSX ด้วย Python"
    exclude: "XLSX"
    description: "ใช้ Python เพื่อปกคลุมหรือทำให้ข้อมูลส่วนตัวในไฟล์ XLSX และน่าเชื่อถือสำหรับพื้นที่เอกสารที่สำคัญ."
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