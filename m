Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A6BA43CB30
	for <lists+usrp-users@lfdr.de>; Wed, 27 Oct 2021 15:51:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0CAA83841E5
	for <lists+usrp-users@lfdr.de>; Wed, 27 Oct 2021 09:51:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Dsm19jtv";
	dkim-atps=neutral
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 8DCCD38419F
	for <usrp-users@lists.ettus.com>; Wed, 27 Oct 2021 09:50:52 -0400 (EDT)
Received: by mail-qk1-f175.google.com with SMTP id a132so1391965qkg.0
        for <usrp-users@lists.ettus.com>; Wed, 27 Oct 2021 06:50:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=1vXBvnQTeGdEzYK1D1bXUVCKTax37Gfp2/UkhLyqXOg=;
        b=Dsm19jtvBvgKMGes56IzYjXP4ryt4QKI0nLfqw8prBqltrMebcvaMLnZld2ZAFXa+s
         az+XvYeBhF5CGSlHeaCFNIH+mxyLgLmDBl2ClApIOqrgwsbvireEwf0EZX/+Mv56d+4G
         uPQAylj5UktpOZsCUO5glgvpRSb1wTwWWFCYRpxPN7e6SQv3pXLz2fj1tFXn83FHzicC
         EMEbsyAbIF9Y3T8GbQhMgB19IUj0SPD2OMZnPz/CYZ7N/J39ALHFhhN9IU74a+BYAIT2
         jNIXNjsZIFp7bs3F3kRHGTqZHv+z5T7RjNbqmUVWFoqDzQWxtYaZTJkv6MjL+t5AvhZl
         Ar0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=1vXBvnQTeGdEzYK1D1bXUVCKTax37Gfp2/UkhLyqXOg=;
        b=jAziyMHVE4b85AV4/jPUb6upsk/oJmbD9kVx9ebsYG0wbP4mdma6xPphVCl69omS2K
         BZ2ulmNzw16/bTCr/YO+f8K2eQCone14SmIG2nNE/jesCxwN6DwZJBjq9AxzXM9iWiye
         NIRoY2lzc1mDZFOtaPxOtcbLOi4+9OJYw+k6vI9cutmsIm2YgyC8hbMSOAeX/9Ke0eXX
         QdNuimlHWmA8MdYmnO6sHehmRxIcVG8534dICiZ/SinY4DqXB7+lwE6pIgQeSHj8fcza
         Afn0GRKALJHnY859BStGnc0U4ckcVmzc6rsXcs3QppX8YwG0yFxTsUpPCJq6PQdIPKwM
         ohnA==
X-Gm-Message-State: AOAM533Ja7Q48A9C557zR7IY/U7Vni4sxXsTYw0ow9QkuprIgEMyOPid
	7O/oyULIRFllDgvm7srmbhyU9HMGs7U=
X-Google-Smtp-Source: ABdhPJwbcE931lqJ3y2tLNXxaiChdvKXXxwF4hj425X7t9OVp7MNqKXRUiyVUi8GWA+VItj1ZhbdPg==
X-Received: by 2002:a05:620a:460a:: with SMTP id br10mr24761546qkb.472.1635342651867;
        Wed, 27 Oct 2021 06:50:51 -0700 (PDT)
Received: from [192.168.2.248] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id bm25sm62094qkb.4.2021.10.27.06.50.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Oct 2021 06:50:51 -0700 (PDT)
Message-ID: <4f7665d5-76b9-d6ae-c16d-e80c49fee5e7@gmail.com>
Date: Wed, 27 Oct 2021 09:50:50 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.2
Content-Language: en-US
To: zeyuan.li@zengyi-tech.com, usrp-users@lists.ettus.com
References: <00f301d7c978$ef03a150$cd0ae3f0$@zengyi-tech.com>
 <e2940e0e-515d-a2ac-96a1-5d97c503fa6a@gmail.com>
 <018b01d7ca10$592a2260$0b7e6720$@zengyi-tech.com>
 <cf1cae96-1611-bcc4-9bd3-b62e6d809ab6@gmail.com>
 <01cd01d7ca1f$4e75f830$eb61e890$@zengyi-tech.com>
 <a607d825-1dba-d69b-4520-be2a17e4a2a5@gmail.com>
 <007601d7cae0$bd7649d0$3862dd70$@zengyi-tech.com>
 <ebb155d7-5462-260b-016f-3aa0a469dd52@gmail.com>
 <00c401d7cb01$d9ee5500$8dcaff00$@zengyi-tech.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <00c401d7cb01$d9ee5500$8dcaff00$@zengyi-tech.com>
Message-ID-Hash: LOFIZW7K2K4BH7I5SCQX6PTS4VUZXKYV
X-Message-ID-Hash: LOFIZW7K2K4BH7I5SCQX6PTS4VUZXKYV
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?b?UmU6IOetlOWkjTogUmU6IOetlOWkjTog562U5aSNOiBSZTog562U5aSNOiBSZTogSG93IHRvIHVzZSBFeHRlcm5hbCBMTyBvbiBOMzEwIGRldmljZT8=?=
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LOFIZW7K2K4BH7I5SCQX6PTS4VUZXKYV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6440391512916222369=="

This is a multi-part message in MIME format.
--===============6440391512916222369==
Content-Type: multipart/alternative;
 boundary="------------ye8QkOfBvT88rXlw8jvBJcRJ"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------ye8QkOfBvT88rXlw8jvBJcRJ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-10-27 03:11, zeyuan.li@zengyi-tech.com wrote:
>
> I set the correct device arguments,but it doesn=E2=80=99t work correctl=
y and=20
> also there is no error report.
>
> I don=E2=80=99t what can I do next .
>
> So I want to config this argument in mpm.conf file or usrp_hwd.conf=20
> file to try to use external LO .
>
> I couldn=E2=80=99t find this file named "usrp-hwd.conf" in =E2=80=9C/us=
r=E2=80=9D .and also=20
> =E2=80=9Cmpm.conf=E2=80=9D
>
>
Again, modifying the MPM config file is NOT necessary to get external LO=20
to work.

What frequency are you trying to use?

Can you share the lines of code you use to set up the N310 for shared LO=20
operation--including the initial device "make" with device arguments, etc=
.


--------------ye8QkOfBvT88rXlw8jvBJcRJ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-10-27 03:11,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:zeyuan.li@zeng=
yi-tech.com">zeyuan.li@zengyi-tech.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:00c401d7cb01$d9ee5500$8dcaff00$@zengyi-tech.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:=E5=AE=8B=E4=BD=93;
	panose-1:2 1 6 0 3 1 1 1 1 1;}@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:=E7=AD=89=E7=BA=BF;
	panose-1:2 1 6 0 3 1 1 1 1 1;}@font-face
	{font-family:"\@=E5=AE=8B=E4=BD=93";
	panose-1:2 1 6 0 3 1 1 1 1 1;}@font-face
	{font-family:"\@=E7=AD=89=E7=BA=BF";
	panose-1:2 1 6 0 3 1 1 1 1 1;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.5pt;
	font-family:=E7=AD=89=E7=BA=BF;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}pre
	{mso-style-priority:99;
	mso-style-link:"HTML =E9=A2=84=E8=AE=BE=E6=A0=BC=E5=BC=8F =E5=AD=97=E7=AC=
=A6";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:=E5=AE=8B=E4=BD=93;}p.msonormal0, li.msonormal0, div.msonorm=
al0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:=E5=AE=8B=E4=BD=93;}span.HTML
	{mso-style-name:"HTML =E9=A2=84=E8=AE=BE=E6=A0=BC=E5=BC=8F =E5=AD=97=E7=AC=
=A6";
	mso-style-priority:99;
	mso-style-link:"HTML =E9=A2=84=E8=AE=BE=E6=A0=BC=E5=BC=8F";
	font-family:"Courier New";}span.EmailStyle20
	{mso-style-type:personal;
	font-family:=E7=AD=89=E7=BA=BF;
	color:windowtext;}span.EmailStyle21
	{mso-style-type:personal;
	font-family:=E7=AD=89=E7=BA=BF;
	color:windowtext;}span.EmailStyle22
	{mso-style-type:personal;
	font-family:=E7=AD=89=E7=BA=BF;
	color:windowtext;}span.EmailStyle23
	{mso-style-type:personal;
	font-family:=E7=AD=89=E7=BA=BF;
	color:windowtext;}span.EmailStyle24
	{mso-style-type:personal-reply;
	font-family:=E7=AD=89=E7=BA=BF;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span lang=3D"EN-US">I set the correct dev=
ice
            arguments,but it doesn=E2=80=99t work correctly and also ther=
e is no
            error report.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">I don=E2=80=99t what =
can I do
            next .<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">So I want to config t=
his
            argument in mpm.conf file or usrp_hwd.conf file to try to
            use external LO .<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">I couldn=E2=80=99t fi=
nd this
            file named "usrp-hwd.conf" in =E2=80=9C/usr=E2=80=9D .and als=
o =E2=80=9Cmpm.conf=E2=80=9D<o:p></o:p></span></p>
        <br>
      </div>
    </blockquote>
    Again, modifying the MPM config file is NOT necessary to get
    external LO to work.<br>
    <br>
    What frequency are you trying to use?<br>
    <br>
    Can you share the lines of code you use to set up the N310 for
    shared LO operation--including the initial device "make" with device
    arguments, etc.<br>
    <br>
    <br>
  </body>
</html>
--------------ye8QkOfBvT88rXlw8jvBJcRJ--

--===============6440391512916222369==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6440391512916222369==--
