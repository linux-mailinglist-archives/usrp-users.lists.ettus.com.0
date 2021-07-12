Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A47EE3C63FA
	for <lists+usrp-users@lfdr.de>; Mon, 12 Jul 2021 21:45:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E89413851B0
	for <lists+usrp-users@lfdr.de>; Mon, 12 Jul 2021 15:45:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="cqNNy7oE";
	dkim-atps=neutral
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 1C4F73844BF
	for <usrp-users@lists.ettus.com>; Mon, 12 Jul 2021 15:44:25 -0400 (EDT)
Received: by mail-yb1-f179.google.com with SMTP id o139so30816126ybg.9
        for <usrp-users@lists.ettus.com>; Mon, 12 Jul 2021 12:44:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=KFsHhxtH4bXzftM5wCaE/RoGkQEJOtZ4JB4Y+UIoD2Q=;
        b=cqNNy7oE5lFvC+y4lNCLRIfbpQOO+P/M0dq/34l5he3vDuMKY/Wq6mZccp3EeyFaS+
         fqC1kHTxUzYibpdY1k4Zb9cNXSwL7gr3X6oiSCBl4J4lqmPZ+9OQ9Yrh87OGJOSgnRAy
         2bMa8d1D1nEOTbfifikAVOmXN4yy788vhZullLwyPHIQObSvYiYOEKCMp0N8krspa8dH
         zTeyBHkWSIj0B1/qi/HTccBPJIRcJQ/RswyDLqdYQ7PB6B0YR94M5AhJpRBm8N+9M7ni
         b2MM1RbFn42OoNnVir9QtKetX93hzTLYpyaACxJF0ddCFJAWp6fjy+nt7zsCuL+iu+e9
         374g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=KFsHhxtH4bXzftM5wCaE/RoGkQEJOtZ4JB4Y+UIoD2Q=;
        b=XuhmYMQNMieyIW8a7ff/VHOarxUC6BmAqzSvmtwBY0Xr+CUUWCoFj1sJVoQJ4p+vKE
         uTxhaVvwy4j2y9LYFHic9LQ/ORhtihW/yXGKGfps7QcHDzVYuYg1h4V3U/a9cJXzs6Vm
         FAWVSjEWdDafQ/Rz51il9C6r7lKRKTs/YTCnH9EBksr0sU+1vQQsW4UV+c6NGha2VqkY
         w4UlExMypx9bAAbC5WxRyrpySt3CfxLHoWmvLPVc10UAHELN35v19hUSX9w6UMUWaxO4
         jHlydsWYziCN78h5HIXZODv01FOhmhqFgRYAbhwfBVSnodRpU1DJS1tTm6m5EVWsoYaw
         Uvtg==
X-Gm-Message-State: AOAM531tTJL76o/YM6HL3kDYTBwth2fwRKgrO/fokAWwwPtHMW3DdDfR
	215MHKo3rzrsItmNEfyf7R+iIy6wreqDRIagaw==
X-Google-Smtp-Source: ABdhPJx3DFlyRxJBrMQLMrzLyfMr8u7GG2ds4L7Y0OiG3zh1+h5FwpLGrljIcjkYgZVwo/upVOxuXmTz6MfV0hd0+z8=
X-Received: by 2002:a25:2785:: with SMTP id n127mr723501ybn.235.1626119064598;
 Mon, 12 Jul 2021 12:44:24 -0700 (PDT)
MIME-Version: 1.0
References: <CAMHwfujJV2XecfNenDrSY+hj0LhtnXdi3_Gk50nBacDXsBj16w@mail.gmail.com>
 <0C93CCA0-8704-415A-9B50-56A7F5535EB4@gmail.com>
In-Reply-To: <0C93CCA0-8704-415A-9B50-56A7F5535EB4@gmail.com>
From: "shachar J. brown" <shachar.brown@gmail.com>
Date: Mon, 12 Jul 2021 22:44:13 +0300
Message-ID: <CAMHwfuhSj+b=UicdcQEufuWRmhUiOHgVFpBRNmhCaWwkcvVVGw@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Message-ID-Hash: W7AZQMFPLT3547KKQBSF7QZ5M4FZRHMN
X-Message-ID-Hash: W7AZQMFPLT3547KKQBSF7QZ5M4FZRHMN
X-MailFrom: shachar.brown@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "shachar J. brown via USRP-users" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USB Disconnects While running B210 on Intel Nuc
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/W7AZQMFPLT3547KKQBSF7QZ5M4FZRHMN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3819636425756489076=="

--===============3819636425756489076==
Content-Type: multipart/alternative; boundary="0000000000003542b505c6f25918"

--0000000000003542b505c6f25918
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

Yes indeed. original cable.

BTW, additional information: Different ports have different durations
before they crash.
Specifically, ports on one side survive much longer than the other side.
This holds while the ports share similar color and marking.

BR,
Steve



On Mon, Jul 12, 2021 at 10:37 PM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> Are you using the Ettus supplied cable?
>
> Controllers will disconnect devices when they sense excess noise on the
> cable.
>
>
>
> Sent from my iPhone
>
> On Jul 12, 2021, at 3:27 PM, shachar J. brown <shachar.brown@gmail.com>
> wrote:
>
> =EF=BB=BF
> Hi Marcus,
>
> Thanks for the reply.
>
> I believe this is not a power problem as the B210 was fed with an externa=
l
> power.
> The problem still thrives, any further suggestions are more than welcomed=
.
>
> BR,
> Steve
>
> On Thu, Jun 24, 2021 at 7:28 PM Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 06/24/2021 02:31 AM, shachar J. brown wrote:
>>
>> Hi everyone,
>>
>> I am trying to run the given tx_samples_from_file example.
>> Unfortunately, I keep receiving the uhd::usb_error, approximately 5-30
>> minutes into the run.
>>
>> *Technical specs:*
>> USRP: B210.
>> Host: Intel Nuc, Core i7, 8th gen.
>> OS: Ubuntu 20
>> UHD Version: 4.1.0
>> USB Controler: XHCI (USB3).
>>
>>
>> *Error print: *
>> [ERROR] [TX-STREAM] The tx_stream timed out sending 5000 samples (4080
>> sent).
>> [ERROR] [UHD] An unexpected exception was caught in a task loop.The task
>> loop will now exit, things may not work.EnvironmentError: IOError: usb r=
x8
>> transfer status: LIBUSB_TRANSFER_NO_DEVICE
>> terminate called after throwing an instance of 'uhd::usb_error'
>>   what():  RuntimeError: USBError -4: usb tx4 submit failed:
>> LIBUSB_ERROR_NO_DEVICE
>> Aborted (core dumped)
>>
>>
>> *dmesg output: *
>> [19924.922965] usb 4-2: USB disconnect, device number 7
>> [19925.195595] usb 4-2: new SuperSpeed Gen 1 USB device number 8 using
>> xhci_hcd
>> [19925.217437] usb 4-2: LPM exit latency is zeroed, disabling LPM.
>> [19925.220417] usb 4-2: New USB device found, idVendor=3D2500,
>> idProduct=3D0020, bcdDevice=3D 0.00
>> [19925.220422] usb 4-2: New USB device strings: Mfr=3D1, Product=3D2,
>> SerialNumber=3D3
>> [19925.220426] usb 4-2: Product: USRP B200
>> [19925.220429] usb 4-2: Manufacturer: Ettus Research LLC
>> [19925.220431] usb 4-2: SerialNumber: 31F80A2
>>
>> Is anyone familiar with this fault?
>> I would appreciate any help on the matter.
>>
>> Thanks in advance,
>> Steve
>>
>>
>> My guess is that your NUC USB controller is unhappy with power
>> consumption.    Are you using external power on the B2xx, or relying
>>   on USB3 power?
>>
>> Also, several years ago, there was an interaction between certain
>> controllers and kernel power-saving features that caused the
>>   controller to disconnect stuff even if it was being used.  But I can't
>> for the live of me remember which driver parameter one
>>   had to change to fix this.  It has been several years since this was a
>> problem.
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--0000000000003542b505c6f25918
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Marcus,<div><br></div><div>Yes indeed.=
 original cable.</div><div><br></div><div>BTW, additional information: Diff=
erent ports have different durations before they crash.</div><div>Specifica=
lly, ports on one side survive much longer than the other side.</div><div>T=
his holds while the ports=C2=A0share similar=C2=A0color and marking.</div><=
div><br></div><div>BR,</div><div>Steve</div><div><br></div><div><br></div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Mon, Jul 12, 2021 at 10:37 PM Marcus D Leech &lt;<a href=3D"mailto:patchv=
onbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">Are you using t=
he Ettus supplied cable?<div><br></div><div>Controllers will disconnect dev=
ices when they sense excess noise on the cable.=C2=A0</div><div><br></div><=
div><br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br>=
<blockquote type=3D"cite">On Jul 12, 2021, at 3:27 PM, shachar J. brown &lt=
;<a href=3D"mailto:shachar.brown@gmail.com" target=3D"_blank">shachar.brown=
@gmail.com</a>&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cit=
e"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr">Hi Marcus,<div><br></div><div=
>Thanks for the reply.</div><div><br></div><div>I believe this is not a pow=
er problem as the B210 was fed with an external power.</div><div>The proble=
m still thrives, any further suggestions are more than welcomed.</div><div>=
<br></div><div>BR,</div><div>Steve</div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jun 24, 2021 at 7:28 PM Mar=
cus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blan=
k">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">
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
</div></blockquote></div></div></blockquote></div></div>

--0000000000003542b505c6f25918--

--===============3819636425756489076==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3819636425756489076==--
