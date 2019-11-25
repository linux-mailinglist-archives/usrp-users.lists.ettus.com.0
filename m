Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA411094A1
	for <lists+usrp-users@lfdr.de>; Mon, 25 Nov 2019 21:24:37 +0100 (CET)
Received: from [::1] (port=41842 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iZKuM-0007oN-11; Mon, 25 Nov 2019 15:24:30 -0500
Received: from mail-ot1-f50.google.com ([209.85.210.50]:40302)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1iZKuJ-0007hk-0U
 for usrp-users@lists.ettus.com; Mon, 25 Nov 2019 15:24:27 -0500
Received: by mail-ot1-f50.google.com with SMTP id m15so13816225otq.7
 for <usrp-users@lists.ettus.com>; Mon, 25 Nov 2019 12:24:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yrHuM1TV7I9Qpa8Eg2sRsGT1lfvpdjzYOf9r6J/kx6A=;
 b=Wj8yACANJ+nr7dcBngdR8DnsBbkm2AOyCavm6acvjN5zgsMMF7p/bjWK/y3CXIqnP9
 0VO6gsEC6onREKNX8d8LIzclzJOQqRPuUixUzyVzxFgRyiG3JIyTzBZTgYrxkIvUHQHo
 j9I1QuovP4U+vr80eARcqv6J90OxxK7BHYgViijWZTeAc6lY728bLVzc+Cplb1azGwpq
 jxEzNjHJtS88yk1sr6Y+GJUeDTuH62xxnwjIa7E9RDwHpS8ELHrtkBBUqMQ5++Lxferw
 /cOopv4L8RlKuqrlf5JB/cpftNr1a5PMzTEFKyeAIgZA9r9eG/PPjthr8uWD7pgxLHSI
 jslQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yrHuM1TV7I9Qpa8Eg2sRsGT1lfvpdjzYOf9r6J/kx6A=;
 b=o/roOHgu4LAwGWsqDKLQvMDxQj34tPFF8iIVZmIfa34KeFP4Ln10ccx3JYiIpLUeUB
 jaAZP3qt5pflWemI86ga19uyNXF058XSfni5v/gdLXmv/TQjUUEtLxAJSrGWrm7C22ge
 i04DfZ1+4NAx6s+Lj9piFLo55AMCV6AjLL13hkm1PLcOiD3rGPScfvtOMmh6adYGfZZq
 CcUpSDkA+SAFFmnq32A6sp/9NO+LMxhozRCMFdDwGPoj5geJGnkxqiyiwuo3S69blO8k
 ZWL1988HMPTYonfB466oEG8qNXu1rHN/+CUY9ximMZ+GrSjAWKXp7iHY9RpAypIVaIPj
 nfZw==
X-Gm-Message-State: APjAAAXDkvvLbRQWpdJ9qavAXtApANefMoYgy4HnS5ICdDOxVdndHv5u
 TDo8niKuqOFQXolZX0CXxFn4qqX52CpQaRxO4YMJT7xV
X-Google-Smtp-Source: APXvYqwrhmlxUMRge1P17DLr3gXV19GScQD+EkFAr217uitgEqqj7oyxppGK5p0XNgK0SBL8V+IpVcqjsIqESXg7FT0=
X-Received: by 2002:a9d:4801:: with SMTP id c1mr21135157otf.32.1574713426101; 
 Mon, 25 Nov 2019 12:23:46 -0800 (PST)
MIME-Version: 1.0
References: <1027805479.3576226.1574357685417.ref@mail.yahoo.com>
 <1027805479.3576226.1574357685417@mail.yahoo.com>
In-Reply-To: <1027805479.3576226.1574357685417@mail.yahoo.com>
Date: Mon, 25 Nov 2019 12:24:57 -0800
Message-ID: <CAL263iwu3ubhXNt9PcmwZRRwQ9=x+_Mja-1-0royAyDijcGHyg@mail.gmail.com>
To: voonna santosh <santu_voonna@yahoo.com>
Subject: Re: [USRP-users] X300 underflows with tx_rate 100Msps
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Nate Temple via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nate Temple <nate.temple@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6059126353462362929=="
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

--===============6059126353462362929==
Content-Type: multipart/alternative; boundary="00000000000062de8d0598318a12"

--00000000000062de8d0598318a12
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Voonna,

What is your CPU frequency?

What kind of NIC are you using?

If your NIC supports DPDK, I would recommend trying to use the DPDK
transport, but you will need to update to UHD 3.14.1.1 to support DPDK with
the X310.


https://files.ettus.com/manual/page_dpdk.html

Regards,
Nate Temple

On Thu, Nov 21, 2019 at 9:35 AM voonna santosh via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Michael,
>     I am experiencing lots of underflows when I use benchmark_rate exampl=
e
> app. Following is the configuration:
>
> Host processor    : Intel=C2=AE Xeon=C2=AE Processor D-1500 System on Chi=
p (SoC)
> Host OS: Centos 7
> UHD: release_003_010_001_000
> SDR HW: X300 with UBX-160 (Calibration done as documented)
> Eth link: SFP
>  - Maximum socket buffer sizes (wmem_max, rmem_max)
>  - MTU 9000
>  - Tx/Rx descriptors (sudo ethtool -G <interface> tx 4096 rx 4096)
>  - thread priority set to 1
> CPU usage: Only two CPUs are being used, but rest of the cores are free
> and the host is headless(No CPU consuming apps).
>
>   If I test rx_rate with 200Msps, it works well. But when I use tx_rate
> with 100Msps, I could see lots of underflows (Us).
>
> ./benchmark_rate --args=3D"addr=3D192.168.40.2" --tx_rate=3D100e6
> --channels=3D"0" --duration 200
> linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-39); Boost_105800;
> UHD_003.010.001.HEAD-0-g929e3b32
>
>
> Creating the usrp device with: addr=3D192.168.40.2...
> -- X300 initialization sequence...
> -- Determining maximum frame size... 8000 bytes.
> -- Setup basic communication...
> -- Loading values from EEPROM...
> -- Setup RF frontend clocking...
> -- Radio 1x clock:200
> -- Detecting internal GPSDO.... Found an internal GPSDO: LC_XO, Firmware
> Rev 0.929b
> -- [DMA FIFO] Running BIST for FIFO 0... pass (Throughput: 1179.5MB/s)
> -- [DMA FIFO] Running BIST for FIFO 1... pass (Throughput: 1184.4MB/s)
> -- [RFNoC Radio] Performing register loopback test... pass
> -- [RFNoC Radio] Performing register loopback test... pass
> -- [RFNoC Radio] Performing register loopback test... pass
> -- [RFNoC Radio] Performing register loopback test... pass
> -- Performing timer loopback test... pass
> -- Performing timer loopback test... pass
> Using Device: Single USRP:
>   Device: X-Series Device
>   Mboard 0: X300
>   RX Channel: 0
>     RX DSP: 0
>     RX Dboard: A
>     RX Subdev: UBX RX
>   RX Channel: 1
>     RX DSP: 0
>     RX Dboard: B
>     RX Subdev: Unknown (0xffff) - 0
>   TX Channel: 0
>     TX DSP: 0
>     TX Dboard: A
>     TX Subdev: UBX TX
>   TX Channel: 1
>     TX DSP: 0
>     TX Dboard: B
>     TX Subdev: Unknown (0xffff) - 0
>
> Setting device timestamp to 0...
> Testing transmit rate 100.000000 Msps on 1 channels
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU ....... Lots of
> underflows
>
> Thanks in advance.
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000062de8d0598318a12
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi Voonna,<br><br>What is your CPU frequency? <br><br>W=
hat kind of NIC are you using?<br><br>If your NIC supports DPDK, I would re=
commend trying to use the DPDK transport, but you will need to update to UH=
D 3.14.1.1 to support DPDK with the X310.<br><br><br><a href=3D"https://fil=
es.ettus.com/manual/page_dpdk.html">https://files.ettus.com/manual/page_dpd=
k.html</a><br><br>Regards,<br>Nate Temple</div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 21, 2019 at 9:35=
 AM voonna santosh via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.et=
tus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div><div style=3D"font-family:Helvetica=
 Neue,Helvetica,Arial,sans-serif;font-size:16px"><div dir=3D"ltr"><div>Hi M=
ichael,<br>=C2=A0=C2=A0=C2=A0 I am experiencing lots of underflows when I u=
se benchmark_rate example app. Following is the configuration:<br>=C2=A0=C2=
=A0 =C2=A0<br>Host processor=C2=A0=C2=A0 =C2=A0: Intel=C2=AE Xeon=C2=AE Pro=
cessor D-1500 System on Chip (SoC)<br>Host OS: Centos 7<br>UHD: release_003=
_010_001_000<br>SDR HW: X300 with UBX-160 (Calibration done as documented)<=
br>Eth link: SFP<br>=C2=A0- Maximum socket buffer sizes (wmem_max, rmem_max=
)<br>=C2=A0- MTU 9000<br>=C2=A0- Tx/Rx descriptors (sudo ethtool -G &lt;int=
erface&gt; tx 4096 rx 4096)<br>=C2=A0- thread priority set to 1<br>CPU usag=
e: Only two CPUs are being used, but rest of the cores are free and the hos=
t is headless(No CPU consuming apps).<br><br>=C2=A0 If I test rx_rate with =
200Msps, it works well. But when I use tx_rate with 100Msps, I could see lo=
ts of underflows (Us).<br><br>./benchmark_rate --args=3D&quot;addr=3D192.16=
8.40.2&quot; --tx_rate=3D100e6=C2=A0 --channels=3D&quot;0&quot; --duration =
200<br>linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-39); Boost_1058=
00; UHD_003.010.001.HEAD-0-g929e3b32<br><br><br>Creating the usrp device wi=
th: addr=3D192.168.40.2...<br>-- X300 initialization sequence...<br>-- Dete=
rmining maximum frame size... 8000 bytes.<br>-- Setup basic communication..=
.<br>-- Loading values from EEPROM...<br>-- Setup RF frontend clocking...<b=
r>-- Radio 1x clock:200<br>-- Detecting internal GPSDO.... Found an interna=
l GPSDO: LC_XO, Firmware Rev 0.929b<br>-- [DMA FIFO] Running BIST for FIFO =
0... pass (Throughput: 1179.5MB/s)<br>-- [DMA FIFO] Running BIST for FIFO 1=
... pass (Throughput: 1184.4MB/s)<br>-- [RFNoC Radio] Performing register l=
oopback test... pass<br>-- [RFNoC Radio] Performing register loopback test.=
.. pass<br>-- [RFNoC Radio] Performing register loopback test... pass<br>--=
 [RFNoC Radio] Performing register loopback test... pass<br>-- Performing t=
imer loopback test... pass<br>-- Performing timer loopback test... pass<br>=
Using Device: Single USRP:<br>=C2=A0 Device: X-Series Device<br>=C2=A0 Mboa=
rd 0: X300<br>=C2=A0 RX Channel: 0<br>=C2=A0=C2=A0=C2=A0 RX DSP: 0<br>=C2=
=A0=C2=A0=C2=A0 RX Dboard: A<br>=C2=A0=C2=A0=C2=A0 RX Subdev: UBX RX<br>=C2=
=A0 RX Channel: 1<br>=C2=A0=C2=A0=C2=A0 RX DSP: 0<br>=C2=A0=C2=A0=C2=A0 RX =
Dboard: B<br>=C2=A0=C2=A0=C2=A0 RX Subdev: Unknown (0xffff) - 0<br>=C2=A0 T=
X Channel: 0<br>=C2=A0=C2=A0=C2=A0 TX DSP: 0<br>=C2=A0=C2=A0=C2=A0 TX Dboar=
d: A<br>=C2=A0=C2=A0=C2=A0 TX Subdev: UBX TX<br>=C2=A0 TX Channel: 1<br>=C2=
=A0=C2=A0=C2=A0 TX DSP: 0<br>=C2=A0=C2=A0=C2=A0 TX Dboard: B<br>=C2=A0=C2=
=A0=C2=A0 TX Subdev: Unknown (0xffff) - 0<br><br>Setting device timestamp t=
o 0...<br>Testing transmit rate 100.000000 Msps on 1 channels<br>UUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU ....... Lots of underflows<br><=
br>Thanks in advance.</div><div><br></div></div></div></div>_______________=
________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000062de8d0598318a12--


--===============6059126353462362929==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6059126353462362929==--

