Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 410BF1396C1
	for <lists+usrp-users@lfdr.de>; Mon, 13 Jan 2020 17:50:17 +0100 (CET)
Received: from [::1] (port=50488 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ir2up-00041L-44; Mon, 13 Jan 2020 11:50:11 -0500
Received: from mail-lf1-f53.google.com ([209.85.167.53]:34992)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <akinsoysal@gmail.com>)
 id 1ir2um-0003wT-4s
 for usrp-users@lists.ettus.com; Mon, 13 Jan 2020 11:50:08 -0500
Received: by mail-lf1-f53.google.com with SMTP id 15so7385441lfr.2
 for <usrp-users@lists.ettus.com>; Mon, 13 Jan 2020 08:49:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=z1kOx6SstplsvogkBLrI0KL5YpIw9adVP9AcnSGuXpc=;
 b=tHrr9afmtN0Oi0bkFAjYuXCZp0apopXiYcv2ObJRiFwx3mAqjDmc4QUmd1p1FwEv9A
 41VLH/7qKx2n+3fZSQV74wCIakoTBJBqmzW6yE7mrgrtXKG1KcTdk8zL8gi1rK6pXA4z
 nfZpzfUdBWyMziRGe5mS1EBxEan5y0vG7WeCnI9V/KRrj4RO5iZbaukkp+ZUd4OhnPeA
 +oZ/0MYnVhPF8fU0AL0xH6/z+pLvCa1rSPfYLkeXt4H98B3JUj0yVX4W2Gbtiu9yCN8U
 1ZYGrScPGArEEW38y0svWXsQsQZ+X6GXtwF51VaS6CWtL0N7Y0/RlECnblBOFv4y1ayJ
 YszA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=z1kOx6SstplsvogkBLrI0KL5YpIw9adVP9AcnSGuXpc=;
 b=kOf+xOqnCGZwDeMCH0k3CpjC8HNrTgVPYRUc4jJEOGmCCwIHgu6wdX8Mm+ZouXZ5CT
 8F+3DU4SgxiT2zRG04D3QE5mbYM1sbAr5JkrQ2w5Nwk4KBZa+bsyvDzdigEuMge1OZV+
 B42XR5sC5xBWpeIgUYw69fPt7gExJoi3Va8COmGGTplLCSxv+ybkd9TlFKGlAcQkPWb3
 83o3+O9Y5lVSzTkspwnA/oNkNVFeKKFlUuckBeTRDhIEQwQFL3d32Buw+SZFtVy92XVj
 w4RY/zdehWBgq2NqG8egs5r6zD+2Q0jrqSheYB3lZS8/eQUSSDmf0Amtt++lDpAz3tzw
 Yaxw==
X-Gm-Message-State: APjAAAXTDpK9DGYMzHmDrKHNiOPosrgn2QLYl//yZ+qXuMdR6ChG173n
 Pf79CaXWkucrpt0tIjuuSrozSXUqwBEU0yMECYslI/5K
X-Google-Smtp-Source: APXvYqz0YquNM79RborqZXrKgs+VX6XCbMRzD6cC9GaAWd5NFHFsqltRy1+NQI19q9LzQbvCnRQveJ1IC358knRtUSs=
X-Received: by 2002:a05:6512:c7:: with SMTP id
 c7mr10250726lfp.120.1578934166689; 
 Mon, 13 Jan 2020 08:49:26 -0800 (PST)
MIME-Version: 1.0
References: <CAFzRrg21Lsi3TqA7GeWQ9fo=dORm3o69WU-JfGmR6SicduCNdw@mail.gmail.com>
 <CAFzRrg0mKNMQUO9+vd_b8tmxxi04bYX4+36F9hTkb5z=TgsGgQ@mail.gmail.com>
 <CANf970ZJoKF549cnzgwkHH0NwK+O1twKhM2OdxL82Th89=JPSg@mail.gmail.com>
In-Reply-To: <CANf970ZJoKF549cnzgwkHH0NwK+O1twKhM2OdxL82Th89=JPSg@mail.gmail.com>
Date: Mon, 13 Jan 2020 19:49:14 +0300
Message-ID: <CAFzRrg3W5B=haXQPXYBwNvtL+bWbDhtQJ=QFj2XarXpjCr+O-Q@mail.gmail.com>
To: Sam Reiter <sam.reiter@ettus.com>
Subject: Re: [USRP-users] Fwd: dpdk-test does not work
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
From: akin soysal via USRP-users <usrp-users@lists.ettus.com>
Reply-To: akin soysal <akinsoysal@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6082049277462769243=="
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

--===============6082049277462769243==
Content-Type: multipart/alternative; boundary="000000000000211d89059c084237"

--000000000000211d89059c084237
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Works beautifully. Thanks, Sam.

Ak=C4=B1n

9 Oca 2020 Per 21:54 tarihinde Sam Reiter <sam.reiter@ettus.com> =C5=9Funu =
yazd=C4=B1:

> Akin,
>
> I'd recommend you check out our DPDK setup guide - hot off the presses:
>
> https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD
>
> Sam Reiter
> Ettus Research
>
>
> On Wed, Jan 8, 2020 at 10:52 PM akin soysal via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>>
>>
>> ---------- Forwarded message ---------
>> G=C3=B6nderen: akin soysal <akinsoysal@gmail.com>
>> Date: 8 Oca 2020 =C3=87ar 15:22
>> Subject: dpdk-test does not work
>> To: USRP-users@lists.ettus.com <usrp-users@lists.ettus.com>
>>
>>
>> Dear all,
>>
>> We have a USRP X310 setup and we are trying to make the
>> UHD_3.15.0.0-0-g4e06022c driver work. I have added a file under
>> /etc/uhd/uhd.conf and it is attached to this email.
>>
>> I am not sure about the dpdk-mac and dpdk-ipv4 addresses, what are they
>> used for?
>>
>> I am trying to make the dpdk-test work but I am experiencing problems
>> with setting of ipv4.
>>
>> -----
>> sudo ./dpdk_test
>> EAL: Detected 18 lcore(s)
>> EAL: No free hugepages reported in hugepages-1048576kB
>> EAL: Probing VFIO support...
>> EAL: VFIO support initialized
>> EAL: PCI device 0000:05:00.0 on NUMA socket 0
>> EAL:   probe driver: 8086:1533 net_e1000_igb
>> EAL: PCI device 0000:65:00.0 on NUMA socket 0
>> EAL:   probe driver: 8086:1557 net_ixgbe
>> EAL:   using IOMMU type 1 (Type 1)
>> EAL: Ignore mapping IO port bar(2)
>> EAL: Waiting for links to come up...
>> [INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-39);
>> Boost_105800; UHD_3.15.0.0-0-g4e06022c
>> EAL: Init DONE!
>> EAL: Starting I/O threads!
>> terminate called after throwing an instance of 'uhd::assertion_error'
>>   what():  AssertionError: status =3D=3D 0
>>   in std::string get_ipv4_addr(unsigned int)
>>   at /home/ulak-gnb/workarea-uhd/uhd/host/tests/dpdk_test.cpp:229
>>
>> Aborted
>> -----
>>
>> What should be the uhd-dpdk arguments for this to run? It seems like it
>> does not even read the uhd.conf file.
>>
>> I am using DPDK dpdk-stable-17.11.9. I have also programmed my SFP+
>> interface via dpdk-devbind.py as shown below.
>>
>> ----------
>> sudo ./dpdk-devbind.py -s
>>
>> Network devices using DPDK-compatible driver
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>> 0000:65:00.0 '82599 10 Gigabit Network Connection 1557' drv=3Dvfio-pci
>> unused=3Dixgbe
>>
>> Network devices using kernel driver
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>> 0000:04:00.0 'AQC108 NBase-T/IEEE 802.3bz Ethernet Controller [AQtion]
>> d108' if=3Deth1 drv=3Datlantic unused=3Dvfio-pci
>> 0000:05:00.0 'I210 Gigabit Network Connection 1533' if=3Deno1 drv=3Digb
>> unused=3Dvfio-pci *Active*
>>
>> Other Network devices
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>> <none>
>>
>> Crypto devices using DPDK-compatible driver
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>> <none>
>>
>> Crypto devices using kernel driver
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>> <none>
>>
>> Other Crypto devices
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>> <none>
>>
>> Eventdev devices using DPDK-compatible driver
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>> <none>
>>
>> Eventdev devices using kernel driver
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>> <none>
>>
>> Other Eventdev devices
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>> <none>
>>
>> Mempool devices using DPDK-compatible driver
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>> <none>
>>
>> Mempool devices using kernel driver
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>> <none>
>>
>> Other Mempool devices
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>> <none>
>> ----------
>>
>> Thanks and regards,
>> Ak=C4=B1n
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000211d89059c084237
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Works beautifully. Thanks, Sam.<div dir=3D"auto"><br></di=
v><div dir=3D"auto">Ak=C4=B1n</div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">9 Oca 2020 Per 21:54 tarihinde Sam Reite=
r &lt;<a href=3D"mailto:sam.reiter@ettus.com">sam.reiter@ettus.com</a>&gt; =
=C5=9Funu yazd=C4=B1:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"l=
tr"><div>Akin,</div><div><br></div><div>I&#39;d recommend you check out our=
 DPDK setup guide - hot off the presses:</div><div><br></div><div><a href=
=3D"https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD" target=3D"_blan=
k" rel=3D"noreferrer">https://kb.ettus.com/Getting_Started_with_DPDK_and_UH=
D</a></div><div><br></div><div><div><div dir=3D"ltr" data-smartmail=3D"gmai=
l_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">Sam Reiter <br><div>Ett=
us Research<br></div></div></div></div></div></div><br></div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jan 8,=
 2020 at 10:52 PM akin soysal via USRP-users &lt;<a href=3D"mailto:usrp-use=
rs@lists.ettus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users@lists.e=
ttus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">---------- Forwarded message ---------<br>G=
=C3=B6nderen: <strong class=3D"gmail_sendername" dir=3D"auto">akin soysal</=
strong> <span dir=3D"auto">&lt;<a href=3D"mailto:akinsoysal@gmail.com" targ=
et=3D"_blank" rel=3D"noreferrer">akinsoysal@gmail.com</a>&gt;</span><br>Dat=
e: 8 Oca 2020 =C3=87ar 15:22<br>Subject: dpdk-test does not work<br>To: <a =
href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"norefer=
rer">USRP-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.=
ettus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com<=
/a>&gt;<br></div><br><br><div dir=3D"ltr"><div>Dear all,</div><div><br></di=
v><div>We have a USRP X310 setup and we are trying to make the UHD_3.15.0.0=
-0-g4e06022c driver work. I have added a file under /etc/uhd/uhd.conf and i=
t is attached to this email.</div><div><br></div><div>I am not sure about t=
he dpdk-mac and dpdk-ipv4 addresses, what are they used for?</div><div><br>=
</div><div>I am trying to make the dpdk-test work but I am experiencing pro=
blems with setting of ipv4.</div><div><br></div><div>-----<br></div><div>su=
do ./dpdk_test<br>EAL: Detected 18 lcore(s)<br>EAL: No free hugepages repor=
ted in hugepages-1048576kB<br>EAL: Probing VFIO support...<br>EAL: VFIO sup=
port initialized<br>EAL: PCI device 0000:05:00.0 on NUMA socket 0<br>EAL: =
=C2=A0 probe driver: 8086:1533 net_e1000_igb<br>EAL: PCI device 0000:65:00.=
0 on NUMA socket 0<br>EAL: =C2=A0 probe driver: 8086:1557 net_ixgbe<br>EAL:=
 =C2=A0 using IOMMU type 1 (Type 1)<br>EAL: Ignore mapping IO port bar(2)<b=
r>EAL: Waiting for links to come up...<br>[INFO] [UHD] linux; GNU C++ versi=
on 4.8.5 20150623 (Red Hat 4.8.5-39); Boost_105800; UHD_3.15.0.0-0-g4e06022=
c<br>EAL: Init DONE!<br>EAL: Starting I/O threads!<br>terminate called afte=
r throwing an instance of &#39;uhd::assertion_error&#39;<br>=C2=A0 what(): =
=C2=A0AssertionError: status =3D=3D 0<br>=C2=A0 in std::string get_ipv4_add=
r(unsigned int)<br>=C2=A0 at /home/ulak-gnb/workarea-uhd/uhd/host/tests/dpd=
k_test.cpp:229<br><br>Aborted</div><div>-----</div><div><br></div><div>What=
 should be the uhd-dpdk arguments for this to run? It seems like it does no=
t even read the uhd.conf file.</div><div><br></div><div>I am using DPDK dpd=
k-stable-17.11.9. I have also programmed my SFP+ interface via dpdk-devbind=
.py as shown below.<br></div><div><br></div><div>----------</div><div>sudo =
./dpdk-devbind.py -s<br><br>Network devices using DPDK-compatible driver<br=
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>0000:65:00.=
0 &#39;82599 10 Gigabit Network Connection 1557&#39; drv=3Dvfio-pci unused=
=3Dixgbe<br><br>Network devices using kernel driver<br>=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<br>0000:04:00.0 &#39;AQC108 NBase-T/IEEE 802.3bz Ethernet Cont=
roller [AQtion] d108&#39; if=3Deth1 drv=3Datlantic unused=3Dvfio-pci <br>00=
00:05:00.0 &#39;I210 Gigabit Network Connection 1533&#39; if=3Deno1 drv=3Di=
gb unused=3Dvfio-pci *Active*<br><br>Other Network devices<br>=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>=
Crypto devices using DPDK-compatible driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Crypto devices using ker=
nel driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Other Cry=
pto devices<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
<br>&lt;none&gt;<br><br>Eventdev devices using DPDK-compatible driver<br>=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt=
;<br><br>Eventdev devices using kernel driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D<br>&lt;none&gt;<br><br>Other Eventdev devices<br>=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>=
Mempool devices using DPDK-compatible driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Mempool devices using=
 kernel driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Oth=
er Mempool devices<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<br>&lt;none&gt;</div><div>----------<br></div><div><br></div><=
div>Thanks and regards,</div><div>Ak=C4=B1n<br></div></div>
</div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"nore=
ferrer">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000211d89059c084237--


--===============6082049277462769243==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6082049277462769243==--

