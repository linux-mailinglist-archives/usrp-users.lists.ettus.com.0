Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 818E7557F20
	for <lists+usrp-users@lfdr.de>; Thu, 23 Jun 2022 17:58:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7773E384441
	for <lists+usrp-users@lfdr.de>; Thu, 23 Jun 2022 11:58:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1655999915; bh=8Kar8lk7XWlu6aFFr/JqUO6Z4blusdBmBeIYuRn67P8=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=dv9fZdYPN3FpvQ6/bNwrsMBA/6vamwUWr7T9838l1Dew9KVKAxn4VtP/zYkJmN8+c
	 2em+Q4kUZInEne9ZQCclqRUlSGEP0U1hIk3BQsPzHg7A8uc1bVaskkmEA2aC26i8lp
	 qohUAb8Y5a4BmIZvvZ8YSRh5SEsin1hjlFVuSjtH/J+EgWqVMSaEqGz7oXr8RYShVb
	 k8bUPG2Qi5pIAStVG80S0LkAScymtguLjhOsivIicsDc9wGGHxvqFHQrpM+qQs/DKx
	 SqxIqBPw0nsVKIXXoobIe7RW9VLVU2uBl/xFpiZ5FOb13uRKFvrQpMGP7QDHcjWbz8
	 K6gVO6rxYxpWg==
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 6D0413842EB
	for <usrp-users@lists.ettus.com>; Thu, 23 Jun 2022 11:57:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="m+RNy4WM";
	dkim-atps=neutral
Received: by mail-qk1-f171.google.com with SMTP id b133so3405769qkc.6
        for <usrp-users@lists.ettus.com>; Thu, 23 Jun 2022 08:57:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:from:content-transfer-encoding:mime-version:subject:date
         :message-id:references:cc:in-reply-to:to;
        bh=EJcs73dN3xcSR0zldGAg02w38PSN6D9F2m+0XR/KEqs=;
        b=m+RNy4WMV1+pe36EcuK69JWUgLeLQ5/8lfJ+GQU3aecRRW7on0rI8qrfj/7eyvgYKF
         0QyHNli4W9nZmJ2QMXx7UGWkOSAJRdKzBve/lPYohHQEt6fVtWUeU9vJ+ExFw3ahZzjE
         Mh34ehkMGswrNlQ5kVLhRFMGZsvsiHxW9tRdlJjg3QR8y4Vl0AgePw1dtNvwAH3JFM/i
         BheOCcrqYRsphCSzIdrUeKiKI4aqaIG3zdJiXQZ4m7tqMmM2Jqt5N8TNvRaEZTZ04Es3
         9Gtj1XVolY5QVg67e8YE/1b2fzqlJa1J+CeDysucW3nMKDvceBg2eaZJfL053/9lmR3w
         d1Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:from:content-transfer-encoding
         :mime-version:subject:date:message-id:references:cc:in-reply-to:to;
        bh=EJcs73dN3xcSR0zldGAg02w38PSN6D9F2m+0XR/KEqs=;
        b=i5Ci7JqlslZD9Mw9Hhw4k5axSrFPnAXOeZBRFznfzYU1Q/X7CkZApA5LS9KctvdOt3
         p2PIRieJ+WboZemmLLHfovbcskFMs5bNfRNLQ4vL1jB198gwC0vMN79U5+Ut2GFGEiKW
         HWZ+MsV/SDu4BBFpGdMb4L8kbqGAf/b2jV3qVzpccGjVbJXoAaOdtuWn+q/OV1H0CVEh
         1gCViiBOhr/YSG7hKSDMgrsFENnHleFnnzpxyeYmPPlERrQqVMyviXxVBFzMwRphzznE
         iVuzpEIdbFY+gL6gnMm0jtgbrePhmn9gp/TlfERBDAIq5RRf4JV/nIK7UnR3eCnV58ne
         NkLw==
X-Gm-Message-State: AJIora8Wgq9C7esu5HF5GMHDsGOOuM9y9mU0vu5yojfuIBVLKfy0+1s2
	q6mqycNOHWVpn0zVBZL3xRH8gh40TuE=
X-Google-Smtp-Source: AGRyM1uvsoW5m7GetCih/vB5HWE/wjYXQ+watFRlHcf1KRgUR107Vkl4ktm3iIn51KPtJ0jhk+OKsw==
X-Received: by 2002:a37:9b48:0:b0:6ae:ea5f:ab5f with SMTP id d69-20020a379b48000000b006aeea5fab5fmr4132185qke.761.1655999857407;
        Thu, 23 Jun 2022 08:57:37 -0700 (PDT)
Received: from smtpclient.apple ([2600:381:402c:6780:fd56:12d9:983:418a])
        by smtp.gmail.com with ESMTPSA id g22-20020ac87756000000b0031690a953efsm2766350qtu.86.2022.06.23.08.57.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jun 2022 08:57:36 -0700 (PDT)
Sender: D <dcb992005@gmail.com>
From: Dylan Baros <dcbaros@utexas.edu>
X-Google-Original-From: Dylan Baros <DCB992005@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Thu, 23 Jun 2022 10:57:35 -0500
Message-Id: <2BB28190-EBF0-400D-81D8-D7F94489D16A@gmail.com>
References: <CAHN2CUfeJ8A7JLuataNQsRR-7O-h37YrcbbBy0s=FXs8fMsROg@mail.gmail.com>
In-Reply-To: <CAHN2CUfeJ8A7JLuataNQsRR-7O-h37YrcbbBy0s=FXs8fMsROg@mail.gmail.com>
To: Shane Flandermeyer <shaneflandermeyer@gmail.com>
X-Mailer: iPhone Mail (19F77)
Message-ID-Hash: 3JRPAZ5KLQJ7NEHXGTNEZ467N6I76FNN
X-Message-ID-Hash: 3JRPAZ5KLQJ7NEHXGTNEZ467N6I76FNN
X-MailFrom: dcb992005@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Dropped packets with DPDK and X310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3JRPAZ5KLQJ7NEHXGTNEZ467N6I76FNN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9128638387652097084=="


--===============9128638387652097084==
Content-Type: multipart/alternative; boundary=Apple-Mail-63E1192E-8253-4F07-A7F6-1D07389655AF
Content-Transfer-Encoding: 7bit


--Apple-Mail-63E1192E-8253-4F07-A7F6-1D07389655AF
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Good morning Shane,

Can you verify what Linux kernel you are using? See the bottom section of th=
is KB article: https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD

Thanks,
Dylan Baros=20
Sent from my iPhone

> On Jun 23, 2022, at 10:47 AM, Shane Flandermeyer <shaneflandermeyer@gmail.=
com> wrote:
>=20
> =EF=BB=BF
> Hello,
>=20
> I'm trying to configure UHD to work with DPDK and my Intel X550T NIC. When=
 running the benchmark_rate UHD example, the x310 drops packets and gives se=
quence errors even at lower sample rates. Below is an example of the output f=
rom the script. Have I configured something incorrectly?
>=20
> /usr/local/lib/uhd/examples# ./benchmark_rate --rx_rate 100e6 --args "addr=
=3D192.168.40.2,use_dpdk=3D1"
>=20
> [INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_107400; DPDK_21.11; UHD_=
4.2.0.HEAD-0-g46a70d85
> EAL: Detected CPU lcores: 16
> EAL: Detected NUMA nodes: 1
> EAL: Detected shared linkage of DPDK
> EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
> EAL: Selected IOVA mode 'PA'
> EAL: No available 1048576 kB hugepages reported
> EAL: VFIO support initialized
> EAL: Using IOMMU type 8 (No-IOMMU)
> EAL: Probe PCI driver: net_ixgbe (8086:1563) device: 0000:b3:00.0 (socket 0=
)
> TELEMETRY: No legacy callbacks, legacy socket not created
> [00:00:00.000411] Creating the usrp device with: addr=3D192.168.40.2,use_d=
pdk=3D1...
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 8000 bytes.
> [INFO] [X300] Radio 1x clock: 200 MHz
> Using Device: Single USRP:
>   Device: X-Series Device
>   Mboard 0: X310
>   RX Channel: 0
>     RX DSP: 0
>     RX Dboard: A
>     RX Subdev: UBX RX
>   RX Channel: 1
>     RX DSP: 1
>     RX Dboard: B
>     RX Subdev: UBX RX
>   TX Channel: 0
>     TX DSP: 0
>     TX Dboard: A
>     TX Subdev: UBX TX
>   TX Channel: 1
>     TX DSP: 1
>     TX Dboard: B
>     TX Subdev: UBX TX
>=20
> [00:00:02.819147387] Setting device timestamp to 0...
> [00:00:02.821865134] Testing receive rate 100.000000 Msps on 1 channels
> [00:00:03.355548206] Detected Rx sequence error.
> D[D00:00:04.355894703] Detected Rx sequence error.
> [D00:00:05.356027514] Detected Rx sequence error.
> [00:00:06.355927093] Detected Rx sequence error.
> D[00:00:07.355947814] Detected Rx sequence error.
> D[D00:00:08.355300086] Detected Rx sequence error.
> [D00:00:09.355619635] Detected Rx sequence error.
> [D00:00:10.355006440] Detected Rx sequence error.
> [D00:00:11.355740470] Detected Rx sequence error.
> [D00:00:12.354932569] Detected Rx sequence error.
> [00:00:12.822469413] Benchmark complete.
>=20
>=20
> Benchmark rate summary:
>   Num received samples:     961039704
>   Num dropped samples:      38916012
>   Num overruns detected:    0
>   Num transmitted samples:  0
>   Num sequence errors (Tx): 0
>   Num sequence errors (Rx): 10
>   Num underruns detected:   0
>   Num late commands:        0
>   Num timeouts (Tx):        0
>   Num timeouts (Rx):        0
>=20
>=20
> Done!
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-63E1192E-8253-4F07-A7F6-1D07389655AF
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Good morning Shane,<div><br></div><div>Can y=
ou verify what Linux kernel you are using? See the bottom section of this KB=
 article:&nbsp;<a href=3D"https://kb.ettus.com/Getting_Started_with_DPDK_and=
_UHD">https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD</a><br><br>Than=
ks,</div><div>Dylan Baros&nbsp;<br><div dir=3D"ltr">Sent from my iPhone</div=
><div dir=3D"ltr"><br><blockquote type=3D"cite">On Jun 23, 2022, at 10:47 AM=
, Shane Flandermeyer &lt;shaneflandermeyer@gmail.com&gt; wrote:<br><br></blo=
ckquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D=
"ltr">Hello,<div><br></div><div>I'm trying to configure UHD to work with DPD=
K and my Intel X550T NIC. When running the benchmark_rate UHD example, the x=
310 drops packets and gives sequence errors even at lower sample rates. Belo=
w is an example of the output from the script. Have I configured something i=
ncorrectly?</div><div><br></div><div>/usr/local/lib/uhd/examples# ./benchmar=
k_rate --rx_rate 100e6 --args "addr=3D192.168.40.2,use_dpdk=3D1"<br><br>[INFO=
] [UHD] linux; GNU C++ version 11.2.0; Boost_107400; DPDK_21.11; UHD_4.2.0.H=
EAD-0-g46a70d85<br>EAL: Detected CPU lcores: 16<br>EAL: Detected NUMA nodes:=
 1<br>EAL: Detected shared linkage of DPDK<br>EAL: Multi-process socket /var=
/run/dpdk/rte/mp_socket<br>EAL: Selected IOVA mode 'PA'<br>EAL: No available=
 1048576 kB hugepages reported<br>EAL: VFIO support initialized<br>EAL: Usin=
g IOMMU type 8 (No-IOMMU)<br>EAL: Probe PCI driver: net_ixgbe (8086:1563) de=
vice: 0000:b3:00.0 (socket 0)<br>TELEMETRY: No legacy callbacks, legacy sock=
et not created<br>[00:00:00.000411] Creating the usrp device with: addr=3D19=
2.168.40.2,use_dpdk=3D1...<br>[INFO] [X300] X300 initialization sequence...<=
br>[INFO] [X300] Maximum frame size: 8000 bytes.<br>[INFO] [X300] Radio 1x c=
lock: 200 MHz<br>Using Device: Single USRP:<br>&nbsp; Device: X-Series Devic=
e<br>&nbsp; Mboard 0: X310<br>&nbsp; RX Channel: 0<br>&nbsp; &nbsp; RX DSP: 0=
<br>&nbsp; &nbsp; RX Dboard: A<br>&nbsp; &nbsp; RX Subdev: UBX RX<br>&nbsp; R=
X Channel: 1<br>&nbsp; &nbsp; RX DSP: 1<br>&nbsp; &nbsp; RX Dboard: B<br>&nb=
sp; &nbsp; RX Subdev: UBX RX<br>&nbsp; TX Channel: 0<br>&nbsp; &nbsp; TX DSP=
: 0<br>&nbsp; &nbsp; TX Dboard: A<br>&nbsp; &nbsp; TX Subdev: UBX TX<br>&nbs=
p; TX Channel: 1<br>&nbsp; &nbsp; TX DSP: 1<br>&nbsp; &nbsp; TX Dboard: B<br=
>&nbsp; &nbsp; TX Subdev: UBX TX<br><br>[00:00:02.819147387] Setting device t=
imestamp to 0...<br>[00:00:02.821865134] Testing receive rate 100.000000 Msp=
s on 1 channels<br>[00:00:03.355548206] Detected Rx sequence error.<br>D[D00=
:00:04.355894703] Detected Rx sequence error.<br>[D00:00:05.356027514] Detec=
ted Rx sequence error.<br>[00:00:06.355927093] Detected Rx sequence error.<b=
r>D[00:00:07.355947814] Detected Rx sequence error.<br>D[D00:00:08.355300086=
] Detected Rx sequence error.<br>[D00:00:09.355619635] Detected Rx sequence e=
rror.<br>[D00:00:10.355006440] Detected Rx sequence error.<br>[D00:00:11.355=
740470] Detected Rx sequence error.<br>[D00:00:12.354932569] Detected Rx seq=
uence error.<br>[00:00:12.822469413] Benchmark complete.<br><br><br>Benchmar=
k rate summary:<br>&nbsp; Num received samples: &nbsp; &nbsp; 961039704<br>&=
nbsp; Num dropped samples: &nbsp; &nbsp; &nbsp;38916012<br>&nbsp; Num overru=
ns detected: &nbsp; &nbsp;0<br>&nbsp; Num transmitted samples: &nbsp;0<br>&n=
bsp; Num sequence errors (Tx): 0<br>&nbsp; Num sequence errors (Rx): 10<br>&=
nbsp; Num underruns detected: &nbsp; 0<br>&nbsp; Num late commands: &nbsp; &=
nbsp; &nbsp; &nbsp;0<br>&nbsp; Num timeouts (Tx): &nbsp; &nbsp; &nbsp; &nbsp=
;0<br>&nbsp; Num timeouts (Rx): &nbsp; &nbsp; &nbsp; &nbsp;0<br><br><br>Done=
!<br></div></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-63E1192E-8253-4F07-A7F6-1D07389655AF--

--===============9128638387652097084==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9128638387652097084==--
