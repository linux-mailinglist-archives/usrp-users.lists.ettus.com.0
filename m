Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DCE7EA2427D
	for <lists+usrp-users@lfdr.de>; Fri, 31 Jan 2025 19:20:16 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 948D5385F10
	for <lists+usrp-users@lfdr.de>; Fri, 31 Jan 2025 13:20:15 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738347615; bh=VwtFd0dAQrmkiR5GiWz5RJ1S7/2IT9SyI3YNs7St4gQ=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=gtOZx9WW7zXUfwY0pCVBqGjPGrhE5WcJ/zVFtyhoMcOynvRjMVlSyzJq4HdHCFMka
	 Gl4iQez/3KhLJmngHRXoTFoGoUQJyA9TUERpU1yNVwSwWfCLp9fW0VoGF3Ayxoiiz1
	 W3SwE7KcK0dOSczIg429iriLX/xcIf3hs/Sa9wW0xdeW2Ukjj3JB1S53uloX4CYUbz
	 1o31ThAIly84uZeJKN0ufWsGTu55Rxa2C/r2j/jIQQI4JqQdT2lDkNi4p7z/si3F5r
	 hj8rsn+B6AedZtwXjQAO/4tb5OMIxX8oU9Q6jtrP+XovuMyVY458ypvkR3ZEkHwAMU
	 4ZInWLU8NWf2g==
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 0C665385F05
	for <usrp-users@lists.ettus.com>; Fri, 31 Jan 2025 13:19:38 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="iSAg25sp";
	dkim-atps=neutral
Received: by mail-oi1-f182.google.com with SMTP id 5614622812f47-3ebadbb14dcso959683b6e.3
        for <usrp-users@lists.ettus.com>; Fri, 31 Jan 2025 10:19:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738347578; x=1738952378; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Un/RaHbpsWIscApW/JufCBV7EQRTRDd66KvPs07Rv1c=;
        b=iSAg25sp3mrfVVg4+9R8W06U9vQaytWacdwptKN7xVFZqWI1L63uMgIMlNmx2KUu0d
         PL9I9Op9V3dJMuW9By6WAb5CREL9Rlbo+j+0N2b+D5QqO3xMPt+PHYsWXGhlhdZL1c1s
         yRKKLrioaHu9PnZZaH+1dk7ocUfWiEXhcZRXrcTsPBalAYsCYOIi6j/XouFl4C+XpwL1
         E+jpEMuAIJHcpIChV53XFLWmGyXg4DbujAXPCnC4N2G3MDESlQKLhQ7qTSys1Fjt1ppp
         20IqTN8Pc0FJsxqZIxax1aOHSPiDeEnajBpEW9y81o4HGu85oV5T/gzbl9WVCJLihBzl
         az4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738347578; x=1738952378;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Un/RaHbpsWIscApW/JufCBV7EQRTRDd66KvPs07Rv1c=;
        b=J8VBBl00YP9TK7FHjGgE0SStXsQcP3tM9rGXD4W994T6f2bqPi2H6P/n1JLvjMM+FU
         XSMs2HfJ5jcVH4nTRq9WpwAxq6Tbc1ylnRhVrtb7DvOkpL42FXuHkpcpKJwwu/L8WNj6
         +R82r/hjXfh+JraJlO+Ns3vs/Kg3ysdYGJKdIcph3L+8pY3Gxlc6Kk/+4vcSBzCz/P46
         3Ga87pM31ZGGvyja65BcLeGY1bVom+8YEQhf28D1JDjV3pjwlD1H2qnp40gIOzRMBI92
         /LeC4BppxHP3jThoJ/qIwh6riZKVMx3bNR0KEyTReTaUt06ikkjWHtDmzDJigY5SARYx
         ojZQ==
X-Gm-Message-State: AOJu0YyML6jCjEUV8E/EqJ8VL2q8QknQ3ysYqpTZXmY9QRB1LurzUjQ8
	L7TVS3RtMY+zjbaqQpu2Tv9B6uOMLJD370GG/cscgAw0KqIfFFqOWiMQ/fADhnR+l7fTFyuYM4X
	lETNs3D0wBBBBP5tNdapFUD/e9FM=
X-Gm-Gg: ASbGnct4IIMDgfCMd500aIrnR7QoFPdcPMOKEitheFWj8j8RhjiZyZ0itvQru91PWHH
	YfguClOLI8snwDpjzQ9bXDo1WmL3L4ymHOGmktMkZOBJFNyotvaAXCnKv5ndu1fDCY8hf15c=
X-Google-Smtp-Source: AGHT+IHxircmBjzdWliE2+Ry3xVmEtn5bf8kEZJ3G2uJ238TO+EoQcXAeO7PKxasY1KdMs17UAxKxclIfF9079+SOVo=
X-Received: by 2002:a05:6808:3206:b0:3eb:7ec4:f3ba with SMTP id
 5614622812f47-3f3239ee6c5mr8333576b6e.2.1738347577969; Fri, 31 Jan 2025
 10:19:37 -0800 (PST)
MIME-Version: 1.0
References: <LO4P265MB4162C069DD81CD359004D22AD7EE2@LO4P265MB4162.GBRP265.PROD.OUTLOOK.COM>
In-Reply-To: <LO4P265MB4162C069DD81CD359004D22AD7EE2@LO4P265MB4162.GBRP265.PROD.OUTLOOK.COM>
From: Chris Rogers <c1337rogers@gmail.com>
Date: Fri, 31 Jan 2025 13:19:26 -0500
X-Gm-Features: AWEUYZlhTMKyFmbz3AYgAClZmdZwKZQliz5TLsBbmvpQhtKKTtEWL1FYmep_KW8
Message-ID: <CAOEzSFSKtCiM=p79Un9FjRF8bqXs0MFpyDZgaHon32teh8SVeg@mail.gmail.com>
To: Daniel White <d.white.4@bham.ac.uk>
Message-ID-Hash: J5JQJHLFGBWRSHSRDDPXJJAPGK6ZORCG
X-Message-ID-Hash: J5JQJHLFGBWRSHSRDDPXJJAPGK6ZORCG
X-MailFrom: c1337rogers@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 uhd_find_devices unsuccessful with 1G Ethernet
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/J5JQJHLFGBWRSHSRDDPXJJAPGK6ZORCG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0362288725031020745=="

--===============0362288725031020745==
Content-Type: multipart/alternative; boundary="000000000000e1959d062d0495f4"

--000000000000e1959d062d0495f4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

A couple things you can try:

   - Connect your laptop and the X440 to a router and let the router assign
   a DHCP address to the X440 and try to uhd_find_devices/ssh into it that =
way
   - Connect via the QSFP ports and ssh into the X440 via any of the
   default SFP addresses ( 192.168.10.2, 11.2, 12.2, 13.2 ). You'll need to
   set your computer's SFP interface to be a static IP on the same subnet

Once you're in, you can check the UHD version by running uhd_find_devices
on the X440 itself, and you can change to a static IP by following this
section of the UHD manual:
https://files.ettus.com/manual/page_usrp_x4xx.html#x4xx_getting_started_net=
work_connectivity_ifcs

Hope this helps,
Chris

On Fri, Jan 31, 2025 at 12:46=E2=80=AFPM Daniel White <d.white.4@bham.ac.uk=
> wrote:

> Dear USRP-Users,
>
> I am trying to establish a connection from my laptop (ThinkPad P53) to an
> X440, initially,  via 1G ethernet cable, but uhd_find_devices, or
> uhd_usrp_probe fail despite bring able to ping the device.
>
>    - *Preamble*
>
> I have a USRP-2954 and have had no problem operating this, via the same 1=
G
> ethernet cable (with 10GB RJ45 to FSP+ adaptor). I have used Ubuntu 22.04
> and 24.04.1 with both building from source and directly apt installing th=
e
> binaries, able to find success with uhd_find_devices afterwards.
>
> A difference between the USRP-2954 and X440 is that the USRP-2954 uses a
> fixed IP address (192.168.40.2) where are Eth0 on the X440 is configured =
to
> use a DHCP-assigned IP address. For a while I have experimented with
> network settings on the host laptop, with varying levels of insight gaine=
d,
> but never able to get a response recognised from uhd_find_devices with th=
e
> X440.
>
>    - *Ubuntu 24.04.1 | apt install libuhd-dev uhd-host*
>
> After installation and verification, and expecting uhd_find_devices to
> work with 1G Ethernet connection, it fails.
>
> I attempted permutating ubuntu network settings to establish a connection=
.
> Only with the 'shared to other computers' option does ubuntu declare a
> connection has been established. From this, with wireshark I can confirm
> communication from the X440 via its serial number and mac address, and fi=
nd
> its ip address (10.42.0.159).
> I can ping the device with 'shared to other computers' or with a fixed
> address set on the computer as 10.42.0.1. I cannot however ssh into the
> device, or get a valid response from uhd_find_devices / uhd_usrp_probe wi=
th
> known arguments queried.
>
> Connecting the laptop to the 'PS to USB' usb-c port, I expect to see a ne=
w
> usb device recognised on the laptop with lsusb, lsblk*, *ls -lash
> /dev/tty*, but never does the number of connections change after powering
> cycling the device while connected in this way. This was my hope through
> after finding
> https://forums.ni.com/t5/USRP-Software-Radio/Unable-to-find-usrp-devices-=
for-USRP-X440-RJ45-ethernet/td-p/4354614
>
>
>    - *Ubuntu 24.04.1 | building 4.7.0.0 from source*
>
> I installed all dependencies in both
> https://files.ettus.com/manual/page_build_guide.html (only without
> libcurses5 and libcurses5-dev) and
> https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolcha=
in_(UHD_and_GNU_Radio)_on_Linux (24.04
> version).
>
> In the cmake stage, I notice that it failed to find modules gevent, mprpc=
,
> pyudev and pyroute2. Previously I had included this (aside mprpc) with
> similar outcome.
>
> After completing the build, I can ping the device successfully (ICMP Echo
> ping request and reply) with fixed ip set, but attempting uhd_usrp_probe
> with this yeilds Destination unreachable.
>
>    - *Additional notes*
>
> With each attempt I turn firewall off, via ufw and iptables, as I am on a
> closed network.
>
> From the Ettus's X440 Getting Started Guide, "*Note that if you are
> operating the device in Network Mode, the version of UHD running on the
> host computer and the USRP X4x0 must match*".
> With this I need to make sure the UHD versions are matching. However with
> no way found so far to access the X440 to check its UHD version, I have
> tried all versions since 4.5.0.0 not including release candidates.
> I will be doing this with release candidates with Ubuntu 20 in the mean
> time, and will update if I have success with this.
>
>    - *Summary*
>
> Cannot connect to X440 via 1G ethernet, aside ping responses with fixed i=
p
> address.
> Cannot recognise the X440 as a usb device required to access the
> filesystems directly on the device.
>
> To establish a connection from this as a starting point via networking
> configuration, are there any suggestions?
> To restart the setup from a fresh ubuntu installation, is there anything =
I
> should change that may improve my chances? It is possible I have missed
> some crucial dependencies for the X440 specifically?
>
> I have saved all logs for the build process and can share these.
>
> Scenere thanks for any and all guidance,
> Dan
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000e1959d062d0495f4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">A couple things you can try:<br><ul><li>Connect your lapto=
p and the X440 to a router and let the router assign a DHCP address to the =
X440 and try to uhd_find_devices/ssh into it that way</li><li>Connect via t=
he QSFP ports and ssh into the X440 via any of the default SFP addresses (
192.168.10.2, 11.2, 12.2, 13.2 ). You&#39;ll need to set your computer&#39;=
s SFP interface to be a static IP on the same subnet<br></li></ul><div>Once=
 you&#39;re in, you can check the UHD version by running uhd_find_devices o=
n the X440 itself, and you can change to a static IP by following this sect=
ion of the UHD manual:=C2=A0</div><div><a href=3D"https://files.ettus.com/m=
anual/page_usrp_x4xx.html#x4xx_getting_started_network_connectivity_ifcs">h=
ttps://files.ettus.com/manual/page_usrp_x4xx.html#x4xx_getting_started_netw=
ork_connectivity_ifcs</a> <br></div><div><br></div><div>Hope this helps,<br=
></div><div>Chris<br></div></div><br><div class=3D"gmail_quote gmail_quote_=
container"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jan 31, 2025 at 12=
:46=E2=80=AFPM Daniel White &lt;<a href=3D"mailto:d.white.4@bham.ac.uk">d.w=
hite.4@bham.ac.uk</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div class=3D"msg3985237295473501330">




<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Dear USRP-Users,</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I am trying to establish a connection from my laptop (ThinkPad P53) to an X=
440, initially,=C2=A0 via 1G ethernet cable, but uhd_find_devices, or uhd_u=
srp_probe fail despite bring able to ping the device.</div>
<ul style=3D"list-style-type:disc">
<li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calib=
ri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div><u>Preamble</u>=C2=A0</div>
</li></ul>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I have a USRP-2954 and have had no problem operating this, via the same 1G =
ethernet cable (with 10GB RJ45 to FSP+ adaptor). I have used Ubuntu 22.04 a=
nd 24.04.1 with both building from source and directly apt installing the b=
inaries, able to find success with
 uhd_find_devices afterwards.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
A difference between the USRP-2954 and X440 is that the USRP-2954 uses a fi=
xed IP address (192.168.40.2) where are Eth0 on the X440 is configured to u=
se a DHCP-assigned IP address. For a while I have experimented with network=
 settings on the host laptop, with
 varying levels of insight gained, but never able to get a response recogni=
sed from uhd_find_devices with the X440.</div>
<ul style=3D"list-style-type:disc">
<li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calib=
ri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div><u>Ubuntu 24.04.1 | apt install libuhd-dev uhd-host</u></div>
</li></ul>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
After installation and verification, and expecting uhd_find_devices to work=
 with 1G Ethernet connection, it fails.=C2=A0</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I attempted permutating ubuntu network settings to establish a connection. =
Only with the &#39;shared to other computers&#39; option does ubuntu declar=
e a connection has been established. From this, with wireshark I can confir=
m communication from the X440 via its serial
 number and mac address, and find its ip address (10.42.0.159).</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I can ping the device with &#39;shared to other computers&#39; or with a fi=
xed address set on the computer as 10.42.0.1. I cannot however ssh into the=
 device, or get a valid response from uhd_find_devices / uhd_usrp_probe wit=
h known arguments queried.=C2=A0</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Connecting the laptop to the &#39;PS to USB&#39; usb-c port, I expect to se=
e a new usb device recognised on the laptop with lsusb, lsblk<b>,
</b>ls -lash /dev/tty*, but never does the number of connections change aft=
er powering cycling the device while connected in this way. This was my hop=
e through after finding
<a href=3D"https://forums.ni.com/t5/USRP-Software-Radio/Unable-to-find-usrp=
-devices-for-USRP-X440-RJ45-ethernet/td-p/4354614" id=3D"m_3985237295473501=
330LPlnk579076" target=3D"_blank">
https://forums.ni.com/t5/USRP-Software-Radio/Unable-to-find-usrp-devices-fo=
r-USRP-X440-RJ45-ethernet/td-p/4354614</a>=C2=A0=C2=A0</div>
<div id=3D"m_3985237295473501330Signature">
<ul style=3D"text-align:left;list-style-type:disc;display:flex">
<li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calib=
ri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div style=3D"text-align:left;text-indent:0px;margin-top:0px;margin-bottom:=
0px">
<u>Ubuntu 24.04.1 | building 4.7.0.0 from source</u></div>
</li></ul>
<div style=3D"text-align:left;text-indent:0px;margin:0px;font-family:Aptos,=
Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-si=
ze:12pt;color:rgb(0,0,0)">
I installed all dependencies in both <a href=3D"https://files.ettus.com/man=
ual/page_build_guide.html" id=3D"m_3985237295473501330LPlnk" style=3D"margi=
n:0px;text-align:left" target=3D"_blank">
https://files.ettus.com/manual/page_build_guide.html</a>=C2=A0(only without=
 libcurses5 and libcurses5-dev) and
<a href=3D"https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Sourc=
e_Toolchain_(UHD_and_GNU_Radio)_on_Linux" id=3D"m_3985237295473501330LPlnk7=
59959" target=3D"_blank">
https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain=
_(UHD_and_GNU_Radio)_on_Linux</a>=C2=A0(24.04 version).</div>
<div style=3D"text-align:left;text-indent:0px;margin:0px;font-family:Aptos,=
Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-si=
ze:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"text-align:left;text-indent:0px;margin:0px;font-family:Aptos,=
Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-si=
ze:12pt;color:rgb(0,0,0)">
In the cmake stage, I notice that it failed to find modules gevent, mprpc, =
pyudev and pyroute2. Previously I had included this (aside mprpc) with simi=
lar outcome.=C2=A0</div>
<div style=3D"text-align:left;text-indent:0px;margin:0px;font-family:Aptos,=
Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-si=
ze:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"text-align:left;text-indent:0px;margin:0px;font-family:Aptos,=
Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-si=
ze:12pt;color:rgb(0,0,0)">
After completing the build, I can ping the device successfully (ICMP Echo p=
ing request and reply) with fixed ip set, but attempting uhd_usrp_probe wit=
h this yeilds Destination unreachable.=C2=A0</div>
<ul style=3D"text-align:left;list-style-type:disc;display:flex">
<li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calib=
ri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0);margin-right:0px;ma=
rgin-left:0px">
<div style=3D"text-align:left;text-indent:0px;margin-top:0px;margin-bottom:=
0px">
<u>Additional notes</u></div>
</li></ul>
<div style=3D"text-align:left;text-indent:0px;margin-top:0px;margin-bottom:=
0px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvet=
ica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
With each attempt I turn firewall off, via ufw and iptables, as I am on a c=
losed network.</div>
<div style=3D"text-align:left;text-indent:0px;margin-top:0px;margin-bottom:=
0px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvet=
ica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"text-align:left;text-indent:0px;margin-top:0px;margin-bottom:=
0px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvet=
ica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
From the Ettus&#39;s X440 Getting Started Guide, &quot;<i>Note that if you =
are operating the device in Network Mode, the version of UHD running on the=
 host computer and the USRP X4x0 must match</i>&quot;.=C2=A0</div>
<div style=3D"text-align:left;text-indent:0px;margin-top:0px;margin-bottom:=
0px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvet=
ica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
With this I need to make sure the UHD versions are matching. However with n=
o way found so far to access the X440 to check its UHD version, I have trie=
d all versions since 4.5.0.0 not including release candidates.</div>
<div style=3D"text-align:left;text-indent:0px;margin-top:0px;margin-bottom:=
0px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvet=
ica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I will be doing this with release candidates with Ubuntu 20 in the mean tim=
e, and will update if I have success with this.</div>
<ul style=3D"text-align:left;list-style-type:disc;display:flex">
<li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calib=
ri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div style=3D"text-align:left;text-indent:0px;margin-top:0px;margin-bottom:=
0px">
<u>Summary</u></div>
</li></ul>
<div style=3D"text-align:left;text-indent:0px;margin-top:0px;margin-bottom:=
0px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvet=
ica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Cannot connect to X440 via 1G ethernet, aside ping responses with fixed ip =
address.</div>
<div style=3D"text-align:left;text-indent:0px;margin-top:0px;margin-bottom:=
0px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvet=
ica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Cannot recognise the X440 as a usb device required to access the filesystem=
s directly on the device.</div>
<div style=3D"text-align:left;text-indent:0px;margin-top:0px;margin-bottom:=
0px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvet=
ica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"text-align:left;text-indent:0px;margin-top:0px;margin-bottom:=
0px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvet=
ica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
To establish a connection from this as a starting point via networking conf=
iguration, are there any suggestions?</div>
<div style=3D"text-align:left;text-indent:0px;margin-top:0px;margin-bottom:=
0px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvet=
ica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
To restart the setup from a fresh ubuntu installation, is there anything I =
should change that may improve my chances? It is possible I have missed som=
e crucial dependencies for the X440 specifically?</div>
<div style=3D"text-align:left;text-indent:0px;margin-top:0px;margin-bottom:=
0px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvet=
ica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"text-align:left;text-indent:0px;margin-top:0px;margin-bottom:=
0px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvet=
ica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I have saved all logs for the build process and can share these.</div>
<div style=3D"text-align:left;text-indent:0px;margin-top:0px;margin-bottom:=
0px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvet=
ica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"text-align:left;text-indent:0px;margin-top:0px;margin-bottom:=
0px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvet=
ica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Scenere thanks for any and all guidance,</div>
<div style=3D"text-align:left;text-indent:0px;margin-top:0px;margin-bottom:=
0px;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvet=
ica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Dan</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--000000000000e1959d062d0495f4--

--===============0362288725031020745==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0362288725031020745==--
