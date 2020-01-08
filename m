Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D318134193
	for <lists+usrp-users@lfdr.de>; Wed,  8 Jan 2020 13:23:54 +0100 (CET)
Received: from [::1] (port=37958 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ipANE-0000na-N0; Wed, 08 Jan 2020 07:23:44 -0500
Received: from mail-lj1-f178.google.com ([209.85.208.178]:41191)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <akinsoysal@gmail.com>)
 id 1ipANA-0000jr-Me
 for usrp-users@lists.ettus.com; Wed, 08 Jan 2020 07:23:40 -0500
Received: by mail-lj1-f178.google.com with SMTP id h23so3083485ljc.8
 for <usrp-users@lists.ettus.com>; Wed, 08 Jan 2020 04:23:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=kSY64qvHQM4z2zuI1WNP8SS/LOfqxMBliXaRwB71EYo=;
 b=O7Un2xn9VOY5dIDTtZy2J1NBPp7U/vZlGlYhkzQXkJA30ZYdX/1OtveX+m8GVGWi9b
 w1A1usOCgdWVFq2GOCKvRAnxFhFzwM//uqJEa71L3JVnnQ1nncKVOfkL+F4UtWwuHXOt
 FWFMqjYVQQ0MIZxfpWc783y0bqcU9QK4NX/Ff5c6eW8IjJSuoFWrWzKphTMt2akGzY4r
 0Bfb3xtsSxC5GvcXVKH+oDkYnCacnYVgHA0kIJX0L2zLNisutvUYdXEV4CzfENH1Y7EO
 RzCdonGZJd8TfVDjDpMHIB2HDS582LDkbx2RS3hbWsmoVFvTmH1/+r2R4xcMTvgVCmG6
 7MYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=kSY64qvHQM4z2zuI1WNP8SS/LOfqxMBliXaRwB71EYo=;
 b=UPQcP5fsJsJvXtw9J4QeHerizgi8ZF9NYg/qKDHtSlQ6aiEP+yFefPXV5vmW312Krc
 KPLRMYH6w6QQi/L4CW9L1So5oocys288N0EhcKd80MmvJLjJxUROkxPDYHRgYn8BgPf7
 2Bw+Q7zNWcDjj96dmc+3CH9Pm6oKOErPtizetgrHgyR1om4M6nOuwm9FxtPZvMuz7nkT
 dSKUK1PeWPeC8Pd5z0BKuzIiMgDHVDEz+xfUr4VzNqStKP1sbImsnRLJRYSxi7/tvbJN
 8m0MzHKw1bUy8lLM1AKzk0NTGXB5BJFfOscu0hNnVlArNkU5wmcVpxx5wzsTNgTSY9eJ
 37sg==
X-Gm-Message-State: APjAAAW/OwCgKnHfkhnXw4FQl/Y+o2U0km1N/4U+n8beJuB2kBWCKZXs
 fe4AtcxcgV1gJFBT0EGTwT9sjxgndbe0B2dXm+8mMnbh
X-Google-Smtp-Source: APXvYqwgkfP92e1NisHcfg4gBGBnxjjFHRl0Nm0pPYgr7y7wlBsiapE9lXDqIcXu0LlmyeNXYwTqea4NCIVDtsgWM9Y=
X-Received: by 2002:a2e:84d0:: with SMTP id q16mr2675225ljh.138.1578486178957; 
 Wed, 08 Jan 2020 04:22:58 -0800 (PST)
MIME-Version: 1.0
Date: Wed, 8 Jan 2020 15:22:47 +0300
Message-ID: <CAFzRrg21Lsi3TqA7GeWQ9fo=dORm3o69WU-JfGmR6SicduCNdw@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="000000000000faf12f059b9ff398"
Subject: [USRP-users] dpdk-test does not work
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

--000000000000faf12f059b9ff398
Content-Type: multipart/alternative; boundary="000000000000faf12d059b9ff396"

--000000000000faf12d059b9ff396
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

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

--000000000000faf12d059b9ff396
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Dear all,</div><div><br></div><div>We have a USRP X31=
0 setup and we are trying to make the UHD_3.15.0.0-0-g4e06022c driver work.=
 I have added a file under /etc/uhd/uhd.conf and it is attached to this ema=
il.</div><div><br></div><div>I am not sure about the dpdk-mac and dpdk-ipv4=
 addresses, what are they used for?</div><div><br></div><div>I am trying to=
 make the dpdk-test work but I am experiencing problems with setting of ipv=
4.</div><div><br></div><div>-----<br></div><div>sudo ./dpdk_test<br>EAL: De=
tected 18 lcore(s)<br>EAL: No free hugepages reported in hugepages-1048576k=
B<br>EAL: Probing VFIO support...<br>EAL: VFIO support initialized<br>EAL: =
PCI device 0000:05:00.0 on NUMA socket 0<br>EAL: =C2=A0 probe driver: 8086:=
1533 net_e1000_igb<br>EAL: PCI device 0000:65:00.0 on NUMA socket 0<br>EAL:=
 =C2=A0 probe driver: 8086:1557 net_ixgbe<br>EAL: =C2=A0 using IOMMU type 1=
 (Type 1)<br>EAL: Ignore mapping IO port bar(2)<br>EAL: Waiting for links t=
o come up...<br>[INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat=
 4.8.5-39); Boost_105800; UHD_3.15.0.0-0-g4e06022c<br>EAL: Init DONE!<br>EA=
L: Starting I/O threads!<br>terminate called after throwing an instance of =
&#39;uhd::assertion_error&#39;<br>=C2=A0 what(): =C2=A0AssertionError: stat=
us =3D=3D 0<br>=C2=A0 in std::string get_ipv4_addr(unsigned int)<br>=C2=A0 =
at /home/ulak-gnb/workarea-uhd/uhd/host/tests/dpdk_test.cpp:229<br><br>Abor=
ted</div><div>-----</div><div><br></div><div>What should be the uhd-dpdk ar=
guments for this to run? It seems like it does not even read the uhd.conf f=
ile.</div><div><br></div><div>I am using DPDK dpdk-stable-17.11.9. I have a=
lso programmed my SFP+ interface via dpdk-devbind.py as shown below.<br></d=
iv><div><br></div><div>----------</div><div>sudo ./dpdk-devbind.py -s<br><b=
r>Network devices using DPDK-compatible driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>0000:65:00.0 &#39;82599 10 Gigabit Net=
work Connection 1557&#39; drv=3Dvfio-pci unused=3Dixgbe<br><br>Network devi=
ces using kernel driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>0000:04:00.0 &=
#39;AQC108 NBase-T/IEEE 802.3bz Ethernet Controller [AQtion] d108&#39; if=
=3Deth1 drv=3Datlantic unused=3Dvfio-pci <br>0000:05:00.0 &#39;I210 Gigabit=
 Network Connection 1533&#39; if=3Deno1 drv=3Digb unused=3Dvfio-pci *Active=
*<br><br>Other Network devices<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Crypto devices using DPDK-c=
ompatible driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
<br>&lt;none&gt;<br><br>Crypto devices using kernel driver<br>=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Other Crypto devices<br>=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Eve=
ntdev devices using DPDK-compatible driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Eventdev devices u=
sing kernel driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<b=
r><br>Other Eventdev devices<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Mempool devices using DPDK-=
compatible driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D<br>&lt;none&gt;<br><br>Mempool devices using kernel driver<br>=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Other Mempool devices<br>=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt=
;</div><div>----------<br></div><div><br></div><div>Thanks and regards,</di=
v><div>Ak=C4=B1n<br></div></div>

--000000000000faf12d059b9ff396--
--000000000000faf12f059b9ff398
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
--000000000000faf12f059b9ff398
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--000000000000faf12f059b9ff398--

