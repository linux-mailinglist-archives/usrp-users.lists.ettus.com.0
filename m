Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9103769E7B9
	for <lists+usrp-users@lfdr.de>; Tue, 21 Feb 2023 19:42:53 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AE404380DA0
	for <lists+usrp-users@lfdr.de>; Tue, 21 Feb 2023 13:42:52 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677004972; bh=vKHKBulUStZo1wSqlTqhsEdmHNVcyT7YjRhlAALh0GU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=SXpST/is5Pl5o0hUv8NUwgtIY1/HhUgTbJoT+tzQehguXkJkjdJ/wvfSEYoZJB8iM
	 VTcLdTXHhYjizbUlWakIVDrqKVNdhokDlir+HXboSqrk/uNeemmmEOCwoLvLz0SGPk
	 YfYhwIH+VNVp5M8Rg5WI9Yo6CNinT0BGFLnEG3Af872+ZWW6tNI16Z3kND6gJNUpkm
	 niqG0uUkg9WqC5q/+X2k11v1wWAJ6zr3l2f2MNpSk4OZF8VnKxEI7gzzYhClu8GPEL
	 we6s8nFBAI3Q55/lBk6Mmu4VvG0BYHzPOJ1u6hvJX7vCzbE2a6hcF5QXcC0BvfHX0C
	 mQpgPtM5K7dOQ==
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	by mm2.emwd.com (Postfix) with ESMTPS id EC0B5380946
	for <usrp-users@lists.ettus.com>; Tue, 21 Feb 2023 13:42:11 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Ia/cf4qw";
	dkim-atps=neutral
Received: by mail-qt1-f179.google.com with SMTP id k20so1979853qtj.5
        for <usrp-users@lists.ettus.com>; Tue, 21 Feb 2023 10:42:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n9IRN9E1Ui1L3rZwDtRI8ZRGjZU592LlM6D+XKCtPH4=;
        b=Ia/cf4qwgQKWhoBf1dO+v0E2REpRtEsPdnBOYZtwN2qMpKam90Kvi+e3K40qQELMTa
         N1FxrruQvZyr5Xw1EPasUZMjTG/QOQXPrn8GqBVy5eMm3KRylOCghWb9t8iaaIsFcQWr
         kg6fCVAuJu0gFYy8ldaiOWCQEoeWGS/ccY4leNiftSqgAm8gqTtjyuRZc3N6koX6WHfB
         /QE7FTigfSoqZ03pjX4iaMZuzpyK7KtEhnsIVXZqLHYbRFWpx0N9jFbA+vGwcHGwkpeR
         IJZjLrzs0WUqi4GXwOmCHjEKqiq0pdwdwua7vVbySUNiCSVi2XgqRT7c15dMDF/SIgMd
         85yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=n9IRN9E1Ui1L3rZwDtRI8ZRGjZU592LlM6D+XKCtPH4=;
        b=pf4sWCFz8XyiNhDV372/PFLPDfG1AyIuQBOmDpLJBXu8XbZkHdYHoShFDHirgrChb3
         +WBa8dBQ9zOOGVxrRj2ffeFvMb3vjnhO5Cbv/0gNPFEUx0Cc4hm5UsWrQHikgWyp/bpH
         ZXuaTKGJT/2NQtE3XH2j4LgW6fIUT7LmjcSgScSnSHsRO1MDFprZH93VDg1ZN4WzZfTK
         3uP7b+2YsJ3WqZLOF/2KVDcOY/ctH23yvSZpojPTPBfheCl9Fzcplbc+RtbU6u+FKizR
         +7EiOIV7ynP160/eECFEzc8hQaThf54fPzDtXSGA2+eXQq/JCZFsh4HniRsbYQY3Xhtu
         XI7w==
X-Gm-Message-State: AO0yUKWPwhpkmxWROnRCYgwIi+4nvfScKZn8F9/LjCmgTOnPyB7xu+Uz
	eAJ46IOSrBQOwdhMs4ov0yTKaAYc1Z0=
X-Google-Smtp-Source: AK7set+ITtpK7I14n2C73pfehz0tyyFtWh3UYNHF53fyq062ETy8GRoxur4gNJsemWzJnrnkXcajcQ==
X-Received: by 2002:ac8:5c15:0:b0:3bc:f93a:77cf with SMTP id i21-20020ac85c15000000b003bcf93a77cfmr10244705qti.6.1677004931175;
        Tue, 21 Feb 2023 10:42:11 -0800 (PST)
Received: from [192.168.2.167] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id l24-20020ac84598000000b003b9bf862c04sm1124773qtn.55.2023.02.21.10.42.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Feb 2023 10:42:10 -0800 (PST)
Message-ID: <8a772128-6ae9-f4a8-0f4f-c1dcd0604c63@gmail.com>
Date: Tue, 21 Feb 2023 13:42:10 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: Maxim Belotserkovsky <maxim@gotenna.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <CA+7S2faCOt9o1wmpZsVkBMu-mrjuNH4R84GVtGWO1A61Q-uyUA@mail.gmail.com>
 <42c2e790-7e4a-c73e-a342-772664fa8d0c@gmail.com>
 <CA+7S2fbinsSu6eC4O_ES_yCPh8RRicaj7ZU7Jpz6xBHJMqV-=w@mail.gmail.com>
 <ce1d3d13-4b41-33ca-4f8f-aad8a3973082@gmail.com>
 <CA+7S2fbxFMpNYDuws0VjCgoTpjefiD3MRPdFc1ANtBLZaoEPBg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CA+7S2fbxFMpNYDuws0VjCgoTpjefiD3MRPdFc1ANtBLZaoEPBg@mail.gmail.com>
Message-ID-Hash: YF7MBEK24YWMBMYX5POG7CQOKYJ3HCGW
X-Message-ID-Hash: YF7MBEK24YWMBMYX5POG7CQOKYJ3HCGW
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problem verifying B200 device
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YF7MBEK24YWMBMYX5POG7CQOKYJ3HCGW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2643618661121054599=="

This is a multi-part message in MIME format.
--===============2643618661121054599==
Content-Type: multipart/alternative;
 boundary="------------ru0Qj2HcFnpvN6vmwvR6mb2W"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------ru0Qj2HcFnpvN6vmwvR6mb2W
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 21/02/2023 12:59, Maxim Belotserkovsky wrote:
> When I do dmesg following the initial 'cold connect' of B200, here is=20
> what=C2=A0I see:
>
> [ 7487.879251] vhci_hcd vhci_hcd.0: pdev(0) rhport(0) sockfd(3)
> [ 7487.879260] vhci_hcd vhci_hcd.0: devid(393220) speed(3)=20
> speed_str(high-speed)
> [ 7487.879300] vhci_hcd vhci_hcd.0: Device attached
> [ 7488.228451] usb 1-1: new high-speed USB device number 9 using vhci_h=
cd
> [ 7488.378208] usb 1-1: SetAddress Request (9) to port 0
> [ 7488.413199] usb 1-1: New USB device found, idVendor=3D2500,=20
> idProduct=3D0021, bcdDevice=3D 1.00
> [ 7488.413205] usb 1-1: New USB device strings: Mfr=3D1, Product=3D2,=20
> SerialNumber=3D3
> [ 7488.413207] usb 1-1: Product: WestBridge
> [ 7488.413208] usb 1-1: Manufacturer: Cypress
> [ 7488.413210] usb 1-1: SerialNumber: 0000000004BE
>
> Does this look=C2=A0correct? What bothers me here is the idProduct=3D00=
21,=20
> which, according to=20
> https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolc=
hain_(UHD_and_GNU_Radio)_on_Linux=20
> means a B210 device. Is this the kind of inconsistency that may be=20
> causing the image load to fail?
>
> I've tried running=C2=A0b2xx_fx3_utils, but any option I pass into it,=20
> including the ones that are supposed jut query=C2=A0the device, try loa=
ding=20
> up the image, so I can't get any more information about the state of=20
> b200 on power-up beyond what's showing up in dmesg. What can possibly=20
> be wrong with the USB configuration on my machine? Clearly, the=20
> dropping of the device ONLY happens once I try running any of the UHD=20
> utilities, but otherwise the connection seems rock-solid.
>
> I did notice this: after initial cold connect, when I run 'usbipd wsl=20
> list' from Windows Power Shell, I see "6-4 =C2=A02500:0021 =C2=A0WestBr=
idge" in=20
> the list; however, same command issued after the botched image load=20
> using any of the UHD utils shows this instead: "7-4 =C2=A0 =C2=A02500:0=
021=20
> =C2=A0Unknown", as if the firmware load causes the USB interface chip=20
> (FX3?) to get bricked. I'm more inclined to think something is wrong=20
> with the device or the firmware coming from Ettus than anything going=20
> on with my host.
Something to check.=C2=A0=C2=A0 Make certain that you have a:

60-uhd-host.rules

In /usr/lib/udev/rules.d

Without that (installed by the uhd-host package I think), udev will be=20
unable to grant access to the USRP.


>
> On Tue, Feb 21, 2023 at 11:31 AM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 21/02/2023 12:24, Maxim Belotserkovsky wrote:
>>     Thank you for your answer. I have Ubuntu 22.04 running under WSL.
>>
>>     To your points:
>>     1) I have considered power consumption=C2=A0issue, so I've tried
>>     plugging in the b200 via a powered hub - same problem. Try a
>>     different hub?
>>     2)ANY canned utility I've tried running (uhd_usrp_probe,
>>     uhd_find_devices) starts off by 'Loading firmware image:'. Just
>>     prior to running either command, the 'lsusb' in Ubuntu lists the
>>     device correctly (as 'Ettus Research LLC USRP B200-mini'), so
>>     presumably it is loaded with the factory image on power-up, or
>>     this is a wrong presumption=C2=A0on my part?
>>     3) USB interface is provided by a separate chip inside b200 (not
>>     the FPGA firmware), right? Why is it then that when image is
>>     being loaded the USB connection gets dropped? Is unsustainable
>>     power draw the only possibility?
>>     3) How do UHD utilities (say uhd_find_devices) "know" that the
>>     device has not image on it? Say, I use Xilinx program manager to
>>     load up the provided=C2=A0firmware image, and then try calling up =
one
>>     of the canned UHD utilities, are you saying the utility will then
>>     no longer attempt to load up anything because it can read some
>>     register on FPGA that will tell it it already has an image loaded?
>>
>>     Perhaps there is a more detailed WIKI that explains these points
>>     in more detail? All I see online is fairly=C2=A0high level, hence =
my
>>     naive questions.
>>     Thanks!
>     The UHD library queries the device to determine whether correct
>     "stuff" has been loaded.=C2=A0=C2=A0=C2=A0=C2=A0 The firmware is fo=
r the
>     =C2=A0 FX3, and the FPGA image is for the FPGA.=C2=A0=C2=A0 They bo=
th need to be
>     mutually compatible, and if UHD detects that there's
>     =C2=A0 either no images present, or that there's something "screwy"=
 it
>     will force reload of both the firmware (small) and
>     =C2=A0 the FPGA (much larger).=C2=A0 But once they're loaded, UHD s=
tartup
>     will just proceed without reloading.=C2=A0=C2=A0 You're seeing
>     =C2=A0 multiple attempts to reload, because those attempts are fail=
ing,
>     because there's something wrong with your
>     =C2=A0 USB host configuration.
>
>     If you're running this under WSL, there may be some USB
>     configuration issues that are causing your host controller
>     =C2=A0 to drop the device.
>
>     In terms of "which registers do what", you'll need to look at the
>     source code and FPGA code -- both of which are
>     =C2=A0 freely available.=C2=A0=C2=A0=C2=A0 There is no structured-w=
alkthrough document
>     available for FPGA programming on the B2xx
>     =C2=A0 series.=C2=A0 The RFNoC framework is not available for those=
 devices,
>     so any FPGA programming is done
>     =C2=A0 "bare metal".
>
>
>>
>>     On Tue, Feb 21, 2023 at 11:06 AM Marcus D. Leech
>>     <patchvonbraun@gmail.com> wrote:
>>
>>         On 21/02/2023 11:53, Maxim Belotserkovsky wrote:
>>         > Hi everyone. Got a brand-new B200-mini device, installed
>>         all the tools
>>         > etc. Ubuntu sees the device correctly once it's attached to
>>         the host:
>>         >
>>         > <home>:~$ lsusb
>>         > Bus 001 Device 004: ID 2500:0021 Ettus Research LLC USRP
>>         B200-mini
>>         > ...........
>>         >
>>         > However, any attempt to run initial UHD verification (as per
>>         >
>>         https://kb.ettus.com/Verifying_the_Operation_of_the_USRP_Using=
_UHD_and_GNU_Radio),
>>
>>         > for example, by running uhd_find_devices, fails in the
>>         following way :
>>         >
>>         > <home>:~$ uhd_find_devices
>>         > [INFO] [UHD] linux; GNU C++ version 11.3.0; Boost_107400;
>>         > UHD_4.4.0.0-0ubuntu1~jammy1
>>         > [INFO] [B200] Loading firmware image:
>>         > /usr/share/uhd/images/usrp_b200_fw.hex...
>>         > No UHD Devices Found
>>         > --------------------------
>>         > When I re-run 'lsusb' now, The 'B200' device no longer
>>         shows up:
>>         >
>>         > <home>:~$ lsusb
>>         > =C2=A0..................
>>         > -------------------------------------
>>         > At this point, it now requires power-cycling the=C2=A0B200 i=
n
>>         order for it
>>         > to be recognized by the OS again (which presumably re-loads
>>         the
>>         > default factory image that comes on the built-in flash)
>>         >
>>         > So, the problem is this: it appears as if in the process of
>>         loading
>>         > the firmware image (which comes as a part of running any of
>>         the UHD
>>         > utilities) the device loses connection to the system,
>>         causing it to no
>>         > longer enumerate on the OS, so that the subsequent steps (of
>>         > 'uhd_find_devices' in our example) can no longer be
>>         executed (due to
>>         > 'No UHD Devices found').
>>         >
>>         > The questions I have are these :
>>         > 1) Is this something generally known, with a known
>>         solution, or is
>>         > there something wrong with my particular system, the B200
>>         device,
>>         > driver installation etc.?
>>         > 2) Is the problem really caused by the FPGA image loading,
>>         or some
>>         > other non-FPGA component being disturbed causing the device =
to
>>         > disconnect? Is it possible the=C2=A0image attempted to be lo=
aded
>>         the wrong
>>         > one( usrp_b200_fw.hex incompatible with the hardware)?
>>         > 2) Is there a work-around? For example (preferred by me):
>>         can I run
>>         > UHD with the option passed to commands of not-loading the
>>         FPGA image
>>         > every time a command is executed? Say, a config file that
>>         UHD reads to
>>         > know what to do with the device? I want to be able to deal
>>         with the
>>         > B200 with whatever static image I've loaded up on it (be it
>>         the
>>         > factory image or some future custom=C2=A0image)
>>         >
>>         > Thank you.
>>         >
>>         >
>>         > _______________________________________________
>>         > USRP-users mailing list -- usrp-users@lists.ettus.com
>>         > To unsubscribe send an email to
>>         usrp-users-leave@lists.ettus.com
>>         What version of Ubuntu?=C2=A0 What type of hardware?
>>
>>         This might be that the USB controller on your host is dropped
>>         the device
>>         off the bus due to power-consumption.
>>
>>         The FPGA/Firmware are only loaded during *cold start* of the
>>         device--that is after a power cycle.=C2=A0=C2=A0 Once it is lo=
aded, as long
>>         =C2=A0=C2=A0 as it's plugged in, and you don't ask for a diffe=
rent FPGA
>>         image, it
>>         will continue to run with that image.
>>
>>         _______________________________________________
>>         USRP-users mailing list -- usrp-users@lists.ettus.com
>>         To unsubscribe send an email to usrp-users-leave@lists.ettus.c=
om
>>
>>
>>
>>     --=20
>>     Maxim=C2=A0Belotserkovsky=E2=80=8B=E2=80=8B=E2=80=8B=E2=80=8B
>>
>>     maxim@gotenna.com
>>
>>     <https://gotenna.com/>
>>
>
>
>
> --=20
> Maxim=C2=A0Belotserkovsky=E2=80=8B=E2=80=8B=E2=80=8B=E2=80=8B
>
> maxim@gotenna.com
>
> <https://gotenna.com/>
>

--------------ru0Qj2HcFnpvN6vmwvR6mb2W
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 21/02/2023 12:59, Maxim
      Belotserkovsky wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CA+7S2fbxFMpNYDuws0VjCgoTpjefiD3MRPdFc1ANtBLZaoEPBg@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">When I do dmesg following the initial 'cold
        connect' of B200, here is what=C2=A0I see:
        <div><br>
        </div>
        <div>[ 7487.879251] vhci_hcd vhci_hcd.0: pdev(0) rhport(0)
          sockfd(3)<br>
          [ 7487.879260] vhci_hcd vhci_hcd.0: devid(393220) speed(3)
          speed_str(high-speed)<br>
          [ 7487.879300] vhci_hcd vhci_hcd.0: Device attached<br>
          [ 7488.228451] usb 1-1: new high-speed USB device number 9
          using vhci_hcd<br>
          [ 7488.378208] usb 1-1: SetAddress Request (9) to port 0<br>
          [ 7488.413199] usb 1-1: New USB device found, idVendor=3D2500,
          idProduct=3D0021, bcdDevice=3D 1.00<br>
          [ 7488.413205] usb 1-1: New USB device strings: Mfr=3D1,
          Product=3D2, SerialNumber=3D3<br>
          [ 7488.413207] usb 1-1: Product: WestBridge<br>
          [ 7488.413208] usb 1-1: Manufacturer: Cypress<br>
          [ 7488.413210] usb 1-1: SerialNumber: 0000000004BE<br>
        </div>
        <div><br>
        </div>
        <div>Does this look=C2=A0correct? What bothers me here is the
          idProduct=3D0021, which, according to=C2=A0<a
href=3D"https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source=
_Toolchain_(UHD_and_GNU_Radio)_on_Linux"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">http=
s://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain_(=
UHD_and_GNU_Radio)_on_Linux</a>
          means a B210 device. Is this the kind of inconsistency that
          may be causing the image load to fail?</div>
        <div><br>
        </div>
        <div>I've tried running=C2=A0b2xx_fx3_utils, but any option I pas=
s
          into it, including the ones that are supposed jut query=C2=A0th=
e
          device, try loading up the image, so I can't get any more
          information about the state of b200 on power-up beyond what's
          showing up in dmesg. What can possibly be wrong with the USB
          configuration on my machine? Clearly, the dropping of the
          device ONLY happens once I try running any of the UHD
          utilities, but otherwise the connection seems rock-solid.=C2=A0=
</div>
        <div><br>
        </div>
        <div>I did notice this: after initial cold connect, when I run
          'usbipd wsl list' from Windows Power Shell, I see "6-4 =C2=A0
          =C2=A02500:0021 =C2=A0WestBridge" in the list; however, same co=
mmand
          issued after the botched image load using any of the UHD utils
          shows this instead: "7-4 =C2=A0 =C2=A02500:0021 =C2=A0Unknown",=
 as if the
          firmware load causes the USB interface chip (FX3?) to get
          bricked. I'm more inclined to think something is wrong with
          the device or the firmware coming from Ettus than anything
          going on with my host. <br>
        </div>
      </div>
    </blockquote>
    Something to check.=C2=A0=C2=A0 Make certain that you have a:<br>
    <br>
    60-uhd-host.rules<br>
    <br>
    In /usr/lib/udev/rules.d<br>
    <br>
    Without that (installed by the uhd-host package I think), udev will
    be unable to grant access to the USRP.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CA+7S2fbxFMpNYDuws0VjCgoTpjefiD3MRPdFc1ANtBLZaoEPBg@mail.gmai=
l.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 21, 2023 at 11:=
31
          AM Marcus D. Leech &lt;<a
            href=3D"mailto:patchvonbraun@gmail.com" moz-do-not-send=3D"tr=
ue"
            class=3D"moz-txt-link-freetext">patchvonbraun@gmail.com</a>&g=
t;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 21/02/2023 12:24, Maxim Belotserkovsky wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div>Thank you for your answer. I have Ubuntu 22.04
                  running under WSL.=C2=A0</div>
                <div><br>
                </div>
                <div>To your points:</div>
                <div>1) I have considered power consumption=C2=A0issue, s=
o
                  I've tried plugging in the b200 via a powered hub -
                  same problem. Try a different hub?</div>
                <div>2)ANY canned utility I've tried running
                  (uhd_usrp_probe, uhd_find_devices) starts off by
                  'Loading firmware image:'. Just prior to running
                  either command, the 'lsusb' in Ubuntu lists the device
                  correctly (as 'Ettus Research LLC USRP B200-mini'), so
                  presumably it is loaded with the factory image on
                  power-up, or this is a wrong presumption=C2=A0on my par=
t?</div>
                <div>3) USB interface is provided by a separate chip
                  inside b200 (not the FPGA firmware), right? Why is it
                  then that when image is being loaded the USB
                  connection gets dropped? Is unsustainable power draw
                  the only possibility?</div>
                <div>3) How do UHD utilities (say uhd_find_devices)
                  "know" that the device has not image on it? Say, I use
                  Xilinx program manager to load up the
                  provided=C2=A0firmware image, and then try calling up o=
ne
                  of the canned UHD utilities, are you saying the
                  utility will then no longer attempt to load up
                  anything because it can read some register on FPGA
                  that will tell it it already has an image loaded?<br>
                </div>
                <div><br>
                </div>
                <div>Perhaps there is a more detailed WIKI that explains
                  these points in more detail? All I see online is
                  fairly=C2=A0high level, hence my naive questions.</div>
                <div>Thanks!</div>
              </div>
            </blockquote>
            The UHD library queries the device to determine whether
            correct "stuff" has been loaded.=C2=A0=C2=A0=C2=A0=C2=A0 The =
firmware is for the<br>
            =C2=A0 FX3, and the FPGA image is for the FPGA.=C2=A0=C2=A0 T=
hey both need
            to be mutually compatible, and if UHD detects that there's<br=
>
            =C2=A0 either no images present, or that there's something
            "screwy" it will force reload of both the firmware (small)
            and<br>
            =C2=A0 the FPGA (much larger).=C2=A0 But once they're loaded,=
 UHD
            startup will just proceed without reloading.=C2=A0=C2=A0 You'=
re seeing<br>
            =C2=A0 multiple attempts to reload, because those attempts ar=
e
            failing, because there's something wrong with your<br>
            =C2=A0 USB host configuration.<br>
            <br>
            If you're running this under WSL, there may be some USB
            configuration issues that are causing your host controller<br=
>
            =C2=A0 to drop the device.<br>
            <br>
            In terms of "which registers do what", you'll need to look
            at the source code and FPGA code -- both of which are<br>
            =C2=A0 freely available.=C2=A0=C2=A0=C2=A0 There is no struct=
ured-walkthrough
            document available for FPGA programming on the B2xx<br>
            =C2=A0 series.=C2=A0 The RFNoC framework is not available for=
 those
            devices, so any FPGA programming is done<br>
            =C2=A0 "bare metal".<br>
            <br>
            <br>
            <blockquote type=3D"cite"><br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 21, 202=
3
                  at 11:06 AM Marcus D. Leech &lt;<a
                    href=3D"mailto:patchvonbraun@gmail.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">patchvonbraun@gmail.c=
om</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">On 21/02/2023
                  11:53, Maxim Belotserkovsky wrote:<br>
                  &gt; Hi everyone. Got a brand-new B200-mini device,
                  installed all the tools <br>
                  &gt; etc. Ubuntu sees the device correctly once it's
                  attached to the host:<br>
                  &gt;<br>
                  &gt; &lt;home&gt;:~$ lsusb<br>
                  &gt; Bus 001 Device 004: ID 2500:0021 Ettus Research
                  LLC USRP B200-mini<br>
                  &gt; ...........<br>
                  &gt;<br>
                  &gt; However, any attempt to run initial UHD
                  verification (as per <br>
                  &gt; <a
href=3D"https://kb.ettus.com/Verifying_the_Operation_of_the_USRP_Using_UH=
D_and_GNU_Radio"
                    rel=3D"noreferrer" target=3D"_blank"
                    moz-do-not-send=3D"true" class=3D"moz-txt-link-freete=
xt">https://kb.ettus.com/Verifying_the_Operation_of_the_USRP_Using_UHD_an=
d_GNU_Radio</a>),
                  <br>
                  &gt; for example, by running uhd_find_devices, fails
                  in the following way :<br>
                  &gt;<br>
                  &gt; &lt;home&gt;:~$ uhd_find_devices<br>
                  &gt; [INFO] [UHD] linux; GNU C++ version 11.3.0;
                  Boost_107400; <br>
                  &gt; UHD_4.4.0.0-0ubuntu1~jammy1<br>
                  &gt; [INFO] [B200] Loading firmware image: <br>
                  &gt; /usr/share/uhd/images/usrp_b200_fw.hex...<br>
                  &gt; No UHD Devices Found<br>
                  &gt; --------------------------<br>
                  &gt; When I re-run 'lsusb' now, The 'B200' device no
                  longer shows up:<br>
                  &gt;<br>
                  &gt; &lt;home&gt;:~$ lsusb<br>
                  &gt; =C2=A0..................<br>
                  &gt; -------------------------------------<br>
                  &gt; At this point, it now requires power-cycling
                  the=C2=A0B200 in order for it <br>
                  &gt; to be recognized by the OS again (which
                  presumably re-loads the <br>
                  &gt; default factory image that comes on the built-in
                  flash)<br>
                  &gt;<br>
                  &gt; So, the problem is this: it appears as if in the
                  process of loading <br>
                  &gt; the firmware image (which comes as a part of
                  running any of the UHD <br>
                  &gt; utilities) the device loses connection to the
                  system, causing it to no <br>
                  &gt; longer enumerate on the OS, so that the
                  subsequent steps (of <br>
                  &gt; 'uhd_find_devices' in our example) can no longer
                  be executed (due to <br>
                  &gt; 'No UHD Devices found').<br>
                  &gt;<br>
                  &gt; The questions I have are these :<br>
                  &gt; 1) Is this something generally known, with a
                  known solution, or is <br>
                  &gt; there something wrong with my particular system,
                  the B200 device, <br>
                  &gt; driver installation etc.?<br>
                  &gt; 2) Is the problem really caused by the FPGA image
                  loading, or some <br>
                  &gt; other non-FPGA component being disturbed causing
                  the device to <br>
                  &gt; disconnect? Is it possible the=C2=A0image attempte=
d to
                  be loaded the wrong <br>
                  &gt; one( usrp_b200_fw.hex incompatible with the
                  hardware)?<br>
                  &gt; 2) Is there a work-around? For example (preferred
                  by me): can I run <br>
                  &gt; UHD with the option passed to commands of
                  not-loading the FPGA image <br>
                  &gt; every time a command is executed? Say, a config
                  file that UHD reads to <br>
                  &gt; know what to do with the device? I want to be
                  able to deal with the <br>
                  &gt; B200 with whatever static image I've loaded up on
                  it (be it the <br>
                  &gt; factory image or some future custom=C2=A0image)<br=
>
                  &gt;<br>
                  &gt; Thank you.<br>
                  &gt;<br>
                  &gt;<br>
                  &gt; _______________________________________________<br=
>
                  &gt; USRP-users mailing list -- <a
                    href=3D"mailto:usrp-users@lists.ettus.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">usrp-users@lists.ettu=
s.com</a><br>
                  &gt; To unsubscribe send an email to <a
                    href=3D"mailto:usrp-users-leave@lists.ettus.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">usrp-users-leave@list=
s.ettus.com</a><br>
                  What version of Ubuntu?=C2=A0 What type of hardware?<br=
>
                  <br>
                  This might be that the USB controller on your host is
                  dropped the device <br>
                  off the bus due to power-consumption.<br>
                  <br>
                  The FPGA/Firmware are only loaded during *cold start*
                  of the <br>
                  device--that is after a power cycle.=C2=A0=C2=A0 Once i=
t is
                  loaded, as long<br>
                  =C2=A0=C2=A0 as it's plugged in, and you don't ask for =
a
                  different FPGA image, it <br>
                  will continue to run with that image.<br>
                  <br>
                  _______________________________________________<br>
                  USRP-users mailing list -- <a
                    href=3D"mailto:usrp-users@lists.ettus.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">usrp-users@lists.ettu=
s.com</a><br>
                  To unsubscribe send an email to <a
                    href=3D"mailto:usrp-users-leave@lists.ettus.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">usrp-users-leave@list=
s.ettus.com</a><br>
                </blockquote>
              </div>
              <br clear=3D"all">
              <div><br>
              </div>
              -- <br>
              <div dir=3D"ltr">
                <div dir=3D"ltr" style=3D"font-size:1px;direction:ltr">
                  <table style=3D"width:100%;font-size:1px"
                    cellspacing=3D"0" cellpadding=3D"0" border=3D"0">
                    <tbody>
                      <tr style=3D"font-size:0px">
                        <td style=3D"vertical-align:top" align=3D"left">
                          <table style=3D"width:0px;font-size:0px"
                            cellspacing=3D"0" cellpadding=3D"0" border=3D=
"0">
                            <tbody>
                              <tr style=3D"font-size:0px">
                                <td align=3D"left">
                                  <table
style=3D"font-size:0px;color:rgb(0,0,1);font-style:normal;font-weight:700=
;white-space:nowrap"
                                    cellspacing=3D"0" cellpadding=3D"0"
                                    border=3D"0">
                                    <tbody>
                                      <tr style=3D"font-size:13.33px">
                                        <td
                                          style=3D"vertical-align:top;fon=
t-family:Arial"
                                          align=3D"left">Maxim=C2=A0Belot=
serkovsky<span
style=3D"font-family:remialcxesans;font-size:1px;color:rgb(255,255,255);l=
ine-height:1px">=E2=80=8B<span
style=3D"font-family:template-aLaXcd5FEeqLAwANOhMLNA">=E2=80=8B</span><sp=
an
                                              style=3D"font-family:zone-1=
">=E2=80=8B</span><span
style=3D"font-family:zones-AQ">=E2=80=8B</span></span></td>
                                      </tr>
                                    </tbody>
                                  </table>
                                </td>
                              </tr>
                            </tbody>
                          </table>
                        </td>
                      </tr>
                      <tr style=3D"font-size:0px">
                        <td style=3D"vertical-align:top" align=3D"left">
                          <table style=3D"font-size:0px" cellspacing=3D"0=
"
                            cellpadding=3D"0" border=3D"0">
                            <tbody>
                              <tr style=3D"font-size:0px">
                                <td style=3D"padding:0px 0px
                                  0.7px;vertical-align:top" align=3D"left=
">
                                  <table
style=3D"font-size:0px;color:rgb(147,149,152);font-style:normal;font-weig=
ht:400;white-space:nowrap"
                                    cellspacing=3D"0" cellpadding=3D"0"
                                    border=3D"0">
                                    <tbody>
                                      <tr style=3D"font-size:13.33px">
                                        <td
                                          style=3D"vertical-align:top;fon=
t-family:Arial"
                                          align=3D"left"><a
                                            href=3D"mailto:maxim@gotenna.=
com"
                                            target=3D"_blank"
                                            moz-do-not-send=3D"true"
                                            class=3D"moz-txt-link-freetex=
t">maxim@gotenna.com</a></td>
                                      </tr>
                                    </tbody>
                                  </table>
                                </td>
                              </tr>
                            </tbody>
                          </table>
                        </td>
                      </tr>
                      <tr style=3D"font-size:0px">
                        <td style=3D"vertical-align:top" align=3D"left">
                          <table
                            style=3D"font-size:0px;line-height:normal"
                            cellspacing=3D"0" cellpadding=3D"0" border=3D=
"0">
                            <tbody>
                              <tr style=3D"font-size:0px">
                                <td style=3D"padding:1px 0px
                                  0px;vertical-align:top" align=3D"left">=
<a
                                    href=3D"https://gotenna.com/"
                                    style=3D"text-decoration:none"
                                    target=3D"_blank"
                                    moz-do-not-send=3D"true"><img
src=3D"https://gotenna-marketing-files.s3.amazonaws.com/gotenna-email-sig=
nature.png"
                                      alt=3D"" style=3D"height: 34px;
                                      min-height: 34px; max-height:
                                      34px; font-size: 0px;"
                                      moz-do-not-send=3D"true" height=3D"=
34"
                                      border=3D"0"></a></td>
                              </tr>
                            </tbody>
                          </table>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </blockquote>
            <br>
          </div>
        </blockquote>
      </div>
      <br clear=3D"all">
      <div><br>
      </div>
      -- <br>
      <div dir=3D"ltr" class=3D"gmail_signature">
        <div dir=3D"ltr" style=3D"font-size:1px;direction:ltr">
          <table style=3D"width:100%;font-size:1px" cellspacing=3D"0"
            cellpadding=3D"0" border=3D"0">
            <tbody>
              <tr style=3D"font-size:0px">
                <td style=3D"vertical-align:top" align=3D"left">
                  <table style=3D"width:0px;font-size:0px" cellspacing=3D=
"0"
                    cellpadding=3D"0" border=3D"0">
                    <tbody>
                      <tr style=3D"font-size:0px">
                        <td align=3D"left">
                          <table
style=3D"font-size:0px;color:rgb(0,0,1);font-style:normal;font-weight:700=
;white-space:nowrap"
                            cellspacing=3D"0" cellpadding=3D"0" border=3D=
"0">
                            <tbody>
                              <tr style=3D"font-size:13.33px">
                                <td
                                  style=3D"vertical-align:top;font-family=
:Arial"
                                  align=3D"left">Maxim=C2=A0Belotserkovsk=
y<span
style=3D"font-family:remialcxesans;font-size:1px;color:rgb(255,255,255);l=
ine-height:1px">=E2=80=8B<span
style=3D"font-family:template-aLaXcd5FEeqLAwANOhMLNA">=E2=80=8B</span><sp=
an
                                      style=3D"font-family:zone-1">=E2=80=
=8B</span><span
                                      style=3D"font-family:zones-AQ">=E2=80=
=8B</span></span></td>
                              </tr>
                            </tbody>
                          </table>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </td>
              </tr>
              <tr style=3D"font-size:0px">
                <td style=3D"vertical-align:top" align=3D"left">
                  <table style=3D"font-size:0px" cellspacing=3D"0"
                    cellpadding=3D"0" border=3D"0">
                    <tbody>
                      <tr style=3D"font-size:0px">
                        <td style=3D"padding:0px 0px
                          0.7px;vertical-align:top" align=3D"left">
                          <table
style=3D"font-size:0px;color:rgb(147,149,152);font-style:normal;font-weig=
ht:400;white-space:nowrap"
                            cellspacing=3D"0" cellpadding=3D"0" border=3D=
"0">
                            <tbody>
                              <tr style=3D"font-size:13.33px">
                                <td
                                  style=3D"vertical-align:top;font-family=
:Arial"
                                  align=3D"left"><a
                                    href=3D"mailto:maxim@gotenna.com"
                                    target=3D"_blank"
                                    moz-do-not-send=3D"true"
                                    class=3D"moz-txt-link-freetext">maxim=
@gotenna.com</a></td>
                              </tr>
                            </tbody>
                          </table>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </td>
              </tr>
              <tr style=3D"font-size:0px">
                <td style=3D"vertical-align:top" align=3D"left">
                  <table style=3D"font-size:0px;line-height:normal"
                    cellspacing=3D"0" cellpadding=3D"0" border=3D"0">
                    <tbody>
                      <tr style=3D"font-size:0px">
                        <td style=3D"padding:1px 0px
                          0px;vertical-align:top" align=3D"left"><a
                            href=3D"https://gotenna.com/"
                            style=3D"text-decoration:none" target=3D"_bla=
nk"
                            moz-do-not-send=3D"true"><img
src=3D"https://gotenna-marketing-files.s3.amazonaws.com/gotenna-email-sig=
nature.png"
                              alt=3D"" style=3D"height: 34px; min-height:
                              34px; max-height: 34px; font-size: 0px;"
                              moz-do-not-send=3D"true" height=3D"34"
                              border=3D"0"></a></td>
                      </tr>
                    </tbody>
                  </table>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------ru0Qj2HcFnpvN6vmwvR6mb2W--

--===============2643618661121054599==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2643618661121054599==--
