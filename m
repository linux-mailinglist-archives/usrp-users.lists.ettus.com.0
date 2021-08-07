Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D8FF23E3674
	for <lists+usrp-users@lfdr.de>; Sat,  7 Aug 2021 19:16:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AC883384657
	for <lists+usrp-users@lfdr.de>; Sat,  7 Aug 2021 13:16:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="C2Qo2u9A";
	dkim-atps=neutral
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by mm2.emwd.com (Postfix) with ESMTPS id C5856383F71
	for <usrp-users@lists.ettus.com>; Sat,  7 Aug 2021 13:16:11 -0400 (EDT)
Received: by mail-qt1-f169.google.com with SMTP id l24so9035832qtj.4
        for <usrp-users@lists.ettus.com>; Sat, 07 Aug 2021 10:16:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to;
        bh=S92Nr0xzgPnDgI2eYyWxMh9A/godVJgOHKAJIGj3WNI=;
        b=C2Qo2u9AGaI1xUU9Dyf3vj25M0CjC9x8n40NF+Qq4gNtJMsKJBU+/+AVXErobydlKD
         8ZAnVNUF20qsmrUF0EwYKaI5/DjKi96tlTaxUezjgntCUsa8+RYr93ffi4Xcs/T4r9+n
         MRswo9ui9sCFfgx+cRzpczhrECRPBocScVY88+/SPXOC+0HcyDYQHllgvYsYwHAcx/je
         cKzwCrcOgc9KShB6exMwpYEYUf5RhquCEJCmcETum2LnUdhKeYNW/xAnNNQOeRLkS2VQ
         tqHz887P9X5eYdMwbUnJooIavC9YEIUP7/df5NsOcQJu3qwwoDmb2hpzi9i7hXIFJhaU
         mP6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to;
        bh=S92Nr0xzgPnDgI2eYyWxMh9A/godVJgOHKAJIGj3WNI=;
        b=D55QHVJAQp4JwdTv0gSvj9A4e1X+MXmzJwBjq0WP61d/sHWEOHareM/ylxlKDvEPv0
         fj8R+S5rIMVrhEWGQ0sMYXpQrqJcmjaQ78aSE3RWYffpaRd9nIzykVIpi0xJ3a7GtCtJ
         K1VvLI9yvq1ZjiGFLay4+vZJKONLNe1u1B2rSSa9Z3nE0kKEaJTKqWboS1JQWZrUSAHm
         VptHzZB4GtKi2tefaEbolY6aVP6/ss8n6uaLd22qOCrPxSNyizNHPnUWMvQqjMliIEnz
         Pb3pJrLPOSilSWW7JUGu5o78t784EXOAMbS9TJJmVxrsTvslmOdvBeGUJbGRfRYudEMR
         TXCw==
X-Gm-Message-State: AOAM530oJp81FtKjosGpLB8ROgOZtJUH6jxvL7djkUUHnuAfIxJkgSZC
	4GAZxmmTB1Umw0is4KWjsuMMtk5FgUdVlQ==
X-Google-Smtp-Source: ABdhPJxnENQ/w2NeHMJdWvSh4DSwwFJBlCcVLjtTGLAPhLKoNmfoVD0g7K0grMAuHZdcE/zpFgdLdQ==
X-Received: by 2002:ac8:4a18:: with SMTP id x24mr13369836qtq.219.1628356571101;
        Sat, 07 Aug 2021 10:16:11 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id e6sm701058qtw.35.2021.08.07.10.16.10
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Aug 2021 10:16:10 -0700 (PDT)
Message-ID: <610EBFD9.2060400@gmail.com>
Date: Sat, 07 Aug 2021 13:16:09 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Jonathan Tobin <Tobin@augustusaero.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <BN7PR05MB4500ABFB5DD85D4FDB6FAD99D5F39@BN7PR05MB4500.namprd05.prod.outlook.com>,<610DE851.70308@gmail.com> <BN7PR05MB45007CFF2FEC947F65240178D5F49@BN7PR05MB4500.namprd05.prod.outlook.com>,<610EA718.1080908@gmail.com> <BN7PR05MB45000D8D6B914F082812F1A9D5F49@BN7PR05MB4500.namprd05.prod.outlook.com>
In-Reply-To: <BN7PR05MB45000D8D6B914F082812F1A9D5F49@BN7PR05MB4500.namprd05.prod.outlook.com>
Message-ID-Hash: B6YGSSQWNZ66CUZ5GTCPMDFNCMZX3SKD
X-Message-ID-Hash: B6YGSSQWNZ66CUZ5GTCPMDFNCMZX3SKD
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Too Many Samples in a Single Burst
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/B6YGSSQWNZ66CUZ5GTCPMDFNCMZX3SKD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2554484296077530381=="

This is a multi-part message in MIME format.
--===============2554484296077530381==
Content-Type: multipart/alternative;
 boundary="------------040008060601010402010903"

This is a multi-part message in MIME format.
--------------040008060601010402010903
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: quoted-printable

On 08/07/2021 12:23 PM, Jonathan Tobin wrote:
> Reducing nsamps to below 268435455/2 works - but at 6.25Msps for all=20
> four channels (two daughterboards) this is very short amount of time. =20
> I can try changing channels but for my application I do need all four=20
> channels receiving - though this will have to be on Monday.
>
> Yes, rx_multi_samples "out of the box" (no modifications to the example=
).
>
> Thanks,
> Jonathan
Given that rx_multi_samples doesn't actually *DO* anything with the=20
samples, I'm curious about how it's actually useful for you in any
   production sense--it is just a demo app to show some of the API usage.

It may be the case that this example needs to be updated because it's=20
mis-using the API in some what that isn't immediately obvious to me.
   But again, it doesn't actually *DO* anything with the samples, so I=20
don't know how it's useful other than as a learning tool...


> -----------------------------------------------------------------------=
-
> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Saturday, August 7, 2021 5:30 AM
> *To:* Jonathan Tobin <Tobin@augustusaero.com>;=20
> usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] Re: Too Many Samples in a Single Burst
> On 08/06/2021 10:47 PM, Jonathan Tobin wrote:
>> Hi Marcus,
>>
>> No, I have not attempted on UHD 4+. Due to some other software=20
>> constraints I am only able to use 3.15 at the moment.
>>
>> Thanks,
>> Jonathan
> Does reducing nsamps help?  What about channel count?
>
> Just looking for clues as to what might be going on.  Looking at the=20
> code, nothing really leaps out at me.  You're using rx_multi_samples
>   "out of the box" or with modifications?
>
>
>> ----------------------------------------------------------------------=
--
>> *From:* Marcus D. Leech <patchvonbraun@gmail.com>=20
>> <mailto:patchvonbraun@gmail.com>
>> *Sent:* Friday, August 6, 2021 3:56 PM
>> *To:* usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>=20
>> <usrp-users@lists.ettus.com> <mailto:usrp-users@lists.ettus.com>
>> *Subject:* [USRP-users] Re: Too Many Samples in a Single Burst
>> On 08/06/2021 07:26 PM, Jonathan Tobin wrote:
>>>
>>> Hello,
>>>
>>> In trying to test the =91rx_multi_samples=92 example with all four=20
>>> channels on an n310. I run into an error of =93Requesting too many=20
>>> samples in a single burst=94 when I attempt a longer record (really=20
>>> anything over a few seconds). Seems to be my nsamps value, but I am=20
>>> unsure how to remedy the issue. Below is my argument and the=20
>>> terminal output for an attempt to receive for 10 seconds:
>>>
>>> ./rx_multi_samples --args=20
>>> "type=3Dn3xx,addr=3D192.168.10.2,time_source=3Dgpsdo,clock_source=3Dg=
psdo"=20
>>> --rate 6.25e6 --subdev "A:0 A:1 B:0 B:1" --channels "0,1,2,3"=20
>>> --nsamps 625000000
>>>
>>> Creating the usrp device with:=20
>>> type=3Dn3xx,addr=3D192.168.10.2,time_source=3Dgpsdo,clock_source=3Dgp=
sdo...
>>>
>>> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;=20
>>> UHD_3.15.0.HEAD-0-gaea0e2de
>>>
>>> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:=20
>>> mgmt_addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D3218B5F,=
claimed=3DFalse,addr=3D192.168.10.2,time_source=3Dgpsdo,clock_source=3Dgp=
sdo
>>>
>>> [INFO] [MPM.PeriphManager] init() called with device args=20
>>> `clock_source=3Dgpsdo,time_source=3Dgpsdo,product=3Dn310,mgmt_addr=3D=
192.168.10.2'.
>>>
>>> [INFO] [0/Replay_0] Initializing block control (NOC ID:=20
>>> 0x4E91A00000000004)
>>>
>>> [INFO] [0/Radio_0] Initializing block control (NOC ID:=20
>>> 0x12AD100000011312)
>>>
>>> [INFO] [0/Radio_1] Initializing block control (NOC ID:=20
>>> 0x12AD100000011312)
>>>
>>> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC00000000000=
00)
>>>
>>> [INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC00000000000=
00)
>>>
>>> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C00000000000=
02)
>>>
>>> [INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C00000000000=
02)
>>>
>>> [INFO] [0/FIFO_0] Initializing block control (NOC ID:=20
>>> 0xF1F0000000000000)
>>>
>>> [INFO] [0/FIFO_1] Initializing block control (NOC ID:=20
>>> 0xF1F0000000000000)
>>>
>>> [INFO] [0/FIFO_2] Initializing block control (NOC ID:=20
>>> 0xF1F0000000000000)
>>>
>>> [INFO] [0/FIFO_3] Initializing block control (NOC ID:=20
>>> 0xF1F0000000000000)
>>>
>>> Using Device: Single USRP:
>>>
>>>   Device: N300-Series Device
>>>
>>>   Mboard 0: ni-n3xx-3218B5F
>>>
>>>   RX Channel: 0
>>>
>>>     RX DSP: 0
>>>
>>>     RX Dboard: A
>>>
>>>     RX Subdev: Magnesium
>>>
>>>   RX Channel: 1
>>>
>>>     RX DSP: 1
>>>
>>>     RX Dboard: A
>>>
>>>     RX Subdev: Magnesium
>>>
>>>   RX Channel: 2
>>>
>>>     RX DSP: 0
>>>
>>>     RX Dboard: B
>>>
>>>     RX Subdev: Magnesium
>>>
>>>   RX Channel: 3
>>>
>>>     RX DSP: 1
>>>
>>>     RX Dboard: B
>>>
>>>     RX Subdev: Magnesium
>>>
>>>   TX Channel: 0
>>>
>>>     TX DSP: 0
>>>
>>>     TX Dboard: A
>>>
>>>     TX Subdev: Magnesium
>>>
>>>   TX Channel: 1
>>>
>>>     TX DSP: 1
>>>
>>>     TX Dboard: A
>>>
>>>     TX Subdev: Magnesium
>>>
>>>   TX Channel: 2
>>>
>>>     TX DSP: 0
>>>
>>>     TX Dboard: B
>>>
>>>     TX Subdev: Magnesium
>>>
>>>   TX Channel: 3
>>>
>>>     TX DSP: 1
>>>
>>>     TX Dboard: B
>>>
>>>     TX Subdev: Magnesium
>>>
>>> Setting RX Rate: 6.250000 Msps...
>>>
>>> Actual RX Rate: 6.250000 Msps...
>>>
>>> Setting device timestamp to 0...
>>>
>>> Begin streaming 625000000 samples, 1.500000 seconds in the future...
>>>
>>> [ERROR] [RFNOC RADIO] Requesting too many samples in a single burst!=20
>>> Requested 12500000000, maximum is 268435455.
>>>
>>> [INFO] [RFNOC RADIO] Note that a decimation block will increase the=20
>>> number of samples per burst by the decimation factor. Your=20
>>> application may have requested fewer samples.
>>>
>>> Error: ValueError: Requested too many samples in a single burst.
>>>
>>> Thanks,
>>>
>>> Jonathan
>>>
>>>
>> That looks like a bug--have you tried this on UHD 4.recent?
>>
>>
>


--------------040008060601010402010903
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dwindows-1252"
      http-equiv=3D"Content-Type">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 08/07/2021 12:23 PM, Jonathan Tobin
      wrote:<br>
    </div>
    <blockquote
cite=3D"mid:BN7PR05MB45000D8D6B914F082812F1A9D5F49@BN7PR05MB4500.namprd05=
.prod.outlook.com"
      type=3D"cite">
      <meta http-equiv=3D"Content-Type" content=3D"text/html;
        charset=3Dwindows-1252">
      <style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;m=
argin-bottom:0;} </style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Reducing nsamps to below=A0<span style=3D"font-family:Calibri,
          sans-serif;background-color:rgb(255, 255, 255);display:inline
          !important">268435455/2 works - but at 6.25Msps for all four
          channels (two daughterboards) this is very short amount of
          time.=A0 I can try changing channels but for my application I d=
o
          need all four channels receiving - though this will have to be
          on Monday.=A0</span></div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <span style=3D"font-family:Calibri,
          sans-serif;background-color:rgb(255, 255, 255);display:inline
          !important"><br>
        </span></div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <span style=3D"font-family:Calibri,
          sans-serif;background-color:rgb(255, 255, 255);display:inline
          !important">Yes, rx_multi_samples "out of the box" (no
          modifications to the example).</span></div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <span style=3D"font-family:Calibri,
          sans-serif;background-color:rgb(255, 255, 255);display:inline
          !important"><br>
        </span></div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <span style=3D"font-family:Calibri,
          sans-serif;background-color:rgb(255, 255, 255);display:inline
          !important">Thanks,</span></div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <span style=3D"font-family:Calibri,
          sans-serif;background-color:rgb(255, 255, 255);display:inline
          !important">Jonathan=A0 <br>
        </span></div>
    </blockquote>
    Given that rx_multi_samples doesn't actually *DO* anything with the
    samples, I'm curious about how it's actually useful for you in any<br=
>
    =A0 production sense--it is just a demo app to show some of the API
    usage.<br>
    <br>
    It may be the case that this example needs to be updated because
    it's mis-using the API in some what that isn't immediately obvious
    to me.<br>
    =A0 But again, it doesn't actually *DO* anything with the samples, so
    I don't know how it's useful other than as a learning tool...<br>
    <br>
    <br>
    <blockquote
cite=3D"mid:BN7PR05MB45000D8D6B914F082812F1A9D5F49@BN7PR05MB4500.namprd05=
.prod.outlook.com"
      type=3D"cite">
      <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
      <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt=
"
          color=3D"#000000" face=3D"Calibri, sans-serif"><b>From:</b> Mar=
cus
          D. Leech <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patc=
hvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a><br>
          <b>Sent:</b> Saturday, August 7, 2021 5:30 AM<br>
          <b>To:</b> Jonathan Tobin <a class=3D"moz-txt-link-rfc2396E" hr=
ef=3D"mailto:Tobin@augustusaero.com">&lt;Tobin@augustusaero.com&gt;</a>;
          <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:usrp-users=
@lists.ettus.com">usrp-users@lists.ettus.com</a> <a class=3D"moz-txt-link=
-rfc2396E" href=3D"mailto:usrp-users@lists.ettus.com">&lt;usrp-users@list=
s.ettus.com&gt;</a><br>
          <b>Subject:</b> Re: [USRP-users] Re: Too Many Samples in a
          Single Burst</font>
        <div>=A0</div>
      </div>
      <div style=3D"background-color:#FFFFFF">
        <div class=3D"x_moz-cite-prefix">On 08/06/2021 10:47 PM, Jonathan
          Tobin wrote:<br>
        </div>
        <blockquote type=3D"cite">
          <style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
          <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            Hi=A0Marcus,</div>
          <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            <br>
          </div>
          <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            No, I have not attempted on UHD 4+. Due to some other
            software constraints I am only able to use 3.15 at the
            moment.</div>
          <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            <br>
          </div>
          <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            Thanks,
            <div>Jonathan</div>
          </div>
        </blockquote>
        Does reducing nsamps help?=A0 What about channel count?<br>
        <br>
        Just looking for clues as to what might be going on.=A0 Looking a=
t
        the code, nothing really leaps out at me.=A0 You're using
        rx_multi_samples<br>
        =A0 "out of the box" or with modifications?<br>
        <br>
        <br>
        <blockquote type=3D"cite">
          <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
          </div>
          <hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
          <div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font
              style=3D"font-size:11pt" color=3D"#000000" face=3D"Calibri,
              sans-serif"><b>From:</b> Marcus D. Leech
              <a moz-do-not-send=3D"true" class=3D"x_moz-txt-link-rfc2396=
E"
                href=3D"mailto:patchvonbraun@gmail.com">&lt;patchvonbraun=
@gmail.com&gt;</a><br>
              <b>Sent:</b> Friday, August 6, 2021 3:56 PM<br>
              <b>To:</b> <a moz-do-not-send=3D"true"
                class=3D"x_moz-txt-link-abbreviated"
                href=3D"mailto:usrp-users@lists.ettus.com">
                usrp-users@lists.ettus.com</a> <a
                moz-do-not-send=3D"true" class=3D"x_moz-txt-link-rfc2396E=
"
                href=3D"mailto:usrp-users@lists.ettus.com">
                &lt;usrp-users@lists.ettus.com&gt;</a><br>
              <b>Subject:</b> [USRP-users] Re: Too Many Samples in a
              Single Burst</font>
            <div>=A0</div>
          </div>
          <div style=3D"background-color:#FFFFFF">
            <div class=3D"x_x_moz-cite-prefix">On 08/06/2021 07:26 PM,
              Jonathan Tobin wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <meta name=3D"Generator" content=3D"Microsoft Word 15
                (filtered medium)">
              <style>
<!--
@font-face
	{font-family:"Cambria Math"}
@font-face
	{font-family:Calibri}
p.x_x_MsoNormal, li.x_x_MsoNormal, div.x_x_MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif}
@page WordSection1
	{margin:1.0in 1.0in 1.0in 1.0in}
-->
</style>
              <div class=3D"x_x_WordSection1">
                <p class=3D"x_x_MsoNormal">=A0</p>
                <p class=3D"x_x_MsoNormal">Hello,</p>
                <p class=3D"x_x_MsoNormal">=A0</p>
                <p class=3D"x_x_MsoNormal">In trying to test the
                  =91rx_multi_samples=92 example with all four channels o=
n
                  an n310. I run into an error of =93Requesting too many
                  samples in a single burst=94 when I attempt a longer
                  record (really anything over a few seconds). Seems to
                  be my nsamps value, but I am unsure how to remedy the
                  issue. Below is my argument and the terminal output
                  for an attempt to receive for 10 seconds:</p>
                <p class=3D"x_x_MsoNormal">=A0</p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">./rx_multi_samples --args
                    "type=3Dn3xx,addr=3D192.168.10.2,time_source=3Dgpsdo,=
clock_source=3Dgpsdo"
                    --rate 6.25e6 --subdev "A:0 A:1 B:0 B:1" --channels
                    "0,1,2,3" --nsamps 625000000
                  </span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">=A0</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">Creating the usrp device with:
                    type=3Dn3xx,addr=3D192.168.10.2,time_source=3Dgpsdo,c=
lock_source=3Dgpsdo...</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">[INFO] [UHD] linux; GNU C++ version
                    7.5.0; Boost_106501; UHD_3.15.0.HEAD-0-gaea0e2de</spa=
n></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">[INFO] [MPMD] Initializing 1 device(s)
                    in parallel with args:
mgmt_addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D3218B5F,clai=
med=3DFalse,addr=3D192.168.10.2,time_source=3Dgpsdo,clock_source=3Dgpsdo<=
/span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">[INFO] [MPM.PeriphManager] init()
                    called with device args
`clock_source=3Dgpsdo,time_source=3Dgpsdo,product=3Dn310,mgmt_addr=3D192.=
168.10.2'.</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">[INFO] [0/Replay_0] Initializing block
                    control (NOC ID: 0x4E91A00000000004)</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">[INFO] [0/Radio_0] Initializing block
                    control (NOC ID: 0x12AD100000011312)</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">[INFO] [0/Radio_1] Initializing block
                    control (NOC ID: 0x12AD100000011312)</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">[INFO] [0/DDC_0] Initializing block
                    control (NOC ID: 0xDDC0000000000000)</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">[INFO] [0/DDC_1] Initializing block
                    control (NOC ID: 0xDDC0000000000000)</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">[INFO] [0/DUC_0] Initializing block
                    control (NOC ID: 0xD0C0000000000002)</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">[INFO] [0/DUC_1] Initializing block
                    control (NOC ID: 0xD0C0000000000002)</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">[INFO] [0/FIFO_0] Initializing block
                    control (NOC ID: 0xF1F0000000000000)</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">[INFO] [0/FIFO_1] Initializing block
                    control (NOC ID: 0xF1F0000000000000)</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">[INFO] [0/FIFO_2] Initializing block
                    control (NOC ID: 0xF1F0000000000000)</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">[INFO] [0/FIFO_3] Initializing block
                    control (NOC ID: 0xF1F0000000000000)</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">Using Device: Single USRP:</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">=A0 Device: N300-Series Device</span></p=
>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">=A0 Mboard 0: ni-n3xx-3218B5F</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">=A0 RX Channel: 0</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">=A0 =A0 RX DSP: 0</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">=A0 =A0 RX Dboard: A</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">=A0 =A0 RX Subdev: Magnesium</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">=A0 RX Channel: 1</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">=A0 =A0 RX DSP: 1</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">=A0 =A0 RX Dboard: A</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">=A0 =A0 RX Subdev: Magnesium</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">=A0 RX Channel: 2</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">=A0 =A0 RX DSP: 0</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">=A0 =A0 RX Dboard: B</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">=A0 =A0 RX Subdev: Magnesium</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">=A0 RX Channel: 3</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">=A0 =A0 RX DSP: 1</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">=A0 =A0 RX Dboard: B</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">=A0 =A0 RX Subdev: Magnesium</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">=A0 TX Channel: 0</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">=A0 =A0 TX DSP: 0</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">=A0 =A0 TX Dboard: A</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">=A0 =A0 TX Subdev: Magnesium</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">=A0 TX Channel: 1</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">=A0 =A0 TX DSP: 1</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">=A0 =A0 TX Dboard: A</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">=A0 =A0 TX Subdev: Magnesium</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">=A0 TX Channel: 2</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">=A0 =A0 TX DSP: 0</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">=A0 =A0 TX Dboard: B</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">=A0 =A0 TX Subdev: Magnesium</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">=A0 TX Channel: 3</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">=A0 =A0 TX DSP: 1</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">=A0 =A0 TX Dboard: B</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">=A0 =A0 TX Subdev: Magnesium</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">=A0</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">Setting RX Rate: 6.250000 Msps...</span>=
</p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">Actual RX Rate: 6.250000 Msps...</span><=
/p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">=A0</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">Setting device timestamp to 0...</span><=
/p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">=A0</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">Begin streaming 625000000 samples,
                    1.500000 seconds in the future...</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">[ERROR] [RFNOC RADIO] Requesting too
                    many samples in a single burst! Requested
                    12500000000, maximum is 268435455.</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">[INFO] [RFNOC RADIO] Note that a
                    decimation block will increase the number of samples
                    per burst by the decimation factor. Your application
                    may have requested fewer samples.</span></p>
                <p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0p=
t;
                    color:black">Error: ValueError: Requested too many
                    samples in a single burst.</span></p>
                <p class=3D"x_x_MsoNormal">=A0</p>
                <p class=3D"x_x_MsoNormal">Thanks,</p>
                <p class=3D"x_x_MsoNormal">Jonathan</p>
              </div>
              <br>
            </blockquote>
            That looks like a bug--have you tried this on UHD 4.recent?<b=
r>
            <br>
            <br>
          </div>
        </blockquote>
        <br>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------040008060601010402010903--

--===============2554484296077530381==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2554484296077530381==--
