Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A92A26723
	for <lists+usrp-users@lfdr.de>; Mon,  3 Feb 2025 23:50:24 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7CD75385B58
	for <lists+usrp-users@lfdr.de>; Mon,  3 Feb 2025 17:50:23 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738623023; bh=yXkslJqWArWYIvf9//SV9ZcKfoVTg/mxlirYpkguCzI=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=uV4lS3mryESY5gglyFaHwGp7mXFdzdBWKu2B2O4gKmQ/on/PJOtFHQJtRLnhU5XCF
	 grmaac66EpAgHAO6a6JoEDvyHOjOrJqFviAjbxcKyQcjAwEjF+aiBJQnQRpZzCQTFE
	 B+lRKC8q1ylspaPEf1vkoi/g5hR/MyUHAXbSEWFpghKf8f/7fBiNYix9hmhhsfRhXq
	 Y9r/ovrz5sRU600NmpakTTHdcRiez0D/w1FTZS07tlFGT4EQCeADKsfYd+VvKPmrjG
	 7Ws9bAkEtzKAFe0qrHqD2mLI7nxzHU2Agb3Gd7xtIN1g2wFLV6ISOMjow06CO+7t/R
	 80+rLpqrZLYng==
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 5789A385AEA
	for <usrp-users@lists.ettus.com>; Mon,  3 Feb 2025 17:49:20 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="GSkIp6WV";
	dkim-atps=neutral
Received: by mail-oi1-f174.google.com with SMTP id 5614622812f47-3eb3c143727so2885949b6e.1
        for <usrp-users@lists.ettus.com>; Mon, 03 Feb 2025 14:49:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738622959; x=1739227759; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=o6uTataAY3GQTpE4xzPQNPjS5WfqGm/dmAi8nF3O3I8=;
        b=GSkIp6WVdJ20xTNqRjZR4OCfBT7zrTGj2+090r+aGmsbwyaGSSLc62YpSgT6uBQ7tn
         GGBP2/m2p/SJm/+lAAS2g5W4JqSiCZBHBz9wMzJuQEc7AW0TQxlZLLuZkX8VzSDBfbqD
         aIhseRAtTI1+jFooGaIMa2EZmHztuYA5V6r0N31o2kXGHMfgSsJ5Wxr7hlG4OCE4n1xc
         FvDR2XobWG6pFWrUBrU9+Gh8OlMQDU84shafNjKwIxb5QECrpMNsW1yRxiPZbLaHOslX
         QbXMdfVgHLmXJHdEIVF/4t8wj0cfzQkBXLkJJy2pH9SDOVNW7VOjQL8YFj/cMwABFdF8
         ffrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738622959; x=1739227759;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o6uTataAY3GQTpE4xzPQNPjS5WfqGm/dmAi8nF3O3I8=;
        b=qWdygFysu2dddAoqarb+OuDfS9sQmsv0QyAYzHimnsfpUXtCFn9CFiL1wB6sdPCnDL
         q7rSDaIgm9y5kc9dLYn4dDcTfzTwOpy2n/Gp9osocvNhe+rzOERcNHzMMjfp+uLgIe3Y
         zoaNPdZsw2zpQJ/ZVgeTcQCv9hFIPxAKNTbG+htG8QNTrvfuZcTJ/6bVJFIacKrpaizO
         adtdy+wjTBPi4TGgJ15qjJi2BOAKAPxNqhiC8BQN5UR/caaw3B4zFAwTxeDCRJSfZXs7
         t8u1v9C9YK5dgccShNyjnPUotm0OPZz2dAdXfG/RxeZP8SeEk7Uyga8D2vIEapW7yGzd
         +wBA==
X-Gm-Message-State: AOJu0Ywe77IOX8OgYIUdL38K4devSvp3esK2pBy+SpDEwfNUI6FnpWyV
	I3pOgQ7WxTMFPlMv54PEpdFTDR8cjUOmWT/aMmgNzO/+65e/nv/57lr6KEKWb1BCYvnTfqSVkyv
	u+haKfojmuBOsp8luvHfZ+xDHYw4=
X-Gm-Gg: ASbGncs0kAIMqUJgdz5hibyBTLhMW0siJX7nv1AZxuyoe3svzZgmhwj6APUhltslOAe
	yKsweTxBaUTImWf1jRLDhbcSnLy4PWWpMLMb94sJPe+EPd7qax+yWizu6jaEPBx+HZV+kK6A=
X-Google-Smtp-Source: AGHT+IH9HubI4EV+oJ8vuTBZ8aV6QvK+00UU5hK876F9tZ29eyN4CFjYmJFJy0R/TjGGAKnRzsA+pvcDlQIk/OZJxKA=
X-Received: by 2002:a05:6808:170a:b0:3e7:ea12:6dfd with SMTP id
 5614622812f47-3f36ddf5694mr591236b6e.18.1738622959453; Mon, 03 Feb 2025
 14:49:19 -0800 (PST)
MIME-Version: 1.0
References: <LO4P265MB4162C069DD81CD359004D22AD7EE2@LO4P265MB4162.GBRP265.PROD.OUTLOOK.COM>
 <CAOEzSFSKtCiM=p79Un9FjRF8bqXs0MFpyDZgaHon32teh8SVeg@mail.gmail.com>
 <CAOEzSFSLDMG7Ljhri9qORvhFikJ2pyV87Qa7bGa2K_1a_o=58A@mail.gmail.com> <CWLP265MB4175B138CE3F61F645A93BFCD7F52@CWLP265MB4175.GBRP265.PROD.OUTLOOK.COM>
In-Reply-To: <CWLP265MB4175B138CE3F61F645A93BFCD7F52@CWLP265MB4175.GBRP265.PROD.OUTLOOK.COM>
From: Chris Rogers <c1337rogers@gmail.com>
Date: Mon, 3 Feb 2025 17:49:08 -0500
X-Gm-Features: AWEUYZlG71a0cCwQwav2xu4qL_f2Y4h_tNLR-JoXxGfzTy2COzgCjL1F-Nc56bQ
Message-ID: <CAOEzSFTH7ppmTfv=dzN4sneHYBEbfA+ZVCHccdqCJWqShQieJQ@mail.gmail.com>
To: Daniel White <d.white.4@bham.ac.uk>
Message-ID-Hash: BUA7KRVS4P46ZCEOGOB6CNCNWQBUYLIC
X-Message-ID-Hash: BUA7KRVS4P46ZCEOGOB6CNCNWQBUYLIC
X-MailFrom: c1337rogers@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Fw: X440 uhd_find_devices unsuccessful with 1G Ethernet
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BUA7KRVS4P46ZCEOGOB6CNCNWQBUYLIC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4132572653432056394=="

--===============4132572653432056394==
Content-Type: multipart/alternative; boundary="000000000000e58d78062d44b3cb"

--000000000000e58d78062d44b3cb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Glad it worked out! I imagine the next steps you'll have to follow are the
ones about updating the filesystem... Turns out updating the X440's UHD
version is more involved than just updating the FPGA because of the MPM
architecture

https://files.ettus.com/manual/page_usrp_x4xx.html#x4xx_updating_filesystem=
s_mender

PS: these steps are much easier if you can get the X440 itself on the
internet but I know that may not be possible


On Mon, Feb 3, 2025 at 3:15=E2=80=AFPM Daniel White <d.white.4@bham.ac.uk> =
wrote:

> Chris,
> Thanks a million for picking this up.
> It was the last point that has succeeded for me - connecting to
> JTAG/Serial and not USB to PS. You were bang on. Now, I'm not sure why I
> didn't try this before...
> I was able to change the ip to a static one and now I can ssh into the
> device and get a full response from uhd_find_devices.
> The router did not work and had not yet tried the QSFP approach, but this
> was next.
> Now to correct the MPM compat mismatch!
> Best wishes,
> Dan
>
> ------------------------------
> *From:* Chris Rogers <c1337rogers@gmail.com>
> *Sent:* 31 January 2025 21:58
> *To:* Daniel White (Electronic, Electrical and Systems Engineering) <
> d.white.4@bham.ac.uk>
> *Cc:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] X440 uhd_find_devices unsuccessful with 1G
> Ethernet
>
> *CAUTION:* This email originated from outside the organisation. Do not
> click links or open attachments unless you recognise the sender and know
> the content is safe.
> Another try - It sounds like you connected the USB connection to the USB
> to PS port when you should actually be connecting to the JTAG/Console por=
t
> on the X440. This will make a new serial device show up in /dev/ttyUSB# a=
nd
> you can then communicate with it using screen/minicom/putty. One of these
> ports will give you access to the Linux filesystem and you can then chang=
e
> the /data/network/ files to set a static IP
>
> ref:
> https://files.ettus.com/manual/page_usrp_x4xx.html#x4xx_getting_started_s=
erial +
> I just went through these same steps on my X440
>
> On Fri, Jan 31, 2025 at 1:19=E2=80=AFPM Chris Rogers <c1337rogers@gmail.c=
om>
> wrote:
>
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
>

--000000000000e58d78062d44b3cb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Glad it worked out! I imagine the next steps you&#39;=
ll have to follow are the ones about updating the filesystem... Turns out u=
pdating the X440&#39;s UHD version is more involved than just updating the =
FPGA because of the MPM architecture<br><br><a href=3D"https://files.ettus.=
com/manual/page_usrp_x4xx.html#x4xx_updating_filesystems_mender">https://fi=
les.ettus.com/manual/page_usrp_x4xx.html#x4xx_updating_filesystems_mender</=
a><br><br></div>PS: these steps are much easier if you can get the X440 its=
elf on the internet but I know that may not be possible<br><div><br></div><=
/div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" =
class=3D"gmail_attr">On Mon, Feb 3, 2025 at 3:15=E2=80=AFPM Daniel White &l=
t;<a href=3D"mailto:d.white.4@bham.ac.uk">d.white.4@bham.ac.uk</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D=
"msg6342891314155357484">




<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Chris,</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Thanks a million for picking this up.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
It was the last point that has succeeded for me - connecting to JTAG/Serial=
 and not USB to PS. You were bang on. Now, I&#39;m not sure why I didn&#39;=
t try this before...</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I was able to change the ip to a static one and now I can ssh into the devi=
ce and get a full response from=C2=A0uhd_find_devices.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
The router did not work and had not yet tried the QSFP approach, but this w=
as next.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Now to correct the MPM compat mismatch!</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Best wishes,</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Dan</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div id=3D"m_6342891314155357484appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div dir=3D"ltr" id=3D"m_6342891314155357484divRplyFwdMsg"><span style=3D"f=
ont-family:Calibri,sans-serif;font-size:11pt;color:rgb(0,0,0)"><b>From:</b>=
=C2=A0Chris Rogers &lt;<a href=3D"mailto:c1337rogers@gmail.com" target=3D"_=
blank">c1337rogers@gmail.com</a>&gt;<br>
<b>Sent:</b>=C2=A031 January 2025 21:58<br>
<b>To:</b>=C2=A0Daniel White (Electronic, Electrical and Systems Engineerin=
g) &lt;<a href=3D"mailto:d.white.4@bham.ac.uk" target=3D"_blank">d.white.4@=
bham.ac.uk</a>&gt;<br>
<b>Cc:</b>=C2=A0<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_bl=
ank">usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.=
ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b>=C2=A0Re: [USRP-users] X440 uhd_find_devices unsuccessful wi=
th 1G Ethernet</span>
<div>=C2=A0</div>
</div>
<table align=3D"left" cellspacing=3D"0" cellpadding=3D"0" style=3D"width:10=
0%;box-sizing:border-box;border-collapse:collapse;border-spacing:0px">
<tbody>
<tr>
<td style=3D"border-width:1px;border-style:solid;border-color:rgb(156,101,0=
);background-color:rgb(255,235,156);padding:2pt;width:10%">
<b>CAUTION:</b>=C2=A0This email originated from outside the organisation. D=
o not click links or open attachments unless you recognise the sender and k=
now the content is safe.</td>
</tr>
</tbody>
</table>
<br>
<div style=3D"direction:ltr">Another try - It sounds like you connected the=
 USB connection to the USB to PS port when you should actually be connectin=
g to the JTAG/Console port on the X440. This will make a new serial device =
show up in /dev/ttyUSB# and you
 can then communicate with it using screen/minicom/putty. One of these port=
s will give you access to the Linux filesystem and you can then change the =
/data/network/ files to set a static IP<br>
<br>
</div>
<div style=3D"direction:ltr">ref: <a href=3D"https://files.ettus.com/manual=
/page_usrp_x4xx.html#x4xx_getting_started_serial" id=3D"m_63428913141553574=
84OWA1b0b294c-3c3c-afa2-c83b-d714a052139e" target=3D"_blank">
https://files.ettus.com/manual/page_usrp_x4xx.html#x4xx_getting_started_ser=
ial</a>=C2=A0+ I just went through these same steps on my X440</div>
<br>
<div style=3D"direction:ltr">On Fri, Jan 31, 2025 at 1:19=E2=80=AFPM Chris =
Rogers &lt;<a href=3D"mailto:c1337rogers@gmail.com" id=3D"m_634289131415535=
7484OWA2d568966-a931-a9bf-3d9f-255cfa44d8e0" target=3D"_blank">c1337rogers@=
gmail.com</a>&gt; wrote:</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;padding-left:1ex;border-left:=
1px solid rgb(204,204,204)">
<div style=3D"direction:ltr">A couple things you can try:</div>
<ul style=3D"direction:ltr">
<li style=3D"direction:ltr">Connect your laptop and the X440 to a router an=
d let the router assign a DHCP address to the X440 and try to uhd_find_devi=
ces/ssh into it that way</li><li style=3D"direction:ltr">Connect via the QS=
FP ports and ssh into the X440 via any of the default SFP addresses ( 192.1=
68.10.2, 11.2, 12.2, 13.2 ). You&#39;ll need to set your computer&#39;s SFP=
 interface to be a static IP on the same subnet<br>
</li></ul>
<div style=3D"direction:ltr">Once you&#39;re in, you can check the UHD vers=
ion by running uhd_find_devices on the X440 itself, and you can change to a=
 static IP by following this section of the UHD manual:=C2=A0</div>
<div style=3D"direction:ltr"><a href=3D"https://files.ettus.com/manual/page=
_usrp_x4xx.html#x4xx_getting_started_network_connectivity_ifcs" id=3D"m_634=
2891314155357484OWAd6fc4531-b543-fc28-a4d5-78d3ff1bd49c" target=3D"_blank">=
https://files.ettus.com/manual/page_usrp_x4xx.html#x4xx_getting_started_net=
work_connectivity_ifcs</a></div>
<div style=3D"direction:ltr"><br>
</div>
<div style=3D"direction:ltr">Hope this helps,</div>
<div style=3D"direction:ltr">Chris</div>
<br>
<div style=3D"direction:ltr">On Fri, Jan 31, 2025 at 12:46=E2=80=AFPM Danie=
l White &lt;<a href=3D"mailto:d.white.4@bham.ac.uk" id=3D"m_634289131415535=
7484OWAa41e99f9-0589-825f-8fb7-ec49b036332e" target=3D"_blank">d.white.4@bh=
am.ac.uk</a>&gt; wrote:</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;padding-left:1ex;border-left:=
1px solid rgb(204,204,204)">
<div style=3D"direction:ltr;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFo=
ntService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Dear USRP-Users,</div>
<div style=3D"direction:ltr;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFo=
ntService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"direction:ltr;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFo=
ntService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I am trying to establish a connection from my laptop (ThinkPad P53) to an X=
440, initially,=C2=A0 via 1G ethernet cable, but uhd_find_devices, or uhd_u=
srp_probe fail despite bring able to ping the device.</div>
<ul style=3D"direction:ltr;list-style-type:disc">
<li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calib=
ri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div style=3D"direction:ltr"><u>Preamble</u>=C2=A0</div>
</li></ul>
<div style=3D"direction:ltr;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFo=
ntService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I have a USRP-2954 and have had no problem operating this, via the same 1G =
ethernet cable (with 10GB RJ45 to FSP+ adaptor). I have used Ubuntu 22.04 a=
nd 24.04.1 with both building from source and directly apt installing the b=
inaries, able to find success with
 uhd_find_devices afterwards.</div>
<div style=3D"direction:ltr;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFo=
ntService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
A difference between the USRP-2954 and X440 is that the USRP-2954 uses a fi=
xed IP address (192.168.40.2) where are Eth0 on the X440 is configured to u=
se a DHCP-assigned IP address. For a while I have experimented with network=
 settings on the host laptop, with
 varying levels of insight gained, but never able to get a response recogni=
sed from uhd_find_devices with the X440.</div>
<ul style=3D"direction:ltr;list-style-type:disc">
<li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calib=
ri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div style=3D"direction:ltr"><u>Ubuntu 24.04.1 | apt install libuhd-dev uhd=
-host</u></div>
</li></ul>
<div style=3D"direction:ltr;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFo=
ntService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
After installation and verification, and expecting uhd_find_devices to work=
 with 1G Ethernet connection, it fails.=C2=A0</div>
<div style=3D"direction:ltr;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFo=
ntService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"direction:ltr;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFo=
ntService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I attempted permutating ubuntu network settings to establish a connection. =
Only with the &#39;shared to other computers&#39; option does ubuntu declar=
e a connection has been established. From this, with wireshark I can confir=
m communication from the X440 via its serial
 number and mac address, and find its ip address (10.42.0.159).</div>
<div style=3D"direction:ltr;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFo=
ntService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I can ping the device with &#39;shared to other computers&#39; or with a fi=
xed address set on the computer as 10.42.0.1. I cannot however ssh into the=
 device, or get a valid response from uhd_find_devices / uhd_usrp_probe wit=
h known arguments queried.=C2=A0</div>
<div style=3D"direction:ltr;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFo=
ntService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"direction:ltr;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFo=
ntService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Connecting the laptop to the &#39;PS to USB&#39; usb-c port, I expect to se=
e a new usb device recognised on the laptop with lsusb, lsblk<b>,
</b>ls -lash /dev/tty*, but never does the number of connections change aft=
er powering cycling the device while connected in this way. This was my hop=
e through after finding
<a href=3D"https://forums.ni.com/t5/USRP-Software-Radio/Unable-to-find-usrp=
-devices-for-USRP-X440-RJ45-ethernet/td-p/4354614" id=3D"m_6342891314155357=
484OWA4b3ac7cf-b678-afef-8432-3d7f25d3745e" target=3D"_blank">
https://forums.ni.com/t5/USRP-Software-Radio/Unable-to-find-usrp-devices-fo=
r-USRP-X440-RJ45-ethernet/td-p/4354614</a>=C2=A0=C2=A0</div>
<div id=3D"m_6342891314155357484x_m_6378162847626910491m_398523729547350133=
0Signature">
<ul style=3D"text-align:left;list-style-type:disc">
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
ual/page_build_guide.html" id=3D"m_6342891314155357484OWAcf7f031c-08d3-ce89=
-a83b-bd1ff895784d" style=3D"margin:0px;text-align:left" target=3D"_blank">
https://files.ettus.com/manual/page_build_guide.html</a>=C2=A0(only without=
 libcurses5 and libcurses5-dev) and
<a href=3D"https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Sourc=
e_Toolchain_(UHD_and_GNU_Radio)_on_Linux" id=3D"m_6342891314155357484OWAc5a=
8049d-f8d5-d0b2-6c05-b9a4b3f90c86" target=3D"_blank">
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
<ul style=3D"text-align:left;list-style-type:disc">
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
<ul style=3D"text-align:left;list-style-type:disc">
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
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" id=
=3D"m_6342891314155357484OWAe1148520-164d-94c2-d0a7-9327b2cf0cd5" target=3D=
"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" id=3D"m_6342891314155357484OWA9d8d8d17-c03f-957b-a88d-3c6c26c366bb=
" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><br>
</blockquote>
</blockquote>
</div>

</div></blockquote></div>

--000000000000e58d78062d44b3cb--

--===============4132572653432056394==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4132572653432056394==--
