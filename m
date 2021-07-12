Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A173C63B9
	for <lists+usrp-users@lfdr.de>; Mon, 12 Jul 2021 21:28:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 387B7384B84
	for <lists+usrp-users@lfdr.de>; Mon, 12 Jul 2021 15:28:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="n3hvmi4X";
	dkim-atps=neutral
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 4FF6E3843E0
	for <usrp-users@lists.ettus.com>; Mon, 12 Jul 2021 15:27:15 -0400 (EDT)
Received: by mail-yb1-f172.google.com with SMTP id p22so30816723yba.7
        for <usrp-users@lists.ettus.com>; Mon, 12 Jul 2021 12:27:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=w7ROo+aVgtMfFMrMVi0X+VszOcijCmk9s3BWlneD6mc=;
        b=n3hvmi4XZW7gE3xH7oh+lkNQN7AV6KN03o4yX+AQbyviVVNESwMNTxmKURy8xPt30L
         NgFZcUdmxJ30AP+J13djUsmglrH04KHSlcPNaCWa3k8lZWN/WrCJ+UYUsbpZQ2xiv+az
         iQqkRUDVAF2Wpg+tImCeHW6L17QA/WO7+hTrNbvy5KJDwEFXWuX0iDvYWisJkM/XoiBK
         Jcw5rDUReqGAWlaQJecDgcoFFbxGt0LFkmpD+C4UpUqU173dxjORUDkndtYPlY4k65QA
         9Y07OGWLaiqS3IMkbiAd6V2qDv0gsVfZFltkephuorWOEmbhMJrlsKye35YsSMYKKnLA
         wZMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=w7ROo+aVgtMfFMrMVi0X+VszOcijCmk9s3BWlneD6mc=;
        b=Jb9PDzY/UNdPImnoMOmyQ2TID/Of8vRQGymcBoX19I810XnwXkOzFoLSkNRS0hdFsq
         yT7Lz0u+ng4UR+Z6vClNvilmuGf7F4iR5MKVCAMuSlD8EB3UGCkN6kOdrctnrG/nyRHz
         25OmnQ/KstNPaT+OrsZFALo/6S35sawmA6aVpO2CSjUEJbh4Iy6RnvKgH0masY0OvYvn
         Cf1vqJFBNhsM5IzUBwSWzvS0FKZJOSootSiFrPn19hHldDSx2pE9UwMBC/LOgKTKksfz
         H3OfTOV5CAcBtIIlxM7hjaN40sZcai/XUXTUphyg9PBsUmleQzc6ckjlbwVYbvdSEVn0
         UhcQ==
X-Gm-Message-State: AOAM532Z7CskK0xSu3zmzegsBCkryvKZ+bVxwJEUkS/zLDLUS6JcN1iK
	0I8znozlXAahsAUZnZznQgRB2hCMAjMzYtT2sA==
X-Google-Smtp-Source: ABdhPJzTMlhq3flg81xbRM/L89zeGFAP5vxQnlParRmwAgoF6h5iR9Rlfmr/HsxA/a5KTS0iXrSv4+Gwca3PJvnnoT0=
X-Received: by 2002:a5b:f0a:: with SMTP id x10mr674282ybr.447.1626118034620;
 Mon, 12 Jul 2021 12:27:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAMHwfuggbNypQ4-iQ7n1Tf5jDfoSMyYxW+KsOVDV-sOA5AYr0Q@mail.gmail.com>
 <60D4B2A3.30905@gmail.com>
In-Reply-To: <60D4B2A3.30905@gmail.com>
From: "shachar J. brown" <shachar.brown@gmail.com>
Date: Mon, 12 Jul 2021 22:27:03 +0300
Message-ID: <CAMHwfujJV2XecfNenDrSY+hj0LhtnXdi3_Gk50nBacDXsBj16w@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 6O3TJOSB3PYGIQQQMMMNFDBY4VBVBE3M
X-Message-ID-Hash: 6O3TJOSB3PYGIQQQMMMNFDBY4VBVBE3M
X-MailFrom: shachar.brown@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "shachar J. brown via USRP-users" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USB Disconnects While running B210 on Intel Nuc
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6O3TJOSB3PYGIQQQMMMNFDBY4VBVBE3M/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7318125622954768409=="

--===============7318125622954768409==
Content-Type: multipart/alternative; boundary="000000000000d1058505c6f21b22"

--000000000000d1058505c6f21b22
Content-Type: text/plain; charset="UTF-8"

Hi Marcus,

Thanks for the reply.

I believe this is not a power problem as the B210 was fed with an external
power.
The problem still thrives, any further suggestions are more than welcomed.

BR,
Steve

On Thu, Jun 24, 2021 at 7:28 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 06/24/2021 02:31 AM, shachar J. brown wrote:
>
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
>
> *Error print: *
> [ERROR] [TX-STREAM] The tx_stream timed out sending 5000 samples (4080
> sent).
> [ERROR] [UHD] An unexpected exception was caught in a task loop.The task
> loop will now exit, things may not work.EnvironmentError: IOError: usb rx8
> transfer status: LIBUSB_TRANSFER_NO_DEVICE
> terminate called after throwing an instance of 'uhd::usb_error'
>   what():  RuntimeError: USBError -4: usb tx4 submit failed:
> LIBUSB_ERROR_NO_DEVICE
> Aborted (core dumped)
>
>
> *dmesg output: *
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
> My guess is that your NUC USB controller is unhappy with power
> consumption.    Are you using external power on the B2xx, or relying
>   on USB3 power?
>
> Also, several years ago, there was an interaction between certain
> controllers and kernel power-saving features that caused the
>   controller to disconnect stuff even if it was being used.  But I can't
> for the live of me remember which driver parameter one
>   had to change to fix this.  It has been several years since this was a
> problem.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000d1058505c6f21b22
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Marcus,<div><br></div><div>Thanks for the reply.</div><=
div><br></div><div>I believe this is not a power problem as the B210 was fe=
d with an external power.</div><div>The problem still thrives, any further =
suggestions are more than welcomed.</div><div><br></div><div>BR,</div><div>=
Steve</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Thu, Jun 24, 2021 at 7:28 PM Marcus D. Leech &lt;<a href=3D"m=
ailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 06/24/2021 02:31 AM, shachar J.
      brown wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>Hi everyone,</div>
        <div><br>
        </div>
        <div>I am trying to run the given tx_samples_from_file example.</di=
v>
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
          &#39;uhd::usb_error&#39;<br>
          =C2=A0 what(): =C2=A0RuntimeError: USBError -4: usb tx4 submit fa=
iled:
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
    consumption.=C2=A0=C2=A0=C2=A0 Are you using external power on the B2xx=
, or relying<br>
    =C2=A0 on USB3 power?<br>
    <br>
    Also, several years ago, there was an interaction between certain
    controllers and kernel power-saving features that caused the<br>
    =C2=A0 controller to disconnect stuff even if it was being used.=C2=A0 =
But I
    can&#39;t for the live of me remember which driver parameter one<br>
    =C2=A0 had to change to fix this.=C2=A0 It has been several years since=
 this
    was a problem.<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000d1058505c6f21b22--

--===============7318125622954768409==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7318125622954768409==--
