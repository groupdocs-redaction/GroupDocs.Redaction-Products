
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: th
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "ลบข้อมูลเมตาดาต้าใน POWERPOINT ด้วย Java"
head_description: "ใช้ GroupDocs.Redaction for Java เพื่อทำความสะอาดข้อมูลเมตาดาต้าที่ซ่อนอยู่ในไฟล์ POWERPOINT และรักษาเอกสารของคุณให้เป็นส่วนตัวและปลอดภัย"

############################# Header ############################
title: "ลบข้อมูลเมตาดาต้าใน POWERPOINT ด้วย Java" 
description: "ป้องกันไฟล์ของคุณด้วยเครื่องมือที่ใช้งานง่ายที่ออกแบบมาสำหรับ Java เอาข้อมูลเมตาดาต้าออกในไม่กี่ขั้นตอน"
subtitle: "สิ่งที่คุณจะได้จาก GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: ""
    link: "/redaction/java/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       

############################# Steps ############################
steps:
    enable: true
    title: "วิธีทำความสะอาดข้อมูลเมตาดาต้าในไฟล์ Powerpoint"
    content: |
      ด้วย GroupDocs.Redaction, แอป Java ของคุณสามารถทำความสะอาดข้อมูลเมตาดาต้าในเอกสารได้อย่างรวดเร็ว
      
      1. สร้างวัตถุ Redactor และโหลดเอกสาร
      2. เลือกฟิลด์ข้อมูลเมตาดาต้าที่คุณต้องการลบ
      3. ใช้การตั้งค่าการลบข้อมูลของคุณ
      4. ส่งออกเอกสารโดยไม่มีข้อมูลที่ซ่อนอยู่
   
    code:
      platform: "java"
      copy_title: "คัดลอก"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "การลบข้อมูลตัวอย่าง"
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
        copy_tip: "คลิ๊กเพื่อคัดลอก"
        copy_done: "คัดลอกแล้ว"
      links:
        #  loop
        - title: "ตัวอย่างเพิ่มเติม"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
        #  loop
        - title: "เอกสารประกอบ"
          link: "https://docs.groupdocs.com/redaction/java/"
          
      content: |
        ```java {style=abap}
        // ลบข้อมูลเมตาดาต้าจากไฟล์ POWERPOINT

        // เปิดไฟล์ของคุณด้วย redactor
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // ตั้งค่าข้อมูลเมตาดาต้าที่จะลบ
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // ทำความสะอาดและบันทึกไฟล์
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "รักษาไฟล์ของคุณให้ปลอดภัยด้วยการลบข้อมูล"
  description: "GroupDocs.Redaction for Java ช่วยการทำความสะอาดข้อมูลส่วนตัวหรือข้อมูลที่ซ่อนอยู่ เพื่อให้เอกสารสามารถแชร์ได้อย่างปลอดภัย รองรับไฟล์หลายประเภท"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "สิ่งที่คุณสามารถลบข้อมูล"
  features:
    # feature loop
    - title: ""
      content: ""

    # feature loop
    - title: ""
      content: ""

    # feature loop
    - title: ""
      content: ""
      
  code_samples_ext:
    # code sample ext loop
    - title: "ลบฟิลด์ข้อมูลเมตาดาต้าที่ซ่อนอยู่"
      content: |
        ตัวอย่างนี้แสดงวิธีการเคลียร์ข้อมูลที่ฝังอยู่ เช่น Author และ Title จากเอกสาร POWERPOINT
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  เปิดไฟล์ด้วย redactor
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // ลบฟิลด์ Author
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // ลบฟิลด์ Title
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // ทำการลบข้อมูล
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // บันทึกเอกสารที่อัพเดต
              SaveOptions saveOptions = new SaveOptions();
              saveOptions.setAddSuffix(true);
              saveOptions.setRasterizeToPDF(false);
              redactor.save(saveOptions);
          }
          finally { redactor.close(); }
          ```
        platform: "net"
        copy_title: "คัดลอก"
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
          copy_tip: "คลิ๊กเพื่อคัดลอก"
          copy_done: "คัดลอกแล้ว"
        top_links:
          #  loop
          - title: "ดาวน์โหลดผลลัพธ์"
            icon: "download"
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
        links:
          #  loop
          - title: "ตัวอย่างเพิ่มเติม"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
          #  loop
          - title: "เอกสารประกอบ"
            link: "https://docs.groupdocs.com/redaction/java/"


############################# Actions ############################

actions:
  enable: true
  title: "พร้อมเริ่มต้นหรือยัง?"
  description: "ลองฟีเจอร์ของ GroupDocs.Redaction ฟรี หรือขอใบอนุญาต"
  items:
    #  loop
    - title: "ดาวน์โหลด Maven"
      link: "https://releases.groupdocs.com/redaction/java/"
      color: "red"
        #  loop
    - title: "การออกใบอนุญาต"
      link: "https://purchase.groupdocs.com/pricing/redaction/java/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: ""
    exclude: "POWERPOINT"
    description: ""
    items: 
        # format loop 1
        - name: "ลบข้อมูลใน PDF"
          format: "PDF"
          link: "/redaction/java/remove-sensitive-metadata//pdf/"
          description: "รูปแบบเอกสารที่พกพา Adobe"

        # format loop 2
        - name: "ลบข้อมูลใน Word"
          format: "WORD"
          link: "/redaction/java/remove-sensitive-metadata//word/"
          description: "เอกสาร MS Word และ Open Office"
          
        # format loop 3
        - name: "ลบข้อมูลใน Excel"
          format: "EXCEL"
          link: "/redaction/java/remove-sensitive-metadata//excel/"
          description: "ไฟล์ตารางข้อมูล MS Excel และ Open Office"

        # format loop 4
        - name: "ลบข้อมูลใน PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/remove-sensitive-metadata//powerpoint/"
          description: "การนำเสนอ MS PowerPoint และ Open Office"

        # format loop 5
        - name: "ลบข้อมูลในรูปภาพ"
          format: "IMAGE"
          link: "/redaction/java/remove-sensitive-metadata//image/"
          description: "รูปแบบภาพที่นิยม"

        # format loop 6
        - name: "ลบข้อมูลในรูปถ่าย"
          format: "PHOTO"
          link: "/redaction/java/remove-sensitive-metadata//photo/"
          description: "รูปถ่าย"

        # format loop 7
        - name: "ลบข้อมูลใน DOCX"
          format: "DOCX"
          link: "/redaction/java/remove-sensitive-metadata//docx/"
          description: "เอกสาร Microsoft Word Open XML"
          
        # format loop 8
        - name: "ลบข้อมูลใน XLSX"
          format: "XLSX"
          link: "/redaction/java/remove-sensitive-metadata//xlsx/"
          description: "ตารางข้อมูล Microsoft Excel Open XML"
          
        # format loop 9
        - name: "ลบข้อมูลใน PPTX"
          format: "PPTX"
          link: "/redaction/java/remove-sensitive-metadata//pptx/"
          description: "การเสนอ PowerPoint Open XML"

        # format loop 10
        - name: "ลบข้อมูลใน JPEG"
          format: "JPEG"
          link: "/redaction/java/remove-sensitive-metadata//jpeg/"
          description: "ภาพ JPEG"


---