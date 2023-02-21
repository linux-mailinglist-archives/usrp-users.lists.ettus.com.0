Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0374A69E607
	for <lists+usrp-users@lfdr.de>; Tue, 21 Feb 2023 18:31:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D70EC380B95
	for <lists+usrp-users@lfdr.de>; Tue, 21 Feb 2023 12:31:46 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677000706; bh=/Q4sdtMcdpKvBSJp03cUUCulej7ZqvpTmbl/x7FMPs4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=vB/sjGfMp1KPG1L8dc/npkdoRQp+9fXQHghTl5O7EqtpNNHOkiTehOd28QFF5ecQP
	 Dnnj5y92U8hwKwzOu5vTs6a65VqeL08EmvoazHBDL7FyU9RQseE35Q0JEH1TF5utd6
	 rphCyZSeKpbMGOC5Z6RQ7iAj6vmn+EJBFPAVA6hsxhN6kievUUQgS7uXEFMaIGNznK
	 z+TleZQFT66hrrY7a834KeU2vPTCx/nhyFumEzCCwsehO4rdY55luiE5e6sUQ9DUKD
	 dD4po+98o61/42bb3lGGnvwhLARbBM16jhFxwNMEhiYt9HM2SSIWmDl2XHMVqCEwes
	 /7JZBeoY3SqkA==
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	by mm2.emwd.com (Postfix) with ESMTPS id D1B58380A71
	for <usrp-users@lists.ettus.com>; Tue, 21 Feb 2023 12:31:08 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="G0sOcEi5";
	dkim-atps=neutral
Received: by mail-qt1-f171.google.com with SMTP id d7so5076222qtr.12
        for <usrp-users@lists.ettus.com>; Tue, 21 Feb 2023 09:31:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Cknmen2GH2+aVR4ypKQmyCytQ8pp7Wej7cZaQSXpzpM=;
        b=G0sOcEi5/lq3SRC+uqdHma2BMMMJyEEsAG1z+/yoBNQ8BwofJqJqrkcLk5H8hB5ScH
         zslC/5l75fhfeJf0NlZ1kHgRUFwi9SotPAyF4QoCozAzGdZ39lJz+S+qSL6FibFtRlMk
         yrto/Sue0Q4I1WXPSWpAryn/klqx9ZdR9s/xdApPTqOelPvA/7V0HS0/aZEIsaWkaChT
         ZJ6m7MgLhXn7RCu7zl62Avr3CC15DYK/DdfEVqcfU/4sBtYFQOVZOtBXP/jdqEiqEbQx
         JwZnktjlVK+xB/KjOhdYi55elQNoznlr43LkTf4nsR3ozPrQddbzAkj9L3cezQWrN2iC
         DDBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Cknmen2GH2+aVR4ypKQmyCytQ8pp7Wej7cZaQSXpzpM=;
        b=aqhbUiY/dLTzuaUH9ksFskQSFVODnRzEUza7uSjlbPyoMSS4GrsONYqTB7SIv+fZr0
         pZm6IAclX8/Ps2Ypiit+ZmwVUA8GUxJeaHSnuhCI0cjc1XzYhLTxZMVsZepjEjbM/5ec
         HjelSc+JYHHcjumvg1Hz86yfdpQil7H/0pmCP9zdiy86LUAkNCMFzoO7F/89asasH8oQ
         OeIA+bXopVbhzFDUPo+ywak48DLDyd9zhpy46//P1RZIp/qamptifDJA0W9qkFN6Z8Px
         JJdgzNNqaJ5zKC74Al1xvI/6+Qn/CaBJwOmbhFZa9Jpo24nJDB6azKUe7dMzOZvfy9GD
         J9xA==
X-Gm-Message-State: AO0yUKVZkwrhWK7GfKPDfn/vBy0Wslsf3iS8KhDN+bYyzpHJWwqDQLSP
	a1HsUYcYrB5lf6ohjW2FpCQerkKPfs0=
X-Google-Smtp-Source: AK7set/Qi1IDLBgwFoxNkMzZdNrERECsYAh91140C6QMdOKxKV70e3L0dwvLzYU6XErfu/9zB93FCA==
X-Received: by 2002:a05:622a:188b:b0:3b9:bd75:9415 with SMTP id v11-20020a05622a188b00b003b9bd759415mr26898573qtc.41.1677000667972;
        Tue, 21 Feb 2023 09:31:07 -0800 (PST)
Received: from [192.168.2.167] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id p20-20020ac84094000000b003b9a573aec6sm606693qtl.70.2023.02.21.09.31.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Feb 2023 09:31:07 -0800 (PST)
Message-ID: <ce1d3d13-4b41-33ca-4f8f-aad8a3973082@gmail.com>
Date: Tue, 21 Feb 2023 12:31:07 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: Maxim Belotserkovsky <maxim@gotenna.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <CA+7S2faCOt9o1wmpZsVkBMu-mrjuNH4R84GVtGWO1A61Q-uyUA@mail.gmail.com>
 <42c2e790-7e4a-c73e-a342-772664fa8d0c@gmail.com>
 <CA+7S2fbinsSu6eC4O_ES_yCPh8RRicaj7ZU7Jpz6xBHJMqV-=w@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CA+7S2fbinsSu6eC4O_ES_yCPh8RRicaj7ZU7Jpz6xBHJMqV-=w@mail.gmail.com>
Message-ID-Hash: GIOL3JR3MK6U3ZXXXNZJSWCWBGRC6OZV
X-Message-ID-Hash: GIOL3JR3MK6U3ZXXXNZJSWCWBGRC6OZV
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problem verifying B200 device
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GIOL3JR3MK6U3ZXXXNZJSWCWBGRC6OZV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5439505450591890165=="

This is a multi-part message in MIME format.
--===============5439505450591890165==
Content-Type: multipart/alternative;
 boundary="------------GzFRX971LpNkR00qHfG4ZATW"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------GzFRX971LpNkR00qHfG4ZATW
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 21/02/2023 12:24, Maxim Belotserkovsky wrote:
> Thank you for your answer. I have Ubuntu 22.04 running under WSL.
>
> To your points:
> 1) I have considered power consumption=C2=A0issue, so I've tried pluggi=
ng=20
> in the b200 via a powered hub - same problem. Try a different hub?
> 2)ANY canned utility I've tried running (uhd_usrp_probe,=20
> uhd_find_devices) starts off by 'Loading firmware image:'. Just prior=20
> to running either command, the 'lsusb' in Ubuntu lists the device=20
> correctly (as 'Ettus Research LLC USRP B200-mini'), so presumably it=20
> is loaded with the factory image on power-up, or this is a wrong=20
> presumption=C2=A0on my part?
> 3) USB interface is provided by a separate chip inside b200 (not the=20
> FPGA firmware), right? Why is it then that when image is being loaded=20
> the USB connection gets dropped? Is unsustainable power draw the only=20
> possibility?
> 3) How do UHD utilities (say uhd_find_devices) "know" that the device=20
> has not image on it? Say, I use Xilinx program manager to load up the=20
> provided=C2=A0firmware image, and then try calling up one of the canned=
 UHD=20
> utilities, are you saying the utility will then no longer attempt to=20
> load up anything because it can read some register on FPGA that will=20
> tell it it already has an image loaded?
>
> Perhaps there is a more detailed WIKI that explains these points in=20
> more detail? All I see online is fairly=C2=A0high level, hence my naive=
=20
> questions.
> Thanks!
The UHD library queries the device to determine whether correct "stuff"=20
has been loaded.=C2=A0=C2=A0=C2=A0=C2=A0 The firmware is for the
 =C2=A0 FX3, and the FPGA image is for the FPGA.=C2=A0=C2=A0 They both ne=
ed to be=20
mutually compatible, and if UHD detects that there's
 =C2=A0 either no images present, or that there's something "screwy" it w=
ill=20
force reload of both the firmware (small) and
 =C2=A0 the FPGA (much larger).=C2=A0 But once they're loaded, UHD startu=
p will=20
just proceed without reloading.=C2=A0=C2=A0 You're seeing
 =C2=A0 multiple attempts to reload, because those attempts are failing,=20
because there's something wrong with your
 =C2=A0 USB host configuration.

If you're running this under WSL, there may be some USB configuration=20
issues that are causing your host controller
 =C2=A0 to drop the device.

In terms of "which registers do what", you'll need to look at the source=20
code and FPGA code -- both of which are
 =C2=A0 freely available.=C2=A0=C2=A0=C2=A0 There is no structured-walkth=
rough document=20
available for FPGA programming on the B2xx
 =C2=A0 series.=C2=A0 The RFNoC framework is not available for those devi=
ces, so=20
any FPGA programming is done
 =C2=A0 "bare metal".


>
> On Tue, Feb 21, 2023 at 11:06 AM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 21/02/2023 11:53, Maxim Belotserkovsky wrote:
>     > Hi everyone. Got a brand-new B200-mini device, installed all the
>     tools
>     > etc. Ubuntu sees the device correctly once it's attached to the
>     host:
>     >
>     > <home>:~$ lsusb
>     > Bus 001 Device 004: ID 2500:0021 Ettus Research LLC USRP B200-min=
i
>     > ...........
>     >
>     > However, any attempt to run initial UHD verification (as per
>     >
>     https://kb.ettus.com/Verifying_the_Operation_of_the_USRP_Using_UHD_=
and_GNU_Radio),
>
>     > for example, by running uhd_find_devices, fails in the following
>     way :
>     >
>     > <home>:~$ uhd_find_devices
>     > [INFO] [UHD] linux; GNU C++ version 11.3.0; Boost_107400;
>     > UHD_4.4.0.0-0ubuntu1~jammy1
>     > [INFO] [B200] Loading firmware image:
>     > /usr/share/uhd/images/usrp_b200_fw.hex...
>     > No UHD Devices Found
>     > --------------------------
>     > When I re-run 'lsusb' now, The 'B200' device no longer shows up:
>     >
>     > <home>:~$ lsusb
>     > =C2=A0..................
>     > -------------------------------------
>     > At this point, it now requires power-cycling the=C2=A0B200 in ord=
er
>     for it
>     > to be recognized by the OS again (which presumably re-loads the
>     > default factory image that comes on the built-in flash)
>     >
>     > So, the problem is this: it appears as if in the process of loadi=
ng
>     > the firmware image (which comes as a part of running any of the U=
HD
>     > utilities) the device loses connection to the system, causing it
>     to no
>     > longer enumerate on the OS, so that the subsequent steps (of
>     > 'uhd_find_devices' in our example) can no longer be executed
>     (due to
>     > 'No UHD Devices found').
>     >
>     > The questions I have are these :
>     > 1) Is this something generally known, with a known solution, or i=
s
>     > there something wrong with my particular system, the B200 device,
>     > driver installation etc.?
>     > 2) Is the problem really caused by the FPGA image loading, or som=
e
>     > other non-FPGA component being disturbed causing the device to
>     > disconnect? Is it possible the=C2=A0image attempted to be loaded =
the
>     wrong
>     > one( usrp_b200_fw.hex incompatible with the hardware)?
>     > 2) Is there a work-around? For example (preferred by me): can I r=
un
>     > UHD with the option passed to commands of not-loading the FPGA
>     image
>     > every time a command is executed? Say, a config file that UHD
>     reads to
>     > know what to do with the device? I want to be able to deal with t=
he
>     > B200 with whatever static image I've loaded up on it (be it the
>     > factory image or some future custom=C2=A0image)
>     >
>     > Thank you.
>     >
>     >
>     > _______________________________________________
>     > USRP-users mailing list -- usrp-users@lists.ettus.com
>     > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>     What version of Ubuntu?=C2=A0 What type of hardware?
>
>     This might be that the USB controller on your host is dropped the
>     device
>     off the bus due to power-consumption.
>
>     The FPGA/Firmware are only loaded during *cold start* of the
>     device--that is after a power cycle.=C2=A0=C2=A0 Once it is loaded,=
 as long
>     =C2=A0=C2=A0 as it's plugged in, and you don't ask for a different =
FPGA
>     image, it
>     will continue to run with that image.
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
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

--------------GzFRX971LpNkR00qHfG4ZATW
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 21/02/2023 12:24, Maxim
      Belotserkovsky wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CA+7S2fbinsSu6eC4O_ES_yCPh8RRicaj7ZU7Jpz6xBHJMqV-=3Dw@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div>Thank you for your answer. I have Ubuntu 22.04 running
          under WSL.=C2=A0</div>
        <div><br>
        </div>
        <div>To your points:</div>
        <div>1) I have considered power consumption=C2=A0issue, so I've t=
ried
          plugging in the b200 via a powered hub - same problem. Try a
          different hub?</div>
        <div>2)ANY canned utility I've tried running (uhd_usrp_probe,
          uhd_find_devices) starts off by 'Loading firmware image:'.
          Just prior to running either command, the 'lsusb' in Ubuntu
          lists the device correctly (as 'Ettus Research LLC USRP
          B200-mini'), so presumably it is loaded with the factory image
          on power-up, or this is a wrong presumption=C2=A0on my part?</d=
iv>
        <div>3) USB interface is provided by a separate chip inside b200
          (not the FPGA firmware), right? Why is it then that when image
          is being loaded the USB connection gets dropped? Is
          unsustainable power draw the only possibility?</div>
        <div>3) How do UHD utilities (say uhd_find_devices) "know" that
          the device has not image on it? Say, I use Xilinx program
          manager to load up the provided=C2=A0firmware image, and then t=
ry
          calling up one of the canned UHD utilities, are you saying the
          utility will then no longer attempt to load up anything
          because it can read some register on FPGA that will tell it it
          already has an image loaded?<br>
        </div>
        <div><br>
        </div>
        <div>Perhaps there is a more detailed WIKI that explains these
          points in more detail? All I see online is fairly=C2=A0high lev=
el,
          hence my naive questions.</div>
        <div>Thanks!</div>
      </div>
    </blockquote>
    The UHD library queries the device to determine whether correct
    "stuff" has been loaded.=C2=A0=C2=A0=C2=A0=C2=A0 The firmware is for =
the<br>
    =C2=A0 FX3, and the FPGA image is for the FPGA.=C2=A0=C2=A0 They both=
 need to be
    mutually compatible, and if UHD detects that there's<br>
    =C2=A0 either no images present, or that there's something "screwy" i=
t
    will force reload of both the firmware (small) and<br>
    =C2=A0 the FPGA (much larger).=C2=A0 But once they're loaded, UHD sta=
rtup will
    just proceed without reloading.=C2=A0=C2=A0 You're seeing<br>
    =C2=A0 multiple attempts to reload, because those attempts are failin=
g,
    because there's something wrong with your<br>
    =C2=A0 USB host configuration.<br>
    <br>
    If you're running this under WSL, there may be some USB
    configuration issues that are causing your host controller<br>
    =C2=A0 to drop the device.<br>
    <br>
    In terms of "which registers do what", you'll need to look at the
    source code and FPGA code -- both of which are<br>
    =C2=A0 freely available.=C2=A0=C2=A0=C2=A0 There is no structured-wal=
kthrough document
    available for FPGA programming on the B2xx<br>
    =C2=A0 series.=C2=A0 The RFNoC framework is not available for those d=
evices,
    so any FPGA programming is done<br>
    =C2=A0 "bare metal".<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CA+7S2fbinsSu6eC4O_ES_yCPh8RRicaj7ZU7Jpz6xBHJMqV-=3Dw@mail.gm=
ail.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 21, 2023 at 11:=
06
          AM Marcus D. Leech &lt;<a
            href=3D"mailto:patchvonbraun@gmail.com" moz-do-not-send=3D"tr=
ue"
            class=3D"moz-txt-link-freetext">patchvonbraun@gmail.com</a>&g=
t;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
On
          21/02/2023 11:53, Maxim Belotserkovsky wrote:<br>
          &gt; Hi everyone. Got a brand-new B200-mini device, installed
          all the tools <br>
          &gt; etc. Ubuntu sees the device correctly once it's attached
          to the host:<br>
          &gt;<br>
          &gt; &lt;home&gt;:~$ lsusb<br>
          &gt; Bus 001 Device 004: ID 2500:0021 Ettus Research LLC USRP
          B200-mini<br>
          &gt; ...........<br>
          &gt;<br>
          &gt; However, any attempt to run initial UHD verification (as
          per <br>
          &gt; <a
href=3D"https://kb.ettus.com/Verifying_the_Operation_of_the_USRP_Using_UH=
D_and_GNU_Radio"
            rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">https://kb.ettus.com/Verifyin=
g_the_Operation_of_the_USRP_Using_UHD_and_GNU_Radio</a>),
          <br>
          &gt; for example, by running uhd_find_devices, fails in the
          following way :<br>
          &gt;<br>
          &gt; &lt;home&gt;:~$ uhd_find_devices<br>
          &gt; [INFO] [UHD] linux; GNU C++ version 11.3.0; Boost_107400;
          <br>
          &gt; UHD_4.4.0.0-0ubuntu1~jammy1<br>
          &gt; [INFO] [B200] Loading firmware image: <br>
          &gt; /usr/share/uhd/images/usrp_b200_fw.hex...<br>
          &gt; No UHD Devices Found<br>
          &gt; --------------------------<br>
          &gt; When I re-run 'lsusb' now, The 'B200' device no longer
          shows up:<br>
          &gt;<br>
          &gt; &lt;home&gt;:~$ lsusb<br>
          &gt; =C2=A0..................<br>
          &gt; -------------------------------------<br>
          &gt; At this point, it now requires power-cycling the=C2=A0B200=
 in
          order for it <br>
          &gt; to be recognized by the OS again (which presumably
          re-loads the <br>
          &gt; default factory image that comes on the built-in flash)<br=
>
          &gt;<br>
          &gt; So, the problem is this: it appears as if in the process
          of loading <br>
          &gt; the firmware image (which comes as a part of running any
          of the UHD <br>
          &gt; utilities) the device loses connection to the system,
          causing it to no <br>
          &gt; longer enumerate on the OS, so that the subsequent steps
          (of <br>
          &gt; 'uhd_find_devices' in our example) can no longer be
          executed (due to <br>
          &gt; 'No UHD Devices found').<br>
          &gt;<br>
          &gt; The questions I have are these :<br>
          &gt; 1) Is this something generally known, with a known
          solution, or is <br>
          &gt; there something wrong with my particular system, the B200
          device, <br>
          &gt; driver installation etc.?<br>
          &gt; 2) Is the problem really caused by the FPGA image
          loading, or some <br>
          &gt; other non-FPGA component being disturbed causing the
          device to <br>
          &gt; disconnect? Is it possible the=C2=A0image attempted to be
          loaded the wrong <br>
          &gt; one( usrp_b200_fw.hex incompatible with the hardware)?<br>
          &gt; 2) Is there a work-around? For example (preferred by me):
          can I run <br>
          &gt; UHD with the option passed to commands of not-loading the
          FPGA image <br>
          &gt; every time a command is executed? Say, a config file that
          UHD reads to <br>
          &gt; know what to do with the device? I want to be able to
          deal with the <br>
          &gt; B200 with whatever static image I've loaded up on it (be
          it the <br>
          &gt; factory image or some future custom=C2=A0image)<br>
          &gt;<br>
          &gt; Thank you.<br>
          &gt;<br>
          &gt;<br>
          &gt; _______________________________________________<br>
          &gt; USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp=
-users@lists.ettus.com</a><br>
          &gt; To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.=
com</a><br>
          What version of Ubuntu?=C2=A0 What type of hardware?<br>
          <br>
          This might be that the USB controller on your host is dropped
          the device <br>
          off the bus due to power-consumption.<br>
          <br>
          The FPGA/Firmware are only loaded during *cold start* of the <b=
r>
          device--that is after a power cycle.=C2=A0=C2=A0 Once it is loa=
ded, as
          long<br>
          =C2=A0=C2=A0 as it's plugged in, and you don't ask for a differ=
ent FPGA
          image, it <br>
          will continue to run with that image.<br>
          <br>
          _______________________________________________<br>
          USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp=
-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.=
com</a><br>
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

--------------GzFRX971LpNkR00qHfG4ZATW--

--===============5439505450591890165==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5439505450591890165==--
