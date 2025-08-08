
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: th
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "ปกปิดภาพในไฟล์ EXCEL โดยใช้ Overlay ใน Python"
head_description: "ปกป้องพื้นที่ภาพที่เป็นความลับในไฟล์ EXCEL ด้วย GroupDocs.Redaction for Python via .NET เพิ่ม Overlay เพื่อปกปิดภาพส่วนตัวโดยไม่เปลี่ยนแปลงรูปลักษณ์ของเอกสาร."

############################# Header ############################
title: "ปกป้องภาพที่เป็นความลับในไฟล์ EXCEL ด้วย Overlay โดยใช้ Python" 
description: "รักษาภาพส่วนตัวและภาพธุรกิจในไฟล์ EXCEL ด้วย Python เพื่อให้การปกป้องที่เชื่อถือได้กับเครื่องมือที่ใช้งานง่าย."
subtitle: "คุณสมบัติหลักของ GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "เกี่ยวกับ GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET มอบเครื่องมือให้กับนักพัฒนา Python ในการซ่อนหรือทำให้ข้อมูลเป็นความลับในไฟล์ EXCEL ปกป้องภาพ, ข้อความ, และ Metadata เพื่อให้เอกสารของคุณปลอดภัย.

############################# Steps ############################
steps:
    enable: true
    title: "ปกป้องข้อมูลในไฟล์ Excel"
    content: |
      GroupDocs.Redaction for Python via .NET ช่วยให้แอปพลิเคชัน Python via .NET สามารถซ่อนข้อมูลส่วนตัวในเอกสารได้อย่างรวดเร็ว.
      
      1. สร้างอินสแตนซ์ Redactor และโหลดไฟล์ Excel.
      2. ตั้งค่าทางเลือกที่เหมาะสม.
      3. เลือกพื้นที่ภาพและเลือกสี Overlay.
      4. นำการปิดบังไปใช้และบันทึกไฟล์ที่แก้ไข.
   
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

        # ปกปิดพื้นที่ภาพใน EXCEL

        # กำหนดขนาดและสีของ Overlay
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # เลือกพื้นที่ที่ต้องการปกคลุม
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # เปิดเอกสารด้วย Redactor
        with gr.Redactor("input.xlsx") as redactor:

            # นำ Overlay ไปใช้และบันทึกไฟล์
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ซ่อนหรือส่งคืนเนื้อหาที่เป็นความลับ"
  description: "GroupDocs.Redaction for Python via .NET มักจะทำให้คุณสามารถซ่อนหรือลบข้อมูลที่ลบไม่ง่าในหลายรูปแบบเอกสาร ทำให้ไฟล์มีความปลอดภัยและชัดเจนในการแชร์."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "เครื่องมือที่มีคุณสมบัติหลากหลายในการปิดบัง"
  features:
    # feature loop
    - title: "แก้ไขข้อความอย่างปลอดภัย"
      content: "ค้นหาข้อความที่มีความลับในเอกสารและนำมาทดแทนเพื่อปกป้องความเป็นส่วนตัว."

    # feature loop
    - title: "ซ่อนส่วนของภาพ"
      content: "ใช้ Overlay เพื่อปกคลุมพื้นที่ของภาพที่เลือกหรือลบข้อมูลที่ลบไม่ออก."

    # feature loop
    - title: "ลบ Metadata ที่ซ่อนอยู่"
      content: "ลบฟิลด์ Metadata ที่ซ่อนอยู่เพื่อป้องกันการรั่วไหลของข้อมูล."
      
  code_samples_ext:
    # code sample ext loop
    - title: "ใช้ Overlay เพื่อซ่อนข้อมูลภาพ"
      content: |
        ตัวอย่างนี้แสดงวิธีการใช้ Overlay ในการปิดบังภาพที่เป็นความลับในเอกสาร.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # ตั้งค่าสี, ขนาด, และตำแหน่งของ Overlay
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # เลือกส่วนเฉพาะที่เป็นภาพในหน้าแรก
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # โหลดเอกสารเพื่อแก้ไข
          with gr.Redactor("source.xlsx") as redactor:

              # นำ Overlay ไปใช้เพื่อเคลื่อนย้าย
              result = redactor.apply(redaction)

              # บันทึกไฟล์ที่ผ่านการแก้ไขแล้ว
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
    title: "ปกปิดเนื้อหใน EXCEL ด้วย Python"
    exclude: "EXCEL"
    description: "ด้วย Python คุณสามารถซ่อนหรือลบข้อมูลที่ขัดต่อสิ่งที่ระบุในไฟล์ EXCEL ซึ่งเป็นวิธีที่มีประสิทธิภาพในการรักษาความปลอดภัยให้กับเอกสาร."
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