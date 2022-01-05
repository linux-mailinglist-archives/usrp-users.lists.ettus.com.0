Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 897B0485728
	for <lists+usrp-users@lfdr.de>; Wed,  5 Jan 2022 18:21:30 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 23BAE380AC1
	for <lists+usrp-users@lfdr.de>; Wed,  5 Jan 2022 12:21:29 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="mt6s4tdC";
	dkim-atps=neutral
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 9ABB53800BC
	for <usrp-users@lists.ettus.com>; Wed,  5 Jan 2022 12:20:30 -0500 (EST)
Received: by mail-qk1-f175.google.com with SMTP id e25so55074qkl.12
        for <usrp-users@lists.ettus.com>; Wed, 05 Jan 2022 09:20:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=jqgZq/XGAGU999fPfeUlGioIfpGMQGqmq1GPVDQXv2I=;
        b=mt6s4tdCC2LmMT8dpnIVzrV8P42ITgpv/MRlDWcSLf+ON6xRfG7x1i/2WTDSGf1job
         RZmtB/Tt0K8QFMJZ0y1ScJunpDc/hYYkkh//iDuTVmQoexWEA7ZADZ0yg4g6mWedVXtU
         u/GhmqOLks5YCI9wDsHrHNdcH301XOrxgCgxyJp7WShRd0nVkfWXC/kKKgY7p1Xl9jqw
         iNNAydwoZPdqUE8s6GwVO9p9GC/aHznwriaN0hIKOqZpE5mHW5NsKuWseNK4Kbi/VMX4
         etoa30Mn2drUYF/Id1QX2cVOo3WN3+ByP3O7AV2k0i6oxhRAF2SJ8QXW+ykOrl69ai+I
         AhTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=jqgZq/XGAGU999fPfeUlGioIfpGMQGqmq1GPVDQXv2I=;
        b=VuyxNH139mGeZPdQEUCV6HxOUlkBvhxDkseZAkBTG1QxtoYeadbTIOZgGM16WKkZlG
         f9MCeo1PT3hC0Pk1ZHmmHjLwDg4EgmhY5z22zgMluY30iAao2vwK7itpNbA+aE6lsrKc
         G4dF1/l08R8n+rUV2hhkP5dkZ6mJg763zGxy6Y2xEVEt3mhuPZUTFN2JZCY0PhToCo/v
         yQVOZ6gGchgBb4zUdpionoZM/rtlXcRE+7jxkLB9q9i8thOkmfR/Y67viOGKcUgUVxVY
         M8b+yoHJ4HBiqEJSkwHMrwNMisYTjlVVc4UTo5y/sd/bLO8mNXLKGhqq4uYF/OoDdpmH
         jPsw==
X-Gm-Message-State: AOAM530fI3hJXHoeLIvFCu8lvGUo8A+2AT4OxEN7a4Nu/y+EzK/6JNb5
	Oq1S7GIA9KFhjNfeyLxaXLkPXFq+cvhV9g==
X-Google-Smtp-Source: ABdhPJwbaWmlpYfSeRJ3Hs/bX6Iw/KyEHKH8f3+cL04DPDYLEnmxZ/bjPvL2rqPJGJGYXE0fy0iCLQ==
X-Received: by 2002:a05:620a:d96:: with SMTP id q22mr39274952qkl.434.1641403229872;
        Wed, 05 Jan 2022 09:20:29 -0800 (PST)
Received: from [192.168.2.192] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.gmail.com with ESMTPSA id h4sm2206874qkp.54.2022.01.05.09.20.29
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Jan 2022 09:20:29 -0800 (PST)
Message-ID: <3c60272e-6474-2b33-1022-ada0446b6a8d@gmail.com>
Date: Wed, 5 Jan 2022 12:20:28 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <wziux3kQ43Ihtu9IdRjhTe5Vpf4V6rQ2q1rwan7ecIk@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <wziux3kQ43Ihtu9IdRjhTe5Vpf4V6rQ2q1rwan7ecIk@lists.ettus.com>
Message-ID-Hash: C4MHTWPYCNOV2CI364ORL7QKGOLHI677
X-Message-ID-Hash: C4MHTWPYCNOV2CI364ORL7QKGOLHI677
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error while using USRP Echotimer Block from gr-radar
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/C4MHTWPYCNOV2CI364ORL7QKGOLHI677/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4975830345525783593=="

This is a multi-part message in MIME format.
--===============4975830345525783593==
Content-Type: multipart/alternative;
 boundary="------------zlvDMVhlLIp3ufPrWHToJPRV"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------zlvDMVhlLIp3ufPrWHToJPRV
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

You may be better served by cross-posting this to the discuss-gnuradio=20
mailing list, where there may be more users of gr-radar than here.

Generally, a "late command" isn't a fatal error.=C2=A0 What it basically=20
means is that the *application* (gr-radar) asked for a "timed" command,=20
but was unable to deliver that command before the time requested.



On 2022-01-05 04:29, mobizmn--- via USRP-users wrote:
>
> I am trying to use the USRP echotimer block from gr-radar module. But=20
> when I run the flowgraph containing this block, I get the following err=
or:
>
> |[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;=20
> UHD_3.15.0.0-70-g42b6fcf6|
>
> |[INFO] [B200] Detected Device: B210|
>
> |[INFO] [B200] Operating over USB 2.|
>
> |[INFO] [B200] Initialize CODEC control...|
>
> |[INFO] [B200] Initialize Radio control...|
>
> |[INFO] [B200] Performing register loopback test... |
>
> |[INFO] [B200] Register loopback test passed|
>
> |[INFO] [B200] Performing register loopback test... |
>
> |[INFO] [B200] Register loopback test passed|
>
> |[INFO] [B200] Setting master clock rate selection to 'automatic'.|
>
> |[INFO] [B200] Asking for clock rate 16.000000 MHz... |
>
> |[INFO] [B200] Actually got clock rate 16.000000 MHz.|
>
> |Using USRP Device (TX): |
>
> |Single USRP:|
>
> |Device: B-Series Device|
>
> |Mboard 0: B210|
>
> |RX Channel: 0|
>
> |RX DSP: 0|
>
> |RX Dboard: A|
>
> |RX Subdev: FE-RX2|
>
> |RX Channel: 1|
>
> |RX DSP: 1|
>
> |RX Dboard: A|
>
> |RX Subdev: FE-RX1|
>
> |TX Channel: 0|
>
> |TX DSP: 0|
>
> |TX Dboard: A|
>
> |TX Subdev: FE-TX2|
>
> |TX Channel: 1|
>
> |TX DSP: 1|
>
> |TX Dboard: A|
>
> |TX Subdev: FE-TX1|
>
> |Setting TX Rate: 2000000|
>
> |[INFO] [B200] Asking for clock rate 32.000000 MHz... |
>
> |[INFO] [B200] Actually got clock rate 32.000000 MHz.|
>
> |Actual TX Rate: 2e+06|
>
> |[INFO] [USRP2] Opening a USRP2/N-Series device...|
>
> |[INFO] [USRP2] Current recv frame size: 1472 bytes|
>
> |[INFO] [USRP2] Current send frame size: 1472 bytes|
>
> |[WARNING] [UHD] Unable to set the thread priority. Performance may be=20
> negatively affected.|
>
> |Please see the general application notes in the manual for instruction=
s.|
>
> |EnvironmentError: OSError: error in pthread_setschedparam|
>
> |Using USRP Device (RX): |
>
> |Single USRP:|
>
> |Device: USRP2 / N-Series Device|
>
> |Mboard 0: N210r4|
>
> |RX Channel: 0|
>
> |RX DSP: 0|
>
> |RX Dboard: A|
>
> |RX Subdev: WBXv3 RX+GDB|
>
> |TX Channel: 0|
>
> |TX DSP: 0|
>
> |TX Dboard: A|
>
> |TX Subdev: WBXv3 TX+GDB|
>
> |Setting RX Rate: 2000000|
>
> |Actual RX Rate: 2e+06|
>
> |set_min_output_buffer on block 1 to 2400|
>
> |set_min_output_buffer on block 2 to 2400|
>
> |terminate called after throwing an instance of 'std::runtime_error'|
>
> |what(): Receiver error ERROR_CODE_LATE_COMMAND|
>
>
> My transmit device is USRP B210 and the receiver is USRP N210. The=20
> settings of the USRP Echotimer block are attached. What could be=20
> causing this error?
>
>
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
--------------zlvDMVhlLIp3ufPrWHToJPRV
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>You may be better served by cross-posting this to the
      discuss-gnuradio mailing list, where there may be more users of
      gr-radar than here.</p>
    <p>Generally, a "late command" isn't a fatal error.=C2=A0 What it
      basically means is that the *application* (gr-radar) asked for a
      "timed" command, but was unable to deliver that command before the
      time requested.</p>
    <p><br>
    </p>
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">On 2022-01-05 04:29, mobizmn--- via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:wziux3kQ43Ihtu9IdRjhTe5Vpf4V6rQ2q1rwan7ecIk@lists.ettus=
.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>I am trying to use the USRP echotimer block from gr-radar
        module. But when I run the flowgraph containing this block, I
        get the following error:</p>
      <p><code>[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
          UHD_3.15.0.0-70-g42b6fcf6</code></p>
      <p><code>[INFO] [B200] Detected Device: B210</code></p>
      <p><code>[INFO] [B200] Operating over USB 2.</code></p>
      <p><code>[INFO] [B200] Initialize CODEC control...</code></p>
      <p><code>[INFO] [B200] Initialize Radio control...</code></p>
      <p><code>[INFO] [B200] Performing register loopback test... </code>=
</p>
      <p><code>[INFO] [B200] Register loopback test passed</code></p>
      <p><code>[INFO] [B200] Performing register loopback test... </code>=
</p>
      <p><code>[INFO] [B200] Register loopback test passed</code></p>
      <p><code>[INFO] [B200] Setting master clock rate selection to
          'automatic'.</code></p>
      <p><code>[INFO] [B200] Asking for clock rate 16.000000 MHz... </cod=
e></p>
      <p><code>[INFO] [B200] Actually got clock rate 16.000000 MHz.</code=
></p>
      <p><code>Using USRP Device (TX): </code></p>
      <p><code>Single USRP:</code></p>
      <p><code> Device: B-Series Device</code></p>
      <p><code> Mboard 0: B210</code></p>
      <p><code> RX Channel: 0</code></p>
      <p><code> RX DSP: 0</code></p>
      <p><code> RX Dboard: A</code></p>
      <p><code> RX Subdev: FE-RX2</code></p>
      <p><code> RX Channel: 1</code></p>
      <p><code> RX DSP: 1</code></p>
      <p><code> RX Dboard: A</code></p>
      <p><code> RX Subdev: FE-RX1</code></p>
      <p><code> TX Channel: 0</code></p>
      <p><code> TX DSP: 0</code></p>
      <p><code> TX Dboard: A</code></p>
      <p><code> TX Subdev: FE-TX2</code></p>
      <p><code> TX Channel: 1</code></p>
      <p><code> TX DSP: 1</code></p>
      <p><code> TX Dboard: A</code></p>
      <p><code> TX Subdev: FE-TX1</code></p>
      <p><code>Setting TX Rate: 2000000</code></p>
      <p><code>[INFO] [B200] Asking for clock rate 32.000000 MHz... </cod=
e></p>
      <p><code>[INFO] [B200] Actually got clock rate 32.000000 MHz.</code=
></p>
      <p><code>Actual TX Rate: 2e+06</code></p>
      <p><code>[INFO] [USRP2] Opening a USRP2/N-Series device...</code></=
p>
      <p><code>[INFO] [USRP2] Current recv frame size: 1472 bytes</code><=
/p>
      <p><code>[INFO] [USRP2] Current send frame size: 1472 bytes</code><=
/p>
      <p><code>[WARNING] [UHD] Unable to set the thread priority.
          Performance may be negatively affected.</code></p>
      <p><code>Please see the general application notes in the manual
          for instructions.</code></p>
      <p><code>EnvironmentError: OSError: error in pthread_setschedparam<=
/code></p>
      <p><code>Using USRP Device (RX): </code></p>
      <p><code>Single USRP:</code></p>
      <p><code> Device: USRP2 / N-Series Device</code></p>
      <p><code> Mboard 0: N210r4</code></p>
      <p><code> RX Channel: 0</code></p>
      <p><code> RX DSP: 0</code></p>
      <p><code> RX Dboard: A</code></p>
      <p><code> RX Subdev: WBXv3 RX+GDB</code></p>
      <p><code> TX Channel: 0</code></p>
      <p><code> TX DSP: 0</code></p>
      <p><code> TX Dboard: A</code></p>
      <p><code> TX Subdev: WBXv3 TX+GDB</code></p>
      <p><code>Setting RX Rate: 2000000</code></p>
      <p><code>Actual RX Rate: 2e+06</code></p>
      <p><code>set_min_output_buffer on block 1 to 2400</code></p>
      <p><code>set_min_output_buffer on block 2 to 2400</code></p>
      <p><code>terminate called after throwing an instance of
          'std::runtime_error'</code></p>
      <p><code> what(): Receiver error ERROR_CODE_LATE_COMMAND</code></p>
      <p><br>
      </p>
      <p>My transmit device is USRP B210 and the receiver is USRP N210.
        The settings of the USRP Echotimer block are attached. What
        could be causing this error?</p>
      <p><br>
      </p>
      <p><br>
      </p>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
  </body>
</html>
--------------zlvDMVhlLIp3ufPrWHToJPRV--

--===============4975830345525783593==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4975830345525783593==--
