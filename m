Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B8672879936
	for <lists+usrp-users@lfdr.de>; Tue, 12 Mar 2024 17:44:10 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BBC6B385130
	for <lists+usrp-users@lfdr.de>; Tue, 12 Mar 2024 12:44:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710261849; bh=TTr3JeQCEwN2O/p2jUlR4JQwixCe7QlEM3cIRCdag5s=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=ZoUqH4FiAn5u76gvKyWEJHCenJS9a3OeBNVOfCeaT8gpxT8HuwvGsd0m0f/TO4N1l
	 TWLrabiYHAE+Dp0+wFYk5A/4W15/eZC4V7uKRmWTiPEPuaSGYIrcUcyrEXRVuA2f15
	 B543W+oIguL/IwguK7OQZszXvpJ1rqzNc68NKyFJfKNNkY+d0nx4bVXcp1B0kJlk6f
	 dCmJ5vn0spEVU5nb++pGT90q1T3bcuukLD0c7bvfcJ3yKkn0gVQqmdo+/kRJvptA8V
	 tHVjKyksNrktJnKM68XCZhdi1h4GF1Ye/C6SXb+4XjXYE+75NDo3hzaAyjejh9J2uv
	 HNTDMEyjur3bg==
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 4AC2338525E
	for <usrp-users@lists.ettus.com>; Tue, 12 Mar 2024 12:43:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="Ij4bMrHN";
	dkim-atps=neutral
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-6e6ade6a66aso83594b3a.3
        for <usrp-users@lists.ettus.com>; Tue, 12 Mar 2024 09:43:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1710261821; x=1710866621; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=q8Me6SqEiK+OsobIrPuG7zQ62j8GzH+74A0I6TfZe8E=;
        b=Ij4bMrHNXMMdav+pJh5XWFAZUEJvskTqy5857eQlAc0apwMEdKVKmaJpONtA0zTAlz
         IuaeDO0S6UGPM+Jx32YtDDiAfG/J0HDdpdgLg8lv9LtxV37oEiXaZd69X0Sw6SYzIBry
         58ubhjFKPa0au65mH+QpkJLJoBQiIVIQGjS/sfu/0zk+1cS9kMiYxWzVb/88SG/PYlet
         U7TTn2QvU6NH8UnRe4NZ0b7ReewquSycuxQ3Adnoay5PumV+z5rRkVulGQ/3lAtPCaK3
         L/R6ePfCJvVhnFsiQ0KHL63jzUu9Gv2vmLMqbUBZQyNXMO3nw0pin8/RmSOPDismbW5O
         JW3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710261821; x=1710866621;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q8Me6SqEiK+OsobIrPuG7zQ62j8GzH+74A0I6TfZe8E=;
        b=ZkBEFBJD96wUy5zfYSpalUhUTbuSIZVu92aV6OxaJ7NRXEmq8QURYNSTEthyAQXrCW
         Y/6F8xraVKLE9+2H3nzKUZhBqyZLkciMQM2SWnw2TKWt3VFb9DORcHE7JOGP9JcZb7K4
         GNSGorwbZHXleL8ePsDZICzVPloVMaeI3WPZmUqJ47pYjokrHAf1iKtxmxEgIA0TdPfm
         /vuua2Ii0pkgAij2SbgVEjsD0B6m02T+2c6aOVCo4ArocWsbpJ0qkavodt6y2nzwY5lg
         3Kg15gNf3iZGWBf5rBwClCQfjlWRQad3mLbbsxYZLD9IbGhGQEhUhuL5s7GCA6GbhdX1
         ekEQ==
X-Gm-Message-State: AOJu0YyyUT4wu5omDK9jWZW+k6gXPtNFXJxrggt04/ZfnT8c7dFxqAHV
	uqoX5uTHlZRPOt1rMLmW/yMXLpdh09YShuDfbs/MFpiw66KFdLvTVON8sn4SAd2UpGX7K5OBLm7
	aU43UDO+alASld/oY/DVvC+1nYXXAwxCc4vFYibk8OtKEOFw=
X-Google-Smtp-Source: AGHT+IHb2mDoDc1uOvWNNjfP0vkd3Q6AnXtDsBCn0xHp9GEzCfUu/bwJTZjH2eWvCQyJ+YSy9VQO72TVRFl+Otxqsts=
X-Received: by 2002:a05:6a20:958c:b0:1a3:b42:a22d with SMTP id
 iu12-20020a056a20958c00b001a30b42a22dmr4745468pzb.57.1710261821083; Tue, 12
 Mar 2024 09:43:41 -0700 (PDT)
MIME-Version: 1.0
References: <EvXlWPECVDeaMXRRznH9UuSudAiHd7PynGpwb40rW0@lists.ettus.com>
In-Reply-To: <EvXlWPECVDeaMXRRznH9UuSudAiHd7PynGpwb40rW0@lists.ettus.com>
Date: Tue, 12 Mar 2024 12:43:28 -0400
Message-ID: <CAB__hTQV6JzhWNiSePcL343jLkvtUKvUrjonUDDD+No3xQm=8Q@mail.gmail.com>
To: zackkomo@utexas.edu
Message-ID-Hash: M2SJRYPTNZGAUSGFFYNQFB4MUWXD6W72
X-Message-ID-Hash: M2SJRYPTNZGAUSGFFYNQFB4MUWXD6W72
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Extending duration of high-rate captures with the X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/M2SJRYPTNZGAUSGFFYNQFB4MUWXD6W72/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============2753752066488645219=="

--===============2753752066488645219==
Content-Type: multipart/alternative; boundary="00000000000051caba0613795c28"

--00000000000051caba0613795c28
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

So, if benchmark_rate can run successfully, maybe try rx_samples_to_file
with saving the dev/null or with saving to files in a RAM file system.
This will limit your capture depth to the size of the RAM. If this works,
then it is a challenging issue to save to permanent storage. Perhaps DPDK
will work better at the expense of more complex configuration.

On Tue, Mar 12, 2024 at 11:58=E2=80=AFAM <zackkomo@utexas.edu> wrote:

> Hello Rob!
>
> I should have mentioned this in my original post but benchmark rate works
> well for me. Specifically, when I run:
>
> ./benchmark_rate --rx_rate 491.52e6 --args "addr=3D192.168.10.2,second_ad=
dr=3D192.168.20.2,mgmt_addr=3D192.168.1.19" --duration 600
>
> I get
>
> [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.11; UHD_=
4.6.0.HEAD-0-g50fa3baa
>
> [00:00:00.000322] Creating the usrp device with: addr=3D192.168.10.2,seco=
nd_addr=3D192.168.20.2,mgmt_addr=3D192.168.1.19...
>
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=
=3D192.168.1.19,type=3Dx4xx,product=3Dx410,serial=3D326E872,name=3Dni-x4xx-=
326E872,fpga=3DCG_400,claimed=3DFalse,addr=3D192.168.10.2,second_addr=3D192=
.168.20.2
>
> [INFO] [MPM.PeriphManager] init() called with device args `fpga=3DCG_400,=
mgmt_addr=3D192.168.1.19,name=3Dni-x4xx-326E872,product=3Dx410,second_addr=
=3D192.168.20.2,clock_source=3Dinternal,time_source=3Dinternal,initializing=
=3DTrue'.
>
> Using Device: Single USRP:
>
>   Device: X400-Series Device
>
>   Mboard 0: x410
>
>   RX Channel: 0
>
>     RX DSP: n/a
>
>     RX Dboard: A
>
>     RX Subdev: 0
>
>   RX Channel: 1
>
>     RX DSP: n/a
>
>     RX Dboard: A
>
>     RX Subdev: 1
>
>   RX Channel: 2
>
>     RX DSP: n/a
>
>     RX Dboard: B
>
>     RX Subdev: 0
>
>   RX Channel: 3
>
>     RX DSP: n/a
>
>     RX Dboard: B
>
>     RX Subdev: 1
>
>   TX Channel: 0
>
>     TX DSP: n/a
>
>     TX Dboard: A
>
>     TX Subdev: 0
>
>   TX Channel: 1
>
>     TX DSP: n/a
>
>     TX Dboard: A
>
>     TX Subdev: 1
>
>   TX Channel: 2
>
>     TX DSP: n/a
>
>     TX Dboard: B
>
>     TX Subdev: 0
>
>   TX Channel: 3
>
>     TX DSP: n/a
>
>     TX Dboard: B
>
>     TX Subdev: 1
>
> [00:00:03.511001021] Setting device timestamp to 0...
>
> [00:00:03.512894034] Testing receive rate 491.520000 Msps on 1 channels
>
> [00:10:03.513454979] Benchmark complete.
>
> Benchmark rate summary:
>
>   Num received samples:     294911842520
>
>   Num dropped samples:      0
>
>   Num overruns detected:    0
>
>   Num transmitted samples:  0
>
>   Num sequence errors (Tx): 0
>
>   Num sequence errors (Rx): 0
>
>   Num underruns detected:   0
>
>   Num late commands:        0
>
>   Num timeouts (Tx):        0
>
>   Num timeouts (Rx):        0
>
> Done!
>
> When I use the example that saves to file:
>
> ./rx_samples_to_file --args
> "addr=3D192.168.10.2,second_addr=3D192.168.20.2,mgmt_addr=3D192.168.1.19"=
 --file
> [path] --duration 10 --rate 491.52e6 --freq 1575.42e6
>
>
> I get :
>
> Creating the usrp device with: addr=3D192.168.10.2,second_addr=3D192.168.=
20.2,mgmt_addr=3D192.168.1.19...
>
> [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.11; UHD_=
4.6.0.HEAD-0-g50fa3baa
>
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=
=3D192.168.1.19,type=3Dx4xx,product=3Dx410,serial=3D326E872,name=3Dni-x4xx-=
326E872,fpga=3DCG_400,claimed=3DFalse,addr=3D192.168.10.2,second_addr=3D192=
.168.20.2
>
> [INFO] [MPM.PeriphManager] init() called with device args `fpga=3DCG_400,=
mgmt_addr=3D192.168.1.19,name=3Dni-x4xx-326E872,product=3Dx410,second_addr=
=3D192.168.20.2,clock_source=3Dinternal,time_source=3Dinternal,initializing=
=3DTrue'.
>
> Using Device: Single USRP:
>
>   Device: X400-Series Device
>
>   Mboard 0: x410
>
>   RX Channel: 0
>
>     RX DSP: n/a
>
>     RX Dboard: A
>
>     RX Subdev: 0
>
>   RX Channel: 1
>
>     RX DSP: n/a
>
>     RX Dboard: A
>
>     RX Subdev: 1
>
>   RX Channel: 2
>
>     RX DSP: n/a
>
>     RX Dboard: B
>
>     RX Subdev: 0
>
>   RX Channel: 3
>
>     RX DSP: n/a
>
>     RX Dboard: B
>
>     RX Subdev: 1
>
>   TX Channel: 0
>
>     TX DSP: n/a
>
>     TX Dboard: A
>
>     TX Subdev: 0
>
>   TX Channel: 1
>
>     TX DSP: n/a
>
>     TX Dboard: A
>
>     TX Subdev: 1
>
>   TX Channel: 2
>
>     TX DSP: n/a
>
>     TX Dboard: B
>
>     TX Subdev: 0
>
>   TX Channel: 3
>
>     TX DSP: n/a
>
>     TX Dboard: B
>
>     TX Subdev: 1
>
> Setting RX Rate: 491.520000 Msps...
>
> Actual RX Rate: 491.520000 Msps...
>
> Setting RX Freq: 1575.420000 MHz...
>
> Setting RX LO Offset: 0.000000 MHz...
>
> [WARNING] [MULTI_USRP] No DSP capabilities detected. Combining offset int=
o target frequency of 1575.420MHz
>
> Actual RX Freq: 1575.420000 MHz...
>
> Locking LO on channel 0
>
> Waiting for "lo_locked": ++++++++++ locked.
>
> Press Ctrl + C to stop streaming...
>
>   Disk write test indicates that an overflow is likely to occur.
>
>   Your write medium must sustain a rate of 1966.080MB/s,
>
>   but write test returned write speed of 184.000MB/s.
>
>   The disk write rate is also affected by system load
>
>   and OS/disk caching capacity.
>
> OGot an overflow indication. Please consider the following:
>
>   Your write medium must sustain a rate of 1966.080MB/s.
>
>   Dropped samples will not be written to the file.
>
>   Please modify this example for your purposes.
>
>   This message will not appear again.
>
> OOOOOO^C
>
> Done!
>
>
> Which I abort since I get overruns.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000051caba0613795c28
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">So, if benchmark_rate can run successfully, maybe try rx_s=
amples_to_file with saving the dev/null or with saving to files in a RAM fi=
le system.=C2=A0 This will limit your capture depth to the size of the RAM.=
 If this works, then it is a challenging issue to save to permanent storage=
. Perhaps DPDK will work better at the expense of more complex configuratio=
n.=C2=A0</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Tue, Mar 12, 2024 at 11:58=E2=80=AFAM &lt;<a href=3D"mailto:zack=
komo@utexas.edu">zackkomo@utexas.edu</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><p>Hello Rob!</p><p>I should have menti=
oned this in my original post but benchmark rate works well for me. Specifi=
cally, when I run:</p><pre><code>./benchmark_rate --rx_rate 491.52e6 --args=
 &quot;addr=3D192.168.10.2,second_addr=3D192.168.20.2,mgmt_addr=3D192.168.1=
.19&quot; --duration 600</code></pre><p>I get </p><pre><code>[INFO] [UHD] l=
inux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.11; UHD_4.6.0.HEAD-0-g50=
fa3baa</code></pre><pre><code>[00:00:00.000322] Creating the usrp device wi=
th: addr=3D192.168.10.2,second_addr=3D192.168.20.2,mgmt_addr=3D192.168.1.19=
...</code></pre><pre><code>[INFO] [MPMD] Initializing 1 device(s) in parall=
el with args: mgmt_addr=3D192.168.1.19,type=3Dx4xx,product=3Dx410,serial=3D=
326E872,name=3Dni-x4xx-326E872,fpga=3DCG_400,claimed=3DFalse,addr=3D192.168=
.10.2,second_addr=3D192.168.20.2</code></pre><pre><code>[INFO] [MPM.PeriphM=
anager] init() called with device args `fpga=3DCG_400,mgmt_addr=3D192.168.1=
.19,name=3Dni-x4xx-326E872,product=3Dx410,second_addr=3D192.168.20.2,clock_=
source=3Dinternal,time_source=3Dinternal,initializing=3DTrue&#39;.</code></=
pre><pre><code>Using Device: Single USRP:</code></pre><pre><code>  Device: =
X400-Series Device</code></pre><pre><code>  Mboard 0: x410</code></pre><pre=
><code>  RX Channel: 0</code></pre><pre><code>    RX DSP: n/a</code></pre><=
pre><code>    RX Dboard: A</code></pre><pre><code>    RX Subdev: 0</code></=
pre><pre><code>  RX Channel: 1</code></pre><pre><code>    RX DSP: n/a</code=
></pre><pre><code>    RX Dboard: A</code></pre><pre><code>    RX Subdev: 1<=
/code></pre><pre><code>  RX Channel: 2</code></pre><pre><code>    RX DSP: n=
/a</code></pre><pre><code>    RX Dboard: B</code></pre><pre><code>    RX Su=
bdev: 0</code></pre><pre><code>  RX Channel: 3</code></pre><pre><code>    R=
X DSP: n/a</code></pre><pre><code>    RX Dboard: B</code></pre><pre><code> =
   RX Subdev: 1</code></pre><pre><code>  TX Channel: 0</code></pre><pre><co=
de>    TX DSP: n/a</code></pre><pre><code>    TX Dboard: A</code></pre><pre=
><code>    TX Subdev: 0</code></pre><pre><code>  TX Channel: 1</code></pre>=
<pre><code>    TX DSP: n/a</code></pre><pre><code>    TX Dboard: A</code></=
pre><pre><code>    TX Subdev: 1</code></pre><pre><code>  TX Channel: 2</cod=
e></pre><pre><code>    TX DSP: n/a</code></pre><pre><code>    TX Dboard: B<=
/code></pre><pre><code>    TX Subdev: 0</code></pre><pre><code>  TX Channel=
: 3</code></pre><pre><code>    TX DSP: n/a</code></pre><pre><code>    TX Db=
oard: B</code></pre><pre><code>    TX Subdev: 1</code></pre><pre><code>[00:=
00:03.511001021] Setting device timestamp to 0...</code></pre><pre><code>[0=
0:00:03.512894034] Testing receive rate 491.520000 Msps on 1 channels</code=
></pre><pre><code>[00:10:03.513454979] Benchmark complete.</code></pre><pre=
><code>Benchmark rate summary:</code></pre><pre><code>  Num received sample=
s:     294911842520</code></pre><pre><code>  Num dropped samples:      0</c=
ode></pre><pre><code>  Num overruns detected:    0</code></pre><pre><code> =
 Num transmitted samples:  0</code></pre><pre><code>  Num sequence errors (=
Tx): 0</code></pre><pre><code>  Num sequence errors (Rx): 0</code></pre><pr=
e><code>  Num underruns detected:   0</code></pre><pre><code>  Num late com=
mands:        0</code></pre><pre><code>  Num timeouts (Tx):        0</code>=
</pre><pre><code>  Num timeouts (Rx):        0</code></pre><pre><code>Done!
<br></code></pre><p> When I use the example that saves to file:</p><p>./rx_=
samples_to_file --args &quot;addr=3D192.168.10.2,second_addr=3D192.168.20.2=
,mgmt_addr=3D192.168.1.19&quot; --file [path] --duration 10 --rate 491.52e6=
 --freq 1575.42e6</p><p><br></p><p>I get :</p><pre><code>Creating the usrp =
device with: addr=3D192.168.10.2,second_addr=3D192.168.20.2,mgmt_addr=3D192=
.168.1.19...</code></pre><pre><code>[INFO] [UHD] linux; GNU C++ version 9.4=
.0; Boost_107100; DPDK_19.11; UHD_4.6.0.HEAD-0-g50fa3baa</code></pre><pre><=
code>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D192.168.1.19,type=3Dx4xx,product=3Dx410,serial=3D326E872,name=3Dni-x4xx=
-326E872,fpga=3DCG_400,claimed=3DFalse,addr=3D192.168.10.2,second_addr=3D19=
2.168.20.2</code></pre><pre><code>[INFO] [MPM.PeriphManager] init() called =
with device args `fpga=3DCG_400,mgmt_addr=3D192.168.1.19,name=3Dni-x4xx-326=
E872,product=3Dx410,second_addr=3D192.168.20.2,clock_source=3Dinternal,time=
_source=3Dinternal,initializing=3DTrue&#39;.</code></pre><pre><code>Using D=
evice: Single USRP:</code></pre><pre><code>  Device: X400-Series Device</co=
de></pre><pre><code>  Mboard 0: x410</code></pre><pre><code>  RX Channel: 0=
</code></pre><pre><code>    RX DSP: n/a</code></pre><pre><code>    RX Dboar=
d: A</code></pre><pre><code>    RX Subdev: 0</code></pre><pre><code>  RX Ch=
annel: 1</code></pre><pre><code>    RX DSP: n/a</code></pre><pre><code>    =
RX Dboard: A</code></pre><pre><code>    RX Subdev: 1</code></pre><pre><code=
>  RX Channel: 2</code></pre><pre><code>    RX DSP: n/a</code></pre><pre><c=
ode>    RX Dboard: B</code></pre><pre><code>    RX Subdev: 0</code></pre><p=
re><code>  RX Channel: 3</code></pre><pre><code>    RX DSP: n/a</code></pre=
><pre><code>    RX Dboard: B</code></pre><pre><code>    RX Subdev: 1</code>=
</pre><pre><code>  TX Channel: 0</code></pre><pre><code>    TX DSP: n/a</co=
de></pre><pre><code>    TX Dboard: A</code></pre><pre><code>    TX Subdev: =
0</code></pre><pre><code>  TX Channel: 1</code></pre><pre><code>    TX DSP:=
 n/a</code></pre><pre><code>    TX Dboard: A</code></pre><pre><code>    TX =
Subdev: 1</code></pre><pre><code>  TX Channel: 2</code></pre><pre><code>   =
 TX DSP: n/a</code></pre><pre><code>    TX Dboard: B</code></pre><pre><code=
>    TX Subdev: 0</code></pre><pre><code>  TX Channel: 3</code></pre><pre><=
code>    TX DSP: n/a</code></pre><pre><code>    TX Dboard: B</code></pre><p=
re><code>    TX Subdev: 1</code></pre><pre><code>Setting RX Rate: 491.52000=
0 Msps...</code></pre><pre><code>Actual RX Rate: 491.520000 Msps...</code><=
/pre><pre><code>Setting RX Freq: 1575.420000 MHz...</code></pre><pre><code>=
Setting RX LO Offset: 0.000000 MHz...</code></pre><pre><code>[WARNING] [MUL=
TI_USRP] No DSP capabilities detected. Combining offset into target frequen=
cy of 1575.420MHz</code></pre><pre><code>Actual RX Freq: 1575.420000 MHz...=
</code></pre><pre><code>Locking LO on channel 0</code></pre><pre><code>Wait=
ing for &quot;lo_locked&quot;: ++++++++++ locked.</code></pre><pre><code>Pr=
ess Ctrl + C to stop streaming...</code></pre><pre><code>  Disk write test =
indicates that an overflow is likely to occur.</code></pre><pre><code>  You=
r write medium must sustain a rate of 1966.080MB/s,</code></pre><pre><code>=
  but write test returned write speed of 184.000MB/s.</code></pre><pre><cod=
e>  The disk write rate is also affected by system load</code></pre><pre><c=
ode>  and OS/disk caching capacity.</code></pre><pre><code>OGot an overflow=
 indication. Please consider the following:</code></pre><pre><code>  Your w=
rite medium must sustain a rate of 1966.080MB/s.</code></pre><pre><code>  D=
ropped samples will not be written to the file.</code></pre><pre><code>  Pl=
ease modify this example for your purposes.</code></pre><pre><code>  This m=
essage will not appear again.</code></pre><pre><code>OOOOOO^C</code></pre><=
pre><code>Done!</code></pre><p><br></p><p>Which I abort since I get overrun=
s. </p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000051caba0613795c28--

--===============2753752066488645219==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2753752066488645219==--
