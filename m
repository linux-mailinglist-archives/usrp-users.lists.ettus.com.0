Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C7AE9C525F
	for <lists+usrp-users@lfdr.de>; Tue, 12 Nov 2024 10:48:11 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0FD66385EAA
	for <lists+usrp-users@lfdr.de>; Tue, 12 Nov 2024 04:48:10 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1731404890; bh=qN4J0MQKV9hvwpVncuowdhFWs6hGa7v38EQ0WPZ03vE=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=NMPZW0wI7UIcOdKm1vQKQs3QtiVIysHr3c4wsxkSPqbLfN1W2jyfZEUUjEtE02Ntb
	 4QB0CNRFaJyUZQHfaOkLGRhf6eYW7ZPhyvRUJL9/3vKBRtQMIniLpb7TGO4G5O+yHn
	 QvWYkVFMJGFfnGQeSXWNAZH5oQBx+2K/G047iNVvIRB8bzdX4iGSfJ2pzpn36ujm/U
	 0H9OQpXmKG3s8SUgl5njknO5k19OvEF/okjIqGyEToJ7wpNqrqeB98+ZyvFNSK0mpl
	 Bv//ewJFkiBy69FzU6e/o1Fp1iv0AWDt5um0h5X4FYeJQMt3adcNTmrlzydcq01GEh
	 l1dd7mXmvmzFQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E3992385E4C
	for <usrp-users@lists.ettus.com>; Tue, 12 Nov 2024 04:47:45 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1731404865; bh=gK9hDOZwJTB5kGlyWDa8O98BfWGmpIGscqYYmNkjJxk=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=RdB2KrYGX4P9tNr7lku2pM16H1oHj7zNCYxBmaP2tJZJTrwuGuypzqW9osTmzqjzg
	 ZwfspXR9eUN6MDa+zx1zzq9snyGrz4bvXLQbG8ziKnxllPOMImwR9Puqtlog3g+qXh
	 QWZNg2rJ8G1/jf6KGC/jj79c6NF5YXLBc2pc8GLcDf2OZQv3QSLcIq4c/ph8PJD6oM
	 FPZtBY3lDqI7aGayOHKVjGDhOvII7FOgekUozR0xJzoxnzedJob5bMLTjdPt0qoSMc
	 Vq/y2KBN1dSDowq7xStczl+GyH55aWJ2wnQYejJ/1M+wZkrApYloYn7RPJxEq/Tb1w
	 gePuzMv0mpp9Q==
Date: Tue, 12 Nov 2024 09:47:45 +0000
To: usrp-users@lists.ettus.com
From: sunniegoldie@gmail.com
Message-ID: <2IWxkLQz7iBcTrmlhWTAAAY7vBkdcRsiqrm4cs4dw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CY1P111MB1638A8A5D7CAB591306CACBFC481A@CY1P111MB1638.NAMP111.PROD.OUTLOOK.COM
MIME-Version: 1.0
Message-ID-Hash: ZZHR4VHBUIJMHOAAOFSO2UPRT3UPPCIL
X-Message-ID-Hash: ZZHR4VHBUIJMHOAAOFSO2UPRT3UPPCIL
X-MailFrom: sunniegoldie@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E810 and DPDK
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZZHR4VHBUIJMHOAAOFSO2UPRT3UPPCIL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8470636535191259209=="

This is a multi-part message in MIME format.

--===============8470636535191259209==
Content-Type: multipart/alternative;
 boundary="b1_2IWxkLQz7iBcTrmlhWTAAAY7vBkdcRsiqrm4cs4dw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_2IWxkLQz7iBcTrmlhWTAAAY7vBkdcRsiqrm4cs4dw
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Mark,

I=E2=80=99ve seen similar issues in environments involving [digital trans=
formation](https://www.impactfirst.co/id/c/digital-transformation ) and [=
ERP implementation](https://www.impactfirst.co/id/c/erp-implementation), =
where network performance and customization are crucial for system succes=
s. The DPDK setup with the X410 and E810 NIC, particularly on Ubuntu 22.0=
4, can indeed be challenging with the ICE driver and vfio-pci binding.

To address this, one approach is to first confirm compatibility and depen=
dencies between the DPDK and ICE driver versions you=E2=80=99re using, as=
 mismatches often lead to the NIC not appearing. It might also be worth e=
xploring any updated DPDK patches or community-recommended configurations=
 specific to the E810, as Intel occasionally releases updates addressing =
such driver compatibility.

For the port disappearing after `dpdk-devbind.py`, this is expected becau=
se binding to `vfio-pci` essentially detaches it from the kernel. In some=
 cases, configuring the NIC with custom `dpdk-devargs` during binding hel=
ps to make the device discoverable by DPDK applications. Additionally, yo=
u may consider rechecking the `ice` driver documentation on configuration=
 specifics for E810, as Intel=E2=80=99s guidance sometimes requires speci=
al steps for high-performance applications in FPGA environments like your=
s.

Hopefully, these adjustments will help stabilize your setup! Let us know =
how it goes.

--b1_2IWxkLQz7iBcTrmlhWTAAAY7vBkdcRsiqrm4cs4dw
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Mark,</p><p>I=E2=80=99ve seen similar issues in environments involvin=
g <a href=3D"https://www.impactfirst.co/id/c/digital-transformation " title=
=3D"">digital transformation</a> and <a href=3D"https://www.impactfirst.co/=
id/c/erp-implementation" title=3D"">ERP implementation</a>, where network p=
erformance and customization are crucial for system success. The DPDK setup=
 with the X410 and E810 NIC, particularly on Ubuntu 22.04, can indeed be ch=
allenging with the ICE driver and vfio-pci binding.</p><p>To address this, =
one approach is to first confirm compatibility and dependencies between the=
 DPDK and ICE driver versions you=E2=80=99re using, as mismatches often lea=
d to the NIC not appearing. It might also be worth exploring any updated DP=
DK patches or community-recommended configurations specific to the E810, as=
 Intel occasionally releases updates addressing such driver compatibility.<=
/p><p>For the port disappearing after <code>dpdk-devbind.py</code>, this is=
 expected because binding to <code>vfio-pci</code> essentially detaches it =
from the kernel. In some cases, configuring the NIC with custom <code>dpdk-=
devargs</code> during binding helps to make the device discoverable by DPDK=
 applications. Additionally, you may consider rechecking the <code>ice</cod=
e> driver documentation on configuration specifics for E810, as Intel=
=E2=80=99s guidance sometimes requires special steps for high-performance a=
pplications in FPGA environments like yours.</p><p>Hopefully, these adjustm=
ents will help stabilize your setup! Let us know how it goes.</p>

--b1_2IWxkLQz7iBcTrmlhWTAAAY7vBkdcRsiqrm4cs4dw--

--===============8470636535191259209==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8470636535191259209==--
