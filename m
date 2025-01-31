Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2DDA244FF
	for <lists+usrp-users@lfdr.de>; Fri, 31 Jan 2025 22:58:58 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7D14838620E
	for <lists+usrp-users@lfdr.de>; Fri, 31 Jan 2025 16:58:56 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738360736; bh=fP6ZsLbvZZkR7pP6GP1IZWoq7ZITLUL/nV/0cneUFrc=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=TWIQARKddG77X9D9a73uh7SCFQR16yt9M5aCWCpatme/a8KxIsnRzx2koqWUvaP7C
	 NTsqy+ftmRAWiHEsOnuIN9FktefQxTN7Z+7jB0odD+P5U+NV9gklg518QEt0rSgsld
	 PeZ62atXSCTt2ZJPX/f5aINOEeuQ4KXMODIWtwwkT9sfNHXE4Yz0pHgGwgW1N7DvTY
	 w7vEKCoA5ER2D4zZU4BM9RVHFUCT/LP5jzciZsHkRMCus6l0p+kj3hh/A8YyGG6Ux1
	 4wpYwsuu45X6QUJIbTgc+WkYqrNrf3BRtOdCtf5my4/VDfwYKI1AGVaZo/ibG6VPmR
	 58p+fIWp+tY6w==
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
	by mm2.emwd.com (Postfix) with ESMTPS id AABEA3861D8
	for <usrp-users@lists.ettus.com>; Fri, 31 Jan 2025 16:58:19 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="HZXeXujw";
	dkim-atps=neutral
Received: by mail-oi1-f174.google.com with SMTP id 5614622812f47-3eb7f3b1342so1265028b6e.1
        for <usrp-users@lists.ettus.com>; Fri, 31 Jan 2025 13:58:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738360699; x=1738965499; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=RPIUeI2u/mQKqUvcBhBvfW4P2dZ0Qw0gyI50P5uZvLo=;
        b=HZXeXujwwfjh6A1VEvvdVhSHn3HZKEI0Gzpe0rbqB7rVKbBWydRtv2os2VM4jONRbi
         C67340SggRGgVpkh7wBt8cM0ahDMg9ebnQbK0CeDRX1FKlAhTQUwYzYPwV4U6V6RXVH6
         Il6z2lgIobtmrVTtjm4iNBXbMboWKxIrEe24LYTXB1IA+DV61S4cAouHdP1h+eyFbuJP
         Wo9TQxxJqhs1Ipq5XVWUhDNAE0irNfC++8L497Gzmkj+NzAaoqc+d8Ln0BT4d3SXpQ9N
         aiPbaCg1xrwgRJ94OCKcWWhmlYVqAXahhiaCO4+kXz2gmk6F9J/d8GCrnjGIxNIlCq/f
         KsTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738360699; x=1738965499;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RPIUeI2u/mQKqUvcBhBvfW4P2dZ0Qw0gyI50P5uZvLo=;
        b=U6BQw2seCzCivLMygeUnEQANYhnBr/8K7NTcDNg7n2KLgueGYbotKweug8T0XKsVmd
         smucANE+q45SMMnCho7dT6c04cJnglIAx3aie+3jz7q4tiu1/speI9xTtRo9mqw8uOpG
         WxoBOBKszrqK/P8ppgb2KJZxGQrvW2j3P8U+Yt003UeIBDiLOQszfVXQKlFXHGqmQQBV
         wX7BuF+UwGmVjxM4Wlo6abpJLawh5+NuQ5nTV5ETK70hAZtTIGdI13Y12RI9v4PKqqeR
         8tvLPgO6fmsC9pP3TA1xr3WcPxWTrAEiIQbDd42wRo1tjOA6/VhmxS5Z5iiGXvKUhBuo
         fvZw==
X-Gm-Message-State: AOJu0YzqBuwKXW69mMf4eDqzOzpk9c7RP6waBJBAi+pXfmKKSWnHe7Ix
	FbiVT+vIBRbxTWKC9dz6GMT7IOlcA8AGNMzk82SOBaqJM7zdV+GGpxdOVy2G3pdPJxdVNH29XCx
	ThzErVJQovKCF9RhS+tSacvZtgJJsJdF7
X-Gm-Gg: ASbGncvFTpNrKROjO+V71eXSLet+z5H5SioOFYHkcpl3Xjbd2gLMDZYhExPlTSb2NRO
	1xPKwkZOykV0aOvstugvizq37xjFZclrXTwvT/cfwxQLZMW4reZzNOSiqKZo/zrT/8LDvq+4=
X-Google-Smtp-Source: AGHT+IEtHxlbb2i1RjrZVjJ0pJrSAc/3tpKcCH1oRbFX/qk1YFcaQq09VKEQW8vWqygv4rLhiCW8b4hgkU9hgKOJyQo=
X-Received: by 2002:a05:6808:1506:b0:3f1:cfb4:9ca with SMTP id
 5614622812f47-3f323b259f7mr9117412b6e.36.1738360698769; Fri, 31 Jan 2025
 13:58:18 -0800 (PST)
MIME-Version: 1.0
References: <LO4P265MB4162C069DD81CD359004D22AD7EE2@LO4P265MB4162.GBRP265.PROD.OUTLOOK.COM>
 <CAOEzSFSKtCiM=p79Un9FjRF8bqXs0MFpyDZgaHon32teh8SVeg@mail.gmail.com>
In-Reply-To: <CAOEzSFSKtCiM=p79Un9FjRF8bqXs0MFpyDZgaHon32teh8SVeg@mail.gmail.com>
From: Chris Rogers <c1337rogers@gmail.com>
Date: Fri, 31 Jan 2025 16:58:07 -0500
X-Gm-Features: AWEUYZkK6fXpd85qko0gbVUyt5MHLO6mTNjbMAU7sC9HR34Ij2Vs9XgAN4rPuNo
Message-ID: <CAOEzSFSLDMG7Ljhri9qORvhFikJ2pyV87Qa7bGa2K_1a_o=58A@mail.gmail.com>
To: Daniel White <d.white.4@bham.ac.uk>
Message-ID-Hash: QFHNCVI4HCAP26BJBYZLIZ7RQEWLFD3C
X-Message-ID-Hash: QFHNCVI4HCAP26BJBYZLIZ7RQEWLFD3C
X-MailFrom: c1337rogers@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 uhd_find_devices unsuccessful with 1G Ethernet
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QFHNCVI4HCAP26BJBYZLIZ7RQEWLFD3C/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2782461739751374643=="

--===============2782461739751374643==
Content-Type: multipart/alternative; boundary="000000000000f116f0062d07a3eb"

--000000000000f116f0062d07a3eb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Another try - It sounds like you connected the USB connection to the USB to
PS port when you should actually be connecting to the JTAG/Console port on
the X440. This will make a new serial device show up in /dev/ttyUSB# and
you can then communicate with it using screen/minicom/putty. One of these
ports will give you access to the Linux filesystem and you can then change
the /data/network/ files to set a static IP

ref:
https://files.ettus.com/manual/page_usrp_x4xx.html#x4xx_getting_started_ser=
ial
+ I just went through these same steps on my X440

On Fri, Jan 31, 2025 at 1:19=E2=80=AFPM Chris Rogers <c1337rogers@gmail.com=
> wrote:

> A couple things you can try:
>
>    - Connect your laptop and the X440 to a router and let the router
>    assign a DHCP address to the X440 and try to uhd_find_devices/ssh into=
 it
>    that way
>    - Connect via the QSFP ports and ssh into the X440 via any of the
>    default SFP addresses ( 192.168.10.2, 11.2, 12.2, 13.2 ). You'll need =
to
>    set your computer's SFP interface to be a static IP on the same subnet
>
> Once you're in, you can check the UHD version by running uhd_find_devices
> on the X440 itself, and you can change to a static IP by following this
> section of the UHD manual:
>
> https://files.ettus.com/manual/page_usrp_x4xx.html#x4xx_getting_started_n=
etwork_connectivity_ifcs
>
> Hope this helps,
> Chris
>
> On Fri, Jan 31, 2025 at 12:46=E2=80=AFPM Daniel White <d.white.4@bham.ac.=
uk>
> wrote:
>
>> Dear USRP-Users,
>>
>> I am trying to establish a connection from my laptop (ThinkPad P53) to a=
n
>> X440, initially,  via 1G ethernet cable, but uhd_find_devices, or
>> uhd_usrp_probe fail despite bring able to ping the device.
>>
>>    - *Preamble*
>>
>> I have a USRP-2954 and have had no problem operating this, via the same
>> 1G ethernet cable (with 10GB RJ45 to FSP+ adaptor). I have used Ubuntu
>> 22.04 and 24.04.1 with both building from source and directly apt
>> installing the binaries, able to find success with uhd_find_devices
>> afterwards.
>>
>> A difference between the USRP-2954 and X440 is that the USRP-2954 uses a
>> fixed IP address (192.168.40.2) where are Eth0 on the X440 is configured=
 to
>> use a DHCP-assigned IP address. For a while I have experimented with
>> network settings on the host laptop, with varying levels of insight gain=
ed,
>> but never able to get a response recognised from uhd_find_devices with t=
he
>> X440.
>>
>>    - *Ubuntu 24.04.1 | apt install libuhd-dev uhd-host*
>>
>> After installation and verification, and expecting uhd_find_devices to
>> work with 1G Ethernet connection, it fails.
>>
>> I attempted permutating ubuntu network settings to establish a
>> connection. Only with the 'shared to other computers' option does ubuntu
>> declare a connection has been established. From this, with wireshark I c=
an
>> confirm communication from the X440 via its serial number and mac addres=
s,
>> and find its ip address (10.42.0.159).
>> I can ping the device with 'shared to other computers' or with a fixed
>> address set on the computer as 10.42.0.1. I cannot however ssh into the
>> device, or get a valid response from uhd_find_devices / uhd_usrp_probe w=
ith
>> known arguments queried.
>>
>> Connecting the laptop to the 'PS to USB' usb-c port, I expect to see a
>> new usb device recognised on the laptop with lsusb, lsblk*, *ls -lash
>> /dev/tty*, but never does the number of connections change after powerin=
g
>> cycling the device while connected in this way. This was my hope through
>> after finding
>> https://forums.ni.com/t5/USRP-Software-Radio/Unable-to-find-usrp-devices=
-for-USRP-X440-RJ45-ethernet/td-p/4354614
>>
>>
>>    - *Ubuntu 24.04.1 | building 4.7.0.0 from source*
>>
>> I installed all dependencies in both
>> https://files.ettus.com/manual/page_build_guide.html (only without
>> libcurses5 and libcurses5-dev) and
>> https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolch=
ain_(UHD_and_GNU_Radio)_on_Linux (24.04
>> version).
>>
>> In the cmake stage, I notice that it failed to find modules gevent,
>> mprpc, pyudev and pyroute2. Previously I had included this (aside mprpc)
>> with similar outcome.
>>
>> After completing the build, I can ping the device successfully (ICMP Ech=
o
>> ping request and reply) with fixed ip set, but attempting uhd_usrp_probe
>> with this yeilds Destination unreachable.
>>
>>    - *Additional notes*
>>
>> With each attempt I turn firewall off, via ufw and iptables, as I am on =
a
>> closed network.
>>
>> From the Ettus's X440 Getting Started Guide, "*Note that if you are
>> operating the device in Network Mode, the version of UHD running on the
>> host computer and the USRP X4x0 must match*".
>> With this I need to make sure the UHD versions are matching. However wit=
h
>> no way found so far to access the X440 to check its UHD version, I have
>> tried all versions since 4.5.0.0 not including release candidates.
>> I will be doing this with release candidates with Ubuntu 20 in the mean
>> time, and will update if I have success with this.
>>
>>    - *Summary*
>>
>> Cannot connect to X440 via 1G ethernet, aside ping responses with fixed
>> ip address.
>> Cannot recognise the X440 as a usb device required to access the
>> filesystems directly on the device.
>>
>> To establish a connection from this as a starting point via networking
>> configuration, are there any suggestions?
>> To restart the setup from a fresh ubuntu installation, is there anything
>> I should change that may improve my chances? It is possible I have misse=
d
>> some crucial dependencies for the X440 specifically?
>>
>> I have saved all logs for the build process and can share these.
>>
>> Scenere thanks for any and all guidance,
>> Dan
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000f116f0062d07a3eb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Another try - It sounds like you connected the USB co=
nnection to the USB to PS port when you should actually be connecting to th=
e JTAG/Console port on the X440. This will make a new serial device show up=
 in /dev/ttyUSB# and you can then communicate with it using screen/minicom/=
putty. One of these ports will give you access to the Linux filesystem and =
you can then change the /data/network/ files to set a static IP<br><br></di=
v>ref: <a href=3D"https://files.ettus.com/manual/page_usrp_x4xx.html#x4xx_g=
etting_started_serial">https://files.ettus.com/manual/page_usrp_x4xx.html#x=
4xx_getting_started_serial</a> + I just went through these same steps on my=
 X440<br></div><br><div class=3D"gmail_quote gmail_quote_container"><div di=
r=3D"ltr" class=3D"gmail_attr">On Fri, Jan 31, 2025 at 1:19=E2=80=AFPM Chri=
s Rogers &lt;<a href=3D"mailto:c1337rogers@gmail.com">c1337rogers@gmail.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div dir=3D"ltr">A couple things you can try:<br><ul><li>Connect your lapto=
p and the X440 to a router and let the router assign a DHCP address to the =
X440 and try to uhd_find_devices/ssh into it that way</li><li>Connect via t=
he QSFP ports and ssh into the X440 via any of the default SFP addresses (
192.168.10.2, 11.2, 12.2, 13.2 ). You&#39;ll need to set your computer&#39;=
s SFP interface to be a static IP on the same subnet<br></li></ul><div>Once=
 you&#39;re in, you can check the UHD version by running uhd_find_devices o=
n the X440 itself, and you can change to a static IP by following this sect=
ion of the UHD manual:=C2=A0</div><div><a href=3D"https://files.ettus.com/m=
anual/page_usrp_x4xx.html#x4xx_getting_started_network_connectivity_ifcs" t=
arget=3D"_blank">https://files.ettus.com/manual/page_usrp_x4xx.html#x4xx_ge=
tting_started_network_connectivity_ifcs</a> <br></div><div><br></div><div>H=
ope this helps,<br></div><div>Chris<br></div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jan 31, 2025 at 12:46=
=E2=80=AFPM Daniel White &lt;<a href=3D"mailto:d.white.4@bham.ac.uk" target=
=3D"_blank">d.white.4@bham.ac.uk</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div>




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
-devices-for-USRP-X440-RJ45-ethernet/td-p/4354614" id=3D"m_6378162847626910=
491m_3985237295473501330LPlnk579076" target=3D"_blank">
https://forums.ni.com/t5/USRP-Software-Radio/Unable-to-find-usrp-devices-fo=
r-USRP-X440-RJ45-ethernet/td-p/4354614</a>=C2=A0=C2=A0</div>
<div id=3D"m_6378162847626910491m_3985237295473501330Signature">
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
ual/page_build_guide.html" id=3D"m_6378162847626910491m_3985237295473501330=
LPlnk" style=3D"margin:0px;text-align:left" target=3D"_blank">
https://files.ettus.com/manual/page_build_guide.html</a>=C2=A0(only without=
 libcurses5 and libcurses5-dev) and
<a href=3D"https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Sourc=
e_Toolchain_(UHD_and_GNU_Radio)_on_Linux" id=3D"m_6378162847626910491m_3985=
237295473501330LPlnk759959" target=3D"_blank">
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
</blockquote></div>

--000000000000f116f0062d07a3eb--

--===============2782461739751374643==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2782461739751374643==--
