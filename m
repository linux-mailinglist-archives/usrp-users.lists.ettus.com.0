Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 71579D0547
	for <lists+usrp-users@lfdr.de>; Wed,  9 Oct 2019 03:37:19 +0200 (CEST)
Received: from [::1] (port=53218 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iI0uk-0003hJ-0j; Tue, 08 Oct 2019 21:37:18 -0400
Received: from mail-lj1-f178.google.com ([209.85.208.178]:34386)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1iI0ug-0003Wf-I2
 for usrp-users@lists.ettus.com; Tue, 08 Oct 2019 21:37:14 -0400
Received: by mail-lj1-f178.google.com with SMTP id j19so785193lja.1
 for <usrp-users@lists.ettus.com>; Tue, 08 Oct 2019 18:36:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DWOCs5clTNEEJ31e8PtF47W90vNDOS06dSbgMJRkoJA=;
 b=OB80z/WayluYW/nLAY9XG65u3zGDC83+NShHPLrNYiNvmHdqcuHblqmWsF+C77il9v
 pu2Uwt5tGQid2jeNOWLd6bfIoUOpJDt7hDXhJfHUdHB5m489XxjBJxY6z8OqG4WZQwq2
 0t+gUH8uUNSzdXoTb+DwcZSOPNhMJvpGdz8bRVLsEjPLFmBVh6lp1EYXYs9G/Xp252a+
 iDKSZaIK4QC49Ywofm41fbvrSYwrceGz2EhCtiYHFoEQ7MdYA/qDZ5lSBmsdPWE04IOd
 /fvImZx6iNIa0M6LbWSRQoOc5s2L6nmvXrdViIHHpOqjlu2NzMg3x1AlnZJCBAtknn9K
 2Cow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DWOCs5clTNEEJ31e8PtF47W90vNDOS06dSbgMJRkoJA=;
 b=qHk5XXLVHPxmIjk5x/vtvCx4VIKukEXPyUrzimLL2PVtBIzgnwMO1wzoE/8zWHMsF/
 0N3oDwGBHB7XsbTdL/xl9OsDqhRIFAuJO9jPcGvnTys7YWJUFH+Yi5zpszkR4hPWrTzd
 YvZ96jQj9ersfqSnrKg1LC1hrPrru8SCW0/Tji0ObzlQMzPtt4ZvaXd99I3QZIMIeneY
 HJn7ik3o5y+T2Z9hNOS1ocluR9nwz8zuTaFPHQn7U8rD53MhAwr4wKer0JdEr6g5LgF3
 XqNck+IsOERSFAkBcioz//H0GZAjQXT6gYfnJ+OZL+y5qVZlQgAkuFlW31NT3Bdkvpxw
 fi7w==
X-Gm-Message-State: APjAAAX1AP2SDRbAfDUstRs/xsRy+254zlrjit5stVyLzsO4DhWE28BG
 YnJ0PNnBbYpkvLRsNMY6RG42QEgHBuEIBqkPT1fj35Mf
X-Google-Smtp-Source: APXvYqz6EZTPc5EJOGwhN26JUXXkmHACH74ogINP4qrTf50Y+Shm571E0Txg3OxbQTG2GX5OKgoY5Uqce81Gkuph+LY=
X-Received: by 2002:a2e:207:: with SMTP id 7mr657306ljc.198.1570584993283;
 Tue, 08 Oct 2019 18:36:33 -0700 (PDT)
MIME-Version: 1.0
References: <CY4PR19MB098458DC00A7673A6D584A11A4950@CY4PR19MB0984.namprd19.prod.outlook.com>
In-Reply-To: <CY4PR19MB098458DC00A7673A6D584A11A4950@CY4PR19MB0984.namprd19.prod.outlook.com>
Date: Wed, 9 Oct 2019 10:35:57 +0900
Message-ID: <CAL7q81t4Be-7rhg-B2zpWm=m5M3oiZPvfx-U56rkHnsR6eF9aw@mail.gmail.com>
To: Jeff S <e070832@hotmail.com>
Subject: Re: [USRP-users] UHD / RFNoC Versions and Flowgraph Error with X310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2639327204788428279=="
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

--===============2639327204788428279==
Content-Type: multipart/alternative; boundary="0000000000009d528405947050fc"

--0000000000009d528405947050fc
Content-Type: text/plain; charset="UTF-8"

Hi Jeff,

Try commit 4980cbef0daf from gr-ettus and please let me know if that solves
the problem.

Jonathon

On Wed, Oct 9, 2019 at 10:23 AM Jeff S via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I have been trying to set up an environment for using RFNoC on an X310.
> It was running well before I tried to update the to using RFNoC according
> the the application note.  I'm wondering if I have an error relating to a
> version of UHD correlating to the other parts (gr-ettus, gnuradio, fpga).
> I feel like I cannot trust documentation I see (like the X310 product
> description calling out Vivado 2015, but a recent email calling out 2017,
> and an earlier question that caused an application note to be deprecated).
>
> I have two laptops which show the uhd (git branch) at version rfnoc-devel,
> and gr-ettus at master.  One will run a flowgraph with RFNoC blocks, and
> the other will get the error below with the same flowgraph (error on last
> line).  I'm just trying to figure out what direction to go before I delete
> everything and start over.  Similar questions about similar errors seemed
> to related to UHD versions, which I why I'm starting there.
>
> Thanks,
> Jeff
>
> [32;1m[INFO] [UHD] [39;0mlinux; GNU C++ version 7.4.0; Boost_106501;
> UHD_4.0.0.rfnoc-devel-702-geec24d7b
> [32;1m[INFO] [X300] [39;0mX300 initialization sequence...
> [32;1m[INFO] [X300] [39;0mMaximum frame size: 1472 bytes.
> [32;1m[INFO] [X300] [39;0mRadio 1x clock: 200 MHz
> [32;1m[INFO] [GPS] [39;0mFound an internal GPSDO: LC_XO, Firmware Rev
> 0.929a
> [32;1m[INFO] [0/DmaFIFO_0] [39;0mInitializing block control (NOC ID:
> 0xF1F0D00000000000)
> [32;1m[INFO] [0/DmaFIFO_0] [39;0mBIST passed (Throughput: 1305 MB/s)
> [32;1m[INFO] [0/DmaFIFO_0] [39;0mBIST passed (Throughput: 1307 MB/s)
> [32;1m[INFO] [0/Radio_0] [39;0mInitializing block control (NOC ID:
> 0x12AD100000000001)
> [32;1m[INFO] [0/Radio_1] [39;0mInitializing block control (NOC ID:
> 0x12AD100000000001)
> [32;1m[INFO] [0/DDC_0] [39;0mInitializing block control (NOC ID:
> 0xDDC0000000000000)
> [32;1m[INFO] [0/DDC_1] [39;0mInitializing block control (NOC ID:
> 0xDDC0000000000000)
> [32;1m[INFO] [0/DUC_0] [39;0mInitializing block control (NOC ID:
> 0xD0C0000000000000)
> [32;1m[INFO] [0/DUC_1] [39;0mInitializing block control (NOC ID:
> 0xD0C0000000000000)
> Finding block for: Radio_0
> Mapped external port 0 to 0
> Mapped port 0 to 0/Radio_0
> Mapped external port 1 to 1
> Mapped port 1 to 0/Radio_0
> TX args:
> RX args:
> 0/Radio_0 has 1 input ports
> 0/Radio_0 has 2 output ports
> getting block control for port 0
> Finding block for: Radio_0
> Mapped external port 0 to 0
> Mapped port 0 to 0/Radio_0
> Mapped external port 1 to 1
> Mapped port 1 to 0/Radio_0
> TX args:
> RX args:
> 0/Radio_0 has 1 input ports
> 0/Radio_0 has 2 output ports
> getting block control for port 0
> Finding block for: DUC
> Mapped external port 0 to 0
> Mapped port 0 to 0/DUC_0
> TX args:
> RX args:
> 0/DUC_0 has 1 input ports
> 0/DUC_0 has 1 output ports
> Finding block for: DmaFIFO
> Mapped external port 0 to 0
> Mapped port 0 to 0/DmaFIFO_0
> Mapped external port 1 to 1
> Mapped port 1 to 0/DmaFIFO_0
> TX args:
> RX args:
> 0/DmaFIFO_0 has 2 input ports
> 0/DmaFIFO_0 has 2 output ports
> getting block control for port 0
> External mapped to port 0
> getting block control for port 0
> External mapped to port 0
> getting block control for port 1
> External mapped to port 1
> getting block control for port 1
> External mapped to port 1
> Finding block for: DDC
> Mapped external port 0 to 0
> Mapped port 0 to 0/DDC_0
> Mapped external port 1 to 1
> Mapped port 1 to 0/DDC_0
> TX args:
> getting block control for port 0
> getting block control for port 0
> block_port0 = 0
> block_id0 = 0/DDC_0
> RX args:
> External mapped to port 0
> getting block control for port 0
> getting block control for port 0
> block_port0 = 0
> block_id0 = 0/DDC_0
> 0/DDC_0 has 2 input ports
> 0/DDC_0 has 2 output ports
> getting block control for port 0
> External mapped to port 0
> getting block control for port 0
> External mapped to port 0
> getting block control for port 0
> External mapped to port 0
> getting block control for port 0
> External mapped to port 0
> gr::fft: can't import wisdom from /home/torchuser/.gr_fftw_wisdom
> getting block control for port 0
> getting block control for port 0
> Connecting 0/DmaFIFO_0 port 0 to 0/DUC_0 port 0
> [33;1m[WARNING] [RFNOC] [39;0mAssuming max packet size for 0/DmaFIFO_0
> getting block control for port 0
> getting block control for port 0
> Connecting 0/DUC_0 port 0 to 0/Radio_0 port 0
> [33;1m[WARNING] [RFNOC] [39;0mAssuming max packet size for 0/DUC_0
> getting block control for port 0
> getting block control for port 0
> Connecting 0/Radio_0 port 0 to 0/DDC_0 port 0
> [33;1m[WARNING] [RFNOC] [39;0mAssuming max packet size for 0/Radio_0
> getting block control for port 0
> getting block control for port 0
> getting block control for port 0
> thread[thread-per-block[3]: <block uhd_rfnoc_DmaFIFO (4)>]: RuntimeError:
> Cannot create streamers: No block_id specified for channel 0.
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000009d528405947050fc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jeff,<div><br></div><div>Try commit=C2=A04980cbef0daf f=
rom gr-ettus and please let me know if that solves the problem.</div><div><=
br></div><div>Jonathon</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, Oct 9, 2019 at 10:23 AM Jeff S via US=
RP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists=
.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
I have been trying to set up an environment for using RFNoC on an X310.=C2=
=A0 It was running well before I tried to update the to using RFNoC accordi=
ng the the application note.=C2=A0 I&#39;m wondering if I have an error rel=
ating to a version of UHD correlating to the other
 parts (gr-ettus, gnuradio, fpga).=C2=A0 I feel like I cannot trust documen=
tation I see (like the X310 product description calling out Vivado 2015, bu=
t a recent email calling out 2017, and an earlier question that caused an a=
pplication note to be deprecated).</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
I have two laptops which show the uhd (git branch) at version rfnoc-devel, =
and gr-ettus at master.=C2=A0 One will run a flowgraph with RFNoC blocks, a=
nd the other will get the error below with the same flowgraph (error on las=
t line).=C2=A0 I&#39;m just trying to figure out
 what direction to go before I delete everything and start over.=C2=A0 Simi=
lar questions about similar errors seemed to related to UHD versions, which=
 I why I&#39;m starting there.<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Thanks,</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Jeff<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
[32;1m[INFO] [UHD]  [39;0mlinux; GNU C++ version 7.4.0; Boost_106501; UHD_4=
.0.0.rfnoc-devel-702-geec24d7b<br>
 [32;1m[INFO] [X300]  [39;0mX300 initialization sequence...<br>
 [32;1m[INFO] [X300]  [39;0mMaximum frame size: 1472 bytes.<br>
 [32;1m[INFO] [X300]  [39;0mRadio 1x clock: 200 MHz<br>
 [32;1m[INFO] [GPS]  [39;0mFound an internal GPSDO: LC_XO, Firmware Rev 0.9=
29a<br>
 [32;1m[INFO] [0/DmaFIFO_0]  [39;0mInitializing block control (NOC ID: 0xF1=
F0D00000000000)<br>
 [32;1m[INFO] [0/DmaFIFO_0]  [39;0mBIST passed (Throughput: 1305 MB/s)<br>
 [32;1m[INFO] [0/DmaFIFO_0]  [39;0mBIST passed (Throughput: 1307 MB/s)<br>
 [32;1m[INFO] [0/Radio_0]  [39;0mInitializing block control (NOC ID: 0x12AD=
100000000001)<br>
 [32;1m[INFO] [0/Radio_1]  [39;0mInitializing block control (NOC ID: 0x12AD=
100000000001)<br>
 [32;1m[INFO] [0/DDC_0]  [39;0mInitializing block control (NOC ID: 0xDDC000=
0000000000)<br>
 [32;1m[INFO] [0/DDC_1]  [39;0mInitializing block control (NOC ID: 0xDDC000=
0000000000)<br>
 [32;1m[INFO] [0/DUC_0]  [39;0mInitializing block control (NOC ID: 0xD0C000=
0000000000)<br>
 [32;1m[INFO] [0/DUC_1]  [39;0mInitializing block control (NOC ID: 0xD0C000=
0000000000)<br>
Finding block for: Radio_0<br>
Mapped external port 0 to 0<br>
Mapped port 0 to 0/Radio_0<br>
Mapped external port 1 to 1<br>
Mapped port 1 to 0/Radio_0<br>
TX args:<br>
RX args:<br>
0/Radio_0 has 1 input ports<br>
0/Radio_0 has 2 output ports<br>
getting block control for port 0<br>
Finding block for: Radio_0<br>
Mapped external port 0 to 0<br>
Mapped port 0 to 0/Radio_0<br>
Mapped external port 1 to 1<br>
Mapped port 1 to 0/Radio_0<br>
TX args:<br>
RX args:<br>
0/Radio_0 has 1 input ports<br>
0/Radio_0 has 2 output ports<br>
getting block control for port 0<br>
Finding block for: DUC<br>
Mapped external port 0 to 0<br>
Mapped port 0 to 0/DUC_0<br>
TX args:<br>
RX args:<br>
0/DUC_0 has 1 input ports<br>
0/DUC_0 has 1 output ports<br>
Finding block for: DmaFIFO<br>
Mapped external port 0 to 0<br>
Mapped port 0 to 0/DmaFIFO_0<br>
Mapped external port 1 to 1<br>
Mapped port 1 to 0/DmaFIFO_0<br>
TX args:<br>
RX args:<br>
0/DmaFIFO_0 has 2 input ports<br>
0/DmaFIFO_0 has 2 output ports<br>
getting block control for port 0<br>
External mapped to port 0<br>
getting block control for port 0<br>
External mapped to port 0<br>
getting block control for port 1<br>
External mapped to port 1<br>
getting block control for port 1<br>
External mapped to port 1<br>
Finding block for: DDC<br>
Mapped external port 0 to 0<br>
Mapped port 0 to 0/DDC_0<br>
Mapped external port 1 to 1<br>
Mapped port 1 to 0/DDC_0<br>
TX args:<br>
getting block control for port 0<br>
getting block control for port 0<br>
block_port0 =3D 0<br>
block_id0 =3D 0/DDC_0<br>
RX args:<br>
External mapped to port 0<br>
getting block control for port 0<br>
getting block control for port 0<br>
block_port0 =3D 0<br>
block_id0 =3D 0/DDC_0<br>
0/DDC_0 has 2 input ports<br>
0/DDC_0 has 2 output ports<br>
getting block control for port 0<br>
External mapped to port 0<br>
getting block control for port 0<br>
External mapped to port 0<br>
getting block control for port 0<br>
External mapped to port 0<br>
getting block control for port 0<br>
External mapped to port 0<br>
gr::fft: can&#39;t import wisdom from /home/torchuser/.gr_fftw_wisdom<br>
getting block control for port 0<br>
getting block control for port 0<br>
Connecting 0/DmaFIFO_0 port 0 to 0/DUC_0 port 0<br>
 [33;1m[WARNING] [RFNOC]  [39;0mAssuming max packet size for 0/DmaFIFO_0<br=
>
getting block control for port 0<br>
getting block control for port 0<br>
Connecting 0/DUC_0 port 0 to 0/Radio_0 port 0<br>
 [33;1m[WARNING] [RFNOC]  [39;0mAssuming max packet size for 0/DUC_0<br>
getting block control for port 0<br>
getting block control for port 0<br>
Connecting 0/Radio_0 port 0 to 0/DDC_0 port 0<br>
 [33;1m[WARNING] [RFNOC]  [39;0mAssuming max packet size for 0/Radio_0<br>
getting block control for port 0<br>
getting block control for port 0<br>
getting block control for port 0<br>
thread[thread-per-block[3]: &lt;block uhd_rfnoc_DmaFIFO (4)&gt;]: RuntimeEr=
ror: Cannot create streamers: No block_id specified for channel 0.<br>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000009d528405947050fc--


--===============2639327204788428279==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2639327204788428279==--

