Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 81EEB2C17DD
	for <lists+usrp-users@lfdr.de>; Mon, 23 Nov 2020 22:44:11 +0100 (CET)
Received: from [::1] (port=51252 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1khJd1-0005Sx-UA; Mon, 23 Nov 2020 16:44:07 -0500
Received: from mail-lf1-f53.google.com ([209.85.167.53]:46165)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <prkane92@gmail.com>) id 1khJcy-0005OD-3y
 for usrp-users@lists.ettus.com; Mon, 23 Nov 2020 16:44:04 -0500
Received: by mail-lf1-f53.google.com with SMTP id t6so9765321lfl.13
 for <usrp-users@lists.ettus.com>; Mon, 23 Nov 2020 13:43:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=ccb3nsyFlh9sbEUCxRpGYf3M6NISLsCxc8Yq78u+e3Q=;
 b=AwIGSdb44+B7LL2BRR+UflHVQo89WVz2K9rRXg9tfVMF3GF5NjxSOAn6SnM5zPb4Cu
 NKPqlAsE0tGgeeyUUbtQFYjzml/ct0ORpKFM6rNQie5Wo8XsxgxDccxLxRLd6oUh+gWW
 w04/yrQB5oHXJbSOX76EQ085y5fMlwKfIqixENs6y+Mk51u/wgEL9pcOx63Af32k3NQw
 JgvK22VzrDg3OCqkgpIgrIavYXg0mes6/fepYi7YI6ClbS72F1LjFLLIoPmVgq6krUaZ
 I23BdAVlHjVUtjnF6l7EvcNCVrpsSmcACHB6DVq4qL+PrFFBkoRhd4OzG3Oy5A/G39Xm
 wjlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=ccb3nsyFlh9sbEUCxRpGYf3M6NISLsCxc8Yq78u+e3Q=;
 b=GzTRr7zmRpZMQeAr2eYY/f5r7t+CXV+6bfa43YM1l4gXO4UDgpbXhG4de7XL++lzTZ
 4gf8qM7ALVzvirJUkmDABksUollJP2X/aHTdmA5qEw0Q6n64bgj/CICw01MWnppQINJL
 tjohMZ9sp+cd/ItFtZPzGBs3UgnHvzYmnMA7lUywLdOTi7N8EZWRdBFhbCfhzS6FU1Se
 Zzi1/jSkwQUy96GWr6eMu6aQc+88KBEhLd9169bFCfjg2uRqjDDdekmQY6K3DGEV4bVx
 HNZcrikal5IJ4gTkofH2oOXuWixBLFEw41HgyfGiPZWo7plE0278P+5zie+PnY4pUARv
 P+5g==
X-Gm-Message-State: AOAM5330z7FJ9ptcAZsueEQrcu4g7W72EkrU10Smf4E3mx3uoCR0I3lv
 epyRgvSEjXWmAxMR3J5o4Z5nYKONK23Kcl0Ws2rCsTgZCYyRLVP9
X-Google-Smtp-Source: ABdhPJyUYDZfGl6egAXZZ3UZkjLaBSTvjAOwRsHEQUUAgYUKqMlxZE4L5uZb8JWHuAQcHGUpgdWeg0lBJmbCIFjBftA=
X-Received: by 2002:ac2:44c8:: with SMTP id d8mr460410lfm.471.1606167802245;
 Mon, 23 Nov 2020 13:43:22 -0800 (PST)
MIME-Version: 1.0
Date: Mon, 23 Nov 2020 16:43:09 -0500
Message-ID: <CAOLzfSg88FT3Cm_-Dd0jL__BchiuGhR03jLW1nxCv5N3O-TQjg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] N321 QSFP+ XQ image network connection
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Patrick Kane via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Patrick Kane <prkane92@gmail.com>
Content-Type: multipart/mixed; boundary="===============2354302391708041227=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============2354302391708041227==
Content-Type: multipart/alternative; boundary="0000000000004d76eb05b4cd156a"

--0000000000004d76eb05b4cd156a
Content-Type: text/plain; charset="UTF-8"

I have an N321 connected to serial console and QSFP+ through a XL710 Intel
NIC. With the default HG image, I can connect through 1G and serial as
expected. I updated the filesystem to UHD 4.0.0.0 using mender, and the
build artifact reflects that this was successful. Then, after loading the
XQ image (using 2x 10Gb lanes through QSFP+ port), I lose all ethernet
connectivity through the 1G port SFP0 (expected), but I get the following
output in the console window:


[  451.560674] nixge 40000000.ethernet sfp0: Link is Up - 10Gbps/Full -
flow control off

[  453.800673] nixge 40000000.ethernet sfp0: Link is Down

[  454.920676] nixge 40000000.ethernet sfp0: Link is Up - 10Gbps/Full -
flow control off

[  458.280672] nixge 40000000.ethernet sfp0: Link is Down

[  459.400677] nixge 40000000.ethernet sfp0: Link is Up - 10Gbps/Full -
flow control off

[  462.760705] nixge 40000000.ethernet sfp0: Link is Down

[  463.880678] nixge 40000000.ethernet sfp0: Link is Up - 10Gbps/Full -
flow control off

[  466.120673] nixge 40000000.ethernet sfp0: Link is Down


uhd_usrp_probe:

  _____________________________________________________

 /

|       Device: N300-Series Device

|     _____________________________________________________

|    /

|   |       Mboard: ni-n3xx-31E00AC

|   |   dboard_0_pid: 338

|   |   dboard_0_serial: 31DB406

|   |   dboard_1_pid: 338

|   |   dboard_1_serial: 31DB407

|   |   eeprom_version: 3

|   |   fs_version: 20200914000806

|   |   mender_artifact: v4.0.0.0_n3xx

|   |   mpm_sw_version: 4.0.0.0-g90ce6062

|   |   pid: 16962

|   |   product: n320

|   |   rev: 7

|   |   rpc_connection: local

|   |   serial: 31E00AC

|   |   type: n3xx

|   |   MPM Version: 3.0

|   |   FPGA Version: 8.0

|   |   FPGA git hash: be53058.clean

|   |

|   |   Time sources:  internal, external, gpsdo, sfp0

|   |   Clock sources: external, internal, gpsdo

|   |   Sensors: ref_locked, gps_locked, temp, fan, gps_gpgga, gps_sky,
gps_time, gps_tpv


Are there any configuration items needed to connect to the N321 through the
QSFP+ port. Note that I only see eth0, sfp0, sfp1, and int0 in
/etc/network/interfaces.


Thanks,

Pat

--0000000000004d76eb05b4cd156a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail-WordSection1" style=3D"page: WordSecti=
on1;">

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">I have an N321 connected =
to serial console and QSFP+ through a XL710 Intel NIC. With the default HG =
image, I can connect through 1G and serial as expected. I updated the files=
ystem to UHD 4.0.0.0 using mender, and the build artifact reflects that thi=
s was successful. Then, after loading the XQ image (using 2x 10Gb lanes thr=
ough QSFP+ port), I lose all ethernet connectivity through the 1G port SFP0=
 (expected), but I get the following output in the console window:</span></=
p><p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-si=
ze:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-=
family:&quot;Segoe UI&quot;,sans-serif;color:black"><br></span></p><p class=
=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size:11pt;fo=
nt-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-family:&qu=
ot;Segoe UI&quot;,sans-serif;color:black">[=C2=A0 451.560674] nixge
40000000.ethernet sfp0: Link is Up - 10Gbps/Full - flow control off</span><=
/p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">[=C2=A0 453.800673] nixge
40000000.ethernet sfp0: Link is Down</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">[=C2=A0 454.920676] nixge
40000000.ethernet sfp0: Link is Up - 10Gbps/Full - flow control off</span><=
/p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">[=C2=A0 458.280672] nixge
40000000.ethernet sfp0: Link is Down</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">[=C2=A0 459.400677] nixge
40000000.ethernet sfp0: Link is Up - 10Gbps/Full - flow control off</span><=
/p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">[=C2=A0 462.760705] nixge
40000000.ethernet sfp0: Link is Down</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">[=C2=A0 463.880678] nixge
40000000.ethernet sfp0: Link is Up - 10Gbps/Full - flow control off</span><=
/p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">[=C2=A0 466.120673] nixge
40000000.ethernet sfp0: Link is Down</span><span style=3D"font-size:10pt;fo=
nt-family:&quot;Segoe UI&quot;,sans-serif;color:black"> </span></p><p class=
=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size:11pt;fo=
nt-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-family:&qu=
ot;Segoe UI&quot;,sans-serif;color:black"><br></span></p><p class=3D"MsoNor=
mal" style=3D"margin:2pt 0in;line-height:normal;font-size:11pt;font-family:=
Calibri,sans-serif"><span style=3D"font-size:10pt;font-family:&quot;Segoe U=
I&quot;,sans-serif;color:black">uhd_usrp_probe:</span></p><div class=3D"gma=
il-WordSection1" style=3D"page: WordSection1;">

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">=C2=A0 __________________=
___________________________________</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">=C2=A0/</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 Device:
N300-Series Device</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0=C2=A0=C2=A0
_____________________________________________________</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0=C2=A0 /</sp=
an></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 Mboard:
ni-n3xx-31E00AC</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 dboard_0_pid: 338</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 dboard_0_serial:
31DB406</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 dboard_1_pid: 338</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 dboard_1_serial:
31DB407</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 eeprom_version: 3</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 fs_version:
20200914000806</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 mender_artifact:
v4.0.0.0_n3xx</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 mpm_sw_version:
4.0.0.0-g90ce6062</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 pid: 16962</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 product: n320</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 rev: 7</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 rpc_connection:
local</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 serial: 31E00AC</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 type: n3xx</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 MPM Version: 3.0</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 FPGA Version: 8.0</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 FPGA git hash:
be53058.clean</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |</span></p=
>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 Time sources:=C2=A0
internal, external, gpsdo, sfp0</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 Clock sources:
external, internal, gpsdo</span></p>

<p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;font-size=
:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-fa=
mily:&quot;Segoe UI&quot;,sans-serif;color:black">|=C2=A0=C2=A0 |=C2=A0=C2=
=A0 Sensors:
ref_locked, gps_locked, temp, fan, gps_gpgga, gps_sky, gps_time, gps_tpv</s=
pan></p><p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;f=
ont-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt=
;font-family:&quot;Segoe UI&quot;,sans-serif;color:black"><br></span></p><p=
 class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal"><font colo=
r=3D"#000000" face=3D"Segoe UI, sans-serif"><span style=3D"font-size:13.333=
3px">Are there any configuration items needed to connect to the N321 throug=
h the QSFP+ port. Note that I only see eth0, sfp0, sfp1, and int0 in /etc/n=
etwork/interfaces.</span></font></p><p class=3D"MsoNormal" style=3D"margin:=
2pt 0in;line-height:normal"><font color=3D"#000000" face=3D"Segoe UI, sans-=
serif"><span style=3D"font-size:13.3333px"><br></span></font></p><p class=
=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal"><font color=3D"#=
000000" face=3D"Segoe UI, sans-serif"><span style=3D"font-size:13.3333px">T=
hanks,</span></font></p><p class=3D"MsoNormal" style=3D"margin:2pt 0in;line=
-height:normal"><font color=3D"#000000" face=3D"Segoe UI, sans-serif"><span=
 style=3D"font-size:13.3333px">Pat</span></font></p>

</div><p class=3D"MsoNormal" style=3D"margin:2pt 0in;line-height:normal;fon=
t-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;f=
ont-family:&quot;Segoe UI&quot;,sans-serif;color:black"><br></span></p>

</div></div>

--0000000000004d76eb05b4cd156a--


--===============2354302391708041227==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2354302391708041227==--

