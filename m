Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2162043B4C3
	for <lists+usrp-users@lfdr.de>; Tue, 26 Oct 2021 16:49:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E0DE5383F1A
	for <lists+usrp-users@lfdr.de>; Tue, 26 Oct 2021 10:49:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="a5q/86OA";
	dkim-atps=neutral
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	by mm2.emwd.com (Postfix) with ESMTPS id C06E3383D9C
	for <usrp-users@lists.ettus.com>; Tue, 26 Oct 2021 10:48:48 -0400 (EDT)
Received: by mail-qt1-f170.google.com with SMTP id r17so13684397qtx.10
        for <usrp-users@lists.ettus.com>; Tue, 26 Oct 2021 07:48:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=KV9IeG4tst7TFxvleTm6zVpDyxzEYYcLZD5yJCX0ZdU=;
        b=a5q/86OAHdGKdMx+eYWyrKreO446R0qGDolyGkLUeP8n4QZGM/309LsNX754NABHy1
         wwuPGuj47yXL+k0GrItGQfZTPlHqcdjQfAqjkUwYrW1aSHuiawQiU1OjVqoo9Nf9rhp7
         Nq42BQGHCfy2LdRYocvdUKyz+Zqx3p/Z4lYOl6nNFWV0+oyTsuZNKaoAfp9D9sG5Pvd9
         WydymK78cGu1NF2oyCNCe/lfmCxj+6thozxpwUcHcvhUZpITzOF0BXaLwXPQjV0tJ6ko
         IwGGLFwuXFTS81FenOVjuiuUm3vtFrp+Qg4p60k3benMHZpoY/G1ATJbxRutxryHPWO6
         yukQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=KV9IeG4tst7TFxvleTm6zVpDyxzEYYcLZD5yJCX0ZdU=;
        b=R9jBT2RHlrJCwIrCEzHrfuOg2dnVQC9Kyeiy3vsf4qwovaJIJanO6GuDoPdklik3kn
         jekqnG6W+2+2Lkq2FjZflqjHiWAzzy9SA00u6aVDzl0435BPCLgCsoXh93aSScKZIZba
         CeI7KJ1IUXRvIfkF8xyJpSJ63iatIQ7OIdsUf5g3vVNcLRnaFpTMSCFKeW1YBs94qn3Q
         KYbvTwrfF81ubjZARcytUrelh204vQurdanIkvXxbnWa705EZj2Co1Q0n1YL/dFvupRh
         fL1LaypWFOurElA/oVXdf5Ip9Er5GMUJ23nbzsqR7RlwLqppFc9H5ae3PZ+z1Pss7Wms
         TZRw==
X-Gm-Message-State: AOAM533rE0p4QPmkdsskKrPvskJTFV0hwFuLHW91dUrztQaPbEre7nKf
	O0FSr+ixMSTtbMQwaGHZXS3yauft9Dc=
X-Google-Smtp-Source: ABdhPJwyY5Tcf9rM4/3r12TU7RT4rPgQfe4+Au4hXfCwoKiLskbzWCgr0u/et93zURwN1sz6TLXUCw==
X-Received: by 2002:ac8:5988:: with SMTP id e8mr25200098qte.32.1635259728213;
        Tue, 26 Oct 2021 07:48:48 -0700 (PDT)
Received: from [192.168.2.247] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id bl37sm11242540qkb.39.2021.10.26.07.48.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Oct 2021 07:48:47 -0700 (PDT)
Message-ID: <a607d825-1dba-d69b-4520-be2a17e4a2a5@gmail.com>
Date: Tue, 26 Oct 2021 10:48:46 -0400
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
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <01cd01d7ca1f$4e75f830$eb61e890$@zengyi-tech.com>
Message-ID-Hash: WDHEKU4SHVH4W26RZQCJIV4CIA676TWH
X-Message-ID-Hash: WDHEKU4SHVH4W26RZQCJIV4CIA676TWH
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?b?UmU6IOetlOWkjTogUmU6IOetlOWkjTogUmU6IEhvdyB0byB1c2UgRXh0ZXJuYWwgTE8gb24gTjMxMCBkZXZpY2U/?=
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WDHEKU4SHVH4W26RZQCJIV4CIA676TWH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0288887199281315000=="

This is a multi-part message in MIME format.
--===============0288887199281315000==
Content-Type: multipart/alternative;
 boundary="------------e84iNOggAzL50qsol6IV4pgU"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------e84iNOggAzL50qsol6IV4pgU
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-10-26 00:09, zeyuan.li@zengyi-tech.com wrote:
>
> Do you=C2=A0 mean that I need to change MPM config files, and than rebo=
ot=20
> the N310 ?
>
> Does the N310 LO source will be changed to external when I complete=20
> these above steps ?
>
No, you don't have to reconfigure MPM.

But look at the table of device arguments--there's a 'rx_lo_source'=20
argument that must be set to "external".=C2=A0 This is what Michael Dicke=
ns was
 =C2=A0 talking about in his reply to you yesterday.

If this still doesn't work, please share with us the pieces of code that=20
you are using to set-up external LO ,so that we might spot any errors in=20
that
 =C2=A0 code.



> =E8=B0=A2=E8=B0=A2=EF=BC=8C=E6=9C=89=E4=BB=BB=E4=BD=95=E9=97=AE=E9=A2=98=
=E8=AF=B7=E9=9A=8F=E6=97=B6=E4=B8=8E=E6=88=91=E8=81=94=E7=B3=BB=EF=BC=81
>
> =E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94
>
> =E6=9D=8E=E6=B3=BD=E8=BF=9C|=E7=A0=94=E5=8F=91=E5=B7=A5=E7=A8=8B=E5=B8=88
>
> =E5=8C=97=E4=BA=AC=E6=9B=BE=E7=9B=8A=E7=A7=91=E6=8A=80=E6=9C=89=E9=99=90=
=E5=85=AC=E5=8F=B8
>
> =E6=89=8B=E6=9C=BA=EF=BC=9A13121162044
>
> =E5=9C=B0=E5=9D=80=EF=BC=9A=E5=8C=97=E4=BA=AC=E5=B8=82=E6=B5=B7=E6=B7=80=
=E5=8C=BA=E4=B8=AD=E5=85=B3=E6=9D=91=E5=A4=A7=E8=A1=97=E4=B8=AD=E5=85=B3=E6=
=9D=91SOHO 1108
> =E7=BD=91=E5=9D=80=EF=BC=9A_www.zengyi-tech.com <http://www.zengyi-tech=
.com>_
>
> *=E5=8F=91=E4=BB=B6=E4=BA=BA:*Marcus D. Leech <patchvonbraun@gmail.com>
> *=E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4:*2021=E5=B9=B410=E6=9C=8826=E6=97=
=A511:40
> *=E6=94=B6=E4=BB=B6=E4=BA=BA:*zeyuan.li@zengyi-tech.com; usrp-users@lis=
ts.ettus.com
> *=E4=B8=BB=E9=A2=98:*[USRP-users] Re: =E7=AD=94=E5=A4=8D: Re: How to us=
e External LO on N310 device?
>
> On 2021-10-25 22:22, zeyuan.li@zengyi-tech.com wrote:
>
>     I used TWICE frequency. But it doesn=E2=80=99t work.
>
>     Have you tried successfully already?
>
> Spend some time with the online documentation for the N310 here:
>
> https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_usage
>
> There are device arguments you must pass to get the external LO to work=
.
>

--------------e84iNOggAzL50qsol6IV4pgU
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-10-26 00:09,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:zeyuan.li@zeng=
yi-tech.com">zeyuan.li@zengyi-tech.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:01cd01d7ca1f$4e75f830$eb61e890$@zengyi-tech.com">
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
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Do you=C2=A0 mean tha=
t I need
            to change MPM config files, and than reboot the N310 ?<o:p></=
o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Does the N310 LO sour=
ce
            will be changed to external when I complete these above
            steps ?<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
      </div>
    </blockquote>
    No, you don't have to reconfigure MPM.<br>
    <br>
    But look at the table of device arguments--there's a 'rx_lo_source'
    argument that must be set to "external".=C2=A0 This is what Michael
    Dickens was<br>
    =C2=A0 talking about in his reply to you yesterday.<br>
    <br>
    If this still doesn't work, please share with us the pieces of code
    that you are using to set-up external LO ,so that we might spot any
    errors in that<br>
    =C2=A0 code.<br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:01cd01d7ca1f$4e75f830$eb61e890$@zengyi-tech.com">
      <div class=3D"WordSection1">
        <div>
          <p class=3D"MsoNormal" style=3D"text-align:left" align=3D"left"=
><span
              style=3D"font-size:12.0pt;font-family:=E5=AE=8B=E4=BD=93" l=
ang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
          <p class=3D"MsoNormal" style=3D"text-align:left" align=3D"left"=
><span
              style=3D"font-size:12.0pt;font-family:=E5=AE=8B=E4=BD=93" l=
ang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
          <p class=3D"MsoNormal" style=3D"text-align:left" align=3D"left"=
><span
              style=3D"font-size:12.0pt;font-family:=E5=AE=8B=E4=BD=93" l=
ang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
          <p class=3D"MsoNormal" style=3D"text-align:left" align=3D"left"=
><span
              style=3D"font-size:12.0pt;font-family:=E5=AE=8B=E4=BD=93">=E8=
=B0=A2=E8=B0=A2=EF=BC=8C=E6=9C=89=E4=BB=BB=E4=BD=95=E9=97=AE=E9=A2=98=E8=AF=
=B7=E9=9A=8F=E6=97=B6=E4=B8=8E=E6=88=91=E8=81=94=E7=B3=BB=EF=BC=81<span
                lang=3D"EN-US"><o:p></o:p></span></span></p>
          <p class=3D"MsoNormal" style=3D"text-align:left" align=3D"left"=
><span
              style=3D"font-size:12.0pt;font-family:=E5=AE=8B=E4=BD=93">=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94<span
                lang=3D"EN-US"><o:p></o:p></span></span></p>
          <p class=3D"MsoNormal" style=3D"text-align:left" align=3D"left"=
><span
style=3D"font-size:12.0pt;font-family:=E5=AE=8B=E4=BD=93;color:black;bord=
er:none
              windowtext 1.0pt;padding:0cm;background:white">=E6=9D=8E=E6=
=B3=BD=E8=BF=9C<span
                lang=3D"EN-US">|</span>=E7=A0=94=E5=8F=91=E5=B7=A5=E7=A8=8B=
=E5=B8=88</span><span
              style=3D"font-size:12.0pt;font-family:=E5=AE=8B=E4=BD=93" l=
ang=3D"EN-US"><o:p></o:p></span></p>
          <p class=3D"MsoNormal" style=3D"text-align:left" align=3D"left"=
><span
style=3D"font-size:12.0pt;font-family:=E5=AE=8B=E4=BD=93;color:black;bord=
er:none
              windowtext 1.0pt;padding:0cm;background:white">=E5=8C=97=E4=
=BA=AC=E6=9B=BE=E7=9B=8A=E7=A7=91=E6=8A=80=E6=9C=89=E9=99=90=E5=85=AC=E5=8F=
=B8</span><span
              style=3D"font-size:12.0pt;font-family:=E5=AE=8B=E4=BD=93" l=
ang=3D"EN-US"><o:p></o:p></span></p>
          <p class=3D"MsoNormal" style=3D"text-align:left" align=3D"left"=
><span
style=3D"font-size:12.0pt;font-family:=E5=AE=8B=E4=BD=93;color:black;bord=
er:none
              windowtext 1.0pt;padding:0cm;background:white">=E6=89=8B=E6=
=9C=BA=EF=BC=9A<span
                lang=3D"EN-US">13121162044</span></span><span
              style=3D"font-size:12.0pt;font-family:=E5=AE=8B=E4=BD=93" l=
ang=3D"EN-US"><o:p></o:p></span></p>
          <p class=3D"MsoNormal" style=3D"text-align:left" align=3D"left"=
><span
style=3D"font-size:12.0pt;font-family:=E5=AE=8B=E4=BD=93;color:black;bord=
er:none
              windowtext 1.0pt;padding:0cm;background:white">=E5=9C=B0=E5=
=9D=80=EF=BC=9A=E5=8C=97=E4=BA=AC=E5=B8=82=E6=B5=B7=E6=B7=80=E5=8C=BA=E4=B8=
=AD=E5=85=B3=E6=9D=91=E5=A4=A7=E8=A1=97=E4=B8=AD=E5=85=B3=E6=9D=91<span
                lang=3D"EN-US">SOHO 1108<br>
              </span>=E7=BD=91=E5=9D=80=EF=BC=9A<u><span lang=3D"EN-US"><=
a
                    href=3D"http://www.zengyi-tech.com"
                    moz-do-not-send=3D"true">www.zengyi-tech.com</a></spa=
n></u></span><span
              style=3D"font-size:12.0pt;font-family:=E5=AE=8B=E4=BD=93" l=
ang=3D"EN-US"><o:p></o:p></span></p>
        </div>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <div>
          <div style=3D"border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0cm 0cm 0cm">
            <p class=3D"MsoNormal" style=3D"text-align:left" align=3D"lef=
t"><b><span
                  style=3D"font-size:11.0pt">=E5=8F=91=E4=BB=B6=E4=BA=BA<=
span lang=3D"EN-US">:</span></span></b><span
                style=3D"font-size:11.0pt" lang=3D"EN-US"> Marcus D. Leec=
h
                <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvo=
nbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> <br>
              </span><b><span style=3D"font-size:11.0pt">=E5=8F=91=E9=80=81=
=E6=97=B6=E9=97=B4<span
                    lang=3D"EN-US">:</span></span></b><span
                style=3D"font-size:11.0pt" lang=3D"EN-US"> 2021</span><sp=
an
                style=3D"font-size:11.0pt">=E5=B9=B4<span lang=3D"EN-US">=
10</span>=E6=9C=88<span
                  lang=3D"EN-US">26</span>=E6=97=A5<span lang=3D"EN-US"> =
11:40<br>
                </span><b>=E6=94=B6=E4=BB=B6=E4=BA=BA<span lang=3D"EN-US"=
>:</span></b><span
                  lang=3D"EN-US"> <a class=3D"moz-txt-link-abbreviated" h=
ref=3D"mailto:zeyuan.li@zengyi-tech.com">zeyuan.li@zengyi-tech.com</a>;
                  <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:us=
rp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
                </span><b>=E4=B8=BB=E9=A2=98<span lang=3D"EN-US">:</span>=
</b><span
                  lang=3D"EN-US"> [USRP-users] Re: </span>=E7=AD=94=E5=A4=
=8D<span
                  lang=3D"EN-US">: Re: How to use External LO on N310
                  device?<o:p></o:p></span></span></p>
          </div>
        </div>
        <p class=3D"MsoNormal" style=3D"text-align:left" align=3D"left"><=
span
            lang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
        <div>
          <p class=3D"MsoNormal" style=3D"text-align:left" align=3D"left"=
><span
              lang=3D"EN-US">On 2021-10-25 22:22, <a
                href=3D"mailto:zeyuan.li@zengyi-tech.com"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
zeyuan.li@zengyi-tech.com</a>
              wrote:</span><span style=3D"font-size:12.0pt" lang=3D"EN-US=
"><o:p></o:p></span></p>
        </div>
        <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
          <p class=3D"MsoNormal"><span lang=3D"EN-US">I used TWICE
              frequency. But it doesn</span>=E2=80=99<span lang=3D"EN-US"=
>t work.<o:p></o:p></span></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-US">Have you tried
              successfully already?<o:p></o:p></span></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0<o:p></o:p></=
span></p>
          <div>
            <p class=3D"MsoNormal" style=3D"text-align:left" align=3D"lef=
t"><span
                style=3D"font-size:12.0pt;font-family:=E5=AE=8B=E4=BD=93"=
 lang=3D"EN-US">=C2=A0</span><span
                lang=3D"EN-US"><o:p></o:p></span></p>
          </div>
        </blockquote>
        <p class=3D"MsoNormal"
          style=3D"margin-bottom:12.0pt;text-align:left" align=3D"left"><=
span
            style=3D"font-size:12.0pt;font-family:=E5=AE=8B=E4=BD=93" lan=
g=3D"EN-US">Spend
            some time with the online documentation for the N310 here:<br=
>
            <br>
            <a
              href=3D"https://files.ettus.com/manual/page_usrp_n3xx.html#=
n3xx_usage"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">ht=
tps://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_usage</a><br>
            <br>
            There are device arguments you must pass to get the external
            LO to work.<br>
            <br>
            <o:p></o:p></span></p>
      </div>
    </blockquote>
    <br>
  </body>
</html>
--------------e84iNOggAzL50qsol6IV4pgU--

--===============0288887199281315000==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0288887199281315000==--
