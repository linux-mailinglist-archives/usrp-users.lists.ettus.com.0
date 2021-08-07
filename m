Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6780F3E32A0
	for <lists+usrp-users@lfdr.de>; Sat,  7 Aug 2021 03:57:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 098E53800BF
	for <lists+usrp-users@lfdr.de>; Fri,  6 Aug 2021 21:57:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="EADEHwNh";
	dkim-atps=neutral
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 3D60838420B
	for <usrp-users@lists.ettus.com>; Fri,  6 Aug 2021 21:56:36 -0400 (EDT)
Received: by mail-qt1-f179.google.com with SMTP id k13so7905958qth.10
        for <usrp-users@lists.ettus.com>; Fri, 06 Aug 2021 18:56:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to;
        bh=5oDcnA4kj/6HjyaCW8K83DZalDx45XSRHr6uOK84J3w=;
        b=EADEHwNhrYZilnCTLwDlECRfrftNENb/DlYbY6DdZ43Tk9CFvwpV+sT21T4CB05UDj
         hzf4u4aWymVg6oI7G/cCHBZN6vPWFNc+6KFrMAKRfwsmTK3+INULT8K9d4r20yJMvptC
         1bVABVGQIh/M941A9z/ilhaTfk/EWD/O8xdoePf1bPTrYdSwW4OCcYBQ+/8GYMJVN7tP
         2iU/DWlIesTDFup7h+EwXezrXitoK/1r0v+bZHv/jpkP5IIRVHZw19F++0LNUxLp8+X1
         olIbUfnwsE3U6VantSihaka2ycEOigkV3xeG9pKUlaIOJ2VwpEZN2OmmOcT/ZOTGUNbc
         FGmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to;
        bh=5oDcnA4kj/6HjyaCW8K83DZalDx45XSRHr6uOK84J3w=;
        b=loMK2Wi26xGRJ0PEM3p0zFDKPpWwYEPDzdG/fBa6ifB6UH7HyPeVa62l7x+tCOcPsY
         wdszfXRjTlIRRvvhTAQUPcpYfT8G1iibp96+Xhcqkw3pidvI4TfogJpT+NR+ThajRUHl
         UnMi5OrWfVUfbYJF5312CbBQ2HTkUEp/I6afdqH3p9xDeQ1e1ZXjAi7O7ZaevflhQqW8
         a5YglXeeWbXLTA5x750N8zoz5WM/IL/H20hXg2KcVMZugos5B8RDpRCqEuUq6RUw0s9V
         KHZ92fnTVtskp0bw3z68JQ9WUHslIPUBuOfV7un5m1ujFEbzdzpVEEMBfwYJ4TP/FNrE
         5kDw==
X-Gm-Message-State: AOAM530BuChq6NS68RWCH2IEdN3jgtW0zE3roLOzqEQfWcy7ElU69pgl
	5OUmrQ6fPsm7xX2N6+85aMPDgaDVObF+OA==
X-Google-Smtp-Source: ABdhPJxHrdWtBnSPNHHLhgEoa63732cc8OjvjYz2q5C084BN+E43AaTP/Bgd0JnhKlLoDBw8NS5ihw==
X-Received: by 2002:ac8:7105:: with SMTP id z5mr2480168qto.369.1628301395449;
        Fri, 06 Aug 2021 18:56:35 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id g24sm4150899qtr.86.2021.08.06.18.56.34
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Aug 2021 18:56:34 -0700 (PDT)
Message-ID: <610DE851.70308@gmail.com>
Date: Fri, 06 Aug 2021 21:56:33 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <BN7PR05MB4500ABFB5DD85D4FDB6FAD99D5F39@BN7PR05MB4500.namprd05.prod.outlook.com>
In-Reply-To: <BN7PR05MB4500ABFB5DD85D4FDB6FAD99D5F39@BN7PR05MB4500.namprd05.prod.outlook.com>
Message-ID-Hash: PI2A4B4KKEYWF2RYF2VJLOI7CUVHHJFW
X-Message-ID-Hash: PI2A4B4KKEYWF2RYF2VJLOI7CUVHHJFW
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Too Many Samples in a Single Burst
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PI2A4B4KKEYWF2RYF2VJLOI7CUVHHJFW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7492195084755595031=="

This is a multi-part message in MIME format.
--===============7492195084755595031==
Content-Type: multipart/alternative;
 boundary="------------010200090707010702070205"

This is a multi-part message in MIME format.
--------------010200090707010702070205
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: quoted-printable

On 08/06/2021 07:26 PM, Jonathan Tobin wrote:
>
> Hello,
>
> In trying to test the =91rx_multi_samples=92 example with all four=20
> channels on an n310. I run into an error of =93Requesting too many=20
> samples in a single burst=94 when I attempt a longer record (really=20
> anything over a few seconds). Seems to be my nsamps value, but I am=20
> unsure how to remedy the issue. Below is my argument and the terminal=20
> output for an attempt to receive for 10 seconds:
>
> ./rx_multi_samples --args=20
> "type=3Dn3xx,addr=3D192.168.10.2,time_source=3Dgpsdo,clock_source=3Dgps=
do"=20
> --rate 6.25e6 --subdev "A:0 A:1 B:0 B:1" --channels "0,1,2,3" --nsamps=20
> 625000000
>
> Creating the usrp device with:=20
> type=3Dn3xx,addr=3D192.168.10.2,time_source=3Dgpsdo,clock_source=3Dgpsd=
o...
>
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;=20
> UHD_3.15.0.HEAD-0-gaea0e2de
>
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:=20
> mgmt_addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D3218B5F,cl=
aimed=3DFalse,addr=3D192.168.10.2,time_source=3Dgpsdo,clock_source=3Dgpsd=
o
>
> [INFO] [MPM.PeriphManager] init() called with device args=20
> `clock_source=3Dgpsdo,time_source=3Dgpsdo,product=3Dn310,mgmt_addr=3D19=
2.168.10.2'.
>
> [INFO] [0/Replay_0] Initializing block control (NOC ID:=20
> 0x4E91A00000000004)
>
> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD1000000113=
12)
>
> [INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD1000000113=
12)
>
> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000=
)
>
> [INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000=
)
>
> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000002=
)
>
> [INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000002=
)
>
> [INFO] [0/FIFO_0] Initializing block control (NOC ID: 0xF1F000000000000=
0)
>
> [INFO] [0/FIFO_1] Initializing block control (NOC ID: 0xF1F000000000000=
0)
>
> [INFO] [0/FIFO_2] Initializing block control (NOC ID: 0xF1F000000000000=
0)
>
> [INFO] [0/FIFO_3] Initializing block control (NOC ID: 0xF1F000000000000=
0)
>
> Using Device: Single USRP:
>
> Device: N300-Series Device
>
> Mboard 0: ni-n3xx-3218B5F
>
> RX Channel: 0
>
>   RX DSP: 0
>
>   RX Dboard: A
>
>   RX Subdev: Magnesium
>
> RX Channel: 1
>
>   RX DSP: 1
>
>   RX Dboard: A
>
>   RX Subdev: Magnesium
>
> RX Channel: 2
>
>   RX DSP: 0
>
>   RX Dboard: B
>
>   RX Subdev: Magnesium
>
> RX Channel: 3
>
>   RX DSP: 1
>
>   RX Dboard: B
>
>   RX Subdev: Magnesium
>
> TX Channel: 0
>
>   TX DSP: 0
>
>   TX Dboard: A
>
>   TX Subdev: Magnesium
>
> TX Channel: 1
>
>   TX DSP: 1
>
>   TX Dboard: A
>
>   TX Subdev: Magnesium
>
> TX Channel: 2
>
>   TX DSP: 0
>
>   TX Dboard: B
>
>   TX Subdev: Magnesium
>
> TX Channel: 3
>
>   TX DSP: 1
>
>   TX Dboard: B
>
>   TX Subdev: Magnesium
>
> Setting RX Rate: 6.250000 Msps...
>
> Actual RX Rate: 6.250000 Msps...
>
> Setting device timestamp to 0...
>
> Begin streaming 625000000 samples, 1.500000 seconds in the future...
>
> [ERROR] [RFNOC RADIO] Requesting too many samples in a single burst!=20
> Requested 12500000000, maximum is 268435455.
>
> [INFO] [RFNOC RADIO] Note that a decimation block will increase the=20
> number of samples per burst by the decimation factor. Your application=20
> may have requested fewer samples.
>
> Error: ValueError: Requested too many samples in a single burst.
>
> Thanks,
>
> Jonathan
>
>
That looks like a bug--have you tried this on UHD 4.recent?



--------------010200090707010702070205
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dwindows-1252"
      http-equiv=3D"Content-Type">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 08/06/2021 07:26 PM, Jonathan Tobin
      wrote:<br>
    </div>
    <blockquote
cite=3D"mid:BN7PR05MB4500ABFB5DD85D4FDB6FAD99D5F39@BN7PR05MB4500.namprd05=
.prod.outlook.com"
      type=3D"cite">
      <meta http-equiv=3D"Content-Type" content=3D"text/html;
        charset=3Dwindows-1252">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style>
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal">Hello,</p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal">In trying to test the =91rx_multi_samples=92
          example with all four channels on an n310. I run into an error
          of =93Requesting too many samples in a single burst=94 when I
          attempt a longer record (really anything over a few seconds).
          Seems to be my nsamps value, but I am unsure how to remedy the
          issue. Below is my argument and the terminal output for an
          attempt to receive for 10 seconds:</p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">./rx_multi_samples
            --args
            "type=3Dn3xx,addr=3D192.168.10.2,time_source=3Dgpsdo,clock_so=
urce=3Dgpsdo"
            --rate 6.25e6 --subdev "A:0 A:1 B:0 B:1" --channels
            "0,1,2,3" --nsamps 625000000
            <o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k"><o:p>=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">Creating
            the usrp device with:
            type=3Dn3xx,addr=3D192.168.10.2,time_source=3Dgpsdo,clock_sou=
rce=3Dgpsdo...<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">[INFO]
            [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
            UHD_3.15.0.HEAD-0-gaea0e2de<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">[INFO]
            [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D3218B5F,clai=
med=3DFalse,addr=3D192.168.10.2,time_source=3Dgpsdo,clock_source=3Dgpsdo<=
o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">[INFO]
            [MPM.PeriphManager] init() called with device args
`clock_source=3Dgpsdo,time_source=3Dgpsdo,product=3Dn310,mgmt_addr=3D192.=
168.10.2'.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">[INFO]
            [0/Replay_0] Initializing block control (NOC ID:
            0x4E91A00000000004)<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">[INFO]
            [0/Radio_0] Initializing block control (NOC ID:
            0x12AD100000011312)<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">[INFO]
            [0/Radio_1] Initializing block control (NOC ID:
            0x12AD100000011312)<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">[INFO]
            [0/DDC_0] Initializing block control (NOC ID:
            0xDDC0000000000000)<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">[INFO]
            [0/DDC_1] Initializing block control (NOC ID:
            0xDDC0000000000000)<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">[INFO]
            [0/DUC_0] Initializing block control (NOC ID:
            0xD0C0000000000002)<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">[INFO]
            [0/DUC_1] Initializing block control (NOC ID:
            0xD0C0000000000002)<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">[INFO]
            [0/FIFO_0] Initializing block control (NOC ID:
            0xF1F0000000000000)<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">[INFO]
            [0/FIFO_1] Initializing block control (NOC ID:
            0xF1F0000000000000)<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">[INFO]
            [0/FIFO_2] Initializing block control (NOC ID:
            0xF1F0000000000000)<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">[INFO]
            [0/FIFO_3] Initializing block control (NOC ID:
            0xF1F0000000000000)<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">Using
            Device: Single USRP:<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">=A0
            Device: N300-Series Device<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">=A0
            Mboard 0: ni-n3xx-3218B5F<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">=A0
            RX Channel: 0<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">=A0
            =A0 RX DSP: 0<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">=A0
            =A0 RX Dboard: A<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">=A0
            =A0 RX Subdev: Magnesium<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">=A0
            RX Channel: 1<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">=A0
            =A0 RX DSP: 1<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">=A0
            =A0 RX Dboard: A<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">=A0
            =A0 RX Subdev: Magnesium<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">=A0
            RX Channel: 2<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">=A0
            =A0 RX DSP: 0<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">=A0
            =A0 RX Dboard: B<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">=A0
            =A0 RX Subdev: Magnesium<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">=A0
            RX Channel: 3<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">=A0
            =A0 RX DSP: 1<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">=A0
            =A0 RX Dboard: B<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">=A0
            =A0 RX Subdev: Magnesium<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">=A0
            TX Channel: 0<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">=A0
            =A0 TX DSP: 0<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">=A0
            =A0 TX Dboard: A<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">=A0
            =A0 TX Subdev: Magnesium<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">=A0
            TX Channel: 1<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">=A0
            =A0 TX DSP: 1<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">=A0
            =A0 TX Dboard: A<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">=A0
            =A0 TX Subdev: Magnesium<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">=A0
            TX Channel: 2<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">=A0
            =A0 TX DSP: 0<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">=A0
            =A0 TX Dboard: B<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">=A0
            =A0 TX Subdev: Magnesium<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">=A0
            TX Channel: 3<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">=A0
            =A0 TX DSP: 1<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">=A0
            =A0 TX Dboard: B<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">=A0
            =A0 TX Subdev: Magnesium<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k"><o:p>=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">Setting
            RX Rate: 6.250000 Msps...<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">Actual
            RX Rate: 6.250000 Msps...<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k"><o:p>=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">Setting
            device timestamp to 0...<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k"><o:p>=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">Begin
            streaming 625000000 samples, 1.500000 seconds in the
            future...<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">[ERROR]
            [RFNOC RADIO] Requesting too many samples in a single burst!
            Requested 12500000000, maximum is 268435455.<o:p></o:p></span=
></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">[INFO]
            [RFNOC RADIO] Note that a decimation block will increase the
            number of samples per burst by the decimation factor. Your
            application may have requested fewer samples.<o:p></o:p></spa=
n></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:blac=
k">Error:
            ValueError: Requested too many samples in a single burst.<o:p=
></o:p></span></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal">Thanks,</p>
        <p class=3D"MsoNormal">Jonathan</p>
      </div>
      <br>
    </blockquote>
    That looks like a bug--have you tried this on UHD 4.recent?<br>
    <br>
    <br>
  </body>
</html>

--------------010200090707010702070205--

--===============7492195084755595031==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7492195084755595031==--
