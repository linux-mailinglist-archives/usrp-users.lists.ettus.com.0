Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D981D557FE9
	for <lists+usrp-users@lfdr.de>; Thu, 23 Jun 2022 18:34:21 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A8956383C76
	for <lists+usrp-users@lfdr.de>; Thu, 23 Jun 2022 12:34:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1656002060; bh=ddtbAC/l+7LS5nEv4lsO4kyr3jqdOAjH6awsv+MdyLY=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=mGILuaiwIEl6VO3PYUkfDeQe/2YhJcS1WDLQyHtR1RGdwejkYIDXhQceNlWHFzSm7
	 Ub2QJy6ZQhe7qa9StmGkFWJ7pL9j1jUeHYVEhOlGf1f6liBJvcd4Hc0oI+yvzDe8LU
	 gqb6UBaBBUo8AZjsTMgHwRQ0wO6AL3zFakSzrK5h/qf95KcNshObqavVskJsOVln88
	 KnqNjV51XdCEP+f0Kf+y5ZhJKqnU5EoKAsgz6aggOGhbi4tuWb5MPBQ6Bs41Eo/+Cq
	 5bj9rqLd3sga0CUljdgUHnpejruKFKmDB7p46L59ilrmzKse+Ys51kymec0EwfuzCN
	 RsQNJqINtQd1A==
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	by mm2.emwd.com (Postfix) with ESMTPS id AA6C5383B15
	for <usrp-users@lists.ettus.com>; Thu, 23 Jun 2022 12:33:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="H5r5XTzO";
	dkim-atps=neutral
Received: by mail-lj1-f181.google.com with SMTP id s14so17217569ljs.3
        for <usrp-users@lists.ettus.com>; Thu, 23 Jun 2022 09:33:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4E0CZUCCybzYgLwH5Oe6jtPaYoN/hHbu5eV0VFHrsQ0=;
        b=H5r5XTzOh/akGUUFeFO0n23bvQe6xovO8F8vauwUcZnjM8r+F3PYPk/sOU3nOh5V1A
         bj2uEXV/Ye0UNv+7maKDzV9h12ZEzKuIOfDg21WE9jn+lscqlbqc8ccz1ea2UDyA42KB
         0Q8IHakqZcmU6sY0U3k6J+DMxnSdDNDw7XeI84xqaO/M+CYRAVdOfqn5JOfgrNpjXDBA
         tDNcEUCimEM3LOWZRt75pagf4xXp2yZc+dRtCki9HambfLI0PkzE85dA6Slu+Fi56PIp
         sRY07mcgmYDCmUYhUA85Wob2FIwUNLKhVBt2PZm/Ig/dp2Dyn7yHZHtQnIBKtU+H7tmm
         +Kbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4E0CZUCCybzYgLwH5Oe6jtPaYoN/hHbu5eV0VFHrsQ0=;
        b=d8wYpSIasCDiVniXHSIFqqEbmTDh+yhokGrWb/CUZ+s34Yn+x9rcC0w9w4IqrtV2HX
         aWjQZnllNc9FdXhKhVr5ceG3gwyYempAj+MQXQt2oLFMwL8W/2mBA/4d3qJTtvEwtrPH
         sAFGe0luipTBPF9DupQyGxPIZJ+L62oeRnBV8/FK/mAllWkpMYV/syDtqjT2zKcJVDxx
         I2HLJG7t06sVbZJejR7/mTzyfo1oDfGQe4joTtOGBfxu6gGwtWKmYhcyazKWKGx63p40
         zEV2g4CB42vd0Sx8q6mophMR2b/7mgUbGPrBeYRFvk1UijI/58k5wAXeyULxZV6dcy2E
         38jA==
X-Gm-Message-State: AJIora+Wzy8BrzckyDKWxT5RmDL09ih9qU5fNsOhS8I9QsNQxrh6ll0r
	U7apk6uYF9bIBQ7uUvrpWDY4ih0VRkU+lkFGO7I=
X-Google-Smtp-Source: AGRyM1usm3t3V4eoU7wlD0/yKpAyfdWCM/5SxhKAI7GpEOfwvTE610wp8iN6jcqWfHxjJ4laLuKVJsl067Cn+F576k0=
X-Received: by 2002:a05:651c:1a1e:b0:258:f021:8020 with SMTP id
 by30-20020a05651c1a1e00b00258f0218020mr5283180ljb.273.1656002004208; Thu, 23
 Jun 2022 09:33:24 -0700 (PDT)
MIME-Version: 1.0
References: <CAHN2CUfeJ8A7JLuataNQsRR-7O-h37YrcbbBy0s=FXs8fMsROg@mail.gmail.com>
 <2BB28190-EBF0-400D-81D8-D7F94489D16A@gmail.com> <CAHN2CUf8T72FLr26Lyhq3Ttpp1XYFmJvdfzRyhRF623TrB2MYA@mail.gmail.com>
In-Reply-To: <CAHN2CUf8T72FLr26Lyhq3Ttpp1XYFmJvdfzRyhRF623TrB2MYA@mail.gmail.com>
From: Shane Flandermeyer <shaneflandermeyer@gmail.com>
Date: Thu, 23 Jun 2022 11:33:13 -0500
Message-ID: <CAHN2CUf7C4BVwLc-6nd4Kn4q1OVqyeE+LBkkwMsM-hY6CGBYJg@mail.gmail.com>
To: Dylan Baros <dcbaros@utexas.edu>
Message-ID-Hash: 5VAT72OYDHXUZSMHHTMGOEDKGINPRPIF
X-Message-ID-Hash: 5VAT72OYDHXUZSMHHTMGOEDKGINPRPIF
X-MailFrom: shaneflandermeyer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Dropped packets with DPDK and X310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5VAT72OYDHXUZSMHHTMGOEDKGINPRPIF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2834240285800735087=="

--===============2834240285800735087==
Content-Type: multipart/alternative; boundary="000000000000354f7405e2200395"

--000000000000354f7405e2200395
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

It looks like I had secure boot enabled. After disabling it
and modifying features as in the article, I'm not getting any sequence
errors or dropped samples! However, my desktop freezes up momentarily while
I run the benchmark. Is this normal with DPDK, or is it a configuration
issue?

On Thu, Jun 23, 2022 at 11:09 AM Shane Flandermeyer <
shaneflandermeyer@gmail.com> wrote:

> Kernel: 5.15.0-39-generic
> OS: Ubuntu 22.04
>
> For some reason, I am not able to modify the features file even when I'm
> root. I get the following error:
>
> cat: features: Operation not permitted
>
> On Thu, Jun 23, 2022 at 10:57 AM Dylan Baros <dcbaros@utexas.edu> wrote:
>
>> Good morning Shane,
>>
>> Can you verify what Linux kernel you are using? See the bottom section o=
f
>> this KB article: https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD
>>
>> Thanks,
>> Dylan Baros
>> Sent from my iPhone
>>
>> On Jun 23, 2022, at 10:47 AM, Shane Flandermeyer <
>> shaneflandermeyer@gmail.com> wrote:
>>
>> =EF=BB=BF
>> Hello,
>>
>> I'm trying to configure UHD to work with DPDK and my Intel X550T NIC.
>> When running the benchmark_rate UHD example, the x310 drops packets and
>> gives sequence errors even at lower sample rates. Below is an example of
>> the output from the script. Have I configured something incorrectly?
>>
>> /usr/local/lib/uhd/examples# ./benchmark_rate --rx_rate 100e6 --args
>> "addr=3D192.168.40.2,use_dpdk=3D1"
>>
>> [INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_107400; DPDK_21.11;
>> UHD_4.2.0.HEAD-0-g46a70d85
>> EAL: Detected CPU lcores: 16
>> EAL: Detected NUMA nodes: 1
>> EAL: Detected shared linkage of DPDK
>> EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
>> EAL: Selected IOVA mode 'PA'
>> EAL: No available 1048576 kB hugepages reported
>> EAL: VFIO support initialized
>> EAL: Using IOMMU type 8 (No-IOMMU)
>> EAL: Probe PCI driver: net_ixgbe (8086:1563) device: 0000:b3:00.0 (socke=
t
>> 0)
>> TELEMETRY: No legacy callbacks, legacy socket not created
>> [00:00:00.000411] Creating the usrp device with:
>> addr=3D192.168.40.2,use_dpdk=3D1...
>> [INFO] [X300] X300 initialization sequence...
>> [INFO] [X300] Maximum frame size: 8000 bytes.
>> [INFO] [X300] Radio 1x clock: 200 MHz
>> Using Device: Single USRP:
>>   Device: X-Series Device
>>   Mboard 0: X310
>>   RX Channel: 0
>>     RX DSP: 0
>>     RX Dboard: A
>>     RX Subdev: UBX RX
>>   RX Channel: 1
>>     RX DSP: 1
>>     RX Dboard: B
>>     RX Subdev: UBX RX
>>   TX Channel: 0
>>     TX DSP: 0
>>     TX Dboard: A
>>     TX Subdev: UBX TX
>>   TX Channel: 1
>>     TX DSP: 1
>>     TX Dboard: B
>>     TX Subdev: UBX TX
>>
>> [00:00:02.819147387] Setting device timestamp to 0...
>> [00:00:02.821865134] Testing receive rate 100.000000 Msps on 1 channels
>> [00:00:03.355548206] Detected Rx sequence error.
>> D[D00:00:04.355894703] Detected Rx sequence error.
>> [D00:00:05.356027514] Detected Rx sequence error.
>> [00:00:06.355927093] Detected Rx sequence error.
>> D[00:00:07.355947814] Detected Rx sequence error.
>> D[D00:00:08.355300086] Detected Rx sequence error.
>> [D00:00:09.355619635] Detected Rx sequence error.
>> [D00:00:10.355006440] Detected Rx sequence error.
>> [D00:00:11.355740470] Detected Rx sequence error.
>> [D00:00:12.354932569] Detected Rx sequence error.
>> [00:00:12.822469413] Benchmark complete.
>>
>>
>> Benchmark rate summary:
>>   Num received samples:     961039704
>>   Num dropped samples:      38916012
>>   Num overruns detected:    0
>>   Num transmitted samples:  0
>>   Num sequence errors (Tx): 0
>>   Num sequence errors (Rx): 10
>>   Num underruns detected:   0
>>   Num late commands:        0
>>   Num timeouts (Tx):        0
>>   Num timeouts (Rx):        0
>>
>>
>> Done!
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>>

--000000000000354f7405e2200395
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">It looks like I had secure boot enabled. After disabling i=
t and=C2=A0modifying=C2=A0features as in the article, I&#39;m not getting a=
ny sequence errors or dropped samples! However, my desktop freezes up momen=
tarily=C2=A0while I run the benchmark. Is this normal with DPDK, or is it a=
 configuration issue?</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Thu, Jun 23, 2022 at 11:09 AM Shane Flandermeyer &l=
t;<a href=3D"mailto:shaneflandermeyer@gmail.com">shaneflandermeyer@gmail.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr">Kernel: 5.15.0-39-generic<div>OS: Ubuntu 22.04</div><div>=
<br></div><div>For some reason, I am not able to modify the features file e=
ven when I&#39;m root. I get the following error:=C2=A0</div><div><br></div=
><div>cat: features: Operation not permitted</div></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jun 23, 2022 at 1=
0:57 AM Dylan Baros &lt;<a href=3D"mailto:dcbaros@utexas.edu" target=3D"_bl=
ank">dcbaros@utexas.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div dir=3D"auto">Good morning Shane,<div><br></div>=
<div>Can you verify what Linux kernel you are using? See the bottom section=
 of this KB article:=C2=A0<a href=3D"https://kb.ettus.com/Getting_Started_w=
ith_DPDK_and_UHD" target=3D"_blank">https://kb.ettus.com/Getting_Started_wi=
th_DPDK_and_UHD</a><br><br>Thanks,</div><div>Dylan Baros=C2=A0<br><div dir=
=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"=
cite">On Jun 23, 2022, at 10:47 AM, Shane Flandermeyer &lt;<a href=3D"mailt=
o:shaneflandermeyer@gmail.com" target=3D"_blank">shaneflandermeyer@gmail.co=
m</a>&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div d=
ir=3D"ltr">=EF=BB=BF<div dir=3D"ltr">Hello,<div><br></div><div>I&#39;m tryi=
ng to configure UHD to work with DPDK and my Intel X550T NIC. When running =
the benchmark_rate UHD example, the x310 drops packets and gives sequence e=
rrors even at lower sample rates. Below is an example of the output from th=
e script. Have I configured something incorrectly?</div><div><br></div><div=
>/usr/local/lib/uhd/examples# ./benchmark_rate --rx_rate 100e6 --args &quot=
;addr=3D192.168.40.2,use_dpdk=3D1&quot;<br><br>[INFO] [UHD] linux; GNU C++ =
version 11.2.0; Boost_107400; DPDK_21.11; UHD_4.2.0.HEAD-0-g46a70d85<br>EAL=
: Detected CPU lcores: 16<br>EAL: Detected NUMA nodes: 1<br>EAL: Detected s=
hared linkage of DPDK<br>EAL: Multi-process socket /var/run/dpdk/rte/mp_soc=
ket<br>EAL: Selected IOVA mode &#39;PA&#39;<br>EAL: No available 1048576 kB=
 hugepages reported<br>EAL: VFIO support initialized<br>EAL: Using IOMMU ty=
pe 8 (No-IOMMU)<br>EAL: Probe PCI driver: net_ixgbe (8086:1563) device: 000=
0:b3:00.0 (socket 0)<br>TELEMETRY: No legacy callbacks, legacy socket not c=
reated<br>[00:00:00.000411] Creating the usrp device with: addr=3D192.168.4=
0.2,use_dpdk=3D1...<br>[INFO] [X300] X300 initialization sequence...<br>[IN=
FO] [X300] Maximum frame size: 8000 bytes.<br>[INFO] [X300] Radio 1x clock:=
 200 MHz<br>Using Device: Single USRP:<br>=C2=A0 Device: X-Series Device<br=
>=C2=A0 Mboard 0: X310<br>=C2=A0 RX Channel: 0<br>=C2=A0 =C2=A0 RX DSP: 0<b=
r>=C2=A0 =C2=A0 RX Dboard: A<br>=C2=A0 =C2=A0 RX Subdev: UBX RX<br>=C2=A0 R=
X Channel: 1<br>=C2=A0 =C2=A0 RX DSP: 1<br>=C2=A0 =C2=A0 RX Dboard: B<br>=
=C2=A0 =C2=A0 RX Subdev: UBX RX<br>=C2=A0 TX Channel: 0<br>=C2=A0 =C2=A0 TX=
 DSP: 0<br>=C2=A0 =C2=A0 TX Dboard: A<br>=C2=A0 =C2=A0 TX Subdev: UBX TX<br=
>=C2=A0 TX Channel: 1<br>=C2=A0 =C2=A0 TX DSP: 1<br>=C2=A0 =C2=A0 TX Dboard=
: B<br>=C2=A0 =C2=A0 TX Subdev: UBX TX<br><br>[00:00:02.819147387] Setting =
device timestamp to 0...<br>[00:00:02.821865134] Testing receive rate 100.0=
00000 Msps on 1 channels<br>[00:00:03.355548206] Detected Rx sequence error=
.<br>D[D00:00:04.355894703] Detected Rx sequence error.<br>[D00:00:05.35602=
7514] Detected Rx sequence error.<br>[00:00:06.355927093] Detected Rx seque=
nce error.<br>D[00:00:07.355947814] Detected Rx sequence error.<br>D[D00:00=
:08.355300086] Detected Rx sequence error.<br>[D00:00:09.355619635] Detecte=
d Rx sequence error.<br>[D00:00:10.355006440] Detected Rx sequence error.<b=
r>[D00:00:11.355740470] Detected Rx sequence error.<br>[D00:00:12.354932569=
] Detected Rx sequence error.<br>[00:00:12.822469413] Benchmark complete.<b=
r><br><br>Benchmark rate summary:<br>=C2=A0 Num received samples: =C2=A0 =
=C2=A0 961039704<br>=C2=A0 Num dropped samples: =C2=A0 =C2=A0 =C2=A03891601=
2<br>=C2=A0 Num overruns detected: =C2=A0 =C2=A00<br>=C2=A0 Num transmitted=
 samples: =C2=A00<br>=C2=A0 Num sequence errors (Tx): 0<br>=C2=A0 Num seque=
nce errors (Rx): 10<br>=C2=A0 Num underruns detected: =C2=A0 0<br>=C2=A0 Nu=
m late commands: =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>=C2=A0 Num timeouts (Tx): =
=C2=A0 =C2=A0 =C2=A0 =C2=A00<br>=C2=A0 Num timeouts (Rx): =C2=A0 =C2=A0 =C2=
=A0 =C2=A00<br><br><br>Done!<br></div></div>
<span>_______________________________________________</span><br><span>USRP-=
users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a></span><br><span>To unsubscribe s=
end an email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" target=
=3D"_blank">usrp-users-leave@lists.ettus.com</a></span><br></div></blockquo=
te></div></div></blockquote></div>
</blockquote></div>

--000000000000354f7405e2200395--

--===============2834240285800735087==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2834240285800735087==--
