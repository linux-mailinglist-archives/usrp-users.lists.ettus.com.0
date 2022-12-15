Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 89DC064D551
	for <lists+usrp-users@lfdr.de>; Thu, 15 Dec 2022 03:39:06 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 29FCB3842FA
	for <lists+usrp-users@lfdr.de>; Wed, 14 Dec 2022 21:39:05 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1671071945; bh=iARPprtz1abQw8eQ6DAZZMLaYaQGA2l290cJFoPpHgw=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=oTmRXrA/VEPoVMQvje7xNdlDCO+aw/XoSpIzeF96ALSaE255as+4q6mjPtAn/JC/L
	 stupY3peIL1hT4BIgfO01weTQjghoNzotVN/wh27LB9lFsbVfZKEPXLB2iM4wmSagH
	 CSykKGrC0q7+C2HvFbivQSOW8IcCUNXyFVDSMQW6o013/Q0P5GtiG/+DsUF2t0c6PE
	 qdcLF8VpN5akKsTdR5k3REdoWsjTDCKAYCJtoLYguzwos/q4FzHD6fu2YJo43J/z2z
	 53byc74bXPv6kixsfwGa8FLtoJNk9AbsDtVvQyFSnJKKuGAtUNL0pZo80IUbxWkI73
	 gxwBQOlBDaB4Q==
Received: from mta39.mta.hdems.com (mta39.mta.hdems.com [13.115.104.38])
	by mm2.emwd.com (Postfix) with ESMTPS id EDCCF384154
	for <usrp-users@lists.ettus.com>; Wed, 14 Dec 2022 21:37:46 -0500 (EST)
Received: from mo.hdems.com (unknown [10.5.20.19])
	by mta39.mta.hdems.com ('HDEMS') with ESMTPSA id 4NXbxP1dh5z1XNxBS
	for <usrp-users@lists.ettus.com>; Thu, 15 Dec 2022 02:37:45 +0000 (UTC)
X-HDEMS-MO-TENANT: kke.co.jp
Received: from mail-yb1-f200.google.com (mail-yb1-f200.google.com. [209.85.219.200])
	by gwsmtp.prod.mo.hdems.com with ESMTPS id gwsmtpd-trans-6b040190-510d-421a-b93d-7f6570d67278
	for <usrp-users@lists.ettus.com>;
	Thu, 15 Dec 2022 02:37:37 +0000
Received: by mail-yb1-f200.google.com with SMTP id j6-20020a05690212c600b006fc7f6e6955so2087663ybu.12
        for <usrp-users@lists.ettus.com>; Wed, 14 Dec 2022 18:37:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tBccaVY+F7UBWcWmRojwnNcmxvK3i47P8u3Fe95lpYk=;
        b=qqQcheeASX15Q3rf4Fi0ivWsH8TLe4i/ql4uV3gzBW45nT3Fb6vU3GZlW5+SDdb7Ve
         YddWioRSxTV00xeXhT4FESgLmM6719d/OypWMHtxZVsA4UqzMikGOdky0CE/sGdtI4r+
         so6leXBVUDOKe5BBmIftfNjUU96hOX8btfKm55QXGsem3hDDSOTlOF6t94dRhqp9+U2E
         Su2XCbFoT06abuRR8ay5VtGRqSt4XQSkxlEhhtTGu1HSsiA0lAr6PlLRCp5vMVYjRZvW
         vyqtzLMy8cFf0EtpKthJ0AzI5SfnUZgn0rVSNqt9l8T1BaOjb9kYDhUpSoNxmwjISQ82
         Rrug==
X-Gm-Message-State: ANoB5pn26ba9sRBLOcYqFyAUWHL9UNkfcHaUoHljQS40Ha2QrtQQSZS2
	E1KH1Xl4CL6C4ROJZ1AifWach/Gc3JvoKBr+7eP2iPEtsS4q3kBU+9X4kwMrszmwiJ3MMbJIA8Y
	AuQHJWCio5Kmo+EuYNNmlXTIGAt0RQ+VIXGrhuhrpB7pJ3Leq
X-Received: by 2002:a81:b807:0:b0:3b3:3f1d:8623 with SMTP id v7-20020a81b807000000b003b33f1d8623mr2658997ywe.96.1671071856555;
        Wed, 14 Dec 2022 18:37:36 -0800 (PST)
X-Google-Smtp-Source: AA0mqf7unqWlzhvml7yopXpt/O9I/KqhAFMHR1mAJdkk5uoBLXLr54NVldSwuvdCo3SVs9RWT+ebfJ3OXdlAoFomYJg=
X-Received: by 2002:a81:b807:0:b0:3b3:3f1d:8623 with SMTP id
 v7-20020a81b807000000b003b33f1d8623mr2658995ywe.96.1671071856150; Wed, 14 Dec
 2022 18:37:36 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?B?6JaE55Sw5oKg5qi5?= <yuki-susukida@kke.co.jp>
Date: Thu, 15 Dec 2022 11:37:26 +0900
Message-ID: <CAGHsMd_-K-COEnELpOJpHoDU9m9itjkDAS1Jp3iuLgJN_DeWDA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: ODUHSUA2JVCPB4J3OEB75BMKBFBMGDTI
X-Message-ID-Hash: ODUHSUA2JVCPB4J3OEB75BMKBFBMGDTI
X-MailFrom: yuki-susukida@kke.co.jp
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Accidental Power-Down During Flashing of X310 FPGA Image
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ODUHSUA2JVCPB4J3OEB75BMKBFBMGDTI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8317398928834218101=="

--===============8317398928834218101==
Content-Type: multipart/alternative; boundary="00000000000061621505efd4bcd2"

--00000000000061621505efd4bcd2
Content-Type: text/plain; charset="UTF-8"

Hello everyone,

I accidentally turned off USRP X310 while updating the FPGA image of the
USRP X310 using the procedure in the link below.
After that, when I turned on the X310, there was no response to the
"usrp_find_devices" command, and the network interface on the PC side could
not recognize the X310.
How can I solve this problem?
https://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_getting_started_fpga_update

Thank you in advance.

Yuki Susukida

--00000000000061621505efd4bcd2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hello everyone,<br></div><div dir=3D"ltr"=
><br></div><div dir=3D"ltr">I accidentally turned off USRP X310 while updat=
ing the FPGA image of the USRP X310 using the procedure in the link below.<=
br>After that, when I turned on the X310, there was no response to the &quo=
t;usrp_find_devices&quot; command, and the network interface on the PC side=
 could not recognize the X310.<br>How can I solve this problem?<br><a href=
=3D"https://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_getting_started=
_fpga_update" target=3D"_blank">https://files.ettus.com/manual/page_usrp_x3=
x0.html#x3x0_getting_started_fpga_update</a><br><br>Thank you in advance.<b=
r></div><div dir=3D"ltr"><br></div><div>Yuki Susukida</div></div>

--00000000000061621505efd4bcd2--

--===============8317398928834218101==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8317398928834218101==--
