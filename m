Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C4A8D41A536
	for <lists+usrp-users@lfdr.de>; Tue, 28 Sep 2021 04:19:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E9D033844F4
	for <lists+usrp-users@lfdr.de>; Mon, 27 Sep 2021 22:19:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="e62fQ4T8";
	dkim-atps=neutral
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by mm2.emwd.com (Postfix) with ESMTPS id E3F283844E3
	for <usrp-users@lists.ettus.com>; Mon, 27 Sep 2021 22:18:20 -0400 (EDT)
Received: by mail-qk1-f170.google.com with SMTP id p4so39315924qki.3
        for <usrp-users@lists.ettus.com>; Mon, 27 Sep 2021 19:18:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=TNSAoPSTj3I7mhjQ51WDzNNvl1hK+nI5bODYavnwfx4=;
        b=e62fQ4T8nB667hZR1nI0TP+y/A6SP+n7juiipr3Dt3UwE+1IeeNtKkKzHciakUsv8Y
         zVtOJX9zVjUe4zdGnvpTNG/kCZ+PAgvWFmM1UonLyUINVkLh5rRjJHSGqg/88GeNVoh3
         FXhZT4bHtII+8I6gm85THH330pERQdqRArtHTI3+CO7R3ggqz1MWETkWwO+MSlAE/sH8
         E0mfwm1iWUUtgcMQo1gvgBsLelcF/o4WzQbJ/hUDSmFX6kL9jxV991YxjKsMImG+er9o
         nCnvuQgpZu168pQ/49W+wERYuDct+Nn09Qx+StRkmL/Id/BJTR08Us2uygGeZj871AWN
         0prg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=TNSAoPSTj3I7mhjQ51WDzNNvl1hK+nI5bODYavnwfx4=;
        b=jg5r1rIa/FmV0cfHn95l7dv1W3ZdP+weNVrc7JIemC5mqP4OBuc2/sdfoQGumiKiq1
         cFC5185WZxt5cOgdW+7ho9eel9zWkgTPledT3FbVGV/fR5M3yRQt6fdoQJfRP5xCCng4
         U2WoiXCaGDpG+5F5iAs1U+p6KXsIAEmKrJ73PdOBI+bts6AfSk36QcUCPsYDcGYFr7qd
         z8qQkmvbLiOfDKBpwNExyXD/tqoz+6blM2tViOVQ0r/YW2Pz/zogTs4HCGaPu3iPmtBA
         gevCJLtaisdf+8IX3HCGI+rBnWh5ylb3qr7VUIIM1U8omLoDOcX/5RBu/a2PWjbbCKIK
         zWYw==
X-Gm-Message-State: AOAM532s8J/QRClTGd2IhFWUB2Pt2bFqxAvi2LMciN08VhvWSR2qP8dC
	W5eXMOFf+eeRgX5ItgmD153wA4KMOogVGA==
X-Google-Smtp-Source: ABdhPJzaa8MJFqf8Ay/ub9cNIavhH4zKmxtg3GvUjuKaKfcdb+/sJYzrsBgPLYv5aLVfaoUcQ3xKUQ==
X-Received: by 2002:ae9:dc04:: with SMTP id q4mr3238791qkf.148.1632795500090;
        Mon, 27 Sep 2021 19:18:20 -0700 (PDT)
Received: from [192.168.2.246] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id d13sm12273938qtm.32.2021.09.27.19.18.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Sep 2021 19:18:19 -0700 (PDT)
To: Thangaraj Mukara Dhakshinamoorthy <thangaraj@komro.net>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <yvihFszum0xbmZ1alvfvUJLHqDePaIDR6hXw7IPGiw@lists.ettus.com>
 <f033c3497b9948beb010df9452c3184a@komro.net>
 <b6ffe3ea-cc05-a9e0-482a-62c4ef7983e6@gmail.com>
 <1ee6a256cd214bb89085fcd4c3b9c381@komro.net>
 <dc64e705-7b7d-b438-3ee2-5535ce894024@gmail.com>
 <0c75bc58ab4f4970ab0176313c206451@komro.net>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <550aff12-e48a-ceec-b5a1-b1a7bcbb35ea@gmail.com>
Date: Mon, 27 Sep 2021 22:18:18 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <0c75bc58ab4f4970ab0176313c206451@komro.net>
Content-Language: en-US
Message-ID-Hash: 6XMSRPG7KD72MVA7V6JPQ4HDKGQBMLF3
X-Message-ID-Hash: 6XMSRPG7KD72MVA7V6JPQ4HDKGQBMLF3
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Help_Failed to build UHD in Ubuntu 20.04
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6XMSRPG7KD72MVA7V6JPQ4HDKGQBMLF3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0586592813465779428=="

This is a multi-part message in MIME format.
--===============0586592813465779428==
Content-Type: multipart/alternative;
 boundary="------------FDD347C920159B270C291E66"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------FDD347C920159B270C291E66
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-09-27 11:18 a.m., Thangaraj Mukara Dhakshinamoorthy wrote:
>
> Hallo Marcus,
>
> Unfortunately, no change, it doesn=E2=80=99t work either!
>
>
Also, check out this document:

https://kb.ettus.com/Troubleshooting_N310/N320_Device_Discovery_Issues_*


*_

--------------FDD347C920159B270C291E66
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-09-27 11:18 a.m., Thangaraj
      Mukara Dhakshinamoorthy wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:0c75bc58ab4f4970ab0176313c206451@komro.net">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}pre
	{mso-style-priority:99;
	mso-style-link:"HTML Vorformatiert Zchn";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}span.HTMLVorformatiertZchn
	{mso-style-name:"HTML Vorformatiert Zchn";
	mso-style-priority:99;
	mso-style-link:"HTML Vorformatiert";
	font-family:Consolas;}span.E-MailFormatvorlage21
	{mso-style-type:personal;
	font-family:"Verdana",sans-serif;
	color:windowtext;}span.E-MailFormatvorlage22
	{mso-style-type:personal;
	font-family:"Verdana",sans-serif;
	color:windowtext;}span.E-MailFormatvorlage23
	{mso-style-type:personal-reply;
	font-family:"Verdana",sans-serif;
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
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">Hallo
            Marcus,<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">Unfortunately,
            no change, it doesn=E2=80=99t work either!<o:p></o:p></span><=
/p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:yellow;mso-highlight:yellow;mso-fareast-language:EN-US"><o:p>=C2=A0=
</o:p></span></p>
        <br>
      </div>
    </blockquote>
    Also, check out this document:<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/Troublesh=
ooting_N310/N320_Device_Discovery_Issues">https://kb.ettus.com/Troublesho=
oting_N310/N320_Device_Discovery_Issues</a><u><b><br>
        <br>
        <br>
      </b></u>
  </body>
</html>

--------------FDD347C920159B270C291E66--

--===============0586592813465779428==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0586592813465779428==--
