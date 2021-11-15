Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E0DF9450791
	for <lists+usrp-users@lfdr.de>; Mon, 15 Nov 2021 15:51:38 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 99A8F383ED6
	for <lists+usrp-users@lfdr.de>; Mon, 15 Nov 2021 09:51:37 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="BNn7wmC5";
	dkim-atps=neutral
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by mm2.emwd.com (Postfix) with ESMTPS id ECA6E383A86
	for <usrp-users@lists.ettus.com>; Mon, 15 Nov 2021 09:50:53 -0500 (EST)
Received: by mail-qk1-f170.google.com with SMTP id o63so3813520qkb.4
        for <usrp-users@lists.ettus.com>; Mon, 15 Nov 2021 06:50:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=+X2v8Llz/X804lANKvnMKSwcgmzPtFYOggS7TCA36/8=;
        b=BNn7wmC5M79nhQTXlWykZmXvp2QmVjJDrnYhlznJiI5GPbj7iXB6HYQ9+lOB0B1lue
         GEENuradbqRn6RsPiRCG0a2Rh48/gDjwBof0j6oh6j6VvFMds8MNbBnWr2UmkfWJbWdg
         xLXBKFWUbGDlrDT/GAaQem/3f5LMxvZpBvtnjjl+hxjDBORosaYq664GlU8Lyf9sCUP9
         trBtW6CkONbEEJxXd1toxDFAHSs5VGb7s2ekh9fKMdNSMwAMJCL9exOxUqOll8N3rxDL
         2yutvB15ZrLPE2sgoPtYmQWQpbfW2MY918Ysa1tmKzwfU1VEY9GCGo+/aDAi0ATb+Y1Z
         Hg0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=+X2v8Llz/X804lANKvnMKSwcgmzPtFYOggS7TCA36/8=;
        b=FBa0k2eA7J9ADVUZCvc1miN4OVf8ZR3J7AwASECJxv12yvvvz1XeK1snVscygG4m2O
         kFYfTsRObfzGmeD4xg72L7Dmx/G7MJf+OmdhFOs1o28+XuVBaCwVvkGs2HTKTJAsFL2k
         Sz3TAOdKwfvK7YABoiByTF0lPbSCY+Yb0pD5ZguQ8GqhcSmsRLogn/MF2GWPdNtbPibM
         AMJ1HDsy7R4rtnTkvPV0KRRLyfMHcPZnTegpRInX+Ki2WG/sopbnkmn8JMYYBqDWeg0n
         Jpj3ZqoGuDLt6Mc4Gr9JYYmGiXbSn6arOMd8CGwTW7PyjM7b7CbxFayusLnVKvwHVDCX
         n5Hw==
X-Gm-Message-State: AOAM532Fh+4qJ69/uo3wcwXpkSAqtPnvT88KGLGbayO2/YeRLqp09K/H
	Gh29ZcgjmXnFoLeXHcHSV8k=
X-Google-Smtp-Source: ABdhPJxG2G0kJU3nPAKWxVxt30SGEyOawkDkVNaPwEa6TEmgL1pGyFw6rT6HCXLSm8G9MaSibsme+A==
X-Received: by 2002:a37:c404:: with SMTP id d4mr29666537qki.120.1636987853339;
        Mon, 15 Nov 2021 06:50:53 -0800 (PST)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id m19sm6420834qkn.129.2021.11.15.06.50.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Nov 2021 06:50:52 -0800 (PST)
Message-ID: <d331b62c-4b76-e22b-a30a-2a2ab6fbd7e7@gmail.com>
Date: Mon, 15 Nov 2021 09:50:51 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: Guillermo Ortas Delgado <g.ortas@gmv.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <d636bd419e2548878b27baeacbca4b39@gmv.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <d636bd419e2548878b27baeacbca4b39@gmv.com>
Message-ID-Hash: KPZ73CMHVBZLIJPHP3X6D2X2SZLWCGTF
X-Message-ID-Hash: KPZ73CMHVBZLIJPHP3X6D2X2SZLWCGTF
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DPDK drops samples at low rates
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KPZ73CMHVBZLIJPHP3X6D2X2SZLWCGTF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7839665740110147719=="

This is a multi-part message in MIME format.
--===============7839665740110147719==
Content-Type: multipart/alternative;
 boundary="------------WusXMQU2W0DzIwqV464CM0aR"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------WusXMQU2W0DzIwqV464CM0aR
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-11-15 08:25, Guillermo Ortas Delgado wrote:
>
> I will add that for an unknown reason the maximum frame size as=20
> reported by UHD when launching the benchmark_rate app is 1556, which=20
> triggers a warning message saying that it should be 8000 for best resul=
ts.
>
> I cannot find anywhere to set this value to 8000, even when setting=20
> =E2=80=9Crecv_frame_size=3D9000,send_frame_size=3D9000=E2=80=9Din the d=
evice arguments I=20
> get the same.
>
> As a side note, this maximum frame size value of 1556 is good up to=20
> 100Msps dual channel if not using DPDK.
>
> Best,
>
> Guillermo
>
>

*What does ethtool have to say about the MTU on the hardware interface?


*
--------------WusXMQU2W0DzIwqV464CM0aR
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-11-15 08:25, Guillermo Ortas
      Delgado wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:d636bd419e2548878b27baeacbca4b39@gmv.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}span.EstiloCorreo17
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}span.EstiloCorreo18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}span.EstiloCorreo19
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
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
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D" lang=3D"EN-U=
S">I
            will add that for an unknown reason the maximum frame size
            as reported by UHD when launching the benchmark_rate app is
            1556, which triggers a warning message saying that it should
            be 8000 for best results.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D" lang=3D"EN-U=
S">I
            cannot find anywhere to set this value to 8000, even when
            setting =E2=80=9C</span><span
            style=3D"font-size:10.0pt;font-family:Consolas;color:#1F497D"
            lang=3D"EN-US">recv_frame_size=3D9000,send_frame_size=3D9000=E2=
=80=9D</span><span
            style=3D"font-size:10.0pt;color:#1F497D" lang=3D"EN-US">
          </span><span style=3D"color:#1F497D" lang=3D"EN-US">in the devi=
ce
            arguments I get the same.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D" lang=3D"EN-U=
S"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D" lang=3D"EN-U=
S">As
            a side note, this maximum frame size value of 1556 is good
            up to 100Msps dual channel if not using DPDK.<o:p></o:p></spa=
n></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D" lang=3D"EN-U=
S"><o:p>=C2=A0</o:p></span></p>
        <div>
          <p class=3D"MsoNormal"><span
              style=3D"color:#1F497D;mso-fareast-language:ES">Best,<o:p><=
/o:p></span></p>
          <p class=3D"MsoNormal"><span
              style=3D"color:#1F497D;mso-fareast-language:ES">Guillermo<o=
:p></o:p></span></p>
        </div>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>=C2=A0<=
/o:p></span></p>
        <br>
      </div>
    </blockquote>
    <br>
    <b>What does ethtool have to say about the MTU on the hardware
      interface?<br>
      <br>
      <br>
    </b>
  </body>
</html>
--------------WusXMQU2W0DzIwqV464CM0aR--

--===============7839665740110147719==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7839665740110147719==--
