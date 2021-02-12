Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6998A31A0BB
	for <lists+usrp-users@lfdr.de>; Fri, 12 Feb 2021 15:38:04 +0100 (CET)
Received: from [::1] (port=38884 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lAZa5-0007kM-P6; Fri, 12 Feb 2021 09:38:01 -0500
Received: from mail-ot1-f52.google.com ([209.85.210.52]:46282)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1lAZa1-0007cA-CU
 for usrp-users@lists.ettus.com; Fri, 12 Feb 2021 09:37:57 -0500
Received: by mail-ot1-f52.google.com with SMTP id r21so8504007otk.13
 for <usrp-users@lists.ettus.com>; Fri, 12 Feb 2021 06:37:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4+NvUuXsNtyQoz7HR/6zLuqnhnSx14RfouM1FaPzldg=;
 b=ge4nTnGlrFqaRFlfGvrRu5xxWw3tpIeJgbTdWOTq9rvxN3QiNxfsykgvxnWwCMMOsl
 JhrhfjMO86aAkdJWNwjiX8gU8PqaGzOBtPdQHOTgy2JSgDgRnoQPrMrMlGBm7Bq/Tu5J
 5eY00z80i6AYNtnsGcjTqgnNjQReQ+0eMPeAHhJgPaM8I5quQPKx6ZCXZ9HSzt2oBWOu
 MAH2ncni7Xnqm4mevZdfTgdFX0Wmvi6vXNfhYJaXGVeDrKJUDRAl7nGpUtrsvNmVsJaa
 zLOrTVvuFzGDFVo23HM0bEdyvrIwCAS/VBn1zLPEnqKXut/BueGEFM045bsNuzGLIK7n
 nzbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4+NvUuXsNtyQoz7HR/6zLuqnhnSx14RfouM1FaPzldg=;
 b=ttJv5Jvm3rveYnYIfKM5vG5SyHfa9sVpczA+YVEAvhheh5jqDJOOKyD0hOP0F8j6Ny
 g6ee2lPDH7m3nowTvbrEMPIdqyLtOFDDvJi5v9zFohH5u59tyBocedqRMKfEnzFPrETM
 ir61G/Z1BbErRdqM5o/Nu9KDN/2Yxd69J+HvYJD+oTRPVBlm6+/9tjOO9cb1oiLEOjvB
 65gd6z5p+e/03uF2vP9Fdu1oIahJZ0iZxqLe1aVA9zFXFkJWF8aZyUvS1f4EsS98W3Ot
 Tbbg5TGdb8C4EBmbWdlNCp5epk6Fc2NgDCSLsRrSGOjYLVzUk7VjpifrsleqpJG/3Z6V
 Z1KQ==
X-Gm-Message-State: AOAM532PVdTrQ4XWyGGD92SQrd2VwsS4HZgQlwD9CJEoBGU8uYV6PEGM
 yg7sU4gh5FrojF4b0a+Bw64Hq9yLhvWFPe8tCc+ygA==
X-Google-Smtp-Source: ABdhPJzTSZqtscObJrFj1K0qK5fnmwEsgi4AzbQ4Z7kXWL+6ubhBz5BJ5ouU3oivCDWfSZ+h7JcTH26RPGHkRNDubvg=
X-Received: by 2002:a9d:5503:: with SMTP id l3mr2189189oth.302.1613140636483; 
 Fri, 12 Feb 2021 06:37:16 -0800 (PST)
MIME-Version: 1.0
References: <0ffc349b-bf7c-6bef-6b74-505926796c40@ant.uni-bremen.de>
 <EC78AD9C-8584-49F6-98FA-A7BF09D4E62B@gmail.com>
 <57b7d3d1-cd2e-0d6c-2487-e7eb3de6e73d@ant.uni-bremen.de>
 <6025878D.6070404@gmail.com>
 <fe861977-d453-e578-8c78-590897d3fe52@ant.uni-bremen.de>
In-Reply-To: <fe861977-d453-e578-8c78-590897d3fe52@ant.uni-bremen.de>
Date: Fri, 12 Feb 2021 09:37:05 -0500
Message-ID: <CAB__hTTEDDw4_-_Ozg_Bf57aEqi=_Juo+2BU0Rdtqe+qgy3rLQ@mail.gmail.com>
To: Johannes Demel <demel@ant.uni-bremen.de>
Subject: Re: [USRP-users] How to use 2 N310 for TX and RX
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7089179347465571230=="
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

--===============7089179347465571230==
Content-Type: multipart/alternative; boundary="0000000000009c7a9605bb249251"

--0000000000009c7a9605bb249251
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Johannes,
Regarding the logging you described, perhaps you need to use the cmake
option "-DUHD_LOG_MIN_LEVEL=3Dtrace" prior to the UHD build.
Rob

On Fri, Feb 12, 2021 at 9:20 AM Johannes Demel via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
>
> I'd like to continue this discussion here. Somehow UHD seems to ignore
> my `export `UHD_LOG_LEVEL=3Dtrace` (and `UHD_CONSOLE_LOG_LEVEL=3Dtrace`)
> setting. Thus, I adopted the following line:
>
> https://github.com/EttusResearch/uhd/blob/7a3f15164f78a7a3b705a0d099eb5dc=
335ccd9f6/host/lib/device.cpp#L151
> I changed it from "_TRACE" to "_WARNING".
>
> Now, I run the following script with UHD3.15 and GR3.9
> ```
> from gnuradio import uhd
>
> sa =3D uhd.stream_args(cpu_format=3D"fc32", channels=3D[0,3])
> da =3D uhd.device_addr("addr0=3D192.168.20.213,master_clock_rate=3D122.88=
e6")
> src =3D uhd.usrp_source(da, sa)
> snk =3D uhd.usrp_sink(da, sa)
> ```
>
> Output:
> ```
> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
> UHD_3.15.0.0-62-g7a3f1516
> [WARNING] [UHD] Device hash: 15209044898211686823
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
>
> mgmt_addr=3D192.168.20.213,type=3Dn3xx,product=3Dn310,serial=3D319841B,cl=
aimed=3DFalse,addr0=3D192.168.20.213,master_clock_rate=3D122.88e6
> [INFO] [MPM.PeriphManager] init() called with device args
>
> `time_source=3Dexternal,clock_source=3Dexternal,master_clock_rate=3D122.8=
8e6,product=3Dn310,mgmt_addr=3D192.168.20.213'.
> [INFO] [0/Replay_0] Initializing block control (NOC ID:
> [...]
> [INFO] [0/FIFO_3] Initializing block control (NOC ID: 0xF1F0000000000000)
> [WARNING] [UHD] Device hash: 15209044898211686823
> ```
> Basically, GR sink and source find the same object and everything works
> as expected.
> Note the `[WARNING] [UHD] Device hash: 15209044898211686823` line
> appears twice with the same hash.
>
> Now, I change my script slightly.
> ```
> from gnuradio import uhd
>
> sa =3D uhd.stream_args(cpu_format=3D"fc32", channels=3D[0,3])
> da =3D
>
> uhd.device_addr("addr0=3D192.168.20.213,addr1=3D192.168.21.218,master_clo=
ck_rate=3D122.88e6")
> src =3D uhd.usrp_source(da, sa)
> snk =3D uhd.usrp_sink(da, sa)
> ```
> Note, the difference is `addr1=3D192.168.21.218` in the device address li=
ne.
>
> The output is
> ```
> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
> UHD_3.15.0.0-62-g7a3f1516
> [WARNING] [UHD] Device hash: 5057702592664243525
> [INFO] [MPMD] Initializing 2 device(s) in parallel with args:
>
> mgmt_addr0=3D192.168.20.213,type0=3Dn3xx,product0=3Dn310,serial0=3D319841=
B,claimed0=3DFalse,mgmt_addr1=3D192.168.21.218,type1=3Dn3xx,product1=3Dn310=
,serial1=3D3180AF3,claimed1=3DFalse,addr0=3D192.168.20.213,addr1=3D192.168.=
21.218,master_clock_rate=3D122.88e6
> [INFO] [MPM.PeriphManager] init() called with device args
>
> `time_source=3Dexternal,clock_source=3Dexternal,master_clock_rate=3D122.8=
8e6,product=3Dn310,mgmt_addr=3D192.168.20.213'.
> [INFO] [0/Replay_0] Initializing block control (NOC ID: 0x4E91A0000000000=
4)
> [INFO] [MPM.PeriphManager] init() called with device args
>
> `product=3Dn310,time_source=3Dexternal,master_clock_rate=3D122.88e6,clock=
_source=3Dexternal,mgmt_addr=3D192.168.21.218'.
> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000011312=
)
> [...]
> [INFO] [1/FIFO_3] Initializing block control (NOC ID: 0xF1F0000000000000)
> [WARNING] [UHD] Device hash: 2708921529157961925
> [INFO] [MPMD] Initializing 2 device(s) in parallel with args:
>
> mgmt_addr0=3D192.168.20.213,type0=3Dn3xx,product0=3Dn310,serial0=3D319841=
B,claimed0=3DTrue,mgmt_addr1=3D192.168.21.218,type1=3Dn3xx,product1=3Dn310,=
serial1=3D3180AF3,claimed1=3DTrue,addr0=3D192.168.20.213,addr1=3D192.168.21=
.218,master_clock_rate=3D122.88e6
> [ERROR] [RPC] Someone tried to claim this device again (From:
> 192.168.20.34)
> Traceback (most recent call last):
>    File "multi_usrp.py", line 12, in <module>
>      snk =3D uhd.usrp_sink(da, sa)
> RuntimeError: RuntimeError: Error during RPC call to `claim'. Error
> message: Someone tried to claim this device again (From: 192.168.20.34)
> [WARNING] [MPM.RPCServer] Someone tried to claim this device again
> (From: 192.168.20.34)
> ```
> Here, UHD ends up with 2 different devices hashes.
> `[WARNING] [UHD] Device hash: 5057702592664243525`
> `[WARNING] [UHD] Device hash: 2708921529157961925`
>
> I assume both calls should yield the same device hash. I just compared
> the branches UHD-3.15.LTS and master. I couldn't spot any changes in the
> code apart from different formatting.
>
> I changed `host/lib/device.cpp:L50`
>
>
> https://github.com/EttusResearch/uhd/blob/7a3f15164f78a7a3b705a0d099eb5dc=
335ccd9f6/host/lib/device.cpp#L50
> From
> ```
> if (std::find(hash_key_blacklist.begin(), hash_key_blacklist.end(), key)
> ```
> to
> ```
> if (std::find_if(hash_key_blacklist.begin(),
>                   hash_key_blacklist.end(),
>                   [key](std::string i) { return key.find(i) !=3D
>                                              std::string::npos; })
> ```
> and then it works. Here keys like `claimed` are different if more than
> one device is used. e.g. instead of `claimed` the keys are `claimed0`,
> `claimed1`.
>
> Cheers
> Johannes
>
> PS: if the 2 USRP configuration encounters an underrun (U print) all
> following packets seem to spam `L`. The system seems like it won't ever
> recover from that state. But that's a different issue.
>
> On 11.02.21 20:37, Marcus D. Leech wrote:
> > On 02/11/2021 05:04 AM, Johannes Demel wrote:
> >> Hi,
> >>
> >> yes, I just attach a grc file for GR 3.9 that I use to test things.
> >>
> >> It works if I specify `addr=3D...` or `addr0=3D...` with one device. I=
f I
> >> switch to 2 devices `addr=3D....,addr1=3D...` it fails.
> >>
> >> It seems like UHD tries to initialize the devices twice.
> >>
> >> ----
> >> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
> >> UHD_3.15.0.0-62-g7a3f1516
> >> [INFO] [MPMD] Initializing 2 device(s) in parallel with args:
> >>
> mgmt_addr0=3D192.168.20.213,type0=3Dn3xx,product0=3Dn310,serial0=3D319841=
B,claimed0=3DFalse,mgmt_addr1=3D192.168.21.218,type1=3Dn3xx,product1=3Dn310=
,serial1=3D3180AF3,claimed1=3DFalse,addr0=3D192.168.20.213,addr1=3D192.168.=
21.218,master_clock_rate=3D122.88e6,clock_source=3Dexternal,time_source=3De=
xternal
>
> >>
> >> [INFO] [MPM.PeriphManager] init() called with device args
> >>
> `time_source=3Dexternal,clock_source=3Dexternal,master_clock_rate=3D122.8=
8e6,product=3Dn310,mgmt_addr=3D192.168.20.213'.
>
> >>
> >> [INFO] [0/Replay_0] Initializing block control (NOC ID:
> >> 0x4E91A00000000004)
> >> [INFO] [MPM.PeriphManager] init() called with device args
> >>
> `time_source=3Dexternal,product=3Dn310,master_clock_rate=3D122.88e6,clock=
_source=3Dexternal,mgmt_addr=3D192.168.21.218'.
>
> >>
> >> [INFO] [0/Radio_0] Initializing block control (NOC ID:
> >> 0x12AD100000011312)
> >>
> >> [...]
> >>
> >> [INFO] [1/FIFO_3] Initializing block control (NOC ID:
> 0xF1F0000000000000)
> >> [INFO] [MULTI_USRP]     1) catch time transition at pps edge
> >> [INFO] [MULTI_USRP]     2) set times next pps (synchronously)
> >> [INFO] [MPMD] Initializing 2 device(s) in parallel with args:
> >>
> mgmt_addr0=3D192.168.20.213,type0=3Dn3xx,product0=3Dn310,serial0=3D319841=
B,claimed0=3DTrue,mgmt_addr1=3D192.168.21.218,type1=3Dn3xx,product1=3Dn310,=
serial1=3D3180AF3,claimed1=3DTrue,addr0=3D192.168.20.213,addr1=3D192.168.21=
.218,master_clock_rate=3D122.88e6,clock_source=3Dexternal,time_source=3Dext=
ernal
>
> >>
> >> [ERROR] [RPC] Someone tried to claim this device again (From:
> >> 192.168.20.34)
> >> ----
> >>
> >> If I use only one device, it looks like this:
> >>
> >> ----
> >> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
> >> UHD_3.15.0.0-62-g7a3f1516
> >> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> >>
> mgmt_addr=3D192.168.20.213,type=3Dn3xx,product=3Dn310,serial=3D319841B,cl=
aimed=3DFalse,addr0=3D192.168.20.213,master_clock_rate=3D122.88e6,clock_sou=
rce=3Dexternal,time_source=3Dexternal
>
> >>
> >> [INFO] [MPM.PeriphManager] init() called with device args
> >>
> `time_source=3Dexternal,clock_source=3Dexternal,master_clock_rate=3D122.8=
8e6,product=3Dn310,mgmt_addr=3D192.168.20.213'.
>
> >>
> >> [INFO] [0/Replay_0] Initializing block control (NOC ID:
> >> 0x4E91A00000000004)
> >>
> >> [...]
> >>
> >> [INFO] [0/FIFO_3] Initializing block control (NOC ID:
> 0xF1F0000000000000)
> >> [INFO] [MULTI_USRP]     1) catch time transition at pps edge
> >> [INFO] [MULTI_USRP]     2) set times next pps (synchronously)
> >> [INFO] [MULTI_USRP]     1) catch time transition at pps edge
> >> [INFO] [MULTI_USRP]     2) set times next pps (synchronously)
> >> ----
> >>
> >> The last 4 lines are suspicious because they indicate that
> >> synchronization is performed twice. Also, most of the time during
> >> start up is spend there.
> >>
> >> Anyways, I attached my MWE flowgraph. I'd be happy if you could tell
> >> me how to fix my issue.
> >>
> >> Cheers
> >> Johannes
> >>
> > Johannes:
> >
> > I'm copying Michael Dickens from Ettus Engineering on this, and also,
> > continuing this thread on the usrp-users mailing list would be
> >    more useful than on the discuss-gnuradio list, as there are folks on
> > the usrp-users list who have done multi-N310 configurations
> >    successfully.
> >
> > In particular, Ali Dormiani (sdormian@eng.ucsd.edu) has at least 6 N310
> > operating in their lab with a single host:
> >
> > Hello fellow N310 users. My lab has 6 N310's all operating and streamin=
g
> > to a single data server (10 Gbe links).
> >
> > We use GNU Radio for everything. The software is great for controlling
> > multiple devices with many antennas easily (highly recommended). My
> > experience with native C++ UHD driver commands is rather limited.
> >
> > I'm personally hampered by only having a single N310 at my disposal, so
> > I can't reproduce your issue.
> >
> >
> >
> >
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000009c7a9605bb249251
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Johannes,<div>Regarding the logging you described, perh=
aps you need to use the cmake option &quot;-DUHD_LOG_MIN_LEVEL=3Dtrace&quot=
; prior to the UHD build.=C2=A0</div><div>Rob</div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 12, 2021 at =
9:20 AM Johannes Demel via USRP-users &lt;<a href=3D"mailto:usrp-users@list=
s.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
I&#39;d like to continue this discussion here. Somehow UHD seems to ignore =
<br>
my `export `UHD_LOG_LEVEL=3Dtrace` (and `UHD_CONSOLE_LOG_LEVEL=3Dtrace`) <b=
r>
setting. Thus, I adopted the following line:<br>
<a href=3D"https://github.com/EttusResearch/uhd/blob/7a3f15164f78a7a3b705a0=
d099eb5dc335ccd9f6/host/lib/device.cpp#L151" rel=3D"noreferrer" target=3D"_=
blank">https://github.com/EttusResearch/uhd/blob/7a3f15164f78a7a3b705a0d099=
eb5dc335ccd9f6/host/lib/device.cpp#L151</a><br>
I changed it from &quot;_TRACE&quot; to &quot;_WARNING&quot;.<br>
<br>
Now, I run the following script with UHD3.15 and GR3.9<br>
```<br>
from gnuradio import uhd<br>
<br>
sa =3D uhd.stream_args(cpu_format=3D&quot;fc32&quot;, channels=3D[0,3])<br>
da =3D uhd.device_addr(&quot;addr0=3D192.168.20.213,master_clock_rate=3D122=
.88e6&quot;)<br>
src =3D uhd.usrp_source(da, sa)<br>
snk =3D uhd.usrp_sink(da, sa)<br>
```<br>
<br>
Output:<br>
```<br>
[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; <br>
UHD_3.15.0.0-62-g7a3f1516<br>
[WARNING] [UHD] Device hash: 15209044898211686823<br>
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: <br>
mgmt_addr=3D192.168.20.213,type=3Dn3xx,product=3Dn310,serial=3D319841B,clai=
med=3DFalse,addr0=3D192.168.20.213,master_clock_rate=3D122.88e6<br>
[INFO] [MPM.PeriphManager] init() called with device args <br>
`time_source=3Dexternal,clock_source=3Dexternal,master_clock_rate=3D122.88e=
6,product=3Dn310,mgmt_addr=3D192.168.20.213&#39;.<br>
[INFO] [0/Replay_0] Initializing block control (NOC ID:<br>
[...]<br>
[INFO] [0/FIFO_3] Initializing block control (NOC ID: 0xF1F0000000000000)<b=
r>
[WARNING] [UHD] Device hash: 15209044898211686823<br>
```<br>
Basically, GR sink and source find the same object and everything works <br=
>
as expected.<br>
Note the `[WARNING] [UHD] Device hash: 15209044898211686823` line <br>
appears twice with the same hash.<br>
<br>
Now, I change my script slightly.<br>
```<br>
from gnuradio import uhd<br>
<br>
sa =3D uhd.stream_args(cpu_format=3D&quot;fc32&quot;, channels=3D[0,3])<br>
da =3D <br>
uhd.device_addr(&quot;addr0=3D192.168.20.213,addr1=3D192.168.21.218,master_=
clock_rate=3D122.88e6&quot;)<br>
src =3D uhd.usrp_source(da, sa)<br>
snk =3D uhd.usrp_sink(da, sa)<br>
```<br>
Note, the difference is `addr1=3D192.168.21.218` in the device address line=
.<br>
<br>
The output is<br>
```<br>
[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; <br>
UHD_3.15.0.0-62-g7a3f1516<br>
[WARNING] [UHD] Device hash: 5057702592664243525<br>
[INFO] [MPMD] Initializing 2 device(s) in parallel with args: <br>
mgmt_addr0=3D192.168.20.213,type0=3Dn3xx,product0=3Dn310,serial0=3D319841B,=
claimed0=3DFalse,mgmt_addr1=3D192.168.21.218,type1=3Dn3xx,product1=3Dn310,s=
erial1=3D3180AF3,claimed1=3DFalse,addr0=3D192.168.20.213,addr1=3D192.168.21=
.218,master_clock_rate=3D122.88e6<br>
[INFO] [MPM.PeriphManager] init() called with device args <br>
`time_source=3Dexternal,clock_source=3Dexternal,master_clock_rate=3D122.88e=
6,product=3Dn310,mgmt_addr=3D192.168.20.213&#39;.<br>
[INFO] [0/Replay_0] Initializing block control (NOC ID: 0x4E91A00000000004)=
<br>
[INFO] [MPM.PeriphManager] init() called with device args <br>
`product=3Dn310,time_source=3Dexternal,master_clock_rate=3D122.88e6,clock_s=
ource=3Dexternal,mgmt_addr=3D192.168.21.218&#39;.<br>
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000011312)<=
br>
[...]<br>
[INFO] [1/FIFO_3] Initializing block control (NOC ID: 0xF1F0000000000000)<b=
r>
[WARNING] [UHD] Device hash: 2708921529157961925<br>
[INFO] [MPMD] Initializing 2 device(s) in parallel with args: <br>
mgmt_addr0=3D192.168.20.213,type0=3Dn3xx,product0=3Dn310,serial0=3D319841B,=
claimed0=3DTrue,mgmt_addr1=3D192.168.21.218,type1=3Dn3xx,product1=3Dn310,se=
rial1=3D3180AF3,claimed1=3DTrue,addr0=3D192.168.20.213,addr1=3D192.168.21.2=
18,master_clock_rate=3D122.88e6<br>
[ERROR] [RPC] Someone tried to claim this device again (From: 192.168.20.34=
)<br>
Traceback (most recent call last):<br>
=C2=A0 =C2=A0File &quot;multi_usrp.py&quot;, line 12, in &lt;module&gt;<br>
=C2=A0 =C2=A0 =C2=A0snk =3D uhd.usrp_sink(da, sa)<br>
RuntimeError: RuntimeError: Error during RPC call to `claim&#39;. Error <br=
>
message: Someone tried to claim this device again (From: 192.168.20.34)<br>
[WARNING] [MPM.RPCServer] Someone tried to claim this device again <br>
(From: 192.168.20.34)<br>
```<br>
Here, UHD ends up with 2 different devices hashes.<br>
`[WARNING] [UHD] Device hash: 5057702592664243525`<br>
`[WARNING] [UHD] Device hash: 2708921529157961925`<br>
<br>
I assume both calls should yield the same device hash. I just compared <br>
the branches UHD-3.15.LTS and master. I couldn&#39;t spot any changes in th=
e <br>
code apart from different formatting.<br>
<br>
I changed `host/lib/device.cpp:L50`<br>
<br>
<a href=3D"https://github.com/EttusResearch/uhd/blob/7a3f15164f78a7a3b705a0=
d099eb5dc335ccd9f6/host/lib/device.cpp#L50" rel=3D"noreferrer" target=3D"_b=
lank">https://github.com/EttusResearch/uhd/blob/7a3f15164f78a7a3b705a0d099e=
b5dc335ccd9f6/host/lib/device.cpp#L50</a><br>
From<br>
```<br>
if (std::find(hash_key_blacklist.begin(), hash_key_blacklist.end(), key)<br=
>
```<br>
to<br>
```<br>
if (std::find_if(hash_key_blacklist.begin(),<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 hash_key_bla=
cklist.end(),<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [key](std::s=
tring i) { return key.find(i) !=3D<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0std::string::npos; })<br>
```<br>
and then it works. Here keys like `claimed` are different if more than <br>
one device is used. e.g. instead of `claimed` the keys are `claimed0`, <br>
`claimed1`.<br>
<br>
Cheers<br>
Johannes<br>
<br>
PS: if the 2 USRP configuration encounters an underrun (U print) all <br>
following packets seem to spam `L`. The system seems like it won&#39;t ever=
 <br>
recover from that state. But that&#39;s a different issue.<br>
<br>
On 11.02.21 20:37, Marcus D. Leech wrote:<br>
&gt; On 02/11/2021 05:04 AM, Johannes Demel wrote:<br>
&gt;&gt; Hi,<br>
&gt;&gt;<br>
&gt;&gt; yes, I just attach a grc file for GR 3.9 that I use to test things=
.<br>
&gt;&gt;<br>
&gt;&gt; It works if I specify `addr=3D...` or `addr0=3D...` with one devic=
e. If I <br>
&gt;&gt; switch to 2 devices `addr=3D....,addr1=3D...` it fails.<br>
&gt;&gt;<br>
&gt;&gt; It seems like UHD tries to initialize the devices twice.<br>
&gt;&gt;<br>
&gt;&gt; ----<br>
&gt;&gt; [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; <br>
&gt;&gt; UHD_3.15.0.0-62-g7a3f1516<br>
&gt;&gt; [INFO] [MPMD] Initializing 2 device(s) in parallel with args: <br>
&gt;&gt; mgmt_addr0=3D192.168.20.213,type0=3Dn3xx,product0=3Dn310,serial0=
=3D319841B,claimed0=3DFalse,mgmt_addr1=3D192.168.21.218,type1=3Dn3xx,produc=
t1=3Dn310,serial1=3D3180AF3,claimed1=3DFalse,addr0=3D192.168.20.213,addr1=
=3D192.168.21.218,master_clock_rate=3D122.88e6,clock_source=3Dexternal,time=
_source=3Dexternal <br>
&gt;&gt;<br>
&gt;&gt; [INFO] [MPM.PeriphManager] init() called with device args <br>
&gt;&gt; `time_source=3Dexternal,clock_source=3Dexternal,master_clock_rate=
=3D122.88e6,product=3Dn310,mgmt_addr=3D192.168.20.213&#39;. <br>
&gt;&gt;<br>
&gt;&gt; [INFO] [0/Replay_0] Initializing block control (NOC ID: <br>
&gt;&gt; 0x4E91A00000000004)<br>
&gt;&gt; [INFO] [MPM.PeriphManager] init() called with device args <br>
&gt;&gt; `time_source=3Dexternal,product=3Dn310,master_clock_rate=3D122.88e=
6,clock_source=3Dexternal,mgmt_addr=3D192.168.21.218&#39;. <br>
&gt;&gt;<br>
&gt;&gt; [INFO] [0/Radio_0] Initializing block control (NOC ID: <br>
&gt;&gt; 0x12AD100000011312)<br>
&gt;&gt;<br>
&gt;&gt; [...]<br>
&gt;&gt;<br>
&gt;&gt; [INFO] [1/FIFO_3] Initializing block control (NOC ID: 0xF1F0000000=
000000)<br>
&gt;&gt; [INFO] [MULTI_USRP]=C2=A0=C2=A0=C2=A0=C2=A0 1) catch time transiti=
on at pps edge<br>
&gt;&gt; [INFO] [MULTI_USRP]=C2=A0=C2=A0=C2=A0=C2=A0 2) set times next pps =
(synchronously)<br>
&gt;&gt; [INFO] [MPMD] Initializing 2 device(s) in parallel with args: <br>
&gt;&gt; mgmt_addr0=3D192.168.20.213,type0=3Dn3xx,product0=3Dn310,serial0=
=3D319841B,claimed0=3DTrue,mgmt_addr1=3D192.168.21.218,type1=3Dn3xx,product=
1=3Dn310,serial1=3D3180AF3,claimed1=3DTrue,addr0=3D192.168.20.213,addr1=3D1=
92.168.21.218,master_clock_rate=3D122.88e6,clock_source=3Dexternal,time_sou=
rce=3Dexternal <br>
&gt;&gt;<br>
&gt;&gt; [ERROR] [RPC] Someone tried to claim this device again (From: <br>
&gt;&gt; 192.168.20.34)<br>
&gt;&gt; ----<br>
&gt;&gt;<br>
&gt;&gt; If I use only one device, it looks like this:<br>
&gt;&gt;<br>
&gt;&gt; ----<br>
&gt;&gt; [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; <br>
&gt;&gt; UHD_3.15.0.0-62-g7a3f1516<br>
&gt;&gt; [INFO] [MPMD] Initializing 1 device(s) in parallel with args: <br>
&gt;&gt; mgmt_addr=3D192.168.20.213,type=3Dn3xx,product=3Dn310,serial=3D319=
841B,claimed=3DFalse,addr0=3D192.168.20.213,master_clock_rate=3D122.88e6,cl=
ock_source=3Dexternal,time_source=3Dexternal <br>
&gt;&gt;<br>
&gt;&gt; [INFO] [MPM.PeriphManager] init() called with device args <br>
&gt;&gt; `time_source=3Dexternal,clock_source=3Dexternal,master_clock_rate=
=3D122.88e6,product=3Dn310,mgmt_addr=3D192.168.20.213&#39;. <br>
&gt;&gt;<br>
&gt;&gt; [INFO] [0/Replay_0] Initializing block control (NOC ID: <br>
&gt;&gt; 0x4E91A00000000004)<br>
&gt;&gt;<br>
&gt;&gt; [...]<br>
&gt;&gt;<br>
&gt;&gt; [INFO] [0/FIFO_3] Initializing block control (NOC ID: 0xF1F0000000=
000000)<br>
&gt;&gt; [INFO] [MULTI_USRP]=C2=A0=C2=A0=C2=A0=C2=A0 1) catch time transiti=
on at pps edge<br>
&gt;&gt; [INFO] [MULTI_USRP]=C2=A0=C2=A0=C2=A0=C2=A0 2) set times next pps =
(synchronously)<br>
&gt;&gt; [INFO] [MULTI_USRP]=C2=A0=C2=A0=C2=A0=C2=A0 1) catch time transiti=
on at pps edge<br>
&gt;&gt; [INFO] [MULTI_USRP]=C2=A0=C2=A0=C2=A0=C2=A0 2) set times next pps =
(synchronously)<br>
&gt;&gt; ----<br>
&gt;&gt;<br>
&gt;&gt; The last 4 lines are suspicious because they indicate that <br>
&gt;&gt; synchronization is performed twice. Also, most of the time during =
<br>
&gt;&gt; start up is spend there.<br>
&gt;&gt;<br>
&gt;&gt; Anyways, I attached my MWE flowgraph. I&#39;d be happy if you coul=
d tell <br>
&gt;&gt; me how to fix my issue.<br>
&gt;&gt;<br>
&gt;&gt; Cheers<br>
&gt;&gt; Johannes<br>
&gt;&gt;<br>
&gt; Johannes:<br>
&gt; <br>
&gt; I&#39;m copying Michael Dickens from Ettus Engineering on this, and al=
so, <br>
&gt; continuing this thread on the usrp-users mailing list would be<br>
&gt;=C2=A0 =C2=A0 more useful than on the discuss-gnuradio list, as there a=
re folks on <br>
&gt; the usrp-users list who have done multi-N310 configurations<br>
&gt;=C2=A0 =C2=A0 successfully.<br>
&gt; <br>
&gt; In particular, Ali Dormiani (<a href=3D"mailto:sdormian@eng.ucsd.edu" =
target=3D"_blank">sdormian@eng.ucsd.edu</a>) has at least 6 N310 <br>
&gt; operating in their lab with a single host:<br>
&gt; <br>
&gt; Hello fellow N310 users. My lab has 6 N310&#39;s all operating and str=
eaming <br>
&gt; to a single data server (10 Gbe links).<br>
&gt; <br>
&gt; We use GNU Radio for everything. The software is great for controlling=
 <br>
&gt; multiple devices with many antennas easily (highly recommended). My <b=
r>
&gt; experience with native C++ UHD driver commands is rather limited.<br>
&gt; <br>
&gt; I&#39;m personally hampered by only having a single N310 at my disposa=
l, so <br>
&gt; I can&#39;t reproduce your issue.<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000009c7a9605bb249251--


--===============7089179347465571230==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7089179347465571230==--

