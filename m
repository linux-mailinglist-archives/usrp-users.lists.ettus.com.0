Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F08313524A
	for <lists+usrp-users@lfdr.de>; Thu,  9 Jan 2020 05:52:57 +0100 (CET)
Received: from [::1] (port=40786 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ipPoU-0008Ta-7m; Wed, 08 Jan 2020 23:52:54 -0500
Received: from mail-lj1-f172.google.com ([209.85.208.172]:33188)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <akinsoysal@gmail.com>)
 id 1ipPoP-0008QI-QZ
 for usrp-users@lists.ettus.com; Wed, 08 Jan 2020 23:52:50 -0500
Received: by mail-lj1-f172.google.com with SMTP id y6so5784545lji.0
 for <usrp-users@lists.ettus.com>; Wed, 08 Jan 2020 20:52:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=IYe+gqagnutH4kvDB/aCaqhRvobji2XCxyvJ1lOqyh0=;
 b=qxYkolHNZYtpfBwWUsBlIVv4TcO2GeLmtDaGVy3wd4YUsyhgdKOizkpROx8hrzfDMH
 u6w9BRFpc6cjZ3M802SoxzxYtX5j3DOv8fPSOhxaEjG6TOzFhQwRUulChnFVaHbCS92Y
 ziGgxozR261ykdbgKAhkUiC2kZA6uCMNLMEK48Tlj4vhxg6nmc+J005y/yfOnCS74JHn
 FLxiQW8rGn0sgFTe3Sgl/4AAw6lKDl+o8Orm+/hSCtfV85D0VCrztmkPkctXWv7GfbBz
 /0ARopGIozoRUDs2qURIvsrfu+KQoVJ6+cNk+2BL7qnELyZxbYXS8of6KShP7Mya9ImG
 LzZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=IYe+gqagnutH4kvDB/aCaqhRvobji2XCxyvJ1lOqyh0=;
 b=Fmdyj5zGuKP4Oi5oRoj3E2ZSN4QZGf2HQh2wQ4jcPCoi5cPC5mrJBWedaQmW1H3dAJ
 oMP3v+ux5aPRGmqq/JUd+jqJfrKrg8XACIR+xKUQmJNZKSh2OfVke+l4YsNiqt//IEvA
 i8fvluX70Ox1zt3ceCpTGiFIwQfRR1blbaHXRbzCD1NROzQfV8akMGkSkD1cjuyX5LGz
 9QE69ze4vHnYOvas3p2YeUfpCH1q/1K0fuGDeK3a+qS3XLaw4sbE1XIPdoceGqa4NrWQ
 VsMKhcH+k5TN5D5i7j8Bk7hIpOeXRRr2wDJfR3NnSEQuPdXIEa7gFaiQnKpptP3L13Wo
 Vtaw==
X-Gm-Message-State: APjAAAUL1fKp+S7ww02uQ+wmzN73ZMeQmRH1TBHvMOMrDREQhvNZ8pak
 nAiLaZ0i+X0ip+ooyIz583YkirdgEB9AFkQQooD0bOne
X-Google-Smtp-Source: APXvYqy4WLd8suE4x6CQOM4OUeiOqTKz0ji+6E4OyM6Jr7JQ9XDztkoTCVLwxud5E2RhBNxhVUuhEZV05ch0oCWzAuA=
X-Received: by 2002:a2e:85cd:: with SMTP id h13mr5054950ljj.191.1578545528074; 
 Wed, 08 Jan 2020 20:52:08 -0800 (PST)
MIME-Version: 1.0
References: <CAFzRrg21Lsi3TqA7GeWQ9fo=dORm3o69WU-JfGmR6SicduCNdw@mail.gmail.com>
In-Reply-To: <CAFzRrg21Lsi3TqA7GeWQ9fo=dORm3o69WU-JfGmR6SicduCNdw@mail.gmail.com>
Date: Thu, 9 Jan 2020 07:51:55 +0300
Message-ID: <CAFzRrg0mKNMQUO9+vd_b8tmxxi04bYX4+36F9hTkb5z=TgsGgQ@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="000000000000768b2d059badc5bb"
Subject: [USRP-users] Fwd: dpdk-test does not work
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

--000000000000768b2d059badc5bb
Content-Type: multipart/alternative; boundary="000000000000768b2b059badc5b9"

--000000000000768b2b059badc5b9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

---------- Forwarded message ---------
G=C3=B6nderen: akin soysal <akinsoysal@gmail.com>
Date: 8 Oca 2020 =C3=87ar 15:22
Subject: dpdk-test does not work
To: USRP-users@lists.ettus.com <usrp-users@lists.ettus.com>


Dear all,

We have a USRP X310 setup and we are trying to make the
UHD_3.15.0.0-0-g4e06022c driver work. I have added a file under
/etc/uhd/uhd.conf and it is attached to this email.

I am not sure about the dpdk-mac and dpdk-ipv4 addresses, what are they
used for?

I am trying to make the dpdk-test work but I am experiencing problems with
setting of ipv4.

-----
sudo ./dpdk_test
EAL: Detected 18 lcore(s)
EAL: No free hugepages reported in hugepages-1048576kB
EAL: Probing VFIO support...
EAL: VFIO support initialized
EAL: PCI device 0000:05:00.0 on NUMA socket 0
EAL:   probe driver: 8086:1533 net_e1000_igb
EAL: PCI device 0000:65:00.0 on NUMA socket 0
EAL:   probe driver: 8086:1557 net_ixgbe
EAL:   using IOMMU type 1 (Type 1)
EAL: Ignore mapping IO port bar(2)
EAL: Waiting for links to come up...
[INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-39);
Boost_105800; UHD_3.15.0.0-0-g4e06022c
EAL: Init DONE!
EAL: Starting I/O threads!
terminate called after throwing an instance of 'uhd::assertion_error'
  what():  AssertionError: status =3D=3D 0
  in std::string get_ipv4_addr(unsigned int)
  at /home/ulak-gnb/workarea-uhd/uhd/host/tests/dpdk_test.cpp:229

Aborted
-----

What should be the uhd-dpdk arguments for this to run? It seems like it
does not even read the uhd.conf file.

I am using DPDK dpdk-stable-17.11.9. I have also programmed my SFP+
interface via dpdk-devbind.py as shown below.

----------
sudo ./dpdk-devbind.py -s

Network devices using DPDK-compatible driver
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
0000:65:00.0 '82599 10 Gigabit Network Connection 1557' drv=3Dvfio-pci
unused=3Dixgbe

Network devices using kernel driver
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
0000:04:00.0 'AQC108 NBase-T/IEEE 802.3bz Ethernet Controller [AQtion]
d108' if=3Deth1 drv=3Datlantic unused=3Dvfio-pci
0000:05:00.0 'I210 Gigabit Network Connection 1533' if=3Deno1 drv=3Digb
unused=3Dvfio-pci *Active*

Other Network devices
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
<none>

Crypto devices using DPDK-compatible driver
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
<none>

Crypto devices using kernel driver
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
<none>

Other Crypto devices
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
<none>

Eventdev devices using DPDK-compatible driver
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
<none>

Eventdev devices using kernel driver
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
<none>

Other Eventdev devices
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
<none>

Mempool devices using DPDK-compatible driver
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
<none>

Mempool devices using kernel driver
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
<none>

Other Mempool devices
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
<none>
----------

Thanks and regards,
Ak=C4=B1n

--000000000000768b2b059badc5b9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">---------- Forwarded message ---------<br>G=C3=B6ndere=
n: <strong class=3D"gmail_sendername" dir=3D"auto">akin soysal</strong> <sp=
an dir=3D"auto">&lt;<a href=3D"mailto:akinsoysal@gmail.com">akinsoysal@gmai=
l.com</a>&gt;</span><br>Date: 8 Oca 2020 =C3=87ar 15:22<br>Subject: dpdk-te=
st does not work<br>To: <a href=3D"mailto:USRP-users@lists.ettus.com">USRP-=
users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus.com"=
>usrp-users@lists.ettus.com</a>&gt;<br></div><br><br><div dir=3D"ltr"><div>=
Dear all,</div><div><br></div><div>We have a USRP X310 setup and we are try=
ing to make the UHD_3.15.0.0-0-g4e06022c driver work. I have added a file u=
nder /etc/uhd/uhd.conf and it is attached to this email.</div><div><br></di=
v><div>I am not sure about the dpdk-mac and dpdk-ipv4 addresses, what are t=
hey used for?</div><div><br></div><div>I am trying to make the dpdk-test wo=
rk but I am experiencing problems with setting of ipv4.</div><div><br></div=
><div>-----<br></div><div>sudo ./dpdk_test<br>EAL: Detected 18 lcore(s)<br>=
EAL: No free hugepages reported in hugepages-1048576kB<br>EAL: Probing VFIO=
 support...<br>EAL: VFIO support initialized<br>EAL: PCI device 0000:05:00.=
0 on NUMA socket 0<br>EAL: =C2=A0 probe driver: 8086:1533 net_e1000_igb<br>=
EAL: PCI device 0000:65:00.0 on NUMA socket 0<br>EAL: =C2=A0 probe driver: =
8086:1557 net_ixgbe<br>EAL: =C2=A0 using IOMMU type 1 (Type 1)<br>EAL: Igno=
re mapping IO port bar(2)<br>EAL: Waiting for links to come up...<br>[INFO]=
 [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-39); Boost_1058=
00; UHD_3.15.0.0-0-g4e06022c<br>EAL: Init DONE!<br>EAL: Starting I/O thread=
s!<br>terminate called after throwing an instance of &#39;uhd::assertion_er=
ror&#39;<br>=C2=A0 what(): =C2=A0AssertionError: status =3D=3D 0<br>=C2=A0 =
in std::string get_ipv4_addr(unsigned int)<br>=C2=A0 at /home/ulak-gnb/work=
area-uhd/uhd/host/tests/dpdk_test.cpp:229<br><br>Aborted</div><div>-----</d=
iv><div><br></div><div>What should be the uhd-dpdk arguments for this to ru=
n? It seems like it does not even read the uhd.conf file.</div><div><br></d=
iv><div>I am using DPDK dpdk-stable-17.11.9. I have also programmed my SFP+=
 interface via dpdk-devbind.py as shown below.<br></div><div><br></div><div=
>----------</div><div>sudo ./dpdk-devbind.py -s<br><br>Network devices usin=
g DPDK-compatible driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<br>0000:65:00.0 &#39;82599 10 Gigabit Network Connection 1557&=
#39; drv=3Dvfio-pci unused=3Dixgbe<br><br>Network devices using kernel driv=
er<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>0000:04:00.0 &#39;AQC108 NBase-T/IE=
EE 802.3bz Ethernet Controller [AQtion] d108&#39; if=3Deth1 drv=3Datlantic =
unused=3Dvfio-pci <br>0000:05:00.0 &#39;I210 Gigabit Network Connection 153=
3&#39; if=3Deno1 drv=3Digb unused=3Dvfio-pci *Active*<br><br>Other Network =
devices<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<=
br>&lt;none&gt;<br><br>Crypto devices using DPDK-compatible driver<br>=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>=
Crypto devices using kernel driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;n=
one&gt;<br><br>Other Crypto devices<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Eventdev devices using DPDK=
-compatible driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D<br>&lt;none&gt;<br><br>Eventdev devices using kernel driver<br>=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Other Eventdev dev=
ices<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<=
br>&lt;none&gt;<br><br>Mempool devices using DPDK-compatible driver<br>=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><=
br>Mempool devices using kernel driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br=
>&lt;none&gt;<br><br>Other Mempool devices<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;</div><div>----------<b=
r></div><div><br></div><div>Thanks and regards,</div><div>Ak=C4=B1n<br></di=
v></div>
</div></div></div>

--000000000000768b2b059badc5b9--
--000000000000768b2d059badc5bb
Content-Type: text/plain; charset="US-ASCII"; name="uhd.conf"
Content-Disposition: attachment; filename="uhd.conf"
Content-Transfer-Encoding: base64
Content-ID: <f_k559wjuw0>
X-Attachment-Id: f_k559wjuw0

O1doZW4gcHJlc2VudCBpbiBkZXZpY2UgYXJncywgdXNlX2RwZGsgaW5kaWNhdGVzIHlvdSB3YW50
IERQREsgdG8gdGFrZSBvdmVyIHRoZSBVRFAgdHJhbnNwb3J0cwo7VGhlIHZhbHVlIGhlcmUgcmVw
cmVzZW50cyBhIGNvbmZpZywgc28geW91IGNvdWxkIGhhdmUgYW5vdGhlciBzZWN0aW9uIGxhYmVs
ZWQgdXNlX2RwZGs9bXljb25mCjtpbnN0ZWFkIGFuZCBzd2FwIGJldHdlZW4gdGhlbQpbdXNlX2Rw
ZGs9MV0KO2RwZGtfbXR1IGlzIHRoZSBOSUMncyBNVFUgc2V0dGluZwo7VGhpcyBpcyBzZXBhcmF0
ZSBmcm9tIE1QTSdzIG1heGltdW0gcGFja2V0IHNpemUKZHBkay1tdHU9OTAwMAo7ZHBka19kcml2
ZXIgaXMgdGhlIC1kIGZsYWcgZm9yIHRoZSBEUERLIEVBTC4gSWYgRFBESyBkb2Vzbid0IHBpY2sg
dXAgdGhlIGRyaXZlciBmb3IgeW91ciBOSUMKO2F1dG9tYXRpY2FsbHksIHlvdSBtYXkgbmVlZCB0
aGlzIGFyZ3VtZW50IHRvIHBvaW50IGl0IHRvIHRoZSBmb2xkZXIgd2hlcmUgaXQgY2FuIGZpbmQg
dGhlIGRyaXZlcnMKO05vdGUgdGhhdCBEUERLIHdpbGwgYXR0ZW1wdCB0byBsb2FkIF9ldmVyeXRo
aW5nXyBpbiB0aGF0IGZvbGRlciBhcyBhIGRyaXZlciwgc28geW91IG1heSB3YW50IHRvCjtjcmVh
dGUgYSBzZXBhcmF0ZSBmb2xkZXIgd2l0aCBzeW1saW5rcyB0byB0aGUgbGlicnRlX3BtZF8qIGFu
ZCBsaWJydGVfbWVtcG9vbF8qIGxpYnJhcmllcy4KZHBkay1kcml2ZXI9L2hvbWUvdWxhay1nbmIv
dWxhay9kcGRrLXN0YWJsZS0xNy4xMS45L3g4Nl82NC1uYXRpdmUtbGludXhhcHAtZ2NjL2xpYi9w
bWRzCjtkcGRrX2NvcmVsaXN0IGlzIHRoZSAtbCBmbGFnIGZvciB0aGUgRFBESyBFQUwuIFNlZSBt
b3JlIGF0IHRoZSBsaW5rCjsgaHR0cHM6Ly9kb2MuZHBkay5vcmcvZ3VpZGVzLTE4LjExL2xpbnV4
X2dzZy9idWlsZF9zYW1wbGVfYXBwcy5odG1sI3J1bm5pbmctYS1zYW1wbGUtYXBwbGljYXRpb24K
ZHBkay1jb3JlbGlzdD01LDYKO2RwZGtfbnVtX21idWZzIGlzIHRoZSB0b3RhbCBudW1iZXIgb2Yg
cGFja2V0IGJ1ZmZlcnMgYWxsb2NhdGVkCjt0byBlYWNoIGRpcmVjdGlvbidzIHBhY2tldCBidWZm
ZXIgcG9vbAo7VGhpcyB3aWxsIGJlIG11bHRpcGxpZWQgYnkgdGhlIG51bWJlciBvZiBOSUNzLCBi
dXQgTklDcyBvbiB0aGUgc2FtZQo7Q1BVIHNvY2tldCBzaGFyZSBhIHBvb2wuCmRwZGstbnVtLW1i
dWZzPTQwOTUKO2RwZGtfbWJ1Zl9jYWNoZV9zaXplIGlzIHRoZSBudW1iZXIgb2YgYnVmZmVycyB0
byBjYWNoZSBmb3IgYSBDUFUKO1RoZSBjYWNoZSByZWR1Y2VzIHRoZSBpbnRlcmFjdGlvbiB3aXRo
IHRoZSBnbG9iYWwgcG9vbApkcGRrLW1idWYtY2FjaGVfc2l6ZT0zMTUKCltkcGRrLW1hYz1hYzox
Zjo2Yjo3ODo1YTowOV0KO2RwZGtfbGNvcmUgc2VsZWN0cyB0aGUgbGNvcmUgdGhhdCB0aGlzIE5J
QydzIGRyaXZlciB3aWxsIHJ1biBvbgo7TXVsdGlwbGUgTklDcyBtYXkgb2NjdXB5IG9uZSBsY29y
ZSwgYnV0IHRoZSBJL08gdGhyZWFkIHdpbGwgY29tcGxldGVseQo7Y29uc3VtZSB0aGF0IGxjb3Jl
J3MgQ1BVLiBBbHNvLCAwIGlzIHJlc2VydmVkIGZvciB0aGUgbWFzdGVyIHRocmVhZCAoaS5lLgo7
dGhlIGluaXRpYWwgVUhEIHRocmVhZCB0aGF0IGNhbGxzIGluaXQoKSBmb3IgRFBESykuIEF0dGVt
cHRpbmcgdG8KO3VzZSBpdCBhcyBhbiBJL08gdGhyZWFkIHdpbGwgb25seSByZXN1bHQgaW4gaGFu
Z2luZy4KO05vdGUgYWxzbyB0aGF0IGJ5IGRlZmF1bHQsIHRoZSBsY29yZSBJRCB3aWxsIGJlIHRo
ZSBzYW1lIGFzIHRoZSBDUFUgSUQuCmRwZGstaW8tY3B1ID0gNQo7ZHBka19pcHY0IHNwZWNpZmll
cyB0aGUgSVB2NCBhZGRyZXNzLCBhbmQgYm90aCB0aGUgYWRkcmVzcyBhbmQKO3N1Ym5ldCBtYXNr
IGFyZSByZXF1aXJlZCAoYW5kIGluIHRoaXMgZm9ybWF0ISkuIERQREsgdXNlcyB0aGUKO25ldG1h
c2sgdG8gY3JlYXRlIGEgYmFzaWMgcm91dGluZyB0YWJsZS4gUm91dGluZyB0byBvdGhlciBuZXR3
b3Jrcwo7KGkuZS4gdmlhIGdhdGV3YXlzKSBpcyBub3QgcGVybWl0dGVkLgpkcGRrLWlwdjQgPSAx
MC4xMC4xLjUvMjQKO2RwZGtfbnVtX2Rlc2MgaXMgdGhlIG51bWJlciBvZiBkZXNjcmlwdG9ycyBp
biBlYWNoIERNQSByaW5nLgo7TXVzdCBiZSBhIHBvd2VyIG9mIDIuCjtkcGRrX251bV9kZXNjPTQw
OTYKCltkcGRrLW1hYz0zYzpmZDpmZTphMjphOTowYV0KZHBkay1sY29yZSA9IDYKZHBkay1pcHY0
ID0gMTAuMTAuMS41LzI0
--000000000000768b2d059badc5bb
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--000000000000768b2d059badc5bb--

