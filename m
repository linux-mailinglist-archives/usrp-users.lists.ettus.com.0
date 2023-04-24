Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D34C76ED3DD
	for <lists+usrp-users@lfdr.de>; Mon, 24 Apr 2023 19:48:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E0065384285
	for <lists+usrp-users@lfdr.de>; Mon, 24 Apr 2023 13:48:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682358533; bh=f7OGztByLEOw3r1fneRWjkinDzRmyKYyf6GTSOt52Ss=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Xc/Y3uXeyHUv9vNABselFDZjP1eWt+iHk8wsgNKlxgJd/jtCuxgc+JtFFVF1MQNuS
	 7flkfESHiSdf8w/B/fdTxfMgJ2PmYESr1NcATD945XQadoxiXfZq+FTJ3Kwr4CFbuE
	 gzWlPq08Bfg0tFUa/vkFwULVrK9Kmt6lePZXsuE3SyhHVxyyc6TI73UMM5ABnaoTue
	 694SAZCVRCPKojPPAevaSzTpLGY8fTMNun5UYJK60m0gC+KMJ+bVCZfQN6vQy9D+vH
	 Uc8njFbPz/dInH+FM/UwNBo31hjUc/Kvw97kCzIf3Jx+pJ4JRrYAoeYm97GmayDVAA
	 UHr8Vwghfh9cQ==
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 070F9380D25
	for <usrp-users@lists.ettus.com>; Mon, 24 Apr 2023 13:48:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="RQGq3N1C";
	dkim-atps=neutral
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-1a6670671e3so41618805ad.0
        for <usrp-users@lists.ettus.com>; Mon, 24 Apr 2023 10:48:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1682358512; x=1684950512;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Ca+F9lNirivd4egIE3TRhQKfsd6kLK4kYxZfgiXwWLg=;
        b=RQGq3N1CUVV59B3cJkBs9d85n8LZiXDFcPcbN7Gyeg4VOZk248qDVr8ak/OouBwt1l
         C0st4uy246v/sp5nfC+Fh6UsVB7RTlgrKmk9+Z1Pf3xPEjEmGwVJ2oPYgQqSFVJgUxOV
         Qr/ej/sC4Kp8Jizq4KBvqDOpRVBx6MxnqOZF3XgDyP0bkW+ApAFUPgzV5OSE2h+sEftq
         5SyO1cIoCnumDv/uJCGVlW5LIGdDbYklHt6hcUkR2GMhq3fyKsZl+NbvT6Fl9MhTRK2H
         SuxUdG/GcLqRtsSr8MA37c61c3VdmHdlITy/c20TdClHo+p2SbTpcPEQ3E7kvBTwx3it
         NeMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682358512; x=1684950512;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ca+F9lNirivd4egIE3TRhQKfsd6kLK4kYxZfgiXwWLg=;
        b=KEX1KhAWQWjeaKQ36gISvpCg7z1TiOHwXxvMs2I/GO9JGGomtI7ZMUhvmJxyDPj/4D
         O5wbtga2DSuHzmo2y+JruhHwTddqViYFro22p1/H4hnlzPVbopMJtRvj67LksueMhiy1
         BcQ6ycLF3SFVEg6k0NLKbtIAYKuxVEiP3OQZ3h8ewGOud2QyGSFBOQhF3gAZPdtHYTQs
         uirMU+FPIwjE8YPrWXa34DH/s3i0md6ljHyKYhLKbbviTjlnsP1YG3BN6x4WUVjZ/8hA
         b3TAJVamrtsob9YgDaEaZ+9grsjY+zh1tUg9zEDmB2fHz8W9XlCGSUghqgN2D34uyRDO
         NXBQ==
X-Gm-Message-State: AAQBX9ctddTGmdphZmaU2hXqK9FfK94iAnBVGtXh+EZhctp9Zlhjb1uF
	3g27jg8YHlDhfIJEBj2t/erPXO2ylRWpQmvxnEKKb0aHzaHiIi/Y+6osWw==
X-Google-Smtp-Source: AKy350Ya8AyqovZc/wCeiVrRzJv9ACTS4H3fx0cgJ/QDbYV59uUMPqtozak6XiUmrIAwRMM0mqOWxcEDnPmtC7lhe8Q=
X-Received: by 2002:a17:90a:de02:b0:247:2d9d:4722 with SMTP id
 m2-20020a17090ade0200b002472d9d4722mr14785623pjv.0.1682358511633; Mon, 24 Apr
 2023 10:48:31 -0700 (PDT)
MIME-Version: 1.0
References: <FR2P281MB2816B4EAC4DCCC82FD3A9C6790679@FR2P281MB2816.DEUP281.PROD.OUTLOOK.COM>
In-Reply-To: <FR2P281MB2816B4EAC4DCCC82FD3A9C6790679@FR2P281MB2816.DEUP281.PROD.OUTLOOK.COM>
From: Michael Dickens <michael.dickens@ettus.com>
Date: Mon, 24 Apr 2023 13:48:20 -0400
Message-ID: <CAGNhwTOuzq0VZjAUaG5KsvtoHRQ91rQup1mzwrN-yS1dCyEObA@mail.gmail.com>
To: =?UTF-8?Q?Maximilian_Matth=C3=A9?= <maximilian.matthe@barkhauseninstitut.org>
Message-ID-Hash: LHJUAKEJUB5GDA434WQPBDSYGL22Y4VY
X-Message-ID-Hash: LHJUAKEJUB5GDA434WQPBDSYGL22Y4VY
X-MailFrom: michael.dickens@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X410 not reachable
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LHJUAKEJUB5GDA434WQPBDSYGL22Y4VY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2928429989331464346=="

--===============2928429989331464346==
Content-Type: multipart/alternative; boundary="00000000000078a22705fa189d57"

--00000000000078a22705fa189d57
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Max - I'd recommend using an attached host computer to download the X410
filesystem & then writing that to USB-mounted eMMC, as noted here: <
https://kb.ettus.com/USRP_X410_Getting_Started_Guide#Flashing_the_eMMC >. -
MLD

On Mon, Apr 24, 2023 at 6:08=E2=80=AFAM Maximilian Matth=C3=A9 <
maximilian.matthe@barkhauseninstitut.org> wrote:

> Hello,
>
> after having had two X410 devices in idle mode, they now show this error
> (both show exactly the same error pattern, that's why I exclude a hardwar=
e
> error):
>
> root@NE-LAB-X410-03:~# uhd_usrp_probe --args=3Daddr=3Dlocalhost
> [INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100;
> UHD_4.4.0.0-68-g02558b69
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De320,serial=3DFA4EDE7,name=3D=
NE-LAB-X410-03,fpga=3Dn/a,claimed=3DFalse,addr=3Dlocalhost
> [WARNING] [MPM.PeriphManager] get_device_info_dyn() - FPGA functionality
> not implemented yet
> [WARNING] [MPMD::XPORT::UDP] Cannot create UDP link to device: The IP
> address `localhost' is requested, but not reachable.
> [ERROR] [MPMD::MB_IFACE] No CHDR connection available!
> [INFO] [MPM.PeriphManager] init() called with device args
> `fpga=3Dn/a,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-03,product=3De320'.
> [WARNING] [MPM.PeriphManager.UDP] No internal interface to forward CHDR
> packets to from lo.
> [WARNING] [MPM.PeriphManager.UDP] No internal interface to forward CHDR
> packets to from eth0.
> Error: RuntimeError: No CHDR connection available!
> root@NE-LAB-X410-03:~#
>
> Note, that the USRP reports itself as e320. I tried restarting the USRP,
> and changing the FPGA image:
> root@NE-LAB-X410-03:~# uhd_image_loader --args
> type=3Dx4xx,mgmt_addr=3D127.0.0.1,fpga=3DX4_200
> [INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100;
> UHD_4.4.0.0-68-g02558b69
> No applicable UHD devices found[ERROR] [MPMD IMAGE LOADER]
> mpmd_image_loader only supports a single device.
>
> Moreover, I cannot update the file system, as it crashes as:
>
> root@NE-LAB-X410-03:~# usrp_update_fs -t master
> /usr/lib/python3.7/site-packages/usrp_mpm/rpc_server.py:25:
> MonkeyPatchWarning: Monkey-patching ssl after ssl has already been import=
ed
> may lead to errors, including RecursionError on Python 3.6. It may also
> silently lead to incorrect behaviour on Python 3.7. Please monkey-patch
> earlier. See https://github.com/gevent/gevent/issues/1016. Modules that
> had direct imports (NOT patched): ['urllib3.contrib.pyopenssl
> (/usr/lib/python3.7/site-packages/urllib3/contrib/pyopenssl.py)'].
>   monkey.patch_all()
> Downloading manifest file from
> https://raw.githubusercontent.com/EttusResearch/uhd/master/images/manifes=
t.txt.
> ..
> Error: Unexpected exception caught!
> 'sim'
> <class 'KeyError'>
> Traceback (most recent call last):
>   File "/usr/bin/usrp_update_fs", line 190, in main
>     return run()
>   File "/usr/bin/usrp_update_fs", line 162, in run
>     mender_image =3D prepare_image(args.device_type, args)
>   File "/usr/bin/usrp_update_fs", line 136, in prepare_image
>     download_image(device_type, manifest_path)
>   File "/usr/bin/usrp_update_fs", line 87, in download_image
>     '-t', DEFAULT_MENDER_TARGET[device_type],
> KeyError: 'sim'
>
> root@NE-LAB-X410-03:~#
>
> (Note, that I have adjusted the update script to print the exception
> traceback). Apparently, the device seems to be in `sim` mode, whatever th=
at
> means.
>
> Earlier, before I restarted (that was the reason for rebooting in the
> first place), the UHD driver showed these cryptic messages:
> Apr 24 09:34:22 NE-LAB-X410-03 usrp_hwd.py[263]: [MPM.PeriphManager]
> [INFO] init() called with device args `fpga=3DX4_200,mgmt_addr=3D127
> .0.0.1,name=3DNE-LAB-X410-03,product=3Dx410,clock_source=3Dinternal,time_=
source=3Dinternal'.
>                                                 Apr 24 09:34:23
> NE-LAB-X410-03 bash[25716]: [INFO] [MPM.PeriphManager] init() called with
> device args
> `fpga=3DX4_200,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-03,product=3Dx410=
,clock_source=3Dinternal,time_source=3Dinternal'.
>                                                      Apr 24 09:34:25
> NE-LAB-X410-03 bash[25716]: [WARNING] [0/Radio#0] Attempting to set tick
> rate to 0. Skipping.
> Apr 24 09:34:25 NE-LAB-X410-03 bash[25716]: [WARNING] [0/Replay#0]
> Requested packet size exceeds MTU! Coercing to 1500
> Apr 24 09:34:25 NE-LAB-X410-03 bash[25716]: [WARNING] [0/Replay#0]
> Requested packet size exceeds MTU! Coercing to 1500
> Apr 24 09:35:42 NE-LAB-X410-03 systemd-journald[149]: Forwarding to syslo=
g
> missed 27 messages.
> Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: metal: info:
>
> Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: DTC Scan T1
>
> Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: metal: info:      ADC0:
> 000000000000001113222220000000000000000000000000*00000000000
> 0000#000000000011113222200000000000000000000000000000000000000000000
>
> Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: metal: info:      ADC2:
> 000000000000000000000001111222220000000000000000#00000000*000000000000000=
0000000000011112222200000000000000000000000000000000000
>                                                                 Apr 24
> 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: metal: info:      ADC0: Marker:=
 -
> 76, 0                                             Apr 24 09:35:42
> NE-LAB-X410-03 usrp_hwd.py[263]: metal: info:      ADC2: Marker: - 76, 4
>
> Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: metal: info:      SysRef
> period in terms of ADC T1s =3D 1152
> Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: metal: info:      ADC
> target latency =3D 1228
> Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: metal: info:
>
> Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: DTC Scan T1
>
> Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: metal: info:      DAC0:
> 000000000000000000000111122222200000000000000000000000000*00
> 0000#000000000000000000011132222200000000000000000000000000000000000
>
> Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: metal: info:      DAC1:
> 000000000000000000000000001111222222000000000000000000000#00
> 0*000000000000000000000000001111222220000000000000000000000000000000
> Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: metal: info:      DAC0:
> Marker: - 51, 0
> Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: metal: info:      DAC1:
> Marker: - 51, 0
> Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: metal: info:      SysRef
> period in terms of DAC T1s =3D 2304
> Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: metal: info:      DAC
> target latency =3D 800
> Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: metal: error:     Error =
:
> DAC alignment target latency of 816 < minimum possible 816
>
> What shall I do to debug this problem?
>
> Thank you,
> Max
>
>
>
> Maximilian Matthe
>
> Head of Engineering Lab
>
> maximilian.matthe@barkhauseninstitut.org
>
> Tel.: +49 173 4509667
>
>
>
> *Barkhausen Institut*
> www.barkhauseninstitut.org
>
> Barkhausen Institut gGmbH | Sitz: W=C3=BCrzburger Stra=C3=9Fe 46, 01187 D=
resden,
> Germany | Registergericht: Amtsgericht Dresden, HRB 37267 |
> Gesch=C3=A4ftsf=C3=BChrer: Prof. Dr. Gerhard Fettweis, Dr. Tim Hentschel =
|
> Vorsitzende der Gesellschafterdelegation: Dr. Undine Kr=C3=A4tzig
>
> Hinweise zum Datenschutz und zur Verarbeitung Ihrer Daten finden Sie
> unter: https://barkhauseninstitut.org/data-privacy
>
> This email and any attachments are intended only for the person to whom
> this email is addressed and may contain confidential and/or privileged
> information. If you received this email in error, please do not disclose
> the contents to anyone, but notify the sender by return email and delete
> this email (and any attachments) from your system. Information on data
> protection and processing of your personal information:
> https://barkhauseninstitut.org/data-privacy
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000078a22705fa189d57
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Max - I&#39;d recommend using an attached host computer=
 to download the X410 filesystem &amp; then writing that to USB-mounted eMM=
C, as noted here: &lt;=C2=A0<a href=3D"https://kb.ettus.com/USRP_X410_Getti=
ng_Started_Guide#Flashing_the_eMMC">https://kb.ettus.com/USRP_X410_Getting_=
Started_Guide#Flashing_the_eMMC</a> &gt;. - MLD</div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 24, 2023 at 6:08=
=E2=80=AFAM Maximilian Matth=C3=A9 &lt;<a href=3D"mailto:maximilian.matthe@=
barkhauseninstitut.org">maximilian.matthe@barkhauseninstitut.org</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=
=3D"msg-1135775879575130172">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Hello,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
after having had two X410 devices in idle mode, they now show this error (b=
oth show exactly the same error pattern, that&#39;s why I exclude a hardwar=
e error):</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
root@NE-LAB-X410-03:~# uhd_usrp_probe --args=3Daddr=3Dlocalhost
<div>[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.4.0.0-6=
8-g02558b69</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D127.0.0.1,type=3De3xx,product=3De320,serial=3DFA4EDE7,name=3DNE-LAB-X41=
0-03,fpga=3Dn/a,claimed=3DFalse,addr=3Dlocalhost</div>
<div>[WARNING] [MPM.PeriphManager] get_device_info_dyn() - FPGA functionali=
ty not implemented yet</div>
<div>[WARNING] [MPMD::XPORT::UDP] Cannot create UDP link to device: The IP =
address `localhost&#39; is requested, but not reachable.</div>
<div>[ERROR] [MPMD::MB_IFACE] No CHDR connection available!</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `fpga=3Dn/a,=
mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-03,product=3De320&#39;.</div>
<div>[WARNING] [MPM.PeriphManager.UDP] No internal interface to forward CHD=
R packets to from lo.</div>
<div>[WARNING] [MPM.PeriphManager.UDP] No internal interface to forward CHD=
R packets to from eth0.</div>
<div>Error: RuntimeError: No CHDR connection available!</div>
<div>root@NE-LAB-X410-03:~# </div>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Note, that the USRP reports itself as e320. I tried restarting the USRP, an=
d changing the FPGA image:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
root@NE-LAB-X410-03:~# uhd_image_loader --args type=3Dx4xx,mgmt_addr=3D127.=
0.0.1,fpga=3DX4_200
<div>[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.4.0.0-6=
8-g02558b69</div>
<div>No applicable UHD devices found[ERROR] [MPMD IMAGE LOADER] mpmd_image_=
loader only supports a single device.</div>
<div><br>
</div>
<div>Moreover, I cannot update the file system, as it crashes as:</div>
<div><br>
</div>
<div>root@NE-LAB-X410-03:~# usrp_update_fs -t master
<div>/usr/lib/python3.7/site-packages/usrp_mpm/rpc_server.py:25: MonkeyPatc=
hWarning: Monkey-patching ssl after ssl has already been imported may lead =
to errors, including RecursionError on Python 3.6. It may also silently lea=
d to incorrect
 behaviour on Python 3.7. Please monkey-patch earlier. See <a href=3D"https=
://github.com/gevent/gevent/issues/1016" target=3D"_blank">https://github.c=
om/gevent/gevent/issues/1016</a>. Modules that had direct imports (NOT patc=
hed): [&#39;urllib3.contrib.pyopenssl (/usr/lib/python3.7/site-packages/url=
lib3/contrib/pyopenssl.py)&#39;].
</div>
<div>=C2=A0 monkey.patch_all()</div>
<div>Downloading manifest file from <a href=3D"https://raw.githubuserconten=
t.com/EttusResearch/uhd/master/images/manifest.txt." target=3D"_blank">http=
s://raw.githubusercontent.com/EttusResearch/uhd/master/images/manifest.txt.=
</a>..</div>
<div>Error: Unexpected exception caught!</div>
<div>&#39;sim&#39;</div>
<div>&lt;class &#39;KeyError&#39;&gt;</div>
<div>Traceback (most recent call last):</div>
<div>=C2=A0 File &quot;/usr/bin/usrp_update_fs&quot;, line 190, in main</di=
v>
<div>=C2=A0 =C2=A0 return run()</div>
<div>=C2=A0 File &quot;/usr/bin/usrp_update_fs&quot;, line 162, in run</div=
>
<div>=C2=A0 =C2=A0 mender_image =3D prepare_image(args.device_type, args)</=
div>
<div>=C2=A0 File &quot;/usr/bin/usrp_update_fs&quot;, line 136, in prepare_=
image</div>
<div>=C2=A0 =C2=A0 download_image(device_type, manifest_path)</div>
<div>=C2=A0 File &quot;/usr/bin/usrp_update_fs&quot;, line 87, in download_=
image</div>
<div>=C2=A0 =C2=A0 &#39;-t&#39;, DEFAULT_MENDER_TARGET[device_type],</div>
<div>KeyError: &#39;sim&#39;</div>
<div><br>
</div>
<div>root@NE-LAB-X410-03:~# </div>
=C2=A0</div>
<div>(Note, that I have adjusted the update script to print the exception t=
raceback). Apparently, the device seems to be in `sim` mode, whatever that =
means.
<br>
</div>
<div><br>
</div>
<div>Earlier, before I restarted (that was the reason for rebooting in the =
first place), the UHD driver showed these cryptic messages:</div>
<div>Apr 24 09:34:22 NE-LAB-X410-03 usrp_hwd.py[263]: [MPM.PeriphManager] [=
INFO] init() called with device args `fpga=3DX4_200,mgmt_addr=3D127
<div>.0.0.1,name=3DNE-LAB-X410-03,product=3Dx410,clock_source=3Dinternal,ti=
me_source=3Dinternal&#39;. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Apr 24 09:34:23 NE-LAB-X410-0=
3 bash[25716]: [INFO] [MPM.PeriphManager] init() called with device
 args `fpga=3DX4_200,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-03,product=3D=
x410,clock_source=3Dinternal,time_source=3Dinternal&#39;. =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0Apr 24 09:34:25 NE-LAB-X410-03 bash[25716]: [WARNIN=
G] [0/Radio#0] Attempting to set tick
 rate to 0. Skipping. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</div>
<div>Apr 24 09:34:25 NE-LAB-X410-03 bash[25716]: [WARNING] [0/Replay#0] Req=
uested packet size exceeds MTU! Coercing to 1500 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0
</div>
<div>Apr 24 09:34:25 NE-LAB-X410-03 bash[25716]: [WARNING] [0/Replay#0] Req=
uested packet size exceeds MTU! Coercing to 1500 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0
</div>
<div>Apr 24 09:35:42 NE-LAB-X410-03 systemd-journald[149]: Forwarding to sy=
slog missed 27 messages. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0
</div>
<div>Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: metal: info: =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0</div>
<div>Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: DTC Scan T1 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0
</div>
<div>Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: metal: info: =C2=A0 =
=C2=A0 =C2=A0ADC0: 000000000000001113222220000000000000000000000000*0000000=
0000</div>
<div>0000#000000000011113222200000000000000000000000000000000000000000000 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0
</div>
<div>Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: metal: info: =C2=A0 =
=C2=A0 =C2=A0ADC2: 000000000000000000000001111222220000000000000000#0000000=
0*0000000000000000000000000011112222200000000000000000000000000000000000 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Apr 24 09:35:42 NE-LAB=
-X410-03 usrp_hwd.py[263]: metal: info: =C2=A0 =C2=A0 =C2=A0ADC0: Marker: -=
 76, 0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: metal: info:=
 =C2=A0 =C2=A0 =C2=A0ADC2: Marker: - 76,
 4 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 </div>
<div>Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: metal: info: =C2=A0 =
=C2=A0 =C2=A0SysRef period in terms of ADC T1s =3D 1152 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</=
div>
<div>Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: metal: info: =C2=A0 =
=C2=A0 =C2=A0ADC target latency =3D 1228 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
</div>
<div>Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: metal: info: =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0</div>
<div>Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: DTC Scan T1 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0
</div>
<div>Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: metal: info: =C2=A0 =
=C2=A0 =C2=A0DAC0: 00000000000000000000011112222220000000000000000000000000=
0*00</div>
<div>0000#000000000000000000011132222200000000000000000000000000000000000 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0
</div>
<div>Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: metal: info: =C2=A0 =
=C2=A0 =C2=A0DAC1: 00000000000000000000000000111122222200000000000000000000=
0#00</div>
<div>0*000000000000000000000000001111222220000000000000000000000000000000</=
div>
<div>Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: metal: info: =C2=A0 =
=C2=A0 =C2=A0DAC0: Marker: - 51, 0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
</div>
<div>Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: metal: info: =C2=A0 =
=C2=A0 =C2=A0DAC1: Marker: - 51, 0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
</div>
<div>Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: metal: info: =C2=A0 =
=C2=A0 =C2=A0SysRef period in terms of DAC T1s =3D 2304 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</=
div>
<div>Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: metal: info: =C2=A0 =
=C2=A0 =C2=A0DAC target latency =3D 800 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</div>
Apr 24 09:35:42 NE-LAB-X410-03 usrp_hwd.py[263]: metal: error: =C2=A0 =C2=
=A0 Error : DAC alignment target latency of 816 &lt; minimum possible 816<b=
r>
</div>
<div><br>
</div>
<div>What shall I do to debug this problem?</div>
<div><br>
</div>
<div>Thank you,</div>
<div>Max<br>
</div>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div id=3D"m_-663104573546274603Signature">
<div>
<div id=3D"m_-663104573546274603divtagdefaultwrapper" dir=3D"ltr" style=3D"=
font-size:12pt;font-family:Calibri,Helvetica,sans-serif;color:rgb(0,0,0)">
<p style=3D"margin-top:0px;margin-bottom:0px">Maximilian Matthe</p>
<p style=3D"margin-top:0px;margin-bottom:0px">Head of Engineering Lab</p>
<p style=3D"margin-top:0px;margin-bottom:0px"><a href=3D"mailto:maximilian.=
matthe@barkhauseninstitut.org" target=3D"_blank">maximilian.matthe@barkhaus=
eninstitut.org</a></p>
<p style=3D"margin-top:0px;margin-bottom:0px">Tel.: +49 173 4509667<br>
</p>
</div>
</div>
</div>
</div>
<div>
<p style=3D"font-size:11pt;font-family:Calibri,sans-serif,serif,EmojiFont;m=
argin:0px">
<br>
<br>
<b>Barkhausen Institut</b> <br>
<a href=3D"http://www.barkhauseninstitut.org" target=3D"_blank">www.barkhau=
seninstitut.org</a> <br>
<br>
</p>
<p style=3D"font-size:11pt;font-family:Calibri,sans-serif,serif,EmojiFont;m=
argin:0px">
<span style=3D"font-size:9pt" lang=3D"de-DE">Barkhausen Institut gGmbH | Si=
tz: W=C3=BCrzburger Stra=C3=9Fe 46, 01187 Dresden, Germany | Registergerich=
t: Amtsgericht Dresden, HRB 37267 | Gesch=C3=A4ftsf=C3=BChrer: Prof. Dr. Ge=
rhard Fettweis, Dr. Tim Hentschel | Vorsitzende der Gesellschafterdelegatio=
n:
 Dr. Undine Kr=C3=A4tzig <br>
<br>
Hinweise zum Datenschutz und zur Verarbeitung Ihrer Daten finden Sie unter:=
 <a href=3D"https://barkhauseninstitut.org/data-privacy" target=3D"_blank">=
https://barkhauseninstitut.org/data-privacy</a>
<br>
<br>
</span><span style=3D"font-size:9pt" lang=3D"en-US">This email and any atta=
chments are intended only for the person to whom this email is addressed an=
d may contain confidential and/or privileged information. If you received t=
his email in error, please do not disclose
 the contents to anyone, but notify the sender by return email and delete t=
his email (and any attachments) from your system. Information on data prote=
ction and processing of your personal information: <a href=3D"https://barkh=
auseninstitut.org/data-privacy" target=3D"_blank">https://barkhauseninstitu=
t.org/data-privacy</a>
<br>
<br>
</span></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--00000000000078a22705fa189d57--

--===============2928429989331464346==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2928429989331464346==--
