Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E79015AB7F9
	for <lists+usrp-users@lfdr.de>; Fri,  2 Sep 2022 20:08:46 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4F56C386454
	for <lists+usrp-users@lfdr.de>; Fri,  2 Sep 2022 14:08:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662142125; bh=Hy4Wmgf3p1p+d5QnkSkqwbZWu92VGdoCq9uekJhoypA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=GmYoFe2hsCAd2unCFw3qMyt6ZWVW3WVy/v/e/TnO4OCAi5Uis0bYuV/Vs7Q7WH1Ja
	 pwGbdoxrr8U4GMtArf6iWVJYy5jEGBgqyJusdyneBFNSasNg1PKdGgqYTLe9axYIpM
	 Ljp64iLw4XAyA12J9ALJIUED8ypBtHEM5Ca8auJChlpNrprq7woujROphSR+AR9yoo
	 l/CVJIzHyYoyOl12F04wThNBbjp3WBAeVJSea3PPHGAjnci684P2UR8ObTNd4upSRM
	 hqjercM5irGT7sTGjsYXAjik6QMNDFvbpdpDXP3I09qd1lbubqg7IRuGqFTZ8Jpp75
	 YcOUuM7ameJ/Q==
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 038F638640F
	for <usrp-users@lists.ettus.com>; Fri,  2 Sep 2022 14:07:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VDc0o5mL";
	dkim-atps=neutral
Received: by mail-qv1-f51.google.com with SMTP id j1so2003926qvv.8
        for <usrp-users@lists.ettus.com>; Fri, 02 Sep 2022 11:07:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date;
        bh=R9uoPvqnEi1+KY88ZXubWXlhsCldlU2fPotvDkQ2b28=;
        b=VDc0o5mLFFE3Oy3hSsquEJo8mcoSnzQMurQUH7QlKdYpur3R/RX4F44wSxuXvi7Up/
         bxs6IVZIEBzTM5GGZUF+b3HL2FSfFvD4m8NgBQUKdpqb2vFxvGSNyyQ8aVoUA/AHivRW
         StVliMqZ28QOlQeHnXypVUqcBU4OBo3f/VrCWQhevYOeVgyljJQtF3O8ipwsoH1qEP4N
         DLkCVR8KVD3zKFyf7+EppbMkd7J1VKm8WMTHu2f6tKBI7lo0F+pQKNkTPEHjLal/w7o2
         aMewkvdo/0mM8emiw2CAraOm80hX3wTVsh8ZMAKPpxek5V6Rt3nvyehvBxb3I3hQnr5S
         9zcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date;
        bh=R9uoPvqnEi1+KY88ZXubWXlhsCldlU2fPotvDkQ2b28=;
        b=hWeqz910JPv+/YKeM1AHUq+2jNtQnNciNG/D/Lzwv/safk/EDzS1jXic4yPNivPWmP
         6+89N71qWoOjRHHaxDRGScrrNVj1nw7aL5EUyXNEIb/4UCHtCfJMIVK9iKHuYK3mWxjw
         UkKki5ECMc9Mjs+ZFAbg0DCKi1oAfPg0Sot8uSPvPiXPvqqhKkwi2oPDPzeD+Wds7jVb
         Lj/GFiZpqH1O75Sz84BZZ9XzoPYISKgfF+Z+7OwYoV82W/wbzByiemO6xg8iCmFRhO4Q
         sjVjsVqDKc1dIllek98BMGTDEl1USPc88pojAWgBF6rqGlv58HDSuy4mas3spGuuPbiV
         e8pg==
X-Gm-Message-State: ACgBeo1uV696A25bhZDnZEeXjtrMQj6tBxf51vIODkzCqfAJy/JfmxU6
	GMzrbgKjB0s893GpXv4rMxVEiuujLng=
X-Google-Smtp-Source: AA6agR6S9L+124U6pLDvvK8JAMc+PJa02Timafpq3PNudCdxBcHpB3NGkawyBaJfuiQjv5Q3WnSFKQ==
X-Received: by 2002:a0c:f084:0:b0:499:207:de74 with SMTP id g4-20020a0cf084000000b004990207de74mr23591359qvk.21.1662142069354;
        Fri, 02 Sep 2022 11:07:49 -0700 (PDT)
Received: from [192.168.2.199] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id l27-20020ac84cdb000000b003438a8e842fsm1386519qtv.44.2022.09.02.11.07.48
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Sep 2022 11:07:48 -0700 (PDT)
Message-ID: <61fb1c43-53b8-232b-1546-b4daf5331c76@gmail.com>
Date: Fri, 2 Sep 2022 14:07:47 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <01a901d8beeb$e0240a80$a06c1f80$@googlemail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <01a901d8beeb$e0240a80$a06c1f80$@googlemail.com>
Message-ID-Hash: S7IRXQ7ZJEDAEXTPPB66QEK7BHXJ5L7R
X-Message-ID-Hash: S7IRXQ7ZJEDAEXTPPB66QEK7BHXJ5L7R
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: 2.5G Ethernet
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/S7IRXQ7ZJEDAEXTPPB66QEK7BHXJ5L7R/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2435887521226944783=="

This is a multi-part message in MIME format.
--===============2435887521226944783==
Content-Type: multipart/alternative;
 boundary="------------NpeuL7ACLzH5QSDNtov6uspL"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------NpeuL7ACLzH5QSDNtov6uspL
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-09-02 12:48, Matthias Schraml wrote:
>
> Hi all,
>
> I=E2=80=99m currently wondering, if it is possible to use 2.5G ethernet=
 with=20
> an USRP X310.
>
> Background:
>
> I own a brand new small but powerful computer. The PCIe slot is=20
> occupied by a GPU and there is no Thunderbolt port. So there is no=20
> chance for 10G ethernet.
>
> However, the computer has a 2.5G ethernet port.
>
> The Xilinx IP used for 1G ethernet in the USRPs also supports 2.5G. In=20
> theory, this should be sufficient for 2x 30.72 MSps which would be a=20
> great improvement compared to the 25 MSps over 1G ethernet.
>
> Is it possible to modify the FPGA image to support 2.5G ethernet?
>
> Has anybody already done this modification?
>
> Kind regards
>
> Matthias
>
>
The PHY implementation, as I recall, is fixed-rate.=C2=A0=C2=A0 It's=20
almost-certainly possible to modify it to support it, but that wouldn't
 =C2=A0 be a configuration support by NI/Ettus.


--------------NpeuL7ACLzH5QSDNtov6uspL
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-09-02 12:48, Matthias Schraml
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:01a901d8beeb$e0240a80$a06c1f80$@googlemail.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Hi all,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">I=E2=80=99m currently=
 wondering,
            if it is possible to use 2.5G ethernet with an USRP X310.<o:p=
></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Background:<o:p></o:p=
></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">I own a brand new sma=
ll
            but powerful computer. The PCIe slot is occupied by a GPU
            and there is no Thunderbolt port. So there is no chance for
            10G ethernet.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">However, the computer
            has a 2.5G ethernet port. <o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">The Xilinx IP used fo=
r
            1G ethernet in the USRPs also supports 2.5G. In theory, this
            should be sufficient for 2x 30.72 MSps which would be a
            great improvement compared to the 25 MSps over 1G ethernet.<o=
:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Is it possible to mod=
ify
            the FPGA image to support 2.5G ethernet?<o:p></o:p></span></p=
>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Has anybody already d=
one
            this modification?<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Kind regards<o:p></o:=
p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Matthias<o:p></o:p></=
span></p>
      </div>
      <br>
    </blockquote>
    The PHY implementation, as I recall, is fixed-rate.=C2=A0=C2=A0 It's
    almost-certainly possible to modify it to support it, but that
    wouldn't<br>
    =C2=A0 be a configuration support by NI/Ettus.<br>
    <br>
    <br>
  </body>
</html>

--------------NpeuL7ACLzH5QSDNtov6uspL--

--===============2435887521226944783==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2435887521226944783==--
