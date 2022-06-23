Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D4F558039
	for <lists+usrp-users@lfdr.de>; Thu, 23 Jun 2022 18:47:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5BFF1384454
	for <lists+usrp-users@lfdr.de>; Thu, 23 Jun 2022 12:47:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1656002832; bh=VvoE6C4u7vYaGDS/uRKwXg1jZZi+tXL1oNjJKvBdd7I=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Hui41NN5Uo2qF7RMD+yFYbloKNEVjM801qrhWtnUrGtHbExgntZx77P/tY8lF9yup
	 RVL/O+pzbSHHnwMbuz1z6wCdtApRhyJjOsOihpSaam1wQ1/Kr4xaBdwt7aNi9jCktJ
	 zWrRObo2zQjChNZSOW02i+Rq5U8MhdhUTzgvY9/W+OJUpuApge2lRRc3oGLs2nS2wX
	 cHNsT0ufBfniiotV+93ml85ZfBvaPscfxy3do9yJvJLulODC3k9Oc/K0sktkj52uY0
	 zIY613Ams5jTRqEGntY2Ez1QV5JtikI+W/q6kBoV941reuMQwTxrqLfc86vuguMuZt
	 CSwAIDKBecLtg==
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 6F28E384372
	for <usrp-users@lists.ettus.com>; Thu, 23 Jun 2022 12:46:15 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ccgCVZy3";
	dkim-atps=neutral
Received: by mail-lj1-f170.google.com with SMTP id by38so2190204ljb.10
        for <usrp-users@lists.ettus.com>; Thu, 23 Jun 2022 09:46:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=O+TjzQaDbu6/UYdBoaiR9qGoMMBke5WAXCub33+ODhk=;
        b=ccgCVZy3FsA1wz9RowyXpzmQSbBb/N/Luv32Z4pltmdaV25RToxqlLjxL2+hs8lRhq
         KltahJ/Vqf37I8nRUZcv4mO6Tn5rEh6H6/QIjpZi9REWe8USkNtb3e/E1xfHKPHUlpzw
         T0yWDcqlcfvvj8HCf0wnvOPTQ5Sjf3nqDoJV0cLnNX0O4pkNkxZJisIq80Pv/+6gIa0C
         xXMQzHfeAnvdIBd6QmvJFdWAzErXAk00o2+gcZe7vl9oqM2MuF/owEqxUt0IgHOlt0D3
         Eyl/Hxuf4AQakIKFvt9uG8FXN282oR+kxI0Jbs2Jguaip57vrIM6NHN2QSwUioDc8LGl
         USwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=O+TjzQaDbu6/UYdBoaiR9qGoMMBke5WAXCub33+ODhk=;
        b=OBvGICLbU/zPo+U4JCJkkau8iBrY5PfkyyGTWz5ETGlrulu26602ztCPudUPzpd1Zu
         8CRWJ7y/vM+GIYIC9r3s8kdCdrDLCMws4pcHJaUmIv3i7iKvUhQO8/WKkYWHM365/STI
         9ya26vsH2HFaf9w6kbnqa8uRM8Y/ONRd9vOKO0wkKNwIXuPxuFxzPdrwoI2F2DZwiST5
         27VFE9Zp3JN8jJmwMCEldaoa53OQNi4uy/se0zhyBzhk9wgMJkkCuBSwA1QZI7ZpyTpm
         7Rc88zGUIvS8Jnsc6mUBrHOcwKWcmyoV0cXt4GgQKq4lTNlGXi8ikd9VC+TDBpUjNFTD
         dF8A==
X-Gm-Message-State: AJIora+ulAf8Ps8Gii66Ucg945H9DH1HRKg37sI6JgjnGUjvAQ3gSDy1
	euTcCi54J0bIc2kXWDposgexhEUCEvsCsvbVDk4=
X-Google-Smtp-Source: AGRyM1v6MSI0Lqbl2fqRxIfDYhy391jUgpWAQYQDjmU9Hl2YqVJlRyWoME8TpcZwuqd8czkBsQENH2YzMmAQk/WkWzM=
X-Received: by 2002:a2e:b049:0:b0:25a:89a2:df44 with SMTP id
 d9-20020a2eb049000000b0025a89a2df44mr5084921ljl.207.1656002774116; Thu, 23
 Jun 2022 09:46:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAHN2CUfeJ8A7JLuataNQsRR-7O-h37YrcbbBy0s=FXs8fMsROg@mail.gmail.com>
 <2BB28190-EBF0-400D-81D8-D7F94489D16A@gmail.com> <CAHN2CUf8T72FLr26Lyhq3Ttpp1XYFmJvdfzRyhRF623TrB2MYA@mail.gmail.com>
 <CAHN2CUf7C4BVwLc-6nd4Kn4q1OVqyeE+LBkkwMsM-hY6CGBYJg@mail.gmail.com>
In-Reply-To: <CAHN2CUf7C4BVwLc-6nd4Kn4q1OVqyeE+LBkkwMsM-hY6CGBYJg@mail.gmail.com>
From: Shane Flandermeyer <shaneflandermeyer@gmail.com>
Date: Thu, 23 Jun 2022 11:46:03 -0500
Message-ID: <CAHN2CUef3KxrOfyC8vb_HeEr-GLAE0b1Ybb2jRFUpQ4=DrQ9Lw@mail.gmail.com>
To: Dylan Baros <dcbaros@utexas.edu>
Message-ID-Hash: 2J7W556B6QXLRJFYSWKTMHAE22NTRSO3
X-Message-ID-Hash: 2J7W556B6QXLRJFYSWKTMHAE22NTRSO3
X-MailFrom: shaneflandermeyer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Dropped packets with DPDK and X310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2J7W556B6QXLRJFYSWKTMHAE22NTRSO3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2062086719678562390=="

--===============2062086719678562390==
Content-Type: multipart/alternative; boundary="000000000000192d7505e22031ca"

--000000000000192d7505e22031ca
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I think the frozen screen problem occurred because I set isolcpus in
/etc/default/grub for the DPDK cores in my uhd.conf file. After removing
that and rebooting, everything proceeds smoothly.

Thank you for your help!

On Thu, Jun 23, 2022 at 11:33 AM Shane Flandermeyer <
shaneflandermeyer@gmail.com> wrote:

> It looks like I had secure boot enabled. After disabling it
> and modifying features as in the article, I'm not getting any sequence
> errors or dropped samples! However, my desktop freezes up momentarily whi=
le
> I run the benchmark. Is this normal with DPDK, or is it a configuration
> issue?
>
> On Thu, Jun 23, 2022 at 11:09 AM Shane Flandermeyer <
> shaneflandermeyer@gmail.com> wrote:
>
>> Kernel: 5.15.0-39-generic
>> OS: Ubuntu 22.04
>>
>> For some reason, I am not able to modify the features file even when I'm
>> root. I get the following error:
>>
>> cat: features: Operation not permitted
>>
>> On Thu, Jun 23, 2022 at 10:57 AM Dylan Baros <dcbaros@utexas.edu> wrote:
>>
>>> Good morning Shane,
>>>
>>> Can you verify what Linux kernel you are using? See the bottom section
>>> of this KB article:
>>> https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD
>>>
>>> Thanks,
>>> Dylan Baros
>>> Sent from my iPhone
>>>
>>> On Jun 23, 2022, at 10:47 AM, Shane Flandermeyer <
>>> shaneflandermeyer@gmail.com> wrote:
>>>
>>> =EF=BB=BF
>>> Hello,
>>>
>>> I'm trying to configure UHD to work with DPDK and my Intel X550T NIC.
>>> When running the benchmark_rate UHD example, the x310 drops packets and
>>> gives sequence errors even at lower sample rates. Below is an example o=
f
>>> the output from the script. Have I configured something incorrectly?
>>>
>>> /usr/local/lib/uhd/examples# ./benchmark_rate --rx_rate 100e6 --args
>>> "addr=3D192.168.40.2,use_dpdk=3D1"
>>>
>>> [INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_107400; DPDK_21.11;
>>> UHD_4.2.0.HEAD-0-g46a70d85
>>> EAL: Detected CPU lcores: 16
>>> EAL: Detected NUMA nodes: 1
>>> EAL: Detected shared linkage of DPDK
>>> EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
>>> EAL: Selected IOVA mode 'PA'
>>> EAL: No available 1048576 kB hugepages reported
>>> EAL: VFIO support initialized
>>> EAL: Using IOMMU type 8 (No-IOMMU)
>>> EAL: Probe PCI driver: net_ixgbe (8086:1563) device: 0000:b3:00.0
>>> (socket 0)
>>> TELEMETRY: No legacy callbacks, legacy socket not created
>>> [00:00:00.000411] Creating the usrp device with:
>>> addr=3D192.168.40.2,use_dpdk=3D1...
>>> [INFO] [X300] X300 initialization sequence...
>>> [INFO] [X300] Maximum frame size: 8000 bytes.
>>> [INFO] [X300] Radio 1x clock: 200 MHz
>>> Using Device: Single USRP:
>>>   Device: X-Series Device
>>>   Mboard 0: X310
>>>   RX Channel: 0
>>>     RX DSP: 0
>>>     RX Dboard: A
>>>     RX Subdev: UBX RX
>>>   RX Channel: 1
>>>     RX DSP: 1
>>>     RX Dboard: B
>>>     RX Subdev: UBX RX
>>>   TX Channel: 0
>>>     TX DSP: 0
>>>     TX Dboard: A
>>>     TX Subdev: UBX TX
>>>   TX Channel: 1
>>>     TX DSP: 1
>>>     TX Dboard: B
>>>     TX Subdev: UBX TX
>>>
>>> [00:00:02.819147387] Setting device timestamp to 0...
>>> [00:00:02.821865134] Testing receive rate 100.000000 Msps on 1 channels
>>> [00:00:03.355548206] Detected Rx sequence error.
>>> D[D00:00:04.355894703] Detected Rx sequence error.
>>> [D00:00:05.356027514] Detected Rx sequence error.
>>> [00:00:06.355927093] Detected Rx sequence error.
>>> D[00:00:07.355947814] Detected Rx sequence error.
>>> D[D00:00:08.355300086] Detected Rx sequence error.
>>> [D00:00:09.355619635] Detected Rx sequence error.
>>> [D00:00:10.355006440] Detected Rx sequence error.
>>> [D00:00:11.355740470] Detected Rx sequence error.
>>> [D00:00:12.354932569] Detected Rx sequence error.
>>> [00:00:12.822469413] Benchmark complete.
>>>
>>>
>>> Benchmark rate summary:
>>>   Num received samples:     961039704
>>>   Num dropped samples:      38916012
>>>   Num overruns detected:    0
>>>   Num transmitted samples:  0
>>>   Num sequence errors (Tx): 0
>>>   Num sequence errors (Rx): 10
>>>   Num underruns detected:   0
>>>   Num late commands:        0
>>>   Num timeouts (Tx):        0
>>>   Num timeouts (Rx):        0
>>>
>>>
>>> Done!
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>>

--000000000000192d7505e22031ca
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I think the frozen screen problem occurred because I set i=
solcpus in /etc/default/grub for the DPDK cores in my uhd.conf file. After =
removing that and rebooting, everything proceeds smoothly.<div><br></div><d=
iv>Thank you for your help!</div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Thu, Jun 23, 2022 at 11:33 AM Shane Fla=
ndermeyer &lt;<a href=3D"mailto:shaneflandermeyer@gmail.com">shaneflanderme=
yer@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div dir=3D"ltr">It looks like I had secure boot enabled. Afte=
r disabling it and=C2=A0modifying=C2=A0features as in the article, I&#39;m =
not getting any sequence errors or dropped samples! However, my desktop fre=
ezes up momentarily=C2=A0while I run the benchmark. Is this normal with DPD=
K, or is it a configuration issue?</div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Thu, Jun 23, 2022 at 11:09 AM Shane Fl=
andermeyer &lt;<a href=3D"mailto:shaneflandermeyer@gmail.com" target=3D"_bl=
ank">shaneflandermeyer@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr">Kernel: 5.15.0-39-generic=
<div>OS: Ubuntu 22.04</div><div><br></div><div>For some reason, I am not ab=
le to modify the features file even when I&#39;m root. I get the following =
error:=C2=A0</div><div><br></div><div>cat: features: Operation not permitte=
d</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Thu, Jun 23, 2022 at 10:57 AM Dylan Baros &lt;<a href=3D"mailto:d=
cbaros@utexas.edu" target=3D"_blank">dcbaros@utexas.edu</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">Go=
od morning Shane,<div><br></div><div>Can you verify what Linux kernel you a=
re using? See the bottom section of this KB article:=C2=A0<a href=3D"https:=
//kb.ettus.com/Getting_Started_with_DPDK_and_UHD" target=3D"_blank">https:/=
/kb.ettus.com/Getting_Started_with_DPDK_and_UHD</a><br><br>Thanks,</div><di=
v>Dylan Baros=C2=A0<br><div dir=3D"ltr">Sent from my iPhone</div><div dir=
=3D"ltr"><br><blockquote type=3D"cite">On Jun 23, 2022, at 10:47 AM, Shane =
Flandermeyer &lt;<a href=3D"mailto:shaneflandermeyer@gmail.com" target=3D"_=
blank">shaneflandermeyer@gmail.com</a>&gt; wrote:<br><br></blockquote></div=
><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr">Hello=
,<div><br></div><div>I&#39;m trying to configure UHD to work with DPDK and =
my Intel X550T NIC. When running the benchmark_rate UHD example, the x310 d=
rops packets and gives sequence errors even at lower sample rates. Below is=
 an example of the output from the script. Have I configured something inco=
rrectly?</div><div><br></div><div>/usr/local/lib/uhd/examples# ./benchmark_=
rate --rx_rate 100e6 --args &quot;addr=3D192.168.40.2,use_dpdk=3D1&quot;<br=
><br>[INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_107400; DPDK_21.11; =
UHD_4.2.0.HEAD-0-g46a70d85<br>EAL: Detected CPU lcores: 16<br>EAL: Detected=
 NUMA nodes: 1<br>EAL: Detected shared linkage of DPDK<br>EAL: Multi-proces=
s socket /var/run/dpdk/rte/mp_socket<br>EAL: Selected IOVA mode &#39;PA&#39=
;<br>EAL: No available 1048576 kB hugepages reported<br>EAL: VFIO support i=
nitialized<br>EAL: Using IOMMU type 8 (No-IOMMU)<br>EAL: Probe PCI driver: =
net_ixgbe (8086:1563) device: 0000:b3:00.0 (socket 0)<br>TELEMETRY: No lega=
cy callbacks, legacy socket not created<br>[00:00:00.000411] Creating the u=
srp device with: addr=3D192.168.40.2,use_dpdk=3D1...<br>[INFO] [X300] X300 =
initialization sequence...<br>[INFO] [X300] Maximum frame size: 8000 bytes.=
<br>[INFO] [X300] Radio 1x clock: 200 MHz<br>Using Device: Single USRP:<br>=
=C2=A0 Device: X-Series Device<br>=C2=A0 Mboard 0: X310<br>=C2=A0 RX Channe=
l: 0<br>=C2=A0 =C2=A0 RX DSP: 0<br>=C2=A0 =C2=A0 RX Dboard: A<br>=C2=A0 =C2=
=A0 RX Subdev: UBX RX<br>=C2=A0 RX Channel: 1<br>=C2=A0 =C2=A0 RX DSP: 1<br=
>=C2=A0 =C2=A0 RX Dboard: B<br>=C2=A0 =C2=A0 RX Subdev: UBX RX<br>=C2=A0 TX=
 Channel: 0<br>=C2=A0 =C2=A0 TX DSP: 0<br>=C2=A0 =C2=A0 TX Dboard: A<br>=C2=
=A0 =C2=A0 TX Subdev: UBX TX<br>=C2=A0 TX Channel: 1<br>=C2=A0 =C2=A0 TX DS=
P: 1<br>=C2=A0 =C2=A0 TX Dboard: B<br>=C2=A0 =C2=A0 TX Subdev: UBX TX<br><b=
r>[00:00:02.819147387] Setting device timestamp to 0...<br>[00:00:02.821865=
134] Testing receive rate 100.000000 Msps on 1 channels<br>[00:00:03.355548=
206] Detected Rx sequence error.<br>D[D00:00:04.355894703] Detected Rx sequ=
ence error.<br>[D00:00:05.356027514] Detected Rx sequence error.<br>[00:00:=
06.355927093] Detected Rx sequence error.<br>D[00:00:07.355947814] Detected=
 Rx sequence error.<br>D[D00:00:08.355300086] Detected Rx sequence error.<b=
r>[D00:00:09.355619635] Detected Rx sequence error.<br>[D00:00:10.355006440=
] Detected Rx sequence error.<br>[D00:00:11.355740470] Detected Rx sequence=
 error.<br>[D00:00:12.354932569] Detected Rx sequence error.<br>[00:00:12.8=
22469413] Benchmark complete.<br><br><br>Benchmark rate summary:<br>=C2=A0 =
Num received samples: =C2=A0 =C2=A0 961039704<br>=C2=A0 Num dropped samples=
: =C2=A0 =C2=A0 =C2=A038916012<br>=C2=A0 Num overruns detected: =C2=A0 =C2=
=A00<br>=C2=A0 Num transmitted samples: =C2=A00<br>=C2=A0 Num sequence erro=
rs (Tx): 0<br>=C2=A0 Num sequence errors (Rx): 10<br>=C2=A0 Num underruns d=
etected: =C2=A0 0<br>=C2=A0 Num late commands: =C2=A0 =C2=A0 =C2=A0 =C2=A00=
<br>=C2=A0 Num timeouts (Tx): =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>=C2=A0 Num ti=
meouts (Rx): =C2=A0 =C2=A0 =C2=A0 =C2=A00<br><br><br>Done!<br></div></div>
<span>_______________________________________________</span><br><span>USRP-=
users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a></span><br><span>To unsubscribe s=
end an email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" target=
=3D"_blank">usrp-users-leave@lists.ettus.com</a></span><br></div></blockquo=
te></div></div></blockquote></div>
</blockquote></div>
</blockquote></div>

--000000000000192d7505e22031ca--

--===============2062086719678562390==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2062086719678562390==--
