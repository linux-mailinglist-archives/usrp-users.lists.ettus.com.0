Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 200AEA05C99
	for <lists+usrp-users@lfdr.de>; Wed,  8 Jan 2025 14:20:14 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CC815385DEB
	for <lists+usrp-users@lfdr.de>; Wed,  8 Jan 2025 08:20:12 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1736342412; bh=cYZ4XImYNgAz9pGqem0+rIY/eT+j6vS3/M0qeqqfjj8=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=J4lLWdHrcgUYMTEHMXGkooPLNOzdl4GBsCmTZ192LF/uOLkJogKwD0acXsSJvBzS1
	 nHqyjZmBRa/8W+ZC2oCtUS0tIyNz065fAdGmXOsWUc+X7xSZu4BBRLda0cpjxSXIla
	 TLv8vr/soakwl9iq6pDSVvrRXAKGFbu2kIri4R3zSFEgHqwqjdb6/YQAenBMKRNiK4
	 zQMbU3NUBNrKAFy9+u4JrpjP3Z5UxlqQQJ+klFzgYnKG0egsYAC1pdWMFbFDj3qbm8
	 bs1N2IaZ+1Xn0ly8ucJ7+uM6fHX5hjcydETsyT2KeH4NGLb/tdNvYyrAOpT82Yv2Wn
	 T1YqnQf85cOpg==
Received: from smtp1-g21.free.fr (smtp1-g21.free.fr [212.27.42.1])
	by mm2.emwd.com (Postfix) with ESMTPS id 60964385D93
	for <usrp-users@lists.ettus.com>; Wed,  8 Jan 2025 08:19:30 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=free.fr header.i=@free.fr header.b="F1Q7/cSY";
	dkim-atps=neutral
Received: from zimbra-e1-03.priv.proxad.net (unknown [172.20.243.151])
	by smtp1-g21.free.fr (Postfix) with ESMTP id 4CC76B00585
	for <usrp-users@lists.ettus.com>; Wed,  8 Jan 2025 14:19:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=free.fr;
	s=smtp-20201208; t=1736342369;
	bh=eNzCHz3wr4t8I/nfHkyWF3lDl91gsdZCmAqX5oIBMnA=;
	h=Date:From:To:In-Reply-To:References:Subject:From;
	b=F1Q7/cSYyLNR48tQx/2V+vEY/3eMlrKUNX9ednLagLgf0Xvgq8dzL0By2UvoVuqy+
	 Fgkd2OowW8CTnKYQY5m6tORvrjZGjlDdzlqt1LlW52i843GVQQZ0YY+pgNYGXu2z8r
	 3QYOSm6tRhl0fXAczVFyRO3hdO+9Xk0pETAccGVEHZQv0pDhk4kjT8x9+79UdpcdQy
	 0H/BwU8Nh11fUbz168NgZxgfSTJz6psv9Ua3T502Oq9hAKGh4nmvRt4xBkXFEll3Ls
	 p78PLy5n0YrXUBFM3tlLytSXNl9ZAgRJYo4R1FuYQtCdCsvE2eJktmDH0DGox0gGGr
	 HaIJGeH9rE8dg==
Date: Wed, 8 Jan 2025 14:19:29 +0100 (CET)
From: friedtj@free.fr
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID: <222163733.852695787.1736342369255.JavaMail.zimbra@free.fr>
In-Reply-To: <e635f7c6-86d1-4818-a5c8-30c3990cceec@gmail.com>
References: <596764823.847657463.1736318858776.JavaMail.zimbra@free.fr> <e635f7c6-86d1-4818-a5c8-30c3990cceec@gmail.com>
MIME-Version: 1.0
X-Originating-IP: [194.167.45.227]
X-Mailer: Zimbra 9.0.0_GA_1337 (ZimbraWebClient - FF133 (Linux)/9.0.0_GA_1337)
Thread-Topic: X310 clock signal for aliasing (BasicRX daughter board)
Thread-Index: Y/kApInRfWR2kaVVyqzx0qvlVX+iXg==
Message-ID-Hash: X36XYQS4R7IQRFODF2YKLEFQS3WGPXDV
X-Message-ID-Hash: X36XYQS4R7IQRFODF2YKLEFQS3WGPXDV
X-MailFrom: friedtj@free.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 clock signal for aliasing (BasicRX daughter board)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/X36XYQS4R7IQRFODF2YKLEFQS3WGPXDV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hopefully "last" question: 
I have set 
this->get_iface()->set_clock_enabled(dboard_iface::UNIT_RX, false);
to true and surely enough  I get a continuous clock on the clk_p pin
(J38 pin 2 of https://files.ettus.com/schematics/basic_dbs/BasicRX.pdf) 
which looks like an unbalanced signal since I probe from an oscilloscope
referenced to ground.

However the output signal frequency
1/ appears very unstable (arguably from an oscilloscope trace frequency
measurement), varying by several MHz around a mean value
2/ the mean value is not the one set with "dboard_clock_rate=" even though
this->get_iface()->get_clock_rate(dboard_iface::UNIT_RX);
properly returns the value programmed with this argument. When setting
dboard_clock_rate to 200 MHz, the oscilloscope reads something between
160 and 170 MHz, when setting to 100 MHz the frequency reads 85 to 88 MHz,
and when setting to 50 MHz the reading is 42 - 44 MHz.

I thought maybe the master clock setting would be incorrect but 1/ libuhd
returns 200 MHz master clock and 2/ a value of 184.32 MHz would not match
the observations anyway.

I have read the source code of the other boards enabling set_clock_enabled()
(e.g. db_tvrx.cpp or twinrx_ctrl.cpp) and neither seems to set any other parameter
than _db_iface->set_clock_enabled(dboard_iface::UNIT_TX, true);

Am I missing some additional initialization step? PLL locking condition?

Thanks
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
