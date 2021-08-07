Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F2CD3E3618
	for <lists+usrp-users@lfdr.de>; Sat,  7 Aug 2021 17:31:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E3E9A3841C7
	for <lists+usrp-users@lfdr.de>; Sat,  7 Aug 2021 11:31:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="D/GAic5f";
	dkim-atps=neutral
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 3AA9238417F
	for <usrp-users@lists.ettus.com>; Sat,  7 Aug 2021 11:30:35 -0400 (EDT)
Received: by mail-qk1-f169.google.com with SMTP id bl17so5782567qkb.12
        for <usrp-users@lists.ettus.com>; Sat, 07 Aug 2021 08:30:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to;
        bh=+c7ina/qY1IvZrnGaonTOxG6vtC+3jNw626uHZH6Hn8=;
        b=D/GAic5fVpNfWHI8hJI4uujfq9Drs91MoZAgkGLiUd8xYWZ1HxxjbYWmfjcaxHSfxG
         fMA/34Cufzp0FaWNzn0zjfHLF2aMbQw2QgDgqwTC87DcERaXDgc0iKRImkDldyGReyMX
         2kqeIs1xah1yxefUlw5vS8HnaKVVDG7z7TVWwISH034xKlrg91rf/i1sgR8Va7WPmmhL
         5yr/tWf7n9ir1JgoNM6xCP3ePYNAwYm4eLN+dNm/shrxt+AZSZcSNVJN94l1G7nE1qi3
         Fi2mWgPwMtDymziPoWG8Nautpx4NBf+I2q6kZbDY6Z6rIb07ZX+a9jrREeIkJi7A9ruE
         wX4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to;
        bh=+c7ina/qY1IvZrnGaonTOxG6vtC+3jNw626uHZH6Hn8=;
        b=GLJvGH5Tb/7PBleaLMG5TgTKWZCei3gEmh9Wp2lStZ3XY4Mp82O3vT7uOWortQ3soB
         irgYeePHaN9aRC4Vn1F5q3k5aA2nyRFZxgPDW7GaqZXdHCDg86xbI6X1Inds2wnvdZTy
         t6JJJ/Lxfc5IFux4fszRPoUS4hyMBwpzPL84thHtaY+j5Pl1U0WZsz6veQqZjNJ5wZ+c
         +QBlvv4Yk1FqpZLaMRIKYsTl5iUFnjD/2H4/iXzxIE8Aw0144MsAG2xl0iCBVjTVbyEw
         hrHC+4nlUe2bbflhz+BV95FqvD0N06+xAg5hNcId2ExzkAxoFg1f0QzNU4H4bhZZmLa9
         5zHg==
X-Gm-Message-State: AOAM53229a9nQKHHX2S4h9OsOxja2bjCWDSgS7+VOiB+m2F6dBkkBWCh
	f93I0sgcSyvHducn0j2fxfv991pvp8jgQA==
X-Google-Smtp-Source: ABdhPJybfvW5A5RD8VjGH4h8tFadZvS6nYSS7v6LZzOTY+jmG+6Zki5du1lpHWaHxj5xpCVzS2cnxA==
X-Received: by 2002:a37:a7d2:: with SMTP id q201mr15429675qke.158.1628350234435;
        Sat, 07 Aug 2021 08:30:34 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id n136sm6156963qke.88.2021.08.07.08.30.33
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Aug 2021 08:30:33 -0700 (PDT)
Message-ID: <610EA718.1080908@gmail.com>
Date: Sat, 07 Aug 2021 11:30:32 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Jonathan Tobin <Tobin@augustusaero.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <BN7PR05MB4500ABFB5DD85D4FDB6FAD99D5F39@BN7PR05MB4500.namprd05.prod.outlook.com>,<610DE851.70308@gmail.com> <BN7PR05MB45007CFF2FEC947F65240178D5F49@BN7PR05MB4500.namprd05.prod.outlook.com>
In-Reply-To: <BN7PR05MB45007CFF2FEC947F65240178D5F49@BN7PR05MB4500.namprd05.prod.outlook.com>
Message-ID-Hash: BFGLXLYZA54KDYKOSGF3BQJFIKREOHK4
X-Message-ID-Hash: BFGLXLYZA54KDYKOSGF3BQJFIKREOHK4
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Too Many Samples in a Single Burst
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BFGLXLYZA54KDYKOSGF3BQJFIKREOHK4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4587274639796356256=="

This is a multi-part message in MIME format.
--===============4587274639796356256==
Content-Type: multipart/alternative;
 boundary="------------030608060508020902010205"

This is a multi-part message in MIME format.
--------------030608060508020902010205
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: quoted-printable

On 08/06/2021 10:47 PM, Jonathan Tobin wrote:
> Hi Marcus,
>
> No, I have not attempted on UHD 4+. Due to some other software=20
> constraints I am only able to use 3.15 at the moment.
>
> Thanks,
> Jonathan
Does reducing nsamps help?  What about channel count?

Just looking for clues as to what might be going on.  Looking at the=20
code, nothing really leaps out at me.  You're using rx_multi_samples
   "out of the box" or with modifications?


> -----------------------------------------------------------------------=
-
> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Friday, August 6, 2021 3:56 PM
> *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* [USRP-users] Re: Too Many Samples in a Single Burst
> On 08/06/2021 07:26 PM, Jonathan Tobin wrote:
>>
>> Hello,
>>
>> In trying to test the =91rx_multi_samples=92 example with all four=20
>> channels on an n310. I run into an error of =93Requesting too many=20
>> samples in a single burst=94 when I attempt a longer record (really=20
>> anything over a few seconds). Seems to be my nsamps value, but I am=20
>> unsure how to remedy the issue. Below is my argument and the terminal=20
>> output for an attempt to receive for 10 seconds:
>>
>> ./rx_multi_samples --args=20
>> "type=3Dn3xx,addr=3D192.168.10.2,time_source=3Dgpsdo,clock_source=3Dgp=
sdo"=20
>> --rate 6.25e6 --subdev "A:0 A:1 B:0 B:1" --channels "0,1,2,3"=20
>> --nsamps 625000000
>>
>> Creating the usrp device with:=20
>> type=3Dn3xx,addr=3D192.168.10.2,time_source=3Dgpsdo,clock_source=3Dgps=
do...
>>
>> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;=20
>> UHD_3.15.0.HEAD-0-gaea0e2de
>>
>> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:=20
>> mgmt_addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D3218B5F,c=
laimed=3DFalse,addr=3D192.168.10.2,time_source=3Dgpsdo,clock_source=3Dgps=
do
>>
>> [INFO] [MPM.PeriphManager] init() called with device args=20
>> `clock_source=3Dgpsdo,time_source=3Dgpsdo,product=3Dn310,mgmt_addr=3D1=
92.168.10.2'.
>>
>> [INFO] [0/Replay_0] Initializing block control (NOC ID:=20
>> 0x4E91A00000000004)
>>
>> [INFO] [0/Radio_0] Initializing block control (NOC ID:=20
>> 0x12AD100000011312)
>>
>> [INFO] [0/Radio_1] Initializing block control (NOC ID:=20
>> 0x12AD100000011312)
>>
>> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC000000000000=
0)
>>
>> [INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC000000000000=
0)
>>
>> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C000000000000=
2)
>>
>> [INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C000000000000=
2)
>>
>> [INFO] [0/FIFO_0] Initializing block control (NOC ID: 0xF1F00000000000=
00)
>>
>> [INFO] [0/FIFO_1] Initializing block control (NOC ID: 0xF1F00000000000=
00)
>>
>> [INFO] [0/FIFO_2] Initializing block control (NOC ID: 0xF1F00000000000=
00)
>>
>> [INFO] [0/FIFO_3] Initializing block control (NOC ID: 0xF1F00000000000=
00)
>>
>> Using Device: Single USRP:
>>
>>   Device: N300-Series Device
>>
>>   Mboard 0: ni-n3xx-3218B5F
>>
>>   RX Channel: 0
>>
>>     RX DSP: 0
>>
>>     RX Dboard: A
>>
>>     RX Subdev: Magnesium
>>
>>   RX Channel: 1
>>
>>     RX DSP: 1
>>
>>     RX Dboard: A
>>
>>     RX Subdev: Magnesium
>>
>>   RX Channel: 2
>>
>>     RX DSP: 0
>>
>>     RX Dboard: B
>>
>>     RX Subdev: Magnesium
>>
>>   RX Channel: 3
>>
>>     RX DSP: 1
>>
>>     RX Dboard: B
>>
>>     RX Subdev: Magnesium
>>
>>   TX Channel: 0
>>
>>     TX DSP: 0
>>
>>     TX Dboard: A
>>
>>     TX Subdev: Magnesium
>>
>>   TX Channel: 1
>>
>>     TX DSP: 1
>>
>>     TX Dboard: A
>>
>>     TX Subdev: Magnesium
>>
>>   TX Channel: 2
>>
>>     TX DSP: 0
>>
>>     TX Dboard: B
>>
>>     TX Subdev: Magnesium
>>
>>   TX Channel: 3
>>
>>     TX DSP: 1
>>
>>     TX Dboard: B
>>
>>     TX Subdev: Magnesium
>>
>> Setting RX Rate: 6.250000 Msps...
>>
>> Actual RX Rate: 6.250000 Msps...
>>
>> Setting device timestamp to 0...
>>
>> Begin streaming 625000000 samples, 1.500000 seconds in the future...
>>
>> [ERROR] [RFNOC RADIO] Requesting too many samples in a single burst!=20
>> Requested 12500000000, maximum is 268435455.
>>
>> [INFO] [RFNOC RADIO] Note that a decimation block will increase the=20
>> number of samples per burst by the decimation factor. Your=20
>> application may have requested fewer samples.
>>
>> Error: ValueError: Requested too many samples in a single burst.
>>
>> Thanks,
>>
>> Jonathan
>>
>>
> That looks like a bug--have you tried this on UHD 4.recent?
>
>


--------------030608060508020902010205
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dwindows-1252"
      http-equiv=3D"Content-Type">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 08/06/2021 10:47 PM, Jonathan Tobin
      wrote:<br>
    </div>
    <blockquote
cite=3D"mid:BN7PR05MB45007CFF2FEC947F65240178D5F49@BN7PR05MB4500.namprd05=
.prod.outlook.com"
      type=3D"cite">
      <meta http-equiv=3D"Content-Type" content=3D"text/html;
        charset=3Dwindows-1252">
      <style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;m=
argin-bottom:0;} </style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Hi=A0Marcus,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        No, I have not attempted on UHD 4+. Due to some other software
        constraints I am only able to use 3.15 at the moment.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Thanks,
        <div>Jonathan</div>
      </div>
    </blockquote>
    Does reducing nsamps help?=A0 What about channel count?<br>
    <br>
    Just looking for clues as to what might be going on.=A0 Looking at th=
e
    code, nothing really leaps out at me.=A0 You're using rx_multi_sample=
s<br>
    =A0 "out of the box" or with modifications?<br>
    <br>
    <br>
    <blockquote
cite=3D"mid:BN7PR05MB45007CFF2FEC947F65240178D5F49@BN7PR05MB4500.namprd05=
.prod.outlook.com"
      type=3D"cite">
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
      </div>
      <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
      <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt=
"
          color=3D"#000000" face=3D"Calibri, sans-serif"><b>From:</b> Mar=
cus
          D. Leech <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patc=
hvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a><br>
          <b>Sent:</b> Friday, August 6, 2021 3:56 PM<br>
          <b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"mailto=
:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
          <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:usrp-users@li=
sts.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
          <b>Subject:</b> [USRP-users] Re: Too Many Samples in a Single
          Burst</font>
        <div>=A0</div>
      </div>
      <div style=3D"background-color:#FFFFFF">
        <div class=3D"x_moz-cite-prefix">On 08/06/2021 07:26 PM, Jonathan
          Tobin wrote:<br>
        </div>
        <blockquote type=3D"cite">
          <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
            medium)">
          <style>
<!--
@font-face
	{font-family:"Cambria Math"}
@font-face
	{font-family:Calibri}
p.x_MsoNormal, li.x_MsoNormal, div.x_MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif}
.x_MsoChpDefault
	{}
@page WordSection1
	{margin:1.0in 1.0in 1.0in 1.0in}
div.x_WordSection1
	{}
-->
</style>
          <div class=3D"x_WordSection1">
            <p class=3D"x_MsoNormal">=A0</p>
            <p class=3D"x_MsoNormal">Hello,</p>
            <p class=3D"x_MsoNormal">=A0</p>
            <p class=3D"x_MsoNormal">In trying to test the
              =91rx_multi_samples=92 example with all four channels on an
              n310. I run into an error of =93Requesting too many samples
              in a single burst=94 when I attempt a longer record (really
              anything over a few seconds). Seems to be my nsamps value,
              but I am unsure how to remedy the issue. Below is my
              argument and the terminal output for an attempt to receive
              for 10 seconds:</p>
            <p class=3D"x_MsoNormal">=A0</p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">./rx_multi_samples --args
                "type=3Dn3xx,addr=3D192.168.10.2,time_source=3Dgpsdo,cloc=
k_source=3Dgpsdo"
                --rate 6.25e6 --subdev "A:0 A:1 B:0 B:1" --channels
                "0,1,2,3" --nsamps 625000000
              </span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">=A0</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">Creating the usrp device with:
                type=3Dn3xx,addr=3D192.168.10.2,time_source=3Dgpsdo,clock=
_source=3Dgpsdo...</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">[INFO] [UHD] linux; GNU C++ version 7.5.0;
                Boost_106501; UHD_3.15.0.HEAD-0-gaea0e2de</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">[INFO] [MPMD] Initializing 1 device(s) in
                parallel with args:
mgmt_addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D3218B5F,clai=
med=3DFalse,addr=3D192.168.10.2,time_source=3Dgpsdo,clock_source=3Dgpsdo<=
/span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">[INFO] [MPM.PeriphManager] init() called
                with device args
`clock_source=3Dgpsdo,time_source=3Dgpsdo,product=3Dn310,mgmt_addr=3D192.=
168.10.2'.</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">[INFO] [0/Replay_0] Initializing block
                control (NOC ID: 0x4E91A00000000004)</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">[INFO] [0/Radio_0] Initializing block
                control (NOC ID: 0x12AD100000011312)</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">[INFO] [0/Radio_1] Initializing block
                control (NOC ID: 0x12AD100000011312)</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">[INFO] [0/DDC_0] Initializing block control
                (NOC ID: 0xDDC0000000000000)</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">[INFO] [0/DDC_1] Initializing block control
                (NOC ID: 0xDDC0000000000000)</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">[INFO] [0/DUC_0] Initializing block control
                (NOC ID: 0xD0C0000000000002)</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">[INFO] [0/DUC_1] Initializing block control
                (NOC ID: 0xD0C0000000000002)</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">[INFO] [0/FIFO_0] Initializing block
                control (NOC ID: 0xF1F0000000000000)</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">[INFO] [0/FIFO_1] Initializing block
                control (NOC ID: 0xF1F0000000000000)</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">[INFO] [0/FIFO_2] Initializing block
                control (NOC ID: 0xF1F0000000000000)</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">[INFO] [0/FIFO_3] Initializing block
                control (NOC ID: 0xF1F0000000000000)</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">Using Device: Single USRP:</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">=A0 Device: N300-Series Device</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">=A0 Mboard 0: ni-n3xx-3218B5F</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">=A0 RX Channel: 0</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">=A0 =A0 RX DSP: 0</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">=A0 =A0 RX Dboard: A</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">=A0 =A0 RX Subdev: Magnesium</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">=A0 RX Channel: 1</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">=A0 =A0 RX DSP: 1</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">=A0 =A0 RX Dboard: A</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">=A0 =A0 RX Subdev: Magnesium</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">=A0 RX Channel: 2</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">=A0 =A0 RX DSP: 0</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">=A0 =A0 RX Dboard: B</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">=A0 =A0 RX Subdev: Magnesium</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">=A0 RX Channel: 3</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">=A0 =A0 RX DSP: 1</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">=A0 =A0 RX Dboard: B</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">=A0 =A0 RX Subdev: Magnesium</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">=A0 TX Channel: 0</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">=A0 =A0 TX DSP: 0</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">=A0 =A0 TX Dboard: A</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">=A0 =A0 TX Subdev: Magnesium</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">=A0 TX Channel: 1</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">=A0 =A0 TX DSP: 1</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">=A0 =A0 TX Dboard: A</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">=A0 =A0 TX Subdev: Magnesium</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">=A0 TX Channel: 2</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">=A0 =A0 TX DSP: 0</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">=A0 =A0 TX Dboard: B</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">=A0 =A0 TX Subdev: Magnesium</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">=A0 TX Channel: 3</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">=A0 =A0 TX DSP: 1</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">=A0 =A0 TX Dboard: B</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">=A0 =A0 TX Subdev: Magnesium</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">=A0</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">Setting RX Rate: 6.250000 Msps...</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">Actual RX Rate: 6.250000 Msps...</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">=A0</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">Setting device timestamp to 0...</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">=A0</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">Begin streaming 625000000 samples, 1.500000
                seconds in the future...</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">[ERROR] [RFNOC RADIO] Requesting too many
                samples in a single burst! Requested 12500000000,
                maximum is 268435455.</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">[INFO] [RFNOC RADIO] Note that a decimation
                block will increase the number of samples per burst by
                the decimation factor. Your application may have
                requested fewer samples.</span></p>
            <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                color:black">Error: ValueError: Requested too many
                samples in a single burst.</span></p>
            <p class=3D"x_MsoNormal">=A0</p>
            <p class=3D"x_MsoNormal">Thanks,</p>
            <p class=3D"x_MsoNormal">Jonathan</p>
          </div>
          <br>
        </blockquote>
        That looks like a bug--have you tried this on UHD 4.recent?<br>
        <br>
        <br>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------030608060508020902010205--

--===============4587274639796356256==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4587274639796356256==--
