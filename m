Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5388399A502
	for <lists+usrp-users@lfdr.de>; Fri, 11 Oct 2024 15:29:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 996D4385D09
	for <lists+usrp-users@lfdr.de>; Fri, 11 Oct 2024 09:29:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728653342; bh=srr2jxsH776BVbC7j/jVDtidD8RU6h2AKFllFKLFuPw=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=OoNqeoMW+vKipgaKTLMjRouCiZVq1G4hfhOEpO0xtdIBEOBdIvQ/m489xhP2zkRu+
	 Mid7JltIXnQFmZz07smhGADkjdc9b/72IPqtNsQtiG5O0I7ND7BBfzYGjR9n8qbJpe
	 xPyba56sp05XC7Rw5mjkvYDBOeURSUTuJpJdJpx3cVBpBNrygv1GSXwArOv1n6OFHH
	 NIPYeX/rEjKDuouBGyC8JlRWEt9nebzqRVrZTYYy143ih9yaXpg6o/4IkNFBch8YfG
	 aPNxsZTl0Yni+daPDvX2KmqUsxtWacNi9EAtMxm9CIISW3cL0Ok5UhK+cU93wOI8Cs
	 azOX6M6afpzOg==
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com [209.85.166.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 418CA385C3D
	for <usrp-users@lists.ettus.com>; Fri, 11 Oct 2024 09:28:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=accelleran-com.20230601.gappssmtp.com header.i=@accelleran-com.20230601.gappssmtp.com header.b="dL4kcQLk";
	dkim-atps=neutral
Received: by mail-io1-f42.google.com with SMTP id ca18e2360f4ac-8377fd76112so45979939f.1
        for <usrp-users@lists.ettus.com>; Fri, 11 Oct 2024 06:28:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=accelleran-com.20230601.gappssmtp.com; s=20230601; t=1728653315; x=1729258115; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bs8Nd0en9/8BPOTnwzhoj4ChebEbQz9+x3c8ShcP92o=;
        b=dL4kcQLkp+PrvFhLyl8B8BUbQ4K88hT6/tqW7jZuEk/sj4Uz7UdzCgrV5wfkacvzNH
         qmHy9AqgksCEZ++mkQyNq4AXvIq9CeLN2oiumK1MbkoPJvnYKDJAPCi1RpEIS1F8fR1k
         8Ilc+0hB85l1Iacx4h3RceSyRppGz/ChrabljD/2GRUjHA5BUP2pV7IfOzgLN26WhwWf
         a91VwCTGDZCrjhP8RO/z4beBLjDT5xBGmGyWica1de4BXXT48gZiZClnUlNLIHM2CN0y
         lBqFifdkkgJ2zSxvA3mSYvci6kU8VgNH8uxaMx1cCjLQG5PABCNoUaeL/4ipHk02i1Kh
         uCkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728653315; x=1729258115;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bs8Nd0en9/8BPOTnwzhoj4ChebEbQz9+x3c8ShcP92o=;
        b=CmokeY98gSVpAFnL/pgGIF2fvn34Rlt0vTf+vniA5djMgTO6s3pcAl2YqK+yccY6Sj
         +Jl7Ck/j7TD9xngJbDXFA1xZr4JeFUKxVIJuBkucAk79nsypiVOUza/7DQOg6XxvWDxT
         KM6vFYAfNMshQBCp9Ywhn9P6zpZJZ2yNo0Qd80YmOUdwfUhTbZaM3/RbJ8P6Srhxbcfj
         UN4jtGFY8uXWmYJqZHxiiXDmbtWuQCVHhRhY3ETYsvSpzDrDYGc1Ex6shtjjtq0Sk/FU
         op1/3qwlZ541srLEh6Espe89SWNFPypPSWlz2R8RBk2RlwBRzZQpUFeqRrSUltCE7fcj
         hPMw==
X-Gm-Message-State: AOJu0YzaSBT2POET6WvRX0OCc+heUxk7Wjg+g3neXyW+aG9MRvM5NP/n
	BRGFCqXJFBjB/T8sVHW/dus+ddGwUfuYncf0bJ+BhDdJAB4dVef0Bo+HFR9InoezKeHjpPJjj8c
	sqpnRKdenNGXFbB3aA7K3BKAVomKjnpZtJAxM1yySw7tdwedx+mY=
X-Google-Smtp-Source: AGHT+IEkeqZv4VSoOQwUS3Z2HID0snZxePuKtogv5akdcxx0HTHRZOQDPWpJ1VXOH3vEJjHNQuFMjmXGUaWceLlqFBE=
X-Received: by 2002:a05:6e02:12cc:b0:3a3:983a:872f with SMTP id
 e9e14a558f8ab-3a3b5fce83bmr23729895ab.24.1728653315429; Fri, 11 Oct 2024
 06:28:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAO=xj9XZK5zZhawbPCP5jWknLsD3g4KsaZWO32b3GNNrXSmHnQ@mail.gmail.com>
 <CAO=xj9U-mFNtAHWQkAxQ+sgHp7eDNTVUubjJRM3yrk+vmPsycw@mail.gmail.com> <CAFOi1A7RbXqw=Hi-x3te4BhkGfJ-iWP5BEJBDOPwyZ5GWcnh4A@mail.gmail.com>
In-Reply-To: <CAFOi1A7RbXqw=Hi-x3te4BhkGfJ-iWP5BEJBDOPwyZ5GWcnh4A@mail.gmail.com>
From: Houshang <houshang.azizi@accelleran.com>
Date: Fri, 11 Oct 2024 15:28:24 +0200
Message-ID: <CAO=xj9WJti_vGx7hQWAbfMu0G06eL08X=3YxCLquDQuJJsDJSw@mail.gmail.com>
To: Martin Braun <martin.braun@ettus.com>
Message-ID-Hash: 746ED6RM6O4K4NBVUGMF7LXZRCXN2HEZ
X-Message-ID-Hash: 746ED6RM6O4K4NBVUGMF7LXZRCXN2HEZ
X-MailFrom: houshang.azizi@accelleran.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: EnvironmentError: IOError: recv error on socket
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/746ED6RM6O4K4NBVUGMF7LXZRCXN2HEZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2962607960935009504=="

--===============2962607960935009504==
Content-Type: multipart/alternative; boundary="000000000000ce7c50062433762b"

--000000000000ce7c50062433762b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Martin
Thanks for getting back to me! I am running into some issues. Following
might give you an idea. If you need more info to be able to help further,
feel free to ask:

ad@bm-super11-intel:~$ sudo uhd_find_devices
[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_21.11;
UHD_4.7.0.HEAD-0-ga5ed1872
--------------------------------------------------
-- UHD Device 0
--------------------------------------------------
Device Address:
    serial: 32000F1
    addr: 10.10.2.100
    claimed: False
    fpga: XG
    mgmt_addr: 10.10.0.100
    mgmt_addr: 10.10.1.100
    mgmt_addr: 10.10.2.100
    name: ni-n3xx-32000F1
    product: n310
    type: n3xx

ad@bm-super11-intel:~$ uhd_usrp_probe
[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_21.11;
UHD_4.7.0.HEAD-0-ga5ed1872
[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=3D10.10.0.100,type=3Dn3xx,product=3Dn310,serial=3D32000F1,name=3D=
ni-n3xx-32000F1,fpga=3DXG,claimed=3DFalse,addr=3D10.10.2.100
[INFO] [MPM.PeriphManager] init() called with device args
`fpga=3DXG,mgmt_addr=3D10.10.0.100,name=3Dni-n3xx-32000F1,product=3Dn310,cl=
ock_source=3Dinternal,time_source=3Dinternal'.
[ERROR] [RFNOC::MGMT] EnvironmentError: IOError: recv error on socket:
Connection refused
[ERROR] [RFNOC::GRAPH] IO Error during GSM initialization.
EnvironmentError: IOError: recv error on socket: Connection refused
[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph:
EnvironmentError: IOError: recv error on socket: Connection refused
Error: RuntimeError: Failure to create rfnoc_graph.
ad@bm-super11-intel:~$

On Fri, 11 Oct 2024 at 15:23, Martin Braun <martin.braun@ettus.com> wrote:

> Are you trying to reach the N3xx? Because it shouldn't be findable by an
> unqualified uhd_find_devices call if it is reachable via DPDK.
> uhd_find_devices will only find DPDK-reachable devices if you specify the
> full address.
>
> --M
>
> On Thu, Oct 10, 2024 at 3:16=E2=80=AFPM Houshang <houshang.azizi@acceller=
an.com>
> wrote:
>
>> Hello
>> I hereby want to share more info. Please see attached file.
>> Thanks
>> Hoshang
>>
>> On Thu, 10 Oct 2024 at 09:02, Houshang <houshang.azizi@accelleran.com>
>> wrote:
>>
>>> Hello
>>> Does anyone know how to deal with the following error?
>>> Thanks
>>> Houshang
>>>
>>> ad@bm-super11-intel:/etc/netplan$ uhd_usrp_probe
>>> [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_21.11;
>>> UHD_4.7.0.HEAD-0-ga5ed1872
>>> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
>>> mgmt_addr=3D10.10.0.100,type=3Dn3xx,product=3Dn310,serial=3D32000F1,nam=
e=3Dni-n3xx-32000F1,fpga=3DXG,claimed=3DFalse,addr=3D10.10.2.100
>>> [INFO] [MPM.PeriphManager] init() called with device args
>>> `fpga=3DXG,mgmt_addr=3D10.10.0.100,name=3Dni-n3xx-32000F1,product=3Dn31=
0,clock_source=3Dinternal,time_source=3Dinternal'.
>>> [ERROR] [RFNOC::MGMT] EnvironmentError: IOError: recv error on socket:
>>> Connection refused
>>> [ERROR] [RFNOC::GRAPH] IO Error during GSM initialization.
>>> EnvironmentError: IOError: recv error on socket: Connection refused
>>> [ERROR] [RFNOC::GRAPH] Caught exception while initializing graph:
>>> EnvironmentError: IOError: recv error on socket: Connection refused
>>> Error: RuntimeError: Failure to create rfnoc_graph.
>>> ad@bm-super11-intel:/etc/netplan$ uhd_find_devices
>>> [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_21.11;
>>> UHD_4.7.0.HEAD-0-ga5ed1872
>>> --------------------------------------------------
>>> -- UHD Device 0
>>> --------------------------------------------------
>>> Device Address:
>>>     serial: 32000F1
>>>     addr: 10.10.2.100
>>>     claimed: False
>>>     fpga: XG
>>>     mgmt_addr: 10.10.0.100
>>>     mgmt_addr: 10.10.1.100
>>>     mgmt_addr: 10.10.2.100
>>>     name: ni-n3xx-32000F1
>>>     product: n310
>>>     type: n3xx
>>>
>>>
>>> ad@bm-super11-intel:/etc/netplan$ ping 10.10.0.100
>>> PING 10.10.0.100 (10.10.0.100) 56(84) bytes of data.
>>> 64 bytes from 10.10.0.100: icmp_seq=3D1 ttl=3D64 time=3D0.289 ms
>>> ^C
>>> --- 10.10.0.100 ping statistics ---
>>> 1 packets transmitted, 1 received, 0% packet loss, time 0ms
>>> rtt min/avg/max/mdev =3D 0.289/0.289/0.289/0.000 ms
>>> ad@bm-super11-intel:/etc/netplan$ ping 10.10.1.100
>>> PING 10.10.1.100 (10.10.1.100) 56(84) bytes of data.
>>> 64 bytes from 10.10.1.100: icmp_seq=3D1 ttl=3D64 time=3D1.16 ms
>>> 64 bytes from 10.10.1.100: icmp_seq=3D2 ttl=3D64 time=3D1.11 ms
>>> ^C
>>> --- 10.10.1.100 ping statistics ---
>>> 2 packets transmitted, 2 received, 0% packet loss, time 1001ms
>>> rtt min/avg/max/mdev =3D 1.107/1.135/1.163/0.028 ms
>>> ad@bm-super11-intel:/etc/netplan$ ping 10.10.2.100
>>> PING 10.10.2.100 (10.10.2.100) 56(84) bytes of data.
>>> 64 bytes from 10.10.2.100: icmp_seq=3D1 ttl=3D64 time=3D1.02 ms
>>> ^C
>>> --- 10.10.2.100 ping statistics ---
>>> 1 packets transmitted, 1 received, 0% packet loss, time 0ms
>>> rtt min/avg/max/mdev =3D 1.019/1.019/1.019/0.000 ms
>>> ad@bm-super11-intel:/etc/netplan$
>>>
>>
>>
>> --
>>
>> *Houshang Azizi*
>>
>> *Test Engineer*
>>
>> [image: logo] <https://www.accelleran.com/>
>>
>> *(32) 492195241*
>>
>> *houshang.azizi@accelleran.com <Email@accelleran.com>*
>>
>>
>>
>> *www.accelleran.com* <http://www.accelleran.com/>
>>
>> [image: linkedin icon] <https://www.linkedin.com/company/accelleran>    =
[image:
>> twitter icon] <https://twitter.com/accelleran>    [image: youtube icon]
>> <https://www.youtube.com/channel/UCrAEtqWp21cibZgSFVIEx2g?themeRefresh=
=3D1>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>


--=20

*Houshang Azizi*

*Test Engineer*

[image: logo] <https://www.accelleran.com/>

*(32) 492195241*

*houshang.azizi@accelleran.com <Email@accelleran.com>*



*www.accelleran.com* <http://www.accelleran.com/>

[image: linkedin icon] <https://www.linkedin.com/company/accelleran>    [im=
age:
twitter icon] <https://twitter.com/accelleran>    [image: youtube icon]
<https://www.youtube.com/channel/UCrAEtqWp21cibZgSFVIEx2g?themeRefresh=3D1>

--000000000000ce7c50062433762b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Martin</div><div>Thanks for getting back to me! I =
am running into some issues. Following might give you an idea. If you need =
more info to be able to help further, feel free to ask:</div><div><span sty=
le=3D"background-color:rgb(238,238,238)"><br></span></div><div><span style=
=3D"background-color:rgb(238,238,238)">ad@bm-super11-intel:~$ sudo uhd_find=
_devices<br>[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_=
21.11; UHD_4.7.0.HEAD-0-ga5ed1872<br>--------------------------------------=
------------<br>-- UHD Device 0<br>----------------------------------------=
----------<br>Device Address:<br>=C2=A0 =C2=A0 serial: 32000F1<br>=C2=A0 =
=C2=A0 addr: 10.10.2.100<br>=C2=A0 =C2=A0 claimed: False<br>=C2=A0 =C2=A0 f=
pga: XG<br>=C2=A0 =C2=A0 mgmt_addr: 10.10.0.100<br>=C2=A0 =C2=A0 mgmt_addr:=
 10.10.1.100<br>=C2=A0 =C2=A0 mgmt_addr: 10.10.2.100<br>=C2=A0 =C2=A0 name:=
 ni-n3xx-32000F1<br>=C2=A0 =C2=A0 product: n310<br>=C2=A0 =C2=A0 type: n3xx=
<br><br>ad@bm-super11-intel:~$ uhd_usrp_probe<br>[INFO] [UHD] linux; GNU C+=
+ version 11.4.0; Boost_107400; DPDK_21.11; UHD_4.7.0.HEAD-0-ga5ed1872<br>[=
INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D10=
.10.0.100,type=3Dn3xx,product=3Dn310,serial=3D32000F1,name=3Dni-n3xx-32000F=
1,fpga=3DXG,claimed=3DFalse,addr=3D10.10.2.100<br>[INFO] [MPM.PeriphManager=
] init() called with device args `fpga=3DXG,mgmt_addr=3D10.10.0.100,name=3D=
ni-n3xx-32000F1,product=3Dn310,clock_source=3Dinternal,time_source=3Dintern=
al&#39;.<br>[ERROR] [RFNOC::MGMT] EnvironmentError: IOError: recv error on =
socket: Connection refused<br>[ERROR] [RFNOC::GRAPH] IO Error during GSM in=
itialization. EnvironmentError: IOError: recv error on socket: Connection r=
efused<br>[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph:=
 EnvironmentError: IOError: recv error on socket: Connection refused<br>Err=
or: RuntimeError: Failure to create rfnoc_graph.<br>ad@bm-super11-intel:~$ =
</span><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Fri, 11 Oct 2024 at 15:23, Martin Braun &lt;<a href=3D"=
mailto:martin.braun@ettus.com">martin.braun@ettus.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>=
Are you trying to reach the N3xx? Because it shouldn&#39;t be findable by a=
n unqualified uhd_find_devices call if it is reachable via DPDK. uhd_find_d=
evices will only find DPDK-reachable devices if you specify the full addres=
s.</div><div><br></div><div>--M<br></div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct 10, 2024 at 3:16=E2=80=
=AFPM Houshang &lt;<a href=3D"mailto:houshang.azizi@accelleran.com" target=
=3D"_blank">houshang.azizi@accelleran.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello</div><=
div>I hereby want to share more info. Please see attached file.</div><div>T=
hanks</div><div>Hoshang<br></div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Thu, 10 Oct 2024 at 09:02, Houshang &lt=
;<a href=3D"mailto:houshang.azizi@accelleran.com" target=3D"_blank">houshan=
g.azizi@accelleran.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><div dir=3D"ltr"><div>Hello</div><div>Does anyone kno=
w how to deal with the following error?</div><div>Thanks</div><div>Houshang=
</div><div><br></div><div>ad@bm-super11-intel:/etc/netplan$ uhd_usrp_probe =
<br>[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_21.11; U=
HD_4.7.0.HEAD-0-ga5ed1872<br>[INFO] [MPMD] Initializing 1 device(s) in para=
llel with args: mgmt_addr=3D10.10.0.100,type=3Dn3xx,product=3Dn310,serial=
=3D32000F1,name=3Dni-n3xx-32000F1,fpga=3DXG,claimed=3DFalse,addr=3D10.10.2.=
100<br>[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DXG=
,mgmt_addr=3D10.10.0.100,name=3Dni-n3xx-32000F1,product=3Dn310,clock_source=
=3Dinternal,time_source=3Dinternal&#39;.<br>[ERROR] [RFNOC::MGMT] Environme=
ntError: IOError: recv error on socket: Connection refused<br>[ERROR] [RFNO=
C::GRAPH] IO Error during GSM initialization. EnvironmentError: IOError: re=
cv error on socket: Connection refused<br>[ERROR] [RFNOC::GRAPH] Caught exc=
eption while initializing graph: EnvironmentError: IOError: recv error on s=
ocket: Connection refused<br>Error: RuntimeError: Failure to create rfnoc_g=
raph.<br>ad@bm-super11-intel:/etc/netplan$ uhd_find_devices<br>[INFO] [UHD]=
 linux; GNU C++ version 11.4.0; Boost_107400; DPDK_21.11; UHD_4.7.0.HEAD-0-=
ga5ed1872<br>--------------------------------------------------<br>-- UHD D=
evice 0<br>--------------------------------------------------<br>Device Add=
ress:<br>=C2=A0 =C2=A0 serial: 32000F1<br>=C2=A0 =C2=A0 addr: 10.10.2.100<b=
r>=C2=A0 =C2=A0 claimed: False<br>=C2=A0 =C2=A0 fpga: XG<br>=C2=A0 =C2=A0 m=
gmt_addr: 10.10.0.100<br>=C2=A0 =C2=A0 mgmt_addr: 10.10.1.100<br>=C2=A0 =C2=
=A0 mgmt_addr: 10.10.2.100<br>=C2=A0 =C2=A0 name: ni-n3xx-32000F1<br>=C2=A0=
 =C2=A0 product: n310<br>=C2=A0 =C2=A0 type: n3xx<br><br><br>ad@bm-super11-=
intel:/etc/netplan$ ping 10.10.0.100<br>PING 10.10.0.100 (10.10.0.100) 56(8=
4) bytes of data.<br>64 bytes from <a href=3D"http://10.10.0.100" target=3D=
"_blank">10.10.0.100</a>: icmp_seq=3D1 ttl=3D64 time=3D0.289 ms<br>^C<br>--=
- 10.10.0.100 ping statistics ---<br>1 packets transmitted, 1 received, 0% =
packet loss, time 0ms<br>rtt min/avg/max/mdev =3D 0.289/0.289/0.289/0.000 m=
s<br>ad@bm-super11-intel:/etc/netplan$ ping 10.10.1.100<br>PING 10.10.1.100=
 (10.10.1.100) 56(84) bytes of data.<br>64 bytes from <a href=3D"http://10.=
10.1.100" target=3D"_blank">10.10.1.100</a>: icmp_seq=3D1 ttl=3D64 time=3D1=
.16 ms<br>64 bytes from <a href=3D"http://10.10.1.100" target=3D"_blank">10=
.10.1.100</a>: icmp_seq=3D2 ttl=3D64 time=3D1.11 ms<br>^C<br>--- 10.10.1.10=
0 ping statistics ---<br>2 packets transmitted, 2 received, 0% packet loss,=
 time 1001ms<br>rtt min/avg/max/mdev =3D 1.107/1.135/1.163/0.028 ms<br>ad@b=
m-super11-intel:/etc/netplan$ ping 10.10.2.100<br>PING 10.10.2.100 (10.10.2=
.100) 56(84) bytes of data.<br>64 bytes from <a href=3D"http://10.10.2.100"=
 target=3D"_blank">10.10.2.100</a>: icmp_seq=3D1 ttl=3D64 time=3D1.02 ms<br=
>^C<br>--- 10.10.2.100 ping statistics ---<br>1 packets transmitted, 1 rece=
ived, 0% packet loss, time 0ms<br>rtt min/avg/max/mdev =3D 1.019/1.019/1.01=
9/0.000 ms<br>ad@bm-super11-intel:/etc/netplan$ <br></div></div>
</blockquote></div><br clear=3D"all"><br><span class=3D"gmail_signature_pre=
fix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"l=
tr"><div style=3D"text-align:left"><p class=3D"MsoNormal" style=3D"margin:0=
cm;line-height:normal;font-size:12pt;font-family:Aptos,sans-serif"><b><span=
 style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,173,238)"=
>Houshang Azizi</span></b><span style=3D"font-size:11pt;font-family:Arial,s=
ans-serif"></span></p><p class=3D"MsoNormal" style=3D"margin:0cm;line-heigh=
t:normal;font-size:12pt;font-family:Aptos,sans-serif"><b><span style=3D"fon=
t-size:11pt;font-family:Arial,sans-serif;color:rgb(246,146,30)">Test Engine=
er</span></b></p></div><p></p><a href=3D"https://www.accelleran.com/" rel=
=3D"noopener" style=3D"color:rgb(51,122,183);background-color:transparent" =
target=3D"_blank"><font size=3D"2"><img border=3D"0" alt=3D"logo" width=3D"=
143" src=3D"https://accelleran.com/wp-content/uploads/2024/04/Accelleran_Ne=
wLogo_NoBaseline.png" style=3D"border: 0px; vertical-align: middle; width: =
143px; height: auto;"></font></a><div style=3D"text-align:left"><p class=3D=
"MsoNormal" style=3D"margin:0cm;line-height:normal;font-size:12pt;font-fami=
ly:Aptos,sans-serif"><b><span style=3D"font-size:10pt;font-family:Arial,san=
s-serif;color:black">(32) 492195241</span></b><span style=3D"font-size:10pt=
;font-family:Arial,sans-serif"></span></p><p class=3D"MsoNormal" style=3D"m=
argin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,sans-serif"><=
span style=3D"font-size:10pt;font-family:Arial,sans-serif"><b><span style=
=3D"color:black"><a href=3D"mailto:Email@accelleran.com" target=3D"_blank">=
houshang.azizi@accelleran.com</a></span></b></span></p><p class=3D"MsoNorma=
l" style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,=
sans-serif"><span style=3D"font-size:10pt;font-family:Arial,sans-serif">=C2=
=A0</span></p><p class=3D"MsoNormal" style=3D"margin:0cm;line-height:normal=
;font-size:12pt;font-family:Aptos,sans-serif"><span style=3D"font-size:10pt=
;font-family:Arial,sans-serif"><a href=3D"http://www.accelleran.com/" style=
=3D"color:rgb(17,85,204)" target=3D"_blank"><b><span style=3D"color:rgb(246=
,146,30)">www.accelleran.com</span></b></a></span></p></div><p style=3D"tex=
t-align:left;margin:20px 0px"><a href=3D"https://www.linkedin.com/company/a=
ccelleran" rel=3D"noopener" style=3D"color:rgb(51,122,183);background-color=
:transparent" target=3D"_blank"><img border=3D"0" width=3D"15" alt=3D"linke=
din icon" src=3D"https://www.mail-signatures.com/signature-generator/img/te=
mplates/simple-and-light/ln.png" style=3D"border: 0px; vertical-align: midd=
le; height: 15px; width: 15px;"></a>=C2=A0=C2=A0=C2=A0=C2=A0<a href=3D"http=
s://twitter.com/accelleran" rel=3D"noopener" style=3D"color:rgb(51,122,183)=
;background-color:transparent" target=3D"_blank"><img border=3D"0" width=3D=
"15" alt=3D"twitter icon" src=3D"https://www.mail-signatures.com/signature-=
generator/img/templates/simple-and-light/tt.png" style=3D"border: 0px; vert=
ical-align: middle; height: 15px; width: 15px;"></a>=C2=A0=C2=A0=C2=A0=C2=
=A0<a href=3D"https://www.youtube.com/channel/UCrAEtqWp21cibZgSFVIEx2g?them=
eRefresh=3D1" rel=3D"noopener" style=3D"color:rgb(51,122,183);background-co=
lor:transparent" target=3D"_blank"><img border=3D"0" width=3D"15" alt=3D"yo=
utube icon" src=3D"https://www.mail-signatures.com/signature-generator/img/=
templates/simple-and-light/yt.png" style=3D"border: 0px; vertical-align: mi=
ddle; height: 15px; width: 15px;"></a>=C2=A0=C2=A0=C2=A0 <br></p></div></di=
v>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><br><span class=3D"gmail_signature_pre=
fix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"l=
tr"><div style=3D"text-align:left"><p class=3D"MsoNormal" style=3D"margin:0=
cm;line-height:normal;font-size:12pt;font-family:Aptos,sans-serif"><b><span=
 style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,173,238)"=
>Houshang Azizi</span></b><span style=3D"font-size:11pt;font-family:Arial,s=
ans-serif"></span></p><p class=3D"MsoNormal" style=3D"margin:0cm;line-heigh=
t:normal;font-size:12pt;font-family:Aptos,sans-serif"><b><span style=3D"fon=
t-size:11pt;font-family:Arial,sans-serif;color:rgb(246,146,30)">Test Engine=
er</span></b></p></div><p></p><a href=3D"https://www.accelleran.com/" rel=
=3D"noopener" style=3D"color:rgb(51,122,183);background-color:transparent" =
target=3D"_blank"><font size=3D"2"><img border=3D"0" alt=3D"logo" width=3D"=
143" src=3D"https://accelleran.com/wp-content/uploads/2024/04/Accelleran_Ne=
wLogo_NoBaseline.png" style=3D"border: 0px; vertical-align: middle; width: =
143px; height: auto;"></font></a><div style=3D"text-align:left"><p class=3D=
"MsoNormal" style=3D"margin:0cm;line-height:normal;font-size:12pt;font-fami=
ly:Aptos,sans-serif"><b><span style=3D"font-size:10pt;font-family:Arial,san=
s-serif;color:black">(32) 492195241</span></b><span style=3D"font-size:10pt=
;font-family:Arial,sans-serif"></span></p><p class=3D"MsoNormal" style=3D"m=
argin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,sans-serif"><=
span style=3D"font-size:10pt;font-family:Arial,sans-serif"><b><span style=
=3D"color:black"><a href=3D"mailto:Email@accelleran.com" target=3D"_blank">=
houshang.azizi@accelleran.com</a></span></b></span></p><p class=3D"MsoNorma=
l" style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,=
sans-serif"><span style=3D"font-size:10pt;font-family:Arial,sans-serif">=C2=
=A0</span></p><p class=3D"MsoNormal" style=3D"margin:0cm;line-height:normal=
;font-size:12pt;font-family:Aptos,sans-serif"><span style=3D"font-size:10pt=
;font-family:Arial,sans-serif"><a href=3D"http://www.accelleran.com/" style=
=3D"color:rgb(17,85,204)" target=3D"_blank"><b><span style=3D"color:rgb(246=
,146,30)">www.accelleran.com</span></b></a></span></p></div><p style=3D"tex=
t-align:left;margin:20px 0px"><a href=3D"https://www.linkedin.com/company/a=
ccelleran" rel=3D"noopener" style=3D"color:rgb(51,122,183);background-color=
:transparent" target=3D"_blank"><img border=3D"0" width=3D"15" alt=3D"linke=
din icon" src=3D"https://www.mail-signatures.com/signature-generator/img/te=
mplates/simple-and-light/ln.png" style=3D"border: 0px; vertical-align: midd=
le; height: 15px; width: 15px;"></a>=C2=A0=C2=A0=C2=A0=C2=A0<a href=3D"http=
s://twitter.com/accelleran" rel=3D"noopener" style=3D"color:rgb(51,122,183)=
;background-color:transparent" target=3D"_blank"><img border=3D"0" width=3D=
"15" alt=3D"twitter icon" src=3D"https://www.mail-signatures.com/signature-=
generator/img/templates/simple-and-light/tt.png" style=3D"border: 0px; vert=
ical-align: middle; height: 15px; width: 15px;"></a>=C2=A0=C2=A0=C2=A0=C2=
=A0<a href=3D"https://www.youtube.com/channel/UCrAEtqWp21cibZgSFVIEx2g?them=
eRefresh=3D1" rel=3D"noopener" style=3D"color:rgb(51,122,183);background-co=
lor:transparent" target=3D"_blank"><img border=3D"0" width=3D"15" alt=3D"yo=
utube icon" src=3D"https://www.mail-signatures.com/signature-generator/img/=
templates/simple-and-light/yt.png" style=3D"border: 0px; vertical-align: mi=
ddle; height: 15px; width: 15px;"></a>=C2=A0=C2=A0=C2=A0 <br></p></div></di=
v>

--000000000000ce7c50062433762b--

--===============2962607960935009504==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2962607960935009504==--
