
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: th
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "ปกปิดภาพในไฟล์ PHOTO ด้วย Overlay โดยใช้ Python"
head_description: "ใช้ Overlay เพื่อปกปิดข้อมูลภาพที่เป็นความลับในไฟล์ PHOTO โดยใช้ GroupDocs.Redaction for Python via .NET รักษาเลย์เอาต์เอกสารของคุณให้ไม่เปลี่ยนแปลง."

############################# Header ############################
title: "ปกปิดภาพที่เป็นความลับในไฟล์ PHOTO ด้วย Overlay โดยใช้ Python" 
description: "ป้องกันข้อมูลภาพในไฟล์ PHOTO ด้วย Python เครื่องมือช่วยให้การปกป้องข้อมูลที่รวดเร็วและมีประสิทธิภาพ."
subtitle: "คุณสมบัติเด่นของ GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "เกี่ยวกับ GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET มอบเครื่องมือให้กับนักพัฒนา Python ในการปกปิดหรือทำลายเนื้อหาในไฟล์ PHOTO ปกป้องคล้ายเมื่อแต่ละไฟล์.

############################# Steps ############################
steps:
    enable: true
    title: "ปกปิดพื้นที่ภาพที่เป็นความลับในไฟล์ Photo"
    content: |
      ใช้ GroupDocs.Redaction for Python via .NET เพื่อปกปิดพื้นที่ที่มีความลับได้ในแอปพลิเคชัน Python via .NET.
      
      1. สร้างวัตถุ Redactor และชี้ไปที่ไฟล์ Photo.
      2. กำหนดการตั้งค่าการปิดบังตามต้องการ.
      3. เลือกพื้นที่ภาพและเลือกสี Overlay.
      4. บันทึกไฟล์ที่ได้รับการปิดบัง.
   
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

        # ใช้ Overlay เพื่อซ่อนข้อมูลภาพใน PHOTO

        # ตั้งค่าสีและขนาดของ Overlay
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # เลือกพื้นที่สำหรับการปิดบัง
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # ใช้ Redactor โหลดไฟล์
        with gr.Redactor("input.jpeg") as redactor:

            # นำ Overlay ไปใช้และบันทึกไฟล์
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ปกป้องข้อมูลในเอกสารหลายแบบ"
  description: "GroupDocs.Redaction for Python via .NET ช่วยให้คุณสามารถปิดบังหรือซ่อนข้อมูลที่เป็นความลับในหลายประเภทเอกสาร รักษาเอกสารให้ปลอดภัยและเรียบง่ายสำหรับการแชร์."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "เครื่องมือที่ครบวงจรในการควบคุมการปิดบัง"
  features:
    # feature loop
    - title: "ค้นหาและแทนที่เนื้อหาที่สำคัญ"
      content: "ค้นหาข้อความที่เกี่ยวข้องและแทนที่เพื่อปกป้องข้อมูลในเอกสาร."

    # feature loop
    - title: "Overlay ภาพหรือเนื้อหาภาพ"
      content: "ใช้ Overlay เพื่อปกปิดภาพหรือส่วนของภาพในเอกสาร."

    # feature loop
    - title: "ทำความสะอาด Metadata"
      content: "ปกปิดหรือทำความสะอาด Metadata ที่ซ่อนอยู่จากการแชร์ข้อมูล."
      
  code_samples_ext:
    # code sample ext loop
    - title: "ปกปิดพื้นที่ภาพด้วย Overlay"
      content: |
        ตัวอย่างนี้แสดงว่าคุณจะปิดบังภาพส่วนที่เป็นความลับได้อย่างไรในเอกสารโดยใช้ Overlay.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # กำหนดขนาด สี และตำแหน่งของ Overlay
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # เลือกพื้นที่ภาพในหน้าแรก
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # เปิดไฟล์เพื่อปิด
          with gr.Redactor("source.jpeg") as redactor:

              # นำ Overlay ไปใช้เพื่อปกปิดพื้นที่
              result = redactor.apply(redaction)

              # บันทึกไฟล์หลังจากการปิดบัง
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
    title: "ปกปิดเนื้อหาใน PHOTO ด้วย Python"
    exclude: "PHOTO"
    description: "ใช้ Python เพื่อปิดบังหรือทำลายเนื้อหาที่เป็นความลับในไฟล์ PHOTO เพื่อรักษาความปลอดภัย."
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