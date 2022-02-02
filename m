Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 417CD4A74C7
	for <lists+usrp-users@lfdr.de>; Wed,  2 Feb 2022 16:40:11 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 304453850EA
	for <lists+usrp-users@lfdr.de>; Wed,  2 Feb 2022 10:40:10 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="q60EDIg7";
	dkim-atps=neutral
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 4C50C384C85
	for <usrp-users@lists.ettus.com>; Wed,  2 Feb 2022 10:39:16 -0500 (EST)
Received: by mail-qt1-f171.google.com with SMTP id s1so4474380qtw.9
        for <usrp-users@lists.ettus.com>; Wed, 02 Feb 2022 07:39:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=v5F2F0QjD3V+anqvUyJH+yix+ecIimKHtFhQhztbRCY=;
        b=q60EDIg7xkEO4vbwQU/2oJJhELc4cd1mD65x0pRmO/xzq/iu70RZgZJT5+YaRD7u/e
         5Erdi94IwXcpCnIt2jNgrxVKqhnCXF6MvL3LGR7wkmYG+sFwgBghHY3sdI9lp3/YlI0l
         EOQvuRoVMqxcq7pkY673WFaIzfwlgoyBhVca/w2MCkvpuCsFyfCYnVw37bYZTXFNapG8
         cEx/eCOpfbouF4k30+dheHXB0pPdFHe/9XFshBgkUYpJaiaX6pqrRfjvmEPZ2ZFr6Bzo
         McRmggpeiz4GyOiJ4WjvozoqsqLkzQQ+MgPSXbQXVh3soi8XJblmGI3JDgaxbQCgd8B4
         4fDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=v5F2F0QjD3V+anqvUyJH+yix+ecIimKHtFhQhztbRCY=;
        b=6GXqSc3carLAzxFETZEVUYvWT1HxVTK2rvWlB0sDYcwH9TCVGpXaBcThWNYELI/EVU
         ef4gLsdDID7+34gK6p2XMT6cMMVnHkm87c1rnXqJDGnRBAPC0lACRApb7HQsr1fIbXoo
         90yMM3UNqUy40H0S+rk4+1G0uQieQgAREtjKi3qtyDhoSAU0Q+w57cLO0JKZASBBpKN6
         Bxab8hUEjkZL0NRyHTKEjGtvP+BTGBwFusyggAWVBE8olEBlWTRcmWglnciGZsNk7aGB
         X+MICxsIbVHyQY6Sy5qF1KBNlHC4CKfGyOJSbPC1v5I8nVjOHNfzsBD9qrgaCyLyz94F
         KPrg==
X-Gm-Message-State: AOAM53207WyoZphdKhCuzd34hg49GsKHLCDNSDeH5TBxyzQzegixqMAX
	j4R8QdEBrsWrrThUQZw6BKDSqbneAlLTXQ==
X-Google-Smtp-Source: ABdhPJydUr7JtxDjp8g+AKr9ZxNuRAxBJSJSmTlDz8y/+xz4ieb5BnyJhtqzR3f87qPZMAbAICh+Wg==
X-Received: by 2002:a05:622a:1ba7:: with SMTP id bp39mr22359482qtb.626.1643816355724;
        Wed, 02 Feb 2022 07:39:15 -0800 (PST)
Received: from [192.168.2.216] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id i20sm2575643qtx.44.2022.02.02.07.39.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Feb 2022 07:39:15 -0800 (PST)
Message-ID: <a5b4ebc9-36db-b2d9-abbb-e7309562f33a@gmail.com>
Date: Wed, 2 Feb 2022 10:39:14 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Jim Palladino <jim@gardettoengineering.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <MN2PR12MB3312C4A465FF575C85EF59DEB8269@MN2PR12MB3312.namprd12.prod.outlook.com>
 <fe43546f-cde5-f442-0d76-1967bc5dfebc@gmail.com>
 <MN2PR12MB33129A29C695F7A0ABC8BB6EB8269@MN2PR12MB3312.namprd12.prod.outlook.com>
 <4acbc3b9-354e-1a85-5758-fccf65b17835@gmail.com>
 <MN2PR12MB331282717C011B8FA78D241EB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
 <8032a31f-48f3-af30-5a79-3d7c8dde12e2@gmail.com>
 <MN2PR12MB33129135EE23091DC520E48EB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <MN2PR12MB33129135EE23091DC520E48EB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
Message-ID-Hash: VOZ6PO7X7RRAY6QZCYVFNPSIJPAZEQG3
X-Message-ID-Hash: VOZ6PO7X7RRAY6QZCYVFNPSIJPAZEQG3
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Timed Commands Not Working
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VOZ6PO7X7RRAY6QZCYVFNPSIJPAZEQG3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2232524632848886543=="

This is a multi-part message in MIME format.
--===============2232524632848886543==
Content-Type: multipart/alternative;
 boundary="------------a0at03BZEmbYkO02IWC908LK"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------a0at03BZEmbYkO02IWC908LK
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2022-02-02 10:21, Jim Palladino wrote:
> Thanks Marcus. Please let me know if R&D comes back with anything. I'm 
> at a bit of a loss . . .
>
> Thanks,
> Jim
>
> ------------------------------------------------------------------------
>
Just to clarify--this is with the stock FPGA image, correct?


--------------a0at03BZEmbYkO02IWC908LK
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-02-02 10:21, Jim Palladino
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:MN2PR12MB33129135EE23091DC520E48EB8279@MN2PR12MB3312.namprd12=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Thanks Marcus. Please let me know if R&amp;D comes back with
        anything. I'm at a bit of a loss . . .=C2=A0</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Thanks,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Jim</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1"><br>
    </blockquote>
    Just to clarify--this is with the stock FPGA image, correct?<br>
    <br>
    <br>
  </body>
</html>

--------------a0at03BZEmbYkO02IWC908LK--

--===============2232524632848886543==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2232524632848886543==--
