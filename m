Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 66E523EAD68
	for <lists+usrp-users@lfdr.de>; Fri, 13 Aug 2021 00:54:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 355E53844A2
	for <lists+usrp-users@lfdr.de>; Thu, 12 Aug 2021 18:54:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=student.nmt.edu header.i=@student.nmt.edu header.b="cq4EBvqp";
	dkim-atps=neutral
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 5F1A8383676
	for <usrp-users@lists.ettus.com>; Thu, 12 Aug 2021 18:54:13 -0400 (EDT)
Received: by mail-ot1-f50.google.com with SMTP id v10-20020a9d604a0000b02904fa9613b53dso9833199otj.6
        for <usrp-users@lists.ettus.com>; Thu, 12 Aug 2021 15:54:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=student.nmt.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QQhdzo40yNHNCf03JO0fbT6ol9iWmnASCJajUauH/kc=;
        b=cq4EBvqp68owZ6L4VwUFv4obwNFT9EdBKaH3SatfZuHpyMjLLQDw7YhOSj1xlbzbf8
         h7JNG9mLM+E9aEMYMylQKQ5OHOBgsGqgLu3PuXpKfDxUiTiw9Mxc5EZtJn+HWKZz/VWG
         +5S8eE3M+3lYPQPjUmnVoLi1njcr0lofY2W+Q8GsJ1wcAgWt5iiYqYS7P3dBkzusm1Cn
         iHdvOwkuYuXctcq4OxowMxFAC+m560hsfSw/ynK8mvSthtVzt8s2ILCTY5xlPnvv1jWG
         xnYWarYpXzOD41sJMwlhT6/z6T+Y40Z8muvneX3ScUtox8yhzN4T/FKTHzFVyJNbyj29
         ZNQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QQhdzo40yNHNCf03JO0fbT6ol9iWmnASCJajUauH/kc=;
        b=Hno1ZzzqhXW9TReOjup1+/CnQ8QzqTYnR4NqdSlFnLsjHq67bGXU0i679BNGrJPK2J
         qyPVLvKMlW+hDUYiPt2qoQ/GpZcZ07YvGaev7o1je53/n6+3bQoCfLrpGfhHzyPp3aUv
         HUf/rclbM/PDfFFvnMJ60Ph97uz9HbGkSreCjDD4/HuSSQx91JZoAJp0NsUs0PtcPI/I
         r0wk2lFXR3rjGIEDi6RC49r8EzAMowWy70bbFrg2DVLOVa3/yMC5EyY0+ijNIEJDYOUr
         /9DGHQss/3Jmc1DhRky33noQmwkWB3hfDod1XhmF4SkCNda6JCcxX+Mz4DwzaAL4tZrU
         XY+w==
X-Gm-Message-State: AOAM532GRyynUmCeEOUWnybP8Fxo1Kn/1twxTuEsrQO+xYeor9mvYGIl
	0sD/VQbZ49eMZE8pOcF4Mj+UDMbBnRZzPw1wQCJmFg==
X-Google-Smtp-Source: ABdhPJyOCgr14wTNQDZ8UKyH/L0UNqif3w0FmUfjYRnqEp7plb5taDGhkJDCiNPlJqCgmXwTrlVxpw035wAQDy7zhlg=
X-Received: by 2002:a05:6830:3145:: with SMTP id c5mr5225322ots.245.1628808852582;
 Thu, 12 Aug 2021 15:54:12 -0700 (PDT)
MIME-Version: 1.0
References: <CABnzEf4cBntcTqQB=GNoNohvJAXPLrkcpVpu+O8WLRFX=MQp1A@mail.gmail.com>
 <61146653.5060607@gmail.com>
In-Reply-To: <61146653.5060607@gmail.com>
From: Bobbi Taylor <bobbi.taylor@student.nmt.edu>
Date: Thu, 12 Aug 2021 16:53:37 -0600
Message-ID: <CABnzEf7HPrrameL7u+FgH4szNJ2+HO_q6H3+Rdm5taNf=n5sMQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: FGUT2GDJH3ZSMUEXSKTE4MDH2SVIJK6F
X-Message-ID-Hash: FGUT2GDJH3ZSMUEXSKTE4MDH2SVIJK6F
X-MailFrom: bobbi.taylor@student.nmt.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD no devices found
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FGUT2GDJH3ZSMUEXSKTE4MDH2SVIJK6F/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6837924895256515612=="

--===============6837924895256515612==
Content-Type: multipart/alternative; boundary="00000000000010cb3d05c9649d86"

--00000000000010cb3d05c9649d86
Content-Type: text/plain; charset="UTF-8"

For the E312, I updated the SD card with the newest default image from
ettus.

For the N210s, the one in safe mode responds properly to pings at
192.168.10,2. For the other N210 that is not in safe mode, I can still set
the IP address and it responds properly to pings as well.

I am only ever using one radio with my computer at a time, so one ethernet
port per USRP.

I tried to load a new FPGA image using the directions at the bottom of the
page linked below, but there were cable drivers missing so I wasn't able to
get Xilinx LabTools to recognize the JTAG programmer I was using. Since the
"CPLD loaded" and "firmware loaded" light indicators were on on the N210, I
was hoping there was nothing wrong with the images on the FPGA.
https://files.ettus.com/manual/page_usrp2.html

I'll try to load a new FPGA image from the link you've pasted.

Thanks much

On Wed, Aug 11, 2021 at 6:08 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 08/11/2021 07:35 PM, Bobbi Taylor wrote:
> > Hello,
> >
> > I have two N210s and an E312, and I'm not able to detect any of them
> > with uhd_find_devices.
> >
> > I have set a static IP address on my computer as well as on the radio.
> > I have a gigabit ethernet cable, as well as a gigabit port on my
> > laptop. For one of the N210s, I've hit the safe mode button (S2) to
> > boot into a safe image. This appeared to work (lights flashed after I
> > power cycled), but UHD is still not able to detect the device. On the
> > N210, the D and F lights on the front panel light up indicating that
> > the firmware is loaded and the CPLD is loaded, indicating that there
> > isn't a problem with the FPGA and that the device isn't bricked.
> >
> > I am able to ping the device, but uhd_find_devices or uhd_usrp_probe
> > doesn't detect anything, even if input arguments are given such as
> > serial, type, or IP address.
> >
> > For the E312, I was able to run the test example (rx_ascii_art_dft)
> > without any issues. Still wasn't detected by UHD.
> >
> > The version of UHD I have is 4.0.0, but I have also attempted this
> > with multiple previous versions. I used both N210s about 6 months ago
> > and didn't have any issues at all. The E312 hasn't been used before.
> >
> > Thanks in advance,
> > Bobbi
> >
> What version of the E312 system image are you running?  You must run the
> network-mode software on the E312 for another UHD host to
>    "see" it as a UHD device, and in recent versions of the system image,
> network-mode is deprecated, because performance of network-mode
>    is necessarily exceedingly poor, and the device is intended really to
> be an embedded-only device.
>
> Does the N210, when in safe mode, respond properly to pings at:
> 192.168.10.2   ???
>
> Is it the only device on its network stub?  Really you need one ethernet
> (1G) port per USRP device that you intend to stream samples from.
>
> Once that has been established, then, while it is in safe mode, load new
> FPGA images:
>
> https://files.ettus.com/manual/page_images.html
>
>
> Then power-cycle the device.  Note that it will come up with whatever
> EEPROM IP address it previously had prior to safe-mode.  So you may need
>    to program the IP address into the EEPROM *while it is in safe mode*.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000010cb3d05c9649d86
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">For the E312, I updated the SD card with the newest defaul=
t image from ettus.=C2=A0<div><br></div><div>For the N210s, the one in safe=
 mode responds properly to pings at 192.168.10,2. For the other N210 that i=
s not in safe mode, I can still set the IP address and it responds properly=
=C2=A0to pings as well.</div><div><br></div><div>I am only ever using one r=
adio with my computer at a time, so one ethernet port per USRP.</div><div><=
br></div><div>I tried to load a new FPGA image using the directions at the =
bottom of the page linked below, but there were cable drivers missing so I =
wasn&#39;t able to get Xilinx=C2=A0LabTools to recognize the JTAG programme=
r I was using. Since the &quot;CPLD loaded&quot; and &quot;firmware loaded&=
quot; light indicators were on on=C2=A0the N210, I was hoping there was not=
hing wrong with the images on the FPGA.</div><div><a href=3D"https://files.=
ettus.com/manual/page_usrp2.html">https://files.ettus.com/manual/page_usrp2=
.html</a>=C2=A0<br></div><div><br></div><div>I&#39;ll try to load a new FPG=
A image from the link you&#39;ve pasted.</div><div><br></div><div>Thanks mu=
ch</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Wed, Aug 11, 2021 at 6:08 PM Marcus D. Leech &lt;<a href=3D"mail=
to:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex">On 08/11/2021 07:35 PM, =
Bobbi Taylor wrote:<br>
&gt; Hello,<br>
&gt;<br>
&gt; I have two N210s and an E312, and I&#39;m not able to detect any of th=
em <br>
&gt; with uhd_find_devices.<br>
&gt;<br>
&gt; I have set a static IP address on my computer as well as on the radio.=
 <br>
&gt; I have a gigabit ethernet cable, as well as a gigabit port on my <br>
&gt; laptop. For one of the N210s, I&#39;ve hit the safe mode button (S2) t=
o <br>
&gt; boot into a safe image. This appeared to work (lights flashed after I =
<br>
&gt; power cycled), but UHD is still not able to detect the device. On the =
<br>
&gt; N210, the D and F lights on the front panel light up indicating that <=
br>
&gt; the firmware is loaded and the CPLD is loaded, indicating that there <=
br>
&gt; isn&#39;t a problem with the FPGA and that the device isn&#39;t bricke=
d.<br>
&gt;<br>
&gt; I am able to ping the device, but uhd_find_devices or uhd_usrp_probe <=
br>
&gt; doesn&#39;t detect anything, even if input arguments are given such as=
 <br>
&gt; serial, type, or IP address.<br>
&gt;<br>
&gt; For the E312, I was able to run the test example (rx_ascii_art_dft) <b=
r>
&gt; without any issues. Still wasn&#39;t detected by UHD.<br>
&gt;<br>
&gt; The version of UHD I have is 4.0.0, but I have also attempted this <br=
>
&gt; with multiple previous versions. I used both N210s about 6 months ago =
<br>
&gt; and didn&#39;t have any issues at all. The E312 hasn&#39;t been used b=
efore.<br>
&gt;<br>
&gt; Thanks in advance,<br>
&gt; Bobbi<br>
&gt;<br>
What version of the E312 system image are you running?=C2=A0 You must run t=
he <br>
network-mode software on the E312 for another UHD host to<br>
=C2=A0 =C2=A0&quot;see&quot; it as a UHD device, and in recent versions of =
the system image, <br>
network-mode is deprecated, because performance of network-mode<br>
=C2=A0 =C2=A0is necessarily exceedingly poor, and the device is intended re=
ally to <br>
be an embedded-only device.<br>
<br>
Does the N210, when in safe mode, respond properly to pings at: <br>
192.168.10.2=C2=A0 =C2=A0???<br>
<br>
Is it the only device on its network stub?=C2=A0 Really you need one ethern=
et <br>
(1G) port per USRP device that you intend to stream samples from.<br>
<br>
Once that has been established, then, while it is in safe mode, load new <b=
r>
FPGA images:<br>
<br>
<a href=3D"https://files.ettus.com/manual/page_images.html" rel=3D"noreferr=
er" target=3D"_blank">https://files.ettus.com/manual/page_images.html</a><b=
r>
<br>
<br>
Then power-cycle the device.=C2=A0 Note that it will come up with whatever =
<br>
EEPROM IP address it previously had prior to safe-mode.=C2=A0 So you may ne=
ed<br>
=C2=A0 =C2=A0to program the IP address into the EEPROM *while it is in safe=
 mode*.<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000010cb3d05c9649d86--

--===============6837924895256515612==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6837924895256515612==--
