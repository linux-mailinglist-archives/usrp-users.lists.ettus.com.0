Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E50D86D6AD6
	for <lists+usrp-users@lfdr.de>; Tue,  4 Apr 2023 19:42:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7D98438483A
	for <lists+usrp-users@lfdr.de>; Tue,  4 Apr 2023 13:42:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680630166; bh=LdNYjM0gkd6yNJR4sZ8vIecSCzSKzXgE43mB9Gin3pE=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=tAm474IZnkEt7DmdQ/SDlfhDA3LYnsB8ljGookfg2MiQfFzQC799Mx0q8AL54sndb
	 KwEUwDwS1Uopg7rY7WpqHJl2vVf56PoNLpf8Usv/pCapkTk8LVf6mtenaZUlebcMGD
	 KTB8KpcMdOzysFn5BMRUCPzF3NGk9yyMMeTHG4B6AaDUGi7/80vxV6MjXFOraZzG+q
	 QY1Wt4wUk0aOwpjvMW63l1xdHMEaulSccreXU5FgOkWMOF2nNVR1fIHVc+5QHqEorz
	 YyU643032eDlGzeGv7I4Tiimd3JR+4qH4zyzMimjGSEwDcca/omb/rNK7l/Uciz6/V
	 Bc1RBFI0KqhkQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2F1C7384677
	for <usrp-users@lists.ettus.com>; Tue,  4 Apr 2023 00:48:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680583734; bh=EsTi+m/I6hOJaj8VgeNVlhxU6Pgy63Hutz76Wju2Lb4=;
	h=Date:To:From:Subject:From;
	b=SrYBEwsP7kHz/rChaUC4QeZEmcju3ETiL+7XSUa1vk7hHAl8dHbzi1n0nKBus1GfV
	 EXtxxuoWHU+Tvc9QvQfvYCUA8ESyz0IksRORdQpFL3Dgr+9CtM4q6FZvH9tbpt28U9
	 sYiYUn+1vdMVHtsoas5kjcuuBnVDXovGp1ATH5N3Zcd34oKkCoXczhy7YqFrJQxvtK
	 2UWWAnalKFB6EQGBgtBmeN9sKJ48zJONbM8yy6nM9weGzl25POH7NR+GuXDY+rN9Na
	 tB4+1k5lNYTbZoKd/Oh+i05YttbGOVIa5ZvA/zp6o2+KHrohJZFbD7VF0/g5CWKhi5
	 l7vA8c51zqsNw==
Date: Tue, 4 Apr 2023 04:48:54 +0000
To: usrp-users@lists.ettus.com
From: h57jafari@gmail.com
Message-ID: <kPVX4zv4OH2mTnnU1J620064q0D59dvahxoA2ACiY@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
X-MailFrom: h57jafari@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
Message-ID-Hash: XTSEE6ZGQZIG33H72YG4KW6P2LSBQW3V
X-Message-ID-Hash: XTSEE6ZGQZIG33H72YG4KW6P2LSBQW3V
X-Mailman-Approved-At: Tue, 04 Apr 2023 13:42:42 -0400
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Integrate USRP-X410 with XL710 intel PCIe NIC card through QSFP ports
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XTSEE6ZGQZIG33H72YG4KW6P2LSBQW3V/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8932817815628776008=="

This is a multi-part message in MIME format.

--===============8932817815628776008==
Content-Type: multipart/alternative;
 boundary="b1_kPVX4zv4OH2mTnnU1J620064q0D59dvahxoA2ACiY"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_kPVX4zv4OH2mTnnU1J620064q0D59dvahxoA2ACiY
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,=20

I am trying to integrate USRP-X410 with XL710 intel PCIe NIC card through=
 QSFP ports.=C2=A0=20

LED on both sides is off and I cannot ping USRP (192.168.10.2 and 192.168=
.20.2) through XL710. PCI card ports can be ping successfully,  as IP add=
resses configured in the same subnetwork. Therefore, it seems link cannot=
 establish between USRP-X410 and XL710 NIC. I think, it may because of ra=
te mismatch between USRP-X410 and XL710 NIC card. (While USRP X410 with Q=
SFP28 supports 10GE and 100GE, XL710 with QSFP+ only supports 40GE). Is t=
here any way of auto-negotiating for speed in USRP, or other solution to =
help overcome this issue. Thank you.

Here is my hardware setup.

\-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Ubuntu 22.04

\-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 USRP X410

\-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 UHD v4.4.0.0

\-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 GNU radio v3.10.=
5.1

\-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Dual Port 40G QS=
FP+ NIC - Intel XL710

\-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 40G QSFP+ DAC Ca=
ble - 40GBASE-CR4 Passive Direct Attach Copper Twinax QSFP Cable (from 10=
Gtek)

BTW, I tried both X4_200 (10GE) and CG_400 (100GE) FPGA flavors, but stil=
l same problem.

--b1_kPVX4zv4OH2mTnnU1J620064q0D59dvahxoA2ACiY
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hello, </p><p>I am trying to integrate USRP-X410 with XL710 intel PCIe N=
IC card through QSFP ports.&nbsp; </p><p>LED on both sides is off and I can=
not ping USRP (192.168.10.2 and 192.168.20.2) through XL710. PCI card ports=
 can be ping successfully,  as IP addresses configured in the same subnetwo=
rk. Therefore, it seems link cannot establish between USRP-X410 and XL710 N=
IC. I think, it may because of rate mismatch between USRP-X410 and XL710 NI=
C card. (While USRP X410 with QSFP28 supports 10GE and 100GE, XL710 with QS=
FP+ only supports 40GE). Is there any way of auto-negotiating for speed in =
USRP, or other solution to help overcome this issue. Thank you.</p><p>Here =
is my hardware setup.</p><p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; Ubuntu 22.04</p><p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; USRP X410</p><p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; UHD v4.4.0.0</p><p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; GNU radio v3.10.5.1</p><p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; Dual Port 40G QSFP+ NIC - Intel XL710</p><p>-&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 40G QSFP+ DAC Cable - 40GBASE-CR4 Pas=
sive Direct Attach Copper Twinax QSFP Cable (from 10Gtek)</p><p>BTW, I trie=
d both X4_200 (10GE) and CG_400 (100GE) FPGA flavors, but still same proble=
m.</p>

--b1_kPVX4zv4OH2mTnnU1J620064q0D59dvahxoA2ACiY--

--===============8932817815628776008==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8932817815628776008==--
