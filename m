Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A07B3E2F3D
	for <lists+usrp-users@lfdr.de>; Fri,  6 Aug 2021 20:24:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 61B8E3845D1
	for <lists+usrp-users@lfdr.de>; Fri,  6 Aug 2021 14:24:40 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 91D6638417B
	for <usrp-users@lists.ettus.com>; Fri,  6 Aug 2021 14:23:54 -0400 (EDT)
Date: Fri, 6 Aug 2021 18:23:54 +0000
To: usrp-users@lists.ettus.com
From: xiapeiqing@gmail.com
Message-ID: <zYHWrEBllCPTNIOv8C6mMcDLynex307b8ypjGnIko8s@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: JNEOPYWNFIO7GS55UGJFEKCJZ2X2RD2I
X-Message-ID-Hash: JNEOPYWNFIO7GS55UGJFEKCJZ2X2RD2I
X-MailFrom: xiapeiqing@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X310 ethernet connection failure
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JNEOPYWNFIO7GS55UGJFEKCJZ2X2RD2I/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0246398607873850292=="

This is a multi-part message in MIME format.

--===============0246398607873850292==
Content-Type: multipart/alternative;
 boundary="b1_zYHWrEBllCPTNIOv8C6mMcDLynex307b8ypjGnIko8s"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_zYHWrEBllCPTNIOv8C6mMcDLynex307b8ypjGnIko8s
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I had problem talking to my x310 device over ethernet. Does anybody have =
similar experience?

The following external hardware are used to test my x310 units:

* host PC with 10G intel NIC

  * 192.168.10.1 static IP, connect to X310 port0 using SFP adaptor & CAT=
-6 cable

  * 192.168.40.1 static IP, connect to X310 port1 using genuine 10G cable

* Front panel USB cable

* power supply

My old x310 is tested first to ensure both 192.168.10.2 and 192.168.40.2 =
are reachable. Its EEPROM is loaded with /usr/local/share/uhd/images/usrp=
_x310_fpga_HG.bit

With the new X310 plugged in, none of 192.168.10.2 and 192.168.40.2 is re=
achable.

No luck with the following additional steps:

* confirm the green leds in Port 0 and 1 are on

* nothing is found by sudo uhd_find_devices & uhd_usrp_probe

* use vivado to download /usr/local/share/uhd/images/usrp_x310_fpga_HG.bi=
t

* By intercepting the network ARP traffic, no party acknowledges it is 19=
2.168.10.2 or 192.168.40.2=C2=A0

Keep the external hardware unchanged, switch back to the working x310, bo=
th 192.168.10.2 and 192.168.40.2 are reachable.=C2=A0

Use vivado to download /usr/local/share/uhd/images/usrp_x310_fpga_HG.bit =
to the working x310, both 192.168.10.2 and 192.168.40.2 remain working.

--b1_zYHWrEBllCPTNIOv8C6mMcDLynex307b8ypjGnIko8s
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>I had problem talking to my x310 device over ethernet. Does anybody have=
 similar experience?</p><p>The following external hardware are used to test=
 my x310 units:</p><ul><li><p>host PC with 10G intel NIC</p><ul><li><p>192.=
168.10.1 static IP, connect to X310 port0 using SFP adaptor &amp; CAT-6 cab=
le</p></li><li><p>192.168.40.1 static IP, connect to X310 port1 using genui=
ne 10G cable</p></li></ul></li><li><p>Front panel USB cable</p></li><li><p>=
power supply</p></li></ul><p>My old x310 is tested first to ensure both 192=
.168.10.2 and 192.168.40.2 are reachable. Its EEPROM is loaded with /usr/lo=
cal/share/uhd/images/usrp_x310_fpga_HG.bit</p><p>With the new X310 plugged =
in, none of 192.168.10.2 and 192.168.40.2 is reachable.</p><p>No luck with =
the following additional steps:</p><ul><li><p>confirm the green leds in Por=
t 0 and 1 are on</p></li><li><p>nothing is found by sudo uhd_find_devices &=
amp; uhd_usrp_probe</p></li><li><p>use vivado to download /usr/local/share/=
uhd/images/usrp_x310_fpga_HG.bit</p></li><li><p>By intercepting the network=
 ARP traffic, no party acknowledges it is 192.168.10.2 or 192.168.40.2&nbsp=
;</p></li></ul><p>Keep the external hardware unchanged, switch back to the =
working x310, both 192.168.10.2 and 192.168.40.2 are reachable.&nbsp;</p><p=
>Use vivado to download /usr/local/share/uhd/images/usrp_x310_fpga_HG.bit t=
o the working x310, both 192.168.10.2 and 192.168.40.2 remain working.</p>

--b1_zYHWrEBllCPTNIOv8C6mMcDLynex307b8ypjGnIko8s--

--===============0246398607873850292==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0246398607873850292==--
