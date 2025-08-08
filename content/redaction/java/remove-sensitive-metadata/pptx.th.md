
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: th
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "ลบข้อมูลเมตาดาต้าในไฟล์ PPTX ด้วย Java"
head_description: "ใช้ GroupDocs.Redaction for Java เพื่อลบหรือปรับปรุงข้อมูลเมตาดาต้าที่ซ่อนอยู่ในไฟล์ PPTX ปกป้องเนื้อหาของคุณและทำให้เอกสารของคุณสะอาด"

############################# Header ############################
title: "ทำความสะอาดข้อมูลเมตาดาต้าใน PPTX ด้วยเครื่องมือ Java" 
description: "เคลียร์รายละเอียดส่วนตัวที่เก็บอยู่ในข้อมูลเมตาดาต้าโดยใช้ Java ทำงานได้ดีสำหรับเอกสารส่วนตัวและธุรกิจ"
subtitle: "ฟีเจอร์หลักของ GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Java คืออะไร?"
    link: "/redaction/java/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction มอบเครื่องมือให้กับนักพัฒนา Java ในการลบข้อมูลส่วนตัวในไฟล์ PPTX ลบข้อมูลเมตาดาต้า ซ่อนภาพ และลบข้อความอย่างสะดวก

############################# Steps ############################
steps:
    enable: true
    title: "ลบข้อมูลเมตาดาต้าในไฟล์ Pptx"
    content: |
      ด้วย GroupDocs.Redaction โปรเจค Java ของคุณสามารถทำความสะอาดข้อมูลเมตาดาต้าได้เพียงไม่กี่ขั้นตอน
      
      1. ตั้งค่า Redactor และโหลดไฟล์ Pptx ของคุณ
      2. เลือกฟิลด์ข้อมูลเมตาดาต้าที่จะลบ
      3. รันกระบวนการลบ
      4. บันทึกไฟล์โดยไม่มีข้อมูลเมตาดาต้า
   
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
        // ลบข้อมูลเมตาดาต้าจากไฟล์ PPTX

        // ใช้ Redactor เปิดไฟล์
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // ตั้งค่าฟิลด์ข้อมูลเมตาดาต้าเพื่อลบ
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // ทำการบันทึกและแชร์
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "เครื่องมือเพิ่มเติมในการลบข้อมูลละเอียดอ่อน"
  description: "GroupDocs.Redaction for Java ช่วยคุณเคลียร์ข้อมูลละเอียดอ่อนจากไฟล์ประเภทต่างๆ รักษาความสะอาดและพร้อมแชร์เอกสารของคุณ"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "ฟีเจอร์ที่ช่วยในการลบข้อมูล"
  features:
    # feature loop
    - title: "ลบข้อความที่ละเอียดอ่อน"
      content: "ค้นหาและลบชื่อ, อีเมล, และข้อมูลส่วนบุคคลอื่นๆออกจากไฟล์ของคุณ"

    # feature loop
    - title: "ปิดบังบางส่วนของภาพ"
      content: "เพิ่มOverlay เพื่อปกปิดบางพื้นที่ในภาพที่คุณต้องการเก็บไว้เป็นส่วนตัว"

    # feature loop
    - title: "ทำความสะอาดข้อมูลเมตาดาต้า"
      content: "ลบข้อมูลที่อาจเปิดเผยข้อมูลตาส่วนตัวก่อนการแชร์"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ตัวอย่างการลบฟิลด์ข้อมูลเมตาดาต้า"
      content: |
        ตัวอย่างนี้แสดงวิธีการลบข้อมูลเมตาดาต้าเช่นผู้เขียนและชื่อเรื่องจากไฟล์ PPTX
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  เปิดไฟล์ PPTX ของคุณ
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // กำหนดเป้าหมายที่ข้อมูลเมตาดาต้า Author
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // กำหนดเป้าหมายที่ข้อมูลเมตาดาต้า Title
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // ทำตามกฎการลบข้อมูล
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // บันทึกไฟล์ที่ลบข้อมูลแล้ว
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
    title: "ลบข้อมูลเมตาดาต้าใน PPTX ด้วย Java"
    exclude: "PPTX"
    description: "Java ทำให้การลบข้อมูลที่ซ่อนในไฟล์ PPTX ง่ายขึ้น ดีสำหรับการรักษาความปลอดภัยก่อนแชร์"
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