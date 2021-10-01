Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB9D41F0BA
	for <lists+usrp-users@lfdr.de>; Fri,  1 Oct 2021 17:12:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 41CDC384B5F
	for <lists+usrp-users@lfdr.de>; Fri,  1 Oct 2021 11:12:06 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3DB7E38404E
	for <usrp-users@lists.ettus.com>; Fri,  1 Oct 2021 11:11:15 -0400 (EDT)
Date: Fri, 1 Oct 2021 15:11:15 +0000
To: usrp-users@lists.ettus.com
From: markus.freund@etit.tu-chemnitz.de
Message-ID: <Vffa68wBmJSpZO6YvdXabgahWAJ2W11iaR9HdcU@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: Z4TS7YLXICHUVI2IV5ACVWFAB7EBD3ZC
X-Message-ID-Hash: Z4TS7YLXICHUVI2IV5ACVWFAB7EBD3ZC
X-MailFrom: markus.freund@etit.tu-chemnitz.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Change mtu-size
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Z4TS7YLXICHUVI2IV5ACVWFAB7EBD3ZC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4697729979223379996=="

This is a multi-part message in MIME format.

--===============4697729979223379996==
Content-Type: multipart/alternative;
 boundary="b1_Vffa68wBmJSpZO6YvdXabgahWAJ2W11iaR9HdcU"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Vffa68wBmJSpZO6YvdXabgahWAJ2W11iaR9HdcU
Content-Type: text/plain; charset=us-ascii

```
Hello,

I changed the mtu-size to 10000 on every ethernetport. I can ping my computer from another computer with package size of 8972 but I cannot do that with the x300. I have 10GbE Card connected to SF1 and tried both with an XG and an HG image. Since the info is not coming from the [UHD] but the [X300] before the [GPS] is checked I believe that the message is thrown from the device during start up. Is it possible to change the mtu size inside the USRP and how is it done?

rfnoc@rfnoc-vm ~/rfnoc-workshop $ uhd_usrp_probe
[INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106501; UHD_3.13.0.HEAD-0-g5b236772
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 1472 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
[INFO] [GPS] No GPSDO found

Thank you very much
Markus
```

--b1_Vffa68wBmJSpZO6YvdXabgahWAJ2W11iaR9HdcU
Content-Type: text/html; charset=us-ascii

<pre><code>Hello,

I changed the mtu-size to 10000 on every ethernetport. I can ping my computer from another computer with package size of 8972 but I cannot do that with the x300. I have 10GbE Card connected to SF1 and tried both with an XG and an HG image. Since the info is not coming from the [UHD] but the [X300] before the [GPS] is checked I believe that the message is thrown from the device during start up. Is it possible to change the mtu size inside the USRP and how is it done?

rfnoc@rfnoc-vm ~/rfnoc-workshop $ uhd_usrp_probe
[INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106501; UHD_3.13.0.HEAD-0-g5b236772
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 1472 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
[INFO] [GPS] No GPSDO found

Thank you very much
Markus</code></pre>


--b1_Vffa68wBmJSpZO6YvdXabgahWAJ2W11iaR9HdcU--

--===============4697729979223379996==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4697729979223379996==--
