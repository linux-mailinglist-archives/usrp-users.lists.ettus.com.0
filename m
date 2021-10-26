Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DF88443AACA
	for <lists+usrp-users@lfdr.de>; Tue, 26 Oct 2021 05:41:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DE336383ED5
	for <lists+usrp-users@lfdr.de>; Mon, 25 Oct 2021 23:41:09 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ecl7qdEE";
	dkim-atps=neutral
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 7DD5F383BAE
	for <usrp-users@lists.ettus.com>; Mon, 25 Oct 2021 23:40:27 -0400 (EDT)
Received: by mail-qk1-f170.google.com with SMTP id x123so13900056qke.7
        for <usrp-users@lists.ettus.com>; Mon, 25 Oct 2021 20:40:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=FJ5siYftDDaJcW6iIXTSNHUfTP9e5oq4ToDinfytcLE=;
        b=ecl7qdEE+zckePLSzSRB+mspR3H8VxwcchEmmDnRQDWr9SLU6tMfiJbpDrmBTmXSd0
         B2ryzHHtCg55c4WKN3yq/pWP3pAvrhA/cJqHR/NhmNjSG3c6vB2SKNHtmKuYoP8Qw2I7
         XzgTSoMVTL3iR67G9YaWuvk5DE60W/FE+VCPahg3u0U4S7RKkkiwNfgFXc0Nic+0Vx+K
         Tv6SYZYc5GqMA5BW1YNhC/Y+8gxNBOiEadq94dKZj9KV0piFn76jTW7hYXmMOjsqarte
         hfqjoUayHOuk8zIheDz6E0aD7ZkGf3x7AUAjdlfsUhvwztca/QMXuM9i6ybKBlHeu8Gl
         5P0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=FJ5siYftDDaJcW6iIXTSNHUfTP9e5oq4ToDinfytcLE=;
        b=noSHYhbmPo+3NZ0wbR4el11Dbsp2Pt5AVIyp95lA/H9V7WRb2lEm6Zxvz/nZZD4wLq
         kimBWc+wO/EmjLuVPnn3MhIocvGpqKy1ZBltN/hrI9sCkH0TAmu4phTmqqPvuHEZelHo
         NVmQqJTEO14oLA/AMtvJyEA/ZM6QjMSVFZIlkVMc5PaBQKpOszA/pvWB0zYVzuxPZAAQ
         b58zvxfYwrrZktIwSK3a+/GzON6AzGrDvA2CnwWfb+J2T2R5evmtpC6LYMGzD0NTdArM
         lbr+1tAemojNdS7KcssHOS/O3Vuv9jASrbreUnu5dlHmu2VSDYCNMfDI/oiJjwac8boG
         ch0A==
X-Gm-Message-State: AOAM531m49Fi/2ZGoF81JBZuIcpoU2xOfOjDM9lgLTcCk8ROc5YzTKzh
	WJ6GiJhH2k6rIcfXTDIeofkhC84cH/g=
X-Google-Smtp-Source: ABdhPJwE/FZbXKCgdo+22QfSqtNYswdkMzyDO6gf+z/WqkeX+AT7YYQxAm66sWappGWyUU7+fhxX1w==
X-Received: by 2002:a37:8887:: with SMTP id k129mr17138759qkd.338.1635219626930;
        Mon, 25 Oct 2021 20:40:26 -0700 (PDT)
Received: from [192.168.2.245] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id v17sm460697qkl.123.2021.10.25.20.40.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Oct 2021 20:40:26 -0700 (PDT)
Message-ID: <cf1cae96-1611-bcc4-9bd3-b62e6d809ab6@gmail.com>
Date: Mon, 25 Oct 2021 23:40:18 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.2
Content-Language: en-US
To: zeyuan.li@zengyi-tech.com, usrp-users@lists.ettus.com
References: <00f301d7c978$ef03a150$cd0ae3f0$@zengyi-tech.com>
 <e2940e0e-515d-a2ac-96a1-5d97c503fa6a@gmail.com>
 <018b01d7ca10$592a2260$0b7e6720$@zengyi-tech.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <018b01d7ca10$592a2260$0b7e6720$@zengyi-tech.com>
Message-ID-Hash: BTJMXGSGGDW622F2ZJ2HTFDKMDBT4L57
X-Message-ID-Hash: BTJMXGSGGDW622F2ZJ2HTFDKMDBT4L57
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?b?UmU6IOetlOWkjTogUmU6IEhvdyB0byB1c2UgRXh0ZXJuYWwgTE8gb24gTjMxMCBkZXZpY2U/?=
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BTJMXGSGGDW622F2ZJ2HTFDKMDBT4L57/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7219689597985405587=="

This is a multi-part message in MIME format.
--===============7219689597985405587==
Content-Type: multipart/alternative;
 boundary="------------6UbKd2pJW0aOJV0mBG0UtgOY"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------6UbKd2pJW0aOJV0mBG0UtgOY
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-10-25 22:22, zeyuan.li@zengyi-tech.com wrote:
>
> I used TWICE frequency. But it doesn=E2=80=99t work.
>
> Have you tried successfully already?
>
>
Spend some time with the online documentation for the N310 here:

https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_usage

There are device arguments you must pass to get the external LO to work.


--------------6UbKd2pJW0aOJV0mBG0UtgOY
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-10-25 22:22,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:zeyuan.li@zeng=
yi-tech.com">zeyuan.li@zengyi-tech.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:018b01d7ca10$592a2260$0b7e6720$@zengyi-tech.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]-->
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
	font-family:=E5=AE=8B=E4=BD=93;}span.EmailStyle18
	{mso-style-type:personal;
	font-family:=E7=AD=89=E7=BA=BF;
	color:windowtext;}span.HTML
	{mso-style-name:"HTML =E9=A2=84=E8=AE=BE=E6=A0=BC=E5=BC=8F =E5=AD=97=E7=AC=
=A6";
	mso-style-priority:99;
	mso-style-link:"HTML =E9=A2=84=E8=AE=BE=E6=A0=BC=E5=BC=8F";
	font-family:"Courier New";}span.EmailStyle21
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
        <p class=3D"MsoNormal"><span lang=3D"EN-US">I used TWICE frequenc=
y.
            But it doesn=E2=80=99t work.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Have you tried
            successfully already?<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <div>
          <p class=3D"MsoNormal" style=3D"text-align:left" align=3D"left"=
><span
              style=3D"font-size:12.0pt;font-family:=E5=AE=8B=E4=BD=93" l=
ang=3D"EN-US"><o:p>=C2=A0</o:p></span><br>
          </p>
        </div>
      </div>
    </blockquote>
    Spend some time with the online documentation for the N310 here:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/ma=
nual/page_usrp_n3xx.html#n3xx_usage">https://files.ettus.com/manual/page_=
usrp_n3xx.html#n3xx_usage</a><br>
    <br>
    There are device arguments you must pass to get the external LO to
    work.<br>
    <br>
    <br>
  </body>
</html>
--------------6UbKd2pJW0aOJV0mBG0UtgOY--

--===============7219689597985405587==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7219689597985405587==--
