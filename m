Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 317913B33F1
	for <lists+usrp-users@lfdr.de>; Thu, 24 Jun 2021 18:29:11 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 070AE383D94
	for <lists+usrp-users@lfdr.de>; Thu, 24 Jun 2021 12:29:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="JRL3DlVz";
	dkim-atps=neutral
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by mm2.emwd.com (Postfix) with ESMTPS id CFC06383BA8
	for <usrp-users@lists.ettus.com>; Thu, 24 Jun 2021 12:28:20 -0400 (EDT)
Received: by mail-qk1-f177.google.com with SMTP id e1so3901493qkm.3
        for <usrp-users@lists.ettus.com>; Thu, 24 Jun 2021 09:28:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to;
        bh=g/j3RhzWUOaHCZfcftyDCRLtIPc8Ny6VUHsuTpVmab4=;
        b=JRL3DlVz7LtUzHfo79gM7Tx2JrvXacfoET6+axX/TXoWUFTKxVcIPvrN16rAt3Xxsi
         71OUprpf8tq3mUiy1fQY5zyB2mt0EtHrZQSLMCKcgDGSyL1Cvw715wOHX+sjEi2BSeFp
         CV/wAZZ0THD01P17pi3El3594ZnS/RC4SpXFlGuNlFo9ewdycDb/G3b1aaTFoT0LQ3XS
         k0oZVJvMlHg/1fdsx4Z/xTmBPGJauxswBOwyfFUlC7PmEoQnxccEFUf7VAyCOcthim9r
         pXTsz9v4HlAk/JtaHe/sXXJdMlemgKF2R0W0IR0qC+OmkR49RlU72IfO4V/eyTBdsaJ+
         e+kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to;
        bh=g/j3RhzWUOaHCZfcftyDCRLtIPc8Ny6VUHsuTpVmab4=;
        b=Fg+PgiaEj4ButZzvNK93eFb4Csrod4+FGRnILakAhk+KavofLC6jPTMOtakx+0bnoM
         F9UdoTkkENLv8AqIVpyYotl810FPqWBshlnqgRLSkmtg+W734Hq6ixoaPZB+boWxHVGw
         QtbJRc5KcsG4Ova8mDcVlbWaGeKxLEr4PnOjvDACPjCiGks5f/yzNzRAnYxlzwgqVkcT
         qcUP/no0MK63sLMe2HmrnGTOA47sy06mcP3Vbtq1mL1Y0NVJcNQLVQHCEGgKlYoNqKaC
         670kKEHj9GW1/WUSxkOiiQTEYGQ49RchABEX1QzSvwA2lHsn9E8v9U2K2uGMKNNorkih
         SIbQ==
X-Gm-Message-State: AOAM5306HaKOJwoqs+krWoPxzEBmV+EasvniKhMjsNZ8cA32PGeB21mK
	lMdPmm4zqExKGaAcWCFK8KkaGLg7wo9myA==
X-Google-Smtp-Source: ABdhPJyVpvEdAEcnqsnIzsrtLJ7/2rchq2RtWyhz9gYE1oTTQkgYknS0ibhVaNde4+ktDztdCxKTLQ==
X-Received: by 2002:a37:9e46:: with SMTP id h67mr3606083qke.439.1624552100053;
        Thu, 24 Jun 2021 09:28:20 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id o200sm433529qke.105.2021.06.24.09.28.19
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Jun 2021 09:28:19 -0700 (PDT)
Message-ID: <60D4B2A3.30905@gmail.com>
Date: Thu, 24 Jun 2021 12:28:19 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAMHwfuggbNypQ4-iQ7n1Tf5jDfoSMyYxW+KsOVDV-sOA5AYr0Q@mail.gmail.com>
In-Reply-To: <CAMHwfuggbNypQ4-iQ7n1Tf5jDfoSMyYxW+KsOVDV-sOA5AYr0Q@mail.gmail.com>
Message-ID-Hash: AZB5HWJ3DSPXFLMHGL5BOC2KE2ESRT4M
X-Message-ID-Hash: AZB5HWJ3DSPXFLMHGL5BOC2KE2ESRT4M
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USB Disconnects While running B210 on Intel Nuc
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AZB5HWJ3DSPXFLMHGL5BOC2KE2ESRT4M/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5900914885332355029=="

This is a multi-part message in MIME format.
--===============5900914885332355029==
Content-Type: multipart/alternative;
 boundary="------------050906050806070306040803"

This is a multi-part message in MIME format.
--------------050906050806070306040803
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 06/24/2021 02:31 AM, shachar J. brown wrote:
> Hi everyone,
>
> I am trying to run the given tx_samples_from_file example.
> Unfortunately, I keep receiving the uhd::usb_error, approximately 5-30 
> minutes into the run.
>
> *Technical specs:*
> USRP: B210.
> Host: Intel Nuc, Core i7, 8th gen.
> OS: Ubuntu 20
> UHD Version: 4.1.0
> USB Controler: XHCI (USB3).
>
> *Error print:
> *
> [ERROR] [TX-STREAM] The tx_stream timed out sending 5000 samples (4080 
> sent).
> [ERROR] [UHD] An unexpected exception was caught in a task loop.The 
> task loop will now exit, things may not work.EnvironmentError: 
> IOError: usb rx8 transfer status: LIBUSB_TRANSFER_NO_DEVICE
> terminate called after throwing an instance of 'uhd::usb_error'
>   what():  RuntimeError: USBError -4: usb tx4 submit failed: 
> LIBUSB_ERROR_NO_DEVICE
> Aborted (core dumped)
>
> *dmesg output:
> *
> [19924.922965] usb 4-2: USB disconnect, device number 7
> [19925.195595] usb 4-2: new SuperSpeed Gen 1 USB device number 8 using 
> xhci_hcd
> [19925.217437] usb 4-2: LPM exit latency is zeroed, disabling LPM.
> [19925.220417] usb 4-2: New USB device found, idVendor=2500, 
> idProduct=0020, bcdDevice= 0.00
> [19925.220422] usb 4-2: New USB device strings: Mfr=1, Product=2, 
> SerialNumber=3
> [19925.220426] usb 4-2: Product: USRP B200
> [19925.220429] usb 4-2: Manufacturer: Ettus Research LLC
> [19925.220431] usb 4-2: SerialNumber: 31F80A2
>
> Is anyone familiar with this fault?
> I would appreciate any help on the matter.
>
> Thanks in advance,
> Steve
>
>
My guess is that your NUC USB controller is unhappy with power 
consumption.    Are you using external power on the B2xx, or relying
   on USB3 power?

Also, several years ago, there was an interaction between certain 
controllers and kernel power-saving features that caused the
   controller to disconnect stuff even if it was being used.  But I 
can't for the live of me remember which driver parameter one
   had to change to fix this.  It has been several years since this was 
a problem.



--------------050906050806070306040803
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dwindows-1252"
      http-equiv=3D"Content-Type">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 06/24/2021 02:31 AM, shachar J.
      brown wrote:<br>
    </div>
    <blockquote
cite=3D"mid:CAMHwfuggbNypQ4-iQ7n1Tf5jDfoSMyYxW+KsOVDV-sOA5AYr0Q@mail.gmai=
l.com"
      type=3D"cite">
      <div dir=3D"ltr">
        <div>Hi everyone,</div>
        <div><br>
        </div>
        <div>I am trying to run the given tx_samples_from_file example.</=
div>
        <div>Unfortunately, I keep receiving the uhd::usb_error,
          approximately 5-30 minutes into the run.</div>
        <div><br>
        </div>
        <div><b>Technical specs:</b></div>
        <div>USRP: B210.</div>
        <div>Host: Intel Nuc, Core i7, 8th gen.</div>
        <div>OS: Ubuntu 20</div>
        <div>UHD Version: 4.1.0</div>
        <div>USB Controler: XHCI (USB3).</div>
        <div><br>
        </div>
        <div><b>Error print: <br>
          </b></div>
        <div>[ERROR] [TX-STREAM] The tx_stream timed out sending 5000
          samples (4080 sent).<br>
          [ERROR] [UHD] An unexpected exception was caught in a task
          loop.The task loop will now exit, things may not
          work.EnvironmentError: IOError: usb rx8 transfer status:
          LIBUSB_TRANSFER_NO_DEVICE<br>
          terminate called after throwing an instance of
          'uhd::usb_error'<br>
          =A0 what(): =A0RuntimeError: USBError -4: usb tx4 submit failed=
:
          LIBUSB_ERROR_NO_DEVICE<br>
          Aborted (core dumped)</div>
        <div><br>
        </div>
        <div><b>dmesg output:<br>
          </b></div>
        <div>[19924.922965] usb 4-2: USB disconnect, device number 7<br>
          [19925.195595] usb 4-2: new SuperSpeed Gen 1 USB device number
          8 using xhci_hcd<br>
          [19925.217437] usb 4-2: LPM exit latency is zeroed, disabling
          LPM.<br>
          [19925.220417] usb 4-2: New USB device found, idVendor=3D2500,
          idProduct=3D0020, bcdDevice=3D 0.00<br>
          [19925.220422] usb 4-2: New USB device strings: Mfr=3D1,
          Product=3D2, SerialNumber=3D3<br>
          [19925.220426] usb 4-2: Product: USRP B200<br>
          [19925.220429] usb 4-2: Manufacturer: Ettus Research LLC<br>
          [19925.220431] usb 4-2: SerialNumber: 31F80A2<br>
        </div>
        <div><br>
        </div>
        <div>Is anyone familiar with this fault?</div>
        <div>I would appreciate any help on the matter.</div>
        <div><br>
        </div>
        <div>Thanks in advance,</div>
        <div>Steve<br>
        </div>
        <div><br>
        </div>
        <br>
      </div>
    </blockquote>
    My guess is that your NUC USB controller is unhappy with power
    consumption.=A0=A0=A0 Are you using external power on the B2xx, or re=
lying<br>
    =A0 on USB3 power?<br>
    <br>
    Also, several years ago, there was an interaction between certain
    controllers and kernel power-saving features that caused the<br>
    =A0 controller to disconnect stuff even if it was being used.=A0 But =
I
    can't for the live of me remember which driver parameter one<br>
    =A0 had to change to fix this.=A0 It has been several years since thi=
s
    was a problem.<br>
    <br>
    <br>
  </body>
</html>

--------------050906050806070306040803--

--===============5900914885332355029==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5900914885332355029==--
