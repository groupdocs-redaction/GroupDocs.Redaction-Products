
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: th
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "ลบข้อมูลเมตาดาต้าใน EXCEL ด้วย Java"
head_description: "ปกป้องเอกสาร EXCEL ของคุณโดยการลบข้อมูลเมตาดาต้าที่ซ่อนอยู่โดยใช้ GroupDocs.Redaction for Java รักษารายละเอียดส่วนตัวไม่ให้สัมผัสกับผู้ใช้งานอื่น"

############################# Header ############################
title: "ทำความสะอาดข้อมูลเมตาดาต้าในไฟล์ EXCEL ด้วย Java" 
description: "ด้วย Java ลบข้อมูลที่ละเอียดอ่อนจากไฟล์ EXCEL วิธีที่ฉลาดในการรักษาความปลอดภัยของเอกสารของคุณ"
subtitle: "ทำไมต้องเลือก GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "เกี่ยวกับ GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction มอบเครื่องมือให้กับนักพัฒนา Java ในการควบคุมเนื้อหาในไฟล์ EXCEL ใช้ในการลบข้อความ เซ็นเซอร์ข้อมูลเมตาดาต้า และจัดการเนื้อหาได้ตามต้องการ

############################# Steps ############################
steps:
    enable: true
    title: "วิธีลบข้อมูลเมตาดาต้าในไฟล์ Excel"
    content: |
      ใน Java, GroupDocs.Redaction ทำให้การทำความสะอาดข้อมูลเมตาดาต้าเป็นเรื่องง่าย
      
      1. สร้าง Redactor และโหลดไฟล์ Excel ของคุณ
      2. กำหนดกฎเพื่อใช้เพื่อลบฟิลด์ข้อมูลที่ซ่อนอยู่
      3. รันกระบวนการทำความสะอาด
      4. บันทึกเอกสารที่ทำความสะอาดแล้ว
   
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
        // ลบข้อมูลเมตาดาต้าที่ซ่อนอยู่จากไฟล์ EXCEL

        // เริ่มต้น redactor และเปิดไฟล์
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // กำหนดตัวเลือกสำหรับการลบข้อมูลเมตาดาต้า
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // ลบและบันทึกเอกสาร
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ลบข้อมูลส่วนตัวออกจากไฟล์"
  description: "ด้วย GroupDocs.Redaction for Java คุณสามารถลบข้อมูลเมตาดาต้า, ลบข้อความ, และปิดบังพื้นที่ภาพในหลายประเภทไฟล์ เหมาะสำหรับการใช้งานทางกฎหมาย ส่วนบุคคล หรือองค์กร"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "เครื่องมือสำหรับทำความสะอาดข้อมูลและเนื้อหา"
  features:
    # feature loop
    - title: "ค้นหาและลบข้อความ"
      content: "ค้นข้อมูลที่ละเอียดอ่อนและลบออกเพื่อปกป้องข้อมูล"

    # feature loop
    - title: "ปิดบังเนื้อหาภาพ"
      content: "ซ่อนส่วนของภาพโดยใช้ Overlays"

    # feature loop
    - title: "ลบข้อมูลเมตาดต้า"
      content: "ลบรายละเอียดที่เกี่ยวกับซึ่งอาจมีข้อมูลส่วนตัว"
      
  code_samples_ext:
    # code sample ext loop
    - title: "มุ่งเน้นไปที่ฟิลด์ข้อมูลเมตาดาต้าเฉพาะ"
      content: |
        ตัวอย่างนี้มีขั้นตอนการลบฟิลด์ เช่น Author และ Title จากไฟล์ EXCEL
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  โหลดไฟล์ลงใน redactor
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // เลือกฟิลด์ Author
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // เลือกฟิลด์ Title
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // ทำการลบ
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // บันทึกไฟล์สุดท้าย
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
    title: "การทำความสะอาดข้อมูลเมตาดาต้าใน EXCEL โดยใช้ Java"
    exclude: "EXCEL"
    description: "ใช้เครื่องมือ Java เพื่อลบข้อมูลที่ถูกซ่อนจากไฟล์ EXCEL แชร์เอกสารที่สะอาดและปลอดภัย"
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