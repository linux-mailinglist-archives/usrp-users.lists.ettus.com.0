Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8230F429429
	for <lists+usrp-users@lfdr.de>; Mon, 11 Oct 2021 18:08:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 70F383846D1
	for <lists+usrp-users@lfdr.de>; Mon, 11 Oct 2021 12:08:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YhUW9g57";
	dkim-atps=neutral
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 6CFF8384100
	for <usrp-users@lists.ettus.com>; Mon, 11 Oct 2021 12:07:55 -0400 (EDT)
Received: by mail-qk1-f169.google.com with SMTP id az39so3204691qkb.5
        for <usrp-users@lists.ettus.com>; Mon, 11 Oct 2021 09:07:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=vQbtHK87Jj1SKDog5UU5BDW2DmZXBAlht7ba+F5DtEw=;
        b=YhUW9g57suzDWQiKGCM8Je4ArIRMy2ueIVWQ2M3fDzc8DZTIQTwWmBVT+FtygZqhVN
         QKunraJ/K0NEdzfIIfccFUxc1JqJ9R2xfOtSpqxWT71W//5gZqFJa0dpzhGSbm4LvDvx
         N6vhjihkgsu0lTWe7v67+1qLOuZ5glj3u2hOl0iXbha6krj0TQ496XHwmu7yUdsMuEBQ
         NI4FBLkowthrquLH89oxLtzjJh/URAWR52eeCGIp+VOQy4bM9Tbyx1vah/1xwdQCdAk2
         g9cy0SHB/WYGX4TdJVhXWXpPW7PAxyidbP2DQNokINF9CJd6+j18u+aXQNwUL41mWPWB
         ttRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=vQbtHK87Jj1SKDog5UU5BDW2DmZXBAlht7ba+F5DtEw=;
        b=6GFLHZnnbDdWAq2PYSLeqWU5LAkvnMCL94GwYo/xSXDKo7R9KpcJrA15A7EsGHTyoT
         rfZP0nKK4V5Q/m/AQzrquBL4MWIvvDVs/9KsapqENnhqARtMSF/Q7ij3/CmgBjrvtoOU
         NVKjU3tSET9hW7iwUlQHfsqgQDQIcP5nJOGWGQ4g6t05hGncuEaPphbiVRhTe6+hNsHZ
         aMnMCc/tbRzMHQBdEyNmjjKTyt+wQENW9zSlND0MRTP6Ge6SLKcy7WFdWEORMRmQaiIA
         Y0TXmgRyFkPEVkJCcmKM1+0Mln0KvsXW081KycsFDJ8Lkce+ElyvHf8TJCcXdODkeBsG
         pYCw==
X-Gm-Message-State: AOAM531Hi5FLNzo9SleqQ2gPIwrH1XLvlqzJcuFD2Cce3Lp5YVkZVeFB
	8SZ1exwkPav4KZddTJDei1A24XRgOfQ=
X-Google-Smtp-Source: ABdhPJx2TITHQBhn9WHkVqnwAL9SgaSjJxdPuSi4FXwfWGjPXpCjyePKzgrURvvpjDE8SfphVYOsRQ==
X-Received: by 2002:a37:bf02:: with SMTP id p2mr15382804qkf.503.1633968474317;
        Mon, 11 Oct 2021 09:07:54 -0700 (PDT)
Received: from [192.168.2.231] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id q6sm635201qtn.65.2021.10.11.09.07.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Oct 2021 09:07:53 -0700 (PDT)
To: Thangaraj Mukara Dhakshinamoorthy <thangaraj@komro.net>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <99ed3c5aa86a47f1954865e59d9d5bf4@komro.net>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <75cf7488-5b78-1a26-48d6-1015409b4218@gmail.com>
Date: Mon, 11 Oct 2021 12:07:52 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <99ed3c5aa86a47f1954865e59d9d5bf4@komro.net>
Content-Language: en-US
Message-ID-Hash: TA3RLVG2ZMCX7NSLTM4LVNLRCANYATBK
X-Message-ID-Hash: TA3RLVG2ZMCX7NSLTM4LVNLRCANYATBK
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD example rx_samples_to_file fails
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TA3RLVG2ZMCX7NSLTM4LVNLRCANYATBK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6289834606901782767=="

This is a multi-part message in MIME format.
--===============6289834606901782767==
Content-Type: multipart/alternative;
 boundary="------------3E0A5454787CD8DDB5187F26"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------3E0A5454787CD8DDB5187F26
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-10-11 8:24 a.m., Thangaraj Mukara Dhakshinamoorthy wrote:
>
> Hello Everyone,
>
> *_My system config:_*
>
> Host OS: Windows 10
>
> Guest OS: VirtualBox Ubuntu 20.04.3 LTS
>
> UHD version: 3.15.0.0
>
> GNU Radio version: 3.8.1.0
>
> SDR Device : Ettus USRP N320
>
> My Goal: Use Ettus N320 as Analysis tool (Ex: Spectrum Analyzer)
>
> Console logs:
>
> komro@komro-HP-ProBook-6560b:/usr/lib/uhd/examples$=20
> ./rx_samples_to_file --freq 98e6 --rate 5e6 --gain 20 --duration 10=20
> usrp_samples.dat
>
> Creating the usrp device with: ...
>
> [INFO] [UHD] linux; GNU C++ version 9.2.1 20200304; Boost_107100;=20
> UHD_3.15.0.0-2build5
>
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:=20
> mgmt_addr=3D192.168.10.2,type=3Dn3xx,product=3Dn320,serial=3D31F43B7,cl=
aimed=3DFalse,addr=3D192.168.10.2
>
> [INFO] [MPM.PeriphManager] init() called with device args=20
> `mgmt_addr=3D192.168.10.2,time_source=3Dinternal,clock_source=3Dinterna=
l,product=3Dn320'.
>
> [INFO] [MPM.Rhodium-0] init() called with args=20
> `mgmt_addr=3D192.168.10.2,time_source=3Dinternal,clock_source=3Dinterna=
l,product=3Dn320'
>
> [INFO] [MPM.Rhodium-1] init() called with args=20
> `mgmt_addr=3D192.168.10.2,time_source=3Dinternal,clock_source=3Dinterna=
l,product=3Dn320'
>
> .
>
> .
>
> .
>
> .
>
> [WARNING] [MULTI_USRP] The hardware does not support the requested RX=20
> sample rate:
>
> Target sample rate: 5.000000 MSps
>
> Actual sample rate: 5.015510 MSps
>
> Actual RX Rate: 5.015510 Msps...
>
> Setting RX Freq: 98.000000 MHz...
>
> Setting RX LO Offset: 0.000000 MHz...
>
> Actual RX Freq: 98.000000 MHz...
>
> Setting RX Gain: 20.000000 dB...
>
> Actual RX Gain: 20.000000 dB...
>
> Waiting for "lo_locked": ++++++++++ locked.
>
> Press Ctrl + C to stop streaming...
>
> DGot an overflow indication. Please consider the following:
>
> =A0 Your write medium must sustain a rate of 20.062041MB/s.
>
> =A0 Dropped samples will not be written to the file.
>
> =A0 Please modify this example for your purposes.
>
> =A0 This message will not appear again.
>
> DDDD
>
> Done!
>
> [ERROR] [UHD] Exception caught in safe-call.
>
> =A0 in ctrl_iface_impl<_endianness>::~ctrl_iface_impl() [with=20
> uhd::endianness_t _endianness =3D uhd::ENDIANNESS_BIG]
>
> =A0 at /build/uhd-FRfZNJ/uhd-3.15.0.0/host/lib/rfnoc/ctrl_iface.cpp:50
>
> this->send_cmd_pkt(0, 0, true); -> EnvironmentError: IOError: Block=20
> ctrl (CE_00_Port_33) no response packet - AssertionError: bool(buff)
>
> =A0 in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double=
)=20
> [with uhd::endianness_t _endianness =3D uhd::ENDIANNESS_BIG; uint64_t =3D=
=20
> long unsigned int]
>
> =A0 at /build/uhd-FRfZNJ/uhd-3.15.0.0/host/lib/rfnoc/ctrl_iface.cpp:151
>
> [ERROR] [UHD] Exception caught in safe-call.
>
> =A0 in ctrl_iface_impl<_endianness>::~ctrl_iface_impl() [with=20
> uhd::endianness_t _endianness =3D uhd::ENDIANNESS_BIG]
>
> =A0 at /build/uhd-FRfZNJ/uhd-3.15.0.0/host/lib/rfnoc/ctrl_iface.cpp:50
>
> this->send_cmd_pkt(0, 0, true); -> EnvironmentError: IOError: Block=20
> ctrl (CE_00_Port_30) packet parse error - EnvironmentError: IOError:=20
> Expected packet index: 28 Received index: 29
>
> [ERROR] [UHD] Exception caught in safe-call.
>
> =A0 in ctrl_iface_impl<_endianness>::~ctrl_iface_impl() [with=20
> uhd::endianness_t _endianness =3D uhd::ENDIANNESS_BIG]
>
> =A0 at /build/uhd-FRfZNJ/uhd-3.15.0.0/host/lib/rfnoc/ctrl_iface.cpp:50
>
> this->send_cmd_pkt(0, 0, true); -> EnvironmentError: IOError: Block=20
> ctrl (CE_01_Port_40) packet parse error - EnvironmentError: IOError:=20
> Expected packet index: 566 Received index: 567
>
Performance within a VM is often very poor.=A0 If you replace the output=20
file with "/dev/null", ,does this change the behavior?


> 1. What should I do in order to fix this?
>
> 2. I tried the fm_receiver flowgraph in GNU Radio, it was running=20
> successfully but when I tune the frequency there is nothing I could=20
> hear except the first 5 seconds noise!
>
That would be a question for the discuss-gnuradio mailing list.

> 3. I also tried the example =82Spectrum Analyzer=91 grc program, it was=
=20
> also running without error but there was not much changes/effects when=20
> I tune the frequency! Is there something wrong in receiver?
>
What gain setting did you use?=A0 What kind of antenna on the antenna por=
t?


> Thank you in advance!
>
> Regards,
>
> Thangz
>


--------------3E0A5454787CD8DDB5187F26
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html;
      charset=3Dwindows-1252">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-10-11 8:24 a.m., Thangaraj
      Mukara Dhakshinamoorthy wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:99ed3c5aa86a47f1954865e59d9d5bf4@komro.net">
      <meta http-equiv=3D"Content-Type" content=3D"text/html;
        charset=3Dwindows-1252">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
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
	text-decoration:underline;}span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Verdana",sans-serif;
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
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Hello
            Everyone,<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif"><o:p>=A0</o:p></span></p>
        <p class=3D"MsoNormal"><b><u><span
                style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;=
,sans-serif">My
                system config:<o:p></o:p></span></u></b></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Host
            OS: Windows 10<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Guest
            OS: VirtualBox Ubuntu 20.04.3 LTS<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">UHD
            version: 3.15.0.0<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">GNU
            Radio version: 3.8.1.0<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">SDR
            Device : Ettus USRP N320<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">My
            Goal: Use Ettus N320 as Analysis tool (Ex: Spectrum
            Analyzer)<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif"><o:p>=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Console
            logs:<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif"><o:p>=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"background:yellow">komro@ko=
mro-HP-ProBook-6560b:/usr/lib/uhd/examples$
            ./rx_samples_to_file --freq 98e6 --rate 5e6 --gain 20
            --duration 10 usrp_samples.dat<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal">Creating the usrp device with: ...<o:p></o=
:p></p>
        <p class=3D"MsoNormal">[INFO] [UHD] linux; GNU C++ version 9.2.1
          20200304; Boost_107100; UHD_3.15.0.0-2build5<o:p></o:p></p>
        <p class=3D"MsoNormal">[INFO] [MPMD] Initializing 1 device(s) in
          parallel with args:
mgmt_addr=3D192.168.10.2,type=3Dn3xx,product=3Dn320,serial=3D31F43B7,clai=
med=3DFalse,addr=3D192.168.10.2<o:p></o:p></p>
        <p class=3D"MsoNormal">[INFO] [MPM.PeriphManager] init() called
          with device args
`mgmt_addr=3D192.168.10.2,time_source=3Dinternal,clock_source=3Dinternal,=
product=3Dn320'.<o:p></o:p></p>
        <p class=3D"MsoNormal">[INFO] [MPM.Rhodium-0] init() called with
          args
`mgmt_addr=3D192.168.10.2,time_source=3Dinternal,clock_source=3Dinternal,=
product=3Dn320'<o:p></o:p></p>
        <p class=3D"MsoNormal">[INFO] [MPM.Rhodium-1] init() called with
          args
`mgmt_addr=3D192.168.10.2,time_source=3Dinternal,clock_source=3Dinternal,=
product=3Dn320'<o:p></o:p></p>
        <p class=3D"MsoNormal">.<o:p></o:p></p>
        <p class=3D"MsoNormal">.<o:p></o:p></p>
        <p class=3D"MsoNormal">.<o:p></o:p></p>
        <p class=3D"MsoNormal">.<o:p></o:p></p>
        <p class=3D"MsoNormal">[WARNING] [MULTI_USRP] The hardware does
          not support the requested RX sample rate:<o:p></o:p></p>
        <p class=3D"MsoNormal">Target sample rate: 5.000000 MSps<o:p></o:=
p></p>
        <p class=3D"MsoNormal">Actual sample rate: 5.015510 MSps<o:p></o:=
p></p>
        <p class=3D"MsoNormal">Actual RX Rate: 5.015510 Msps...<o:p></o:p=
></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal">Setting RX Freq: 98.000000 MHz...<o:p></o:=
p></p>
        <p class=3D"MsoNormal">Setting RX LO Offset: 0.000000 MHz...<o:p>=
</o:p></p>
        <p class=3D"MsoNormal">Actual RX Freq: 98.000000 MHz...<o:p></o:p=
></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal">Setting RX Gain: 20.000000 dB...<o:p></o:p=
></p>
        <p class=3D"MsoNormal">Actual RX Gain: 20.000000 dB...<o:p></o:p>=
</p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal">Waiting for "lo_locked": ++++++++++ locked=
.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal">Press Ctrl + C to stop streaming...<o:p></=
o:p></p>
        <p class=3D"MsoNormal">DGot an overflow indication. Please
          consider the following:<o:p></o:p></p>
        <p class=3D"MsoNormal">=A0 Your write medium must sustain a rate =
of
          20.062041MB/s.<o:p></o:p></p>
        <p class=3D"MsoNormal">=A0 Dropped samples will not be written to
          the file.<o:p></o:p></p>
        <p class=3D"MsoNormal">=A0 Please modify this example for your
          purposes.<o:p></o:p></p>
        <p class=3D"MsoNormal">=A0 This message will not appear again.<o:=
p></o:p></p>
        <p class=3D"MsoNormal">DDDD<o:p></o:p></p>
        <p class=3D"MsoNormal">Done!<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal"><span
            style=3D"background:yellow;mso-highlight:yellow">[ERROR] [UHD=
]
            Exception caught in safe-call.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"background:yellow;mso-highlight:yellow">=A0 in
            ctrl_iface_impl&lt;_endianness&gt;::~ctrl_iface_impl() [with
            uhd::endianness_t _endianness =3D uhd::ENDIANNESS_BIG]<o:p></=
o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"background:yellow;mso-highlight:yellow">=A0 at
            /build/uhd-FRfZNJ/uhd-3.15.0.0/host/lib/rfnoc/ctrl_iface.cpp:=
50<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"background:yellow;mso-highlight:yellow">this-&gt;sen=
d_cmd_pkt(0,
            0, true); -&gt; EnvironmentError: IOError: Block ctrl
            (CE_00_Port_33) no response packet - AssertionError:
            bool(buff)<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"background:yellow;mso-highlight:yellow">=A0 in uint6=
4_t
            ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(bool,
            double) [with uhd::endianness_t _endianness =3D
            uhd::ENDIANNESS_BIG; uint64_t =3D long unsigned int]<o:p></o:=
p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"background:yellow;mso-highlight:yellow">=A0 at
            /build/uhd-FRfZNJ/uhd-3.15.0.0/host/lib/rfnoc/ctrl_iface.cpp:=
151<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"background:yellow;mso-highlight:yellow"><o:p>=A0</o:=
p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"background:yellow;mso-highlight:yellow">[ERROR] [UHD=
]
            Exception caught in safe-call.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"background:yellow;mso-highlight:yellow">=A0 in
            ctrl_iface_impl&lt;_endianness&gt;::~ctrl_iface_impl() [with
            uhd::endianness_t _endianness =3D uhd::ENDIANNESS_BIG]<o:p></=
o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"background:yellow;mso-highlight:yellow">=A0 at
            /build/uhd-FRfZNJ/uhd-3.15.0.0/host/lib/rfnoc/ctrl_iface.cpp:=
50<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"background:yellow;mso-highlight:yellow">this-&gt;sen=
d_cmd_pkt(0,
            0, true); -&gt; EnvironmentError: IOError: Block ctrl
            (CE_00_Port_30) packet parse error - EnvironmentError:
            IOError: Expected packet index: 28 Received index: 29<o:p></o=
:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"background:yellow;mso-highlight:yellow">[ERROR] [UHD=
]
            Exception caught in safe-call.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"background:yellow;mso-highlight:yellow">=A0 in
            ctrl_iface_impl&lt;_endianness&gt;::~ctrl_iface_impl() [with
            uhd::endianness_t _endianness =3D uhd::ENDIANNESS_BIG]<o:p></=
o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"background:yellow;mso-highlight:yellow">=A0 at
            /build/uhd-FRfZNJ/uhd-3.15.0.0/host/lib/rfnoc/ctrl_iface.cpp:=
50<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"background:yellow;mso-highlight:yellow">this-&gt;sen=
d_cmd_pkt(0,
            0, true); -&gt; EnvironmentError: IOError: Block ctrl
            (CE_01_Port_40) packet parse error - EnvironmentError:
            IOError: Expected packet index: 566 Received index: 567</span=
></p>
      </div>
    </blockquote>
    Performance within a VM is often very poor.=A0 If you replace the
    output file with "/dev/null", ,does this change the behavior?<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:99ed3c5aa86a47f1954865e59d9d5bf4@komro.net">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal">1. What should I do in order to fix this? =
<o:p></o:p></p>
        <p class=3D"MsoNormal">2. I tried the fm_receiver flowgraph in GN=
U
          Radio, it was running successfully but when I tune the
          frequency there is nothing I could hear except the first 5
          seconds noise!</p>
      </div>
    </blockquote>
    That would be a question for the discuss-gnuradio mailing list.<br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:99ed3c5aa86a47f1954865e59d9d5bf4@komro.net">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><o:p></o:p></p>
        <p class=3D"MsoNormal">3. I also tried the example =82Spectrum
          Analyzer=91 grc program, it was also running without error but
          there was not much changes/effects when I tune the frequency!
          Is there something wrong in receiver?</p>
      </div>
    </blockquote>
    What gain setting did you use?=A0 What kind of antenna on the antenna
    port?<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:99ed3c5aa86a47f1954865e59d9d5bf4@komro.net">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal">Thank you in advance!<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal">Regards,<o:p></o:p></p>
        <p class=3D"MsoNormal">Thangz <o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif"><o:p>=A0</o:p></span></p>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------3E0A5454787CD8DDB5187F26--

--===============6289834606901782767==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6289834606901782767==--
