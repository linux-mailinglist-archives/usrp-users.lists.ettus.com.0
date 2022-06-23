Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 31E77557F7C
	for <lists+usrp-users@lfdr.de>; Thu, 23 Jun 2022 18:11:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 20104384484
	for <lists+usrp-users@lfdr.de>; Thu, 23 Jun 2022 12:11:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1656000673; bh=um5jghVumdUi5BKUsGv3ygDPehkkDbn3qaEEQZE3Xdc=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=scw7jv3JxSJREZaPRoCQx/yUnVJlB4QqbFOfKoV1i4lKhfga56wqhTkixYaR+3bax
	 IqgRe2EIq6pdqh6h5lFDVcZqPtniNXv700FPmRrUACsM+c+06wJFRLqcye2AL/l8SJ
	 QIPLxH0/oEZr8ezK687DlBKDtMeS1En5Z8+ZFnv5hH3tWek91zUTh1cJBgvxawox41
	 xipRVzgNK5Y8ltV5JhwrHLMSS1yY0MxDXKprqiRgUk9ApIuAET2WXAWo/3jwPKXH2O
	 IEbYynkn3ffjOFaI7c5mEnDsxjoROrGnsyjbte0NSx6+0VPSlnM0k8yr4M/jfBAg1m
	 Kfgy8BlvJrw2Q==
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 4BA4B384347
	for <usrp-users@lists.ettus.com>; Thu, 23 Jun 2022 12:10:12 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="T853Op5w";
	dkim-atps=neutral
Received: by mail-lf1-f41.google.com with SMTP id z13so3697991lfj.13
        for <usrp-users@lists.ettus.com>; Thu, 23 Jun 2022 09:10:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Z6jEbaJ26KwvD7DHysCTD4pocHAbjDecEtMAJJE8rg4=;
        b=T853Op5wbNNqMGVg+p1LaGGseGQtGFR7gTTQbTl3G9Flu0I/4gBN47OtFD0wZaN43B
         WYFQVXonhPwhkOSj32u6PUvtDw3SjY7F1sMfuFq3txHOICLrGk9Va5FumYL3nCPQpPGu
         DF8YA95thVIIfYskw9l7+aVMZMOqRe/Tcbmig1oY3jhAWRGrvFwxnl1nd6X70/2GNUDk
         tvtksZEpiq7yIV42kET721/eRevtAXIvclENhChQn63iPTrFtlaZIbXoiqJ3qpYHmOB2
         vVzWwvz0BMy/kAFa4jB2IFXOYm6Rt3hM6iSTOrZVYZoHfGXwmgovCL9JS+SErjh4TgPG
         QjNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Z6jEbaJ26KwvD7DHysCTD4pocHAbjDecEtMAJJE8rg4=;
        b=VbPBmwOy+4BhU69oIVW7/t9gwyJomSzE4kW5D6bmEqnsQI2ynYe0ZSnQRKdKkAvCaJ
         1rd3kUeHgTVIXL3hnv1jkbNVzgvadykxcQV5u0TTL3q7bfqdE0AP1dqR92JrFB0X4ovl
         IsAgf76YLWgmDx9lBTlpNAOVVNVNluGBXJTroNx1/lyeyPeIAvJWIJQ5bT/8L+c33CqN
         EubdjpuMWkHsm1ZV6krke73ssEmNLDHM2mVHaSI3toSYfrQPNOzrG6nZCJyqOQoTUgo1
         oa/+ESw2tWV99QtFocaaJl4ISwN2tV59ARcWfPbmkrFeeg8L03Qf2f9MGV1zp6PoaysA
         P3Zg==
X-Gm-Message-State: AJIora9suJGq8UkoIDQ942Ju/iKobm5yqU+EKTb8jKU5kYhl3w5Fal/c
	YkyzsKubDbZ19MmeuLAP5VarUhoPTwbNrf+ebOEE5R/5SFK7sg==
X-Google-Smtp-Source: AGRyM1uLssGhsLgTcMvc70OGoJYn1YmWWzQOsQhrGtENuPneCn5YTctZDZJoh9yuzVOsAYNKAh7UKywpI8XEx3etVkw=
X-Received: by 2002:a05:6512:3b98:b0:47f:9660:9a9a with SMTP id
 g24-20020a0565123b9800b0047f96609a9amr5929265lfv.528.1656000610929; Thu, 23
 Jun 2022 09:10:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAHN2CUfeJ8A7JLuataNQsRR-7O-h37YrcbbBy0s=FXs8fMsROg@mail.gmail.com>
 <2BB28190-EBF0-400D-81D8-D7F94489D16A@gmail.com>
In-Reply-To: <2BB28190-EBF0-400D-81D8-D7F94489D16A@gmail.com>
From: Shane Flandermeyer <shaneflandermeyer@gmail.com>
Date: Thu, 23 Jun 2022 11:09:59 -0500
Message-ID: <CAHN2CUf8T72FLr26Lyhq3Ttpp1XYFmJvdfzRyhRF623TrB2MYA@mail.gmail.com>
To: Dylan Baros <dcbaros@utexas.edu>
Message-ID-Hash: MMWOQBIQTQXYCSF4UVGG6ZGK5LI7OOPH
X-Message-ID-Hash: MMWOQBIQTQXYCSF4UVGG6ZGK5LI7OOPH
X-MailFrom: shaneflandermeyer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Dropped packets with DPDK and X310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MMWOQBIQTQXYCSF4UVGG6ZGK5LI7OOPH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3987323268595095575=="

--===============3987323268595095575==
Content-Type: multipart/alternative; boundary="00000000000029954105e21fb021"

--00000000000029954105e21fb021
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Kernel: 5.15.0-39-generic
OS: Ubuntu 22.04

For some reason, I am not able to modify the features file even when I'm
root. I get the following error:

cat: features: Operation not permitted

On Thu, Jun 23, 2022 at 10:57 AM Dylan Baros <dcbaros@utexas.edu> wrote:

> Good morning Shane,
>
> Can you verify what Linux kernel you are using? See the bottom section of
> this KB article: https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD
>
> Thanks,
> Dylan Baros
> Sent from my iPhone
>
> On Jun 23, 2022, at 10:47 AM, Shane Flandermeyer <
> shaneflandermeyer@gmail.com> wrote:
>
> =EF=BB=BF
> Hello,
>
> I'm trying to configure UHD to work with DPDK and my Intel X550T NIC. Whe=
n
> running the benchmark_rate UHD example, the x310 drops packets and gives
> sequence errors even at lower sample rates. Below is an example of the
> output from the script. Have I configured something incorrectly?
>
> /usr/local/lib/uhd/examples# ./benchmark_rate --rx_rate 100e6 --args
> "addr=3D192.168.40.2,use_dpdk=3D1"
>
> [INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_107400; DPDK_21.11;
> UHD_4.2.0.HEAD-0-g46a70d85
> EAL: Detected CPU lcores: 16
> EAL: Detected NUMA nodes: 1
> EAL: Detected shared linkage of DPDK
> EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
> EAL: Selected IOVA mode 'PA'
> EAL: No available 1048576 kB hugepages reported
> EAL: VFIO support initialized
> EAL: Using IOMMU type 8 (No-IOMMU)
> EAL: Probe PCI driver: net_ixgbe (8086:1563) device: 0000:b3:00.0 (socket
> 0)
> TELEMETRY: No legacy callbacks, legacy socket not created
> [00:00:00.000411] Creating the usrp device with:
> addr=3D192.168.40.2,use_dpdk=3D1...
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
>
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
>
>
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
>
>
> Done!
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>

--00000000000029954105e21fb021
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Kernel: 5.15.0-39-generic<div>OS: Ubuntu 22.04</div><div><=
br></div><div>For some reason, I am not able to modify the features file ev=
en when I&#39;m root. I get the following error:=C2=A0</div><div><br></div>=
<div>cat: features: Operation not permitted</div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jun 23, 2022 at 10=
:57 AM Dylan Baros &lt;<a href=3D"mailto:dcbaros@utexas.edu">dcbaros@utexas=
.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div dir=3D"auto">Good morning Shane,<div><br></div><div>Can you verify=
 what Linux kernel you are using? See the bottom section of this KB article=
:=C2=A0<a href=3D"https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD" t=
arget=3D"_blank">https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD</a>=
<br><br>Thanks,</div><div>Dylan Baros=C2=A0<br><div dir=3D"ltr">Sent from m=
y iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Jun 23, 202=
2, at 10:47 AM, Shane Flandermeyer &lt;<a href=3D"mailto:shaneflandermeyer@=
gmail.com" target=3D"_blank">shaneflandermeyer@gmail.com</a>&gt; wrote:<br>=
<br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF=
<div dir=3D"ltr">Hello,<div><br></div><div>I&#39;m trying to configure UHD =
to work with DPDK and my Intel X550T NIC. When running the benchmark_rate U=
HD example, the x310 drops packets and gives sequence errors even at lower =
sample rates. Below is an example of the output from the script. Have I con=
figured something incorrectly?</div><div><br></div><div>/usr/local/lib/uhd/=
examples# ./benchmark_rate --rx_rate 100e6 --args &quot;addr=3D192.168.40.2=
,use_dpdk=3D1&quot;<br><br>[INFO] [UHD] linux; GNU C++ version 11.2.0; Boos=
t_107400; DPDK_21.11; UHD_4.2.0.HEAD-0-g46a70d85<br>EAL: Detected CPU lcore=
s: 16<br>EAL: Detected NUMA nodes: 1<br>EAL: Detected shared linkage of DPD=
K<br>EAL: Multi-process socket /var/run/dpdk/rte/mp_socket<br>EAL: Selected=
 IOVA mode &#39;PA&#39;<br>EAL: No available 1048576 kB hugepages reported<=
br>EAL: VFIO support initialized<br>EAL: Using IOMMU type 8 (No-IOMMU)<br>E=
AL: Probe PCI driver: net_ixgbe (8086:1563) device: 0000:b3:00.0 (socket 0)=
<br>TELEMETRY: No legacy callbacks, legacy socket not created<br>[00:00:00.=
000411] Creating the usrp device with: addr=3D192.168.40.2,use_dpdk=3D1...<=
br>[INFO] [X300] X300 initialization sequence...<br>[INFO] [X300] Maximum f=
rame size: 8000 bytes.<br>[INFO] [X300] Radio 1x clock: 200 MHz<br>Using De=
vice: Single USRP:<br>=C2=A0 Device: X-Series Device<br>=C2=A0 Mboard 0: X3=
10<br>=C2=A0 RX Channel: 0<br>=C2=A0 =C2=A0 RX DSP: 0<br>=C2=A0 =C2=A0 RX D=
board: A<br>=C2=A0 =C2=A0 RX Subdev: UBX RX<br>=C2=A0 RX Channel: 1<br>=C2=
=A0 =C2=A0 RX DSP: 1<br>=C2=A0 =C2=A0 RX Dboard: B<br>=C2=A0 =C2=A0 RX Subd=
ev: UBX RX<br>=C2=A0 TX Channel: 0<br>=C2=A0 =C2=A0 TX DSP: 0<br>=C2=A0 =C2=
=A0 TX Dboard: A<br>=C2=A0 =C2=A0 TX Subdev: UBX TX<br>=C2=A0 TX Channel: 1=
<br>=C2=A0 =C2=A0 TX DSP: 1<br>=C2=A0 =C2=A0 TX Dboard: B<br>=C2=A0 =C2=A0 =
TX Subdev: UBX TX<br><br>[00:00:02.819147387] Setting device timestamp to 0=
...<br>[00:00:02.821865134] Testing receive rate 100.000000 Msps on 1 chann=
els<br>[00:00:03.355548206] Detected Rx sequence error.<br>D[D00:00:04.3558=
94703] Detected Rx sequence error.<br>[D00:00:05.356027514] Detected Rx seq=
uence error.<br>[00:00:06.355927093] Detected Rx sequence error.<br>D[00:00=
:07.355947814] Detected Rx sequence error.<br>D[D00:00:08.355300086] Detect=
ed Rx sequence error.<br>[D00:00:09.355619635] Detected Rx sequence error.<=
br>[D00:00:10.355006440] Detected Rx sequence error.<br>[D00:00:11.35574047=
0] Detected Rx sequence error.<br>[D00:00:12.354932569] Detected Rx sequenc=
e error.<br>[00:00:12.822469413] Benchmark complete.<br><br><br>Benchmark r=
ate summary:<br>=C2=A0 Num received samples: =C2=A0 =C2=A0 961039704<br>=C2=
=A0 Num dropped samples: =C2=A0 =C2=A0 =C2=A038916012<br>=C2=A0 Num overrun=
s detected: =C2=A0 =C2=A00<br>=C2=A0 Num transmitted samples: =C2=A00<br>=
=C2=A0 Num sequence errors (Tx): 0<br>=C2=A0 Num sequence errors (Rx): 10<b=
r>=C2=A0 Num underruns detected: =C2=A0 0<br>=C2=A0 Num late commands: =C2=
=A0 =C2=A0 =C2=A0 =C2=A00<br>=C2=A0 Num timeouts (Tx): =C2=A0 =C2=A0 =C2=A0=
 =C2=A00<br>=C2=A0 Num timeouts (Rx): =C2=A0 =C2=A0 =C2=A0 =C2=A00<br><br><=
br>Done!<br></div></div>
<span>_______________________________________________</span><br><span>USRP-=
users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a></span><br><span>To unsubscribe s=
end an email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" target=
=3D"_blank">usrp-users-leave@lists.ettus.com</a></span><br></div></blockquo=
te></div></div></blockquote></div>

--00000000000029954105e21fb021--

--===============3987323268595095575==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3987323268595095575==--
