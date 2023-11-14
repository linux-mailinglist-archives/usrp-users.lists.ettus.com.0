Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D811E7EAF9A
	for <lists+usrp-users@lfdr.de>; Tue, 14 Nov 2023 13:01:56 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7ED18383FAC
	for <lists+usrp-users@lfdr.de>; Tue, 14 Nov 2023 07:01:55 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1699963315; bh=1cn2MjX5X8yTr7KkPkEi3TFgB/Ml3xA6/96B45zpXzY=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=NqRZd9kuJYOoyISWIl+FnPjMF6qy6IqsHiAWTGOIhYcspQDq6gdYHUNjDnBQt5lCg
	 rwJQ/ydmLPqUjqjME23Snnf+4DDtz4AlHUmjJxOwhlaQDuRu4OwVdUCpjOqRa+xkEX
	 qMor0MTADcc/LEEng/XgHfl4f7nqJOWugofm3CGpd0QSIVLN5P2Gv5+n0CpFExbFtD
	 1lqm1pvaWTPNY4T/3ivU3L0mZD1GXRek8CweGMgjzyxqaVURvE5JM+GLQ+nV3L9iEC
	 VTiOg2u+JKMtXmMRgD3fu+JGppFppKmVVg2NRnxH0J7K4vvyyXz5orb1I5uvjSjTL/
	 s/R6a+de/Rq9w==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 21CD8383B85
	for <usrp-users@lists.ettus.com>; Tue, 14 Nov 2023 07:01:39 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1699963299; bh=sKKv0BKq/OMLfXGqYLuNCfdOoreUM628eXjmPVaVzF0=;
	h=Date:To:From:Subject:From;
	b=c4gFtjdPfAsMTdaRvGe933FZuDzunHpn0j0OpwsxUL/0wJ/CJIDJGf9y75DPVj5Ik
	 p1n60qDy4sgofwfdMVsj8/oMpB/sZVBI/OqnYdG90dD0LKucpjt66ECB/i8o5lR86+
	 8X8C4iIY6Xiz0yR4ZnhRU9U07nMgYXPJjA3LfjQO1MgdHu+91sfJGlwmYqJ7xSbIpO
	 3sDP78j9XX8R0Zzp1fG0OmDBIJocDdealuKxwhACqFRZJcHBaR0XZlVVo13tVh9RcQ
	 vLhlXnnTn4m4Wbw3LUTIktbA24qXKd1HjeiCD45U05tihU5TNGxVOxGTg0Evbd1gCF
	 vwlfAdQOae7YA==
Date: Tue, 14 Nov 2023 12:01:39 +0000
To: usrp-users@lists.ettus.com
From: anil.antony@ltts.com
Message-ID: <YkWIr2k7EUtyaapoqzhGIEE6HhtY0coYAWVVXZKW9w@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 3VRJPA35RDWPGSQNPILRLOPRLPX6LD5Q
X-Message-ID-Hash: 3VRJPA35RDWPGSQNPILRLOPRLPX6LD5Q
X-MailFrom: anil.antony@ltts.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP B210 streamer throwing BAD PACKET and TIMEOUT error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3VRJPA35RDWPGSQNPILRLOPRLPX6LD5Q/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6361951929320324787=="

This is a multi-part message in MIME format.

--===============6361951929320324787==
Content-Type: multipart/alternative;
 boundary="b1_YkWIr2k7EUtyaapoqzhGIEE6HhtY0coYAWVVXZKW9w"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_YkWIr2k7EUtyaapoqzhGIEE6HhtY0coYAWVVXZKW9w
Content-Type: text/plain; charset=us-ascii

Hi,

I am using usrp B210 for my 5G test bench setup. The setup is consists of Openairinterface5G 5G stack and UHD driver 4.3.0. UHD driver is installed form source code approach and only one libuhd driver is in use. My setup is as follows, 

* Intel i7, 8 core, 8GB RAM,  3.6GHz CPU with ubuntu18.04, 4.15.0.123 Low latency kernel.  

* USB 3.0 connection

* Log periodic antenna (**LP0965 Antenna)**

Snippet of the error:\
\[HW\]   \[recv\] received 14380 samples out of 23040

\[ERROR\] \[STREAMER\] The receive packet handler caught a value exception.

ValueError: bad vrt header or packet fragment

\[HW\]   ERROR_CODE_BAD_PACKET

\[PHY\]   rx_rf: Asked for 23040 samples, got 14380 from USRP

\[PHY\]   problem receiving samples

\[HW\]   \[recv\] received 0 samples out of 23040

\[HW\]   ERROR_CODE_TIMEOUT

kern.log:\
Nov 14 07:04:43 MYTSP00192 kernel: \[489670.971642\] xhci_hcd 0000:00:14.0: WARN Cannot submit Set TR Deq Ptr

Nov 14 07:04:43 MYTSP00192 kernel: \[489670.971644\] xhci_hcd 0000:00:14.0: A Set TR Deq Ptr command is pending.

Nov 14 11:54:29 MYTSP00192 kernel: \[507057.294029\] enp4s0: Invalid MTU 9000 requested, hw max 1500

Nov 14 11:54:29 MYTSP00192 kernel: \[507057.592639\] xhci_hcd 0000:00:14.0: bad transfer trb length 7680 in event trb\
\
Please help me.\
\
Regards,

Anil

--b1_YkWIr2k7EUtyaapoqzhGIEE6HhtY0coYAWVVXZKW9w
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hi,</p><p>I am using usrp B210 for my 5G test bench setup. The setup is =
consists of Openairinterface5G 5G stack and UHD driver 4.3.0. UHD driver is=
 installed form source code approach and only one libuhd driver is in use. =
My setup is as follows, </p><ul><li><p>Intel i7, 8 core, 8GB RAM,  3.6GHz C=
PU with ubuntu18.04, 4.15.0.123 Low latency kernel.  </p></li><li><p>USB 3.=
0 connection</p></li><li><p>Log periodic antenna (<strong>LP0965 Antenna)</=
strong></p></li></ul><p>Snippet of the error:<br>[HW]   [recv] received 143=
80 samples out of 23040</p><p>[ERROR] [STREAMER] The receive packet handler=
 caught a value exception.</p><p>ValueError: bad vrt header or packet fragm=
ent</p><p>[HW]   ERROR_CODE_BAD_PACKET</p><p>[PHY]   rx_rf: Asked for 23040=
 samples, got 14380 from USRP</p><p>[PHY]   problem receiving samples</p><p=
>[HW]   [recv] received 0 samples out of 23040</p><p>[HW]   ERROR_CODE_TIME=
OUT</p><p>kern.log:<br>Nov 14 07:04:43 MYTSP00192 kernel: [489670.971642] x=
hci_hcd 0000:00:14.0: WARN Cannot submit Set TR Deq Ptr</p><p>Nov 14 07:04:=
43 MYTSP00192 kernel: [489670.971644] xhci_hcd 0000:00:14.0: A Set TR Deq P=
tr command is pending.</p><p>Nov 14 11:54:29 MYTSP00192 kernel: [507057.294=
029] enp4s0: Invalid MTU 9000 requested, hw max 1500</p><p>Nov 14 11:54:29 =
MYTSP00192 kernel: [507057.592639] xhci_hcd 0000:00:14.0: bad transfer trb =
length 7680 in event trb<br><br>Please help me.<br><br>Regards,</p><p>Anil<=
/p>

--b1_YkWIr2k7EUtyaapoqzhGIEE6HhtY0coYAWVVXZKW9w--

--===============6361951929320324787==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6361951929320324787==--
