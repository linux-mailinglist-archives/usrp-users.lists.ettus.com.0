Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F1BC3450944
	for <lists+usrp-users@lfdr.de>; Mon, 15 Nov 2021 17:08:18 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DEBCF38411E
	for <lists+usrp-users@lfdr.de>; Mon, 15 Nov 2021 11:08:17 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Gv3w94cX";
	dkim-atps=neutral
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 5ECE23836A6
	for <usrp-users@lists.ettus.com>; Mon, 15 Nov 2021 11:07:33 -0500 (EST)
Received: by mail-qk1-f170.google.com with SMTP id q64so6621593qkd.5
        for <usrp-users@lists.ettus.com>; Mon, 15 Nov 2021 08:07:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=YwXhSmdAMWQ1yM2KzVooro/Xi/jxiyqWTeuH3UsRsaU=;
        b=Gv3w94cX2oS9DairtFR0CNKJ+k9F1f/WjbAHoe2JMgX9q3kgVFNurzXxvfd7EW15wx
         q9Nst7bp59JnZF18cxc6bQE6QijqEVetOeR2HucWW25Q4bA7QkGWJ2snjIMw7330bCSv
         KGoOSL/s1JXHzfW05a+9dLx1ehdwfQw7lxyZLdrLbPeB9HK8LVrQilFxbd5lwrytmrTt
         qt2Nkh0WQWYO7top20emzOQ1ceT/JM6bnZH+ObMLV9au9QnsLAs3tqt3A5Is65M42sCV
         fp5J4Uu7/NwZVANondo0jAwonwmyYNoeJ7IByfi4SZsWtPgGcKFePKxl4ttnrKbE9uJ6
         JTpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=YwXhSmdAMWQ1yM2KzVooro/Xi/jxiyqWTeuH3UsRsaU=;
        b=GfaaOFDVS1WtoyahFkL59ioLA19Ao3FY0jn4pCTDsVs2lMQAoQEjVAQe3Bfr1DtcIy
         vvDiudtBZrGo9etwSBwlR3G2ruiphV/34zgS5NeQZn0k+TVwVBVHF7L3uojAlENUnO+s
         txTuRtxMIAM3lZjIn0l7os1tArt4BRgP2hrKSuhQXJ9Tle5KjvlK0JEoXWKfCvat46y9
         Oo7hfQgg+UvkcskWdhVnJOuWG5L6oBjjxQvf1YznB8HFjvkW54QWp98Rh9581otY0gFx
         LenzYOiJANInismg1OQBaMzGcG1NO7xoj+2UwgW7k31XNZdvVpfkXN27mWEdJDzRlNi1
         XBuw==
X-Gm-Message-State: AOAM533tq6ZVzzGHBvVQ+Sc7TLcc7KQXfuUqrJN+vblnnfhTI+k/BdOi
	QEvrF2sMQRGDNjDGRYCzWcoI3gFZELs=
X-Google-Smtp-Source: ABdhPJybZP0Bv9l4tpFeOCX3NiPcFbnoKR2cz7PUvtq3Sqszx75WewsIz7/35GyV/ElqM4ECgTQC9g==
X-Received: by 2002:a05:620a:ec2:: with SMTP id x2mr85036qkm.400.1636992452922;
        Mon, 15 Nov 2021 08:07:32 -0800 (PST)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id y20sm7069793qkj.24.2021.11.15.08.07.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Nov 2021 08:07:32 -0800 (PST)
Message-ID: <6cc298a5-c5c6-27e4-f5d6-b23a2975e372@gmail.com>
Date: Mon, 15 Nov 2021 11:07:31 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: Guillermo Ortas Delgado <g.ortas@gmv.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <d636bd419e2548878b27baeacbca4b39@gmv.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <d636bd419e2548878b27baeacbca4b39@gmv.com>
Message-ID-Hash: FZPFJ3Q3ZE3Z3M7IE72PFRMJBW26JLGF
X-Message-ID-Hash: FZPFJ3Q3ZE3Z3M7IE72PFRMJBW26JLGF
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DPDK drops samples at low rates
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FZPFJ3Q3ZE3Z3M7IE72PFRMJBW26JLGF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1282682391190592364=="

This is a multi-part message in MIME format.
--===============1282682391190592364==
Content-Type: multipart/alternative;
 boundary="------------yf8yWLyP92q1doT19InalyCn"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------yf8yWLyP92q1doT19InalyCn
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
Where are you placing your uhd.conf file?=C2=A0 See the notes on UHD=20
configuration locations here:

https://files.ettus.com/manual/page_configfiles.html#configfiles_usrps

Other than that, I'm hampered by not actually being a DPDK user, so I'm=20
running a bit "blind".


> *De:*Guillermo Ortas Delgado
> *Enviado el:* 15 November 2021 14:17
> *Para:* usrp-users@lists.ettus.com
> *CC:* Marcus D Leech <patchvonbraun@gmail.com>
> *Asunto:* DPDK drops samples at low rates
>
> Hi all,
>
> I finally managed to get DPDK working, but using *DPDK results in=20
> dropped samples* even at low sampling frequencies, as low as 1Msps.=20
> For reference, I can receive samples at 200Msps on both channels=20
> simultaneously when not using DPDK.
>
> I would like to know if I=E2=80=99m missing something or there=E2=80=99=
s =C2=A0something=20
> else which needs to be tuned.
>
> The setup is Ubuntu 20.04 LTS, UHD 4.1.0.4, DPDK 18.11, USRP X310, and=20
> 2048 pages of 2 MB each. The contents of my uhd.conf file are pasted=20
> below.
>
> The command I use to run the benchmark rate example is this:
>
> sudo /usr/local/lib/uhd/examples/./benchmark_rate=20
> --args=3D"use_dpdk=3D1,addr=3D192.168.110.2,second_addr=3D192.168.115.2=
" --pps=20
> internal --rx_cpu sc16 --rx_otw sc16 --rx_rate 200e6 --channels 0,1=20
> --priority high --duration 30
>
> *Am I missing something? Can you spot any misconfiguration?*
>
> uhd.conf file:
>
> ;When present in device args, use_dpdk indicates you want DPDK to take=20
> over the UDP transports
>
> ;The value here represents a config, so you could have another section=20
> labeled use_dpdk=3Dmyconf
>
> ;instead and swap between them
>
> [use_dpdk=3D1]
>
> ;dpdk_mtu is the NIC's MTU setting
>
> ;This is separate from MPM's maximum packet size
>
> dpdk_mtu=3D9600
>
> ;NOTE: The dpdk-pmds directory includes all librte_pmd_* and=20
> librte_mempool_* libraries
>
> dpdk_driver=3D/usr/local/lib/dpdk-pmds
>
> dpdk_corelist=3D11,12,13,14,15
>
> dpdk_num_mbufs=3D4096
>
> dpdk_mbuf_cache_size=3D512
>
> [dpdk_mac=3Df4:03:43:ec:29:d0]
>
> ;ens1f0np0
>
> dpdk_lcore =3D 12
>
> dpdk_ipv4 =3D 192.168.110.1/24
>
> dpdk_num_desc=3D4096
>
> [dpdk_mac=3Df4:03:43:ec:3e:a0]
>
> ;ens2f0np0
>
> dpdk_lcore =3D 12
>
> dpdk_ipv4 =3D 192.168.115.1/24
>
> dpdk_num_desc=3D4096
>
> Thank you beforehand,
>
> Guillermo
>
>
> PPlease consider the environment before printing this e-mail.

--------------yf8yWLyP92q1doT19InalyCn
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
              style=3D"color:#1F497D;mso-fareast-language:ES">Guillermo</=
span></p>
        </div>
      </div>
    </blockquote>
    Where are you placing your uhd.conf file?=C2=A0 See the notes on UHD
    configuration locations here:<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/manual=
/page_configfiles.html#configfiles_usrps">https://files.ettus.com/manual/=
page_configfiles.html#configfiles_usrps</a><br>
    <br>
    Other than that, I'm hampered by not actually being a DPDK user, so
    I'm running a bit "blind".<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:d636bd419e2548878b27baeacbca4b39@gmv.com">
      <div class=3D"WordSection1">
        <div>
          <p class=3D"MsoNormal"><span
              style=3D"color:#1F497D;mso-fareast-language:ES"><o:p></o:p>=
</span></p>
        </div>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>=C2=A0<=
/o:p></span></p>
        <div>
          <div style=3D"border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0cm 0cm 0cm">
            <p class=3D"MsoNormal"><b><span
                  style=3D"mso-fareast-language:ES">De:</span></b><span
                style=3D"mso-fareast-language:ES"> Guillermo Ortas Delgad=
o
                <br>
                <b>Enviado el:</b> 15 November 2021 14:17<br>
                <b>Para:</b> <a class=3D"moz-txt-link-abbreviated" href=3D=
"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
                <b>CC:</b> Marcus D Leech
                <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvo=
nbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a><br>
                <b>Asunto:</b> DPDK drops samples at low rates <o:p></o:p=
></span></p>
          </div>
        </div>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Hi all,<o:p></o:p></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">I finally managed to =
get
            DPDK working, but using
            <b>DPDK results in dropped samples</b> even at low sampling
            frequencies, as low as 1Msps. For reference, I can receive
            samples at 200Msps on both channels simultaneously when not
            using DPDK.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">I would like to know =
if
            I=E2=80=99m missing something or there=E2=80=99s =C2=A0someth=
ing else which needs
            to be tuned.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">The setup is Ubuntu
            20.04 LTS, UHD 4.1.0.4, DPDK 18.11, USRP X310, and 2048
            pages of 2 MB each. The contents of my uhd.conf file are
            pasted below.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">The command I use to =
run
            the benchmark rate example is this:<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:Consolas" lang=3D"EN-US=
">sudo
            /usr/local/lib/uhd/examples/./benchmark_rate
            --args=3D"use_dpdk=3D1,addr=3D192.168.110.2,second_addr=3D192=
.168.115.2"
            --pps internal --rx_cpu sc16 --rx_otw sc16 --rx_rate 200e6
            --channels 0,1 --priority high --duration 30<o:p></o:p></span=
></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><b><span lang=3D"EN-US">Am I missing
              something? Can you spot any misconfiguration?<o:p></o:p></s=
pan></b></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">uhd.conf file:<o:p></=
o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:Consolas" lang=3D"EN-US=
">;When
            present in device args, use_dpdk indicates you want DPDK to
            take over the UDP transports<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:Consolas" lang=3D"EN-US=
">;The
            value here represents a config, so you could have another
            section labeled use_dpdk=3Dmyconf<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:Consolas" lang=3D"EN-US=
">;instead
            and swap between them<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:Consolas" lang=3D"EN-US=
">[use_dpdk=3D1]<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:Consolas" lang=3D"EN-US=
">;dpdk_mtu
            is the NIC's MTU setting<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:Consolas" lang=3D"EN-US=
">;This
            is separate from MPM's maximum packet size<o:p></o:p></span><=
/p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:Consolas" lang=3D"EN-US=
">dpdk_mtu=3D9600<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:Consolas" lang=3D"EN-US=
">;NOTE:
            The dpdk-pmds directory includes all librte_pmd_* and
            librte_mempool_* libraries<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:Consolas" lang=3D"EN-US=
">dpdk_driver=3D/usr/local/lib/dpdk-pmds<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:Consolas" lang=3D"EN-US=
">dpdk_corelist=3D11,12,13,14,15<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:Consolas" lang=3D"EN-US=
">dpdk_num_mbufs=3D4096<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:Consolas" lang=3D"EN-US=
">dpdk_mbuf_cache_size=3D512<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:Consolas" lang=3D"EN-US=
">[dpdk_mac=3Df4:03:43:ec:29:d0]<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:Consolas" lang=3D"EN-US=
">;ens1f0np0<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:Consolas" lang=3D"EN-US=
">dpdk_lcore
            =3D 12<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:Consolas" lang=3D"EN-US=
">dpdk_ipv4
            =3D 192.168.110.1/24<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:Consolas" lang=3D"EN-US=
">dpdk_num_desc=3D4096<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:Consolas" lang=3D"EN-US=
">[dpdk_mac=3Df4:03:43:ec:3e:a0]<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:Consolas" lang=3D"EN-US=
">;ens2f0np0<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:Consolas" lang=3D"EN-US=
">dpdk_lcore
            =3D 12<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:Consolas" lang=3D"EN-US=
">dpdk_ipv4
            =3D 192.168.115.1/24<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:Consolas" lang=3D"EN-US=
">dpdk_num_desc=3D4096<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you beforehand,=
<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Guillermo<o:p></o:p><=
/span></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
      </div>
      <span style=3D""><br>
      </span><span style=3D"font-size:18.0pt; line-height:125%;
        font-family:Webdings; color:green">P<span style=3D""></span>
        <span style=3D"font-size:7.0pt; line-height:125%;
          font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;
          color:green">
          Please consider the environment before printing this e-mail.</s=
pan></span><span
        style=3D""></span>
    </blockquote>
    <br>
  </body>
</html>
--------------yf8yWLyP92q1doT19InalyCn--

--===============1282682391190592364==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1282682391190592364==--
