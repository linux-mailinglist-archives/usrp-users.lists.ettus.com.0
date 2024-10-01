Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F4498B830
	for <lists+usrp-users@lfdr.de>; Tue,  1 Oct 2024 11:19:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 090DA3855DB
	for <lists+usrp-users@lfdr.de>; Tue,  1 Oct 2024 05:19:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727774393; bh=JYfic9kvIsjx5M6odvgZRUhITJL439Z0WI2LDdLU9SY=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ZsetbaDGjjJYFKGTABmSR4z88SlWBDw3SMZXmusnMFflCbm3wXhmWYNJk1Ycd+2ow
	 Unnkz0aVJbxdm6dqYa/pQTU1bd4ardDY7rWaCY9mGr2/GhD1Qp/cgvXn2TtVpOQiDk
	 iCkj/Hw9319evNTX0aNQ1D8oGlSBx1iVlbiFP106MgVIiaFQBGrVOBoqLCCmX0JfHd
	 TdNxifsWZ0k9SMoDwF6E5EOp74vqM56gPoN46+DvvCtqduF5hXRE/xH+K5Mv8bw2D/
	 dyeyFzZg46QFyEHjrgtcGf8qMH+1o5V4oggL4fi2ATCyZUA9ZA+o0kdR0WPKab8kM9
	 cg1nCuesCLMbw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B8331385490
	for <usrp-users@lists.ettus.com>; Tue,  1 Oct 2024 05:18:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727774336; bh=i6YBm896ytQhQSP30t7uwmwzMVNMJSlJecMQcGqq9JY=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=z0I0AD51riNutFqaF2bztUis/Qa3GS4TkehhSK6VSpOE/Ojl5pCqJMaqScRqNFCxw
	 MN7YNaBPE3de9mYDS8PlA9DgvR8ddAW3beOt/x+Tcukp3y3KoHp0+WYOHBh9Nf4Qv4
	 Bubc109zhKQg1lPmwlwQVP4bOpueqs/V61ITvntL8cKyEAEQ02FMjtILr4ICm9axy1
	 WttUafeFzDumdWYQne+vPKFdt3pyseBjH9yMMDhb0UUf1lEMOw8aWquVrPc5KaZCad
	 pVvGKqH8fMW5rEFMgOYD6u+XHwbgyafA2OdWXEBohKx+pZRMHtpUmF0I04FoItSlmN
	 YbmYrmeicFPhA==
Date: Tue, 1 Oct 2024 09:18:56 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <kILN4BwvqzBtHWxoaXCrVEYO3tedaLDATF78MEF5VWE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFOi1A7Bhwi49xrpegC29dMGq2ya1XeLuzhCJWWNgMqSMKtbWQ@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: OOKS7WY64OJWNWCNYWZHDOX4B4DKXX3F
X-Message-ID-Hash: OOKS7WY64OJWNWCNYWZHDOX4B4DKXX3F
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Rfnoc loopback in uhd 4.6
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OOKS7WY64OJWNWCNYWZHDOX4B4DKXX3F/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4559245883180723822=="

This is a multi-part message in MIME format.

--===============4559245883180723822==
Content-Type: multipart/alternative;
 boundary="b1_kILN4BwvqzBtHWxoaXCrVEYO3tedaLDATF78MEF5VWE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_kILN4BwvqzBtHWxoaXCrVEYO3tedaLDATF78MEF5VWE
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Maria,

If you need to run the loopback in GNU Radio - there are few hacks that a=
re needed. This example (author of it is Martin Braun) captures all of th=
em and it works with recent UHD:\
https://github.com/gnuradio/gnuradio/blob/main/gr-uhd/examples/grc/rfnoc_=
radio_loopback.grc

I=E2=80=99m using it for tests and it works.\
\
Best Regards,\
Piotr Krysik

--b1_kILN4BwvqzBtHWxoaXCrVEYO3tedaLDATF78MEF5VWE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello Maria,</p><p>If you need to run the loopback in GNU Radio - ther=
e are few hacks that are needed. This example (author of it is Martin Bra=
un) captures all of them and it works with recent UHD:<br>https://github.=
com/gnuradio/gnuradio/blob/main/gr-uhd/examples/grc/rfnoc_radio_loopback.=
grc</p><p>I=E2=80=99m using it for tests and it works.<br><br>Best Regard=
s,<br>Piotr Krysik</p>


--b1_kILN4BwvqzBtHWxoaXCrVEYO3tedaLDATF78MEF5VWE--

--===============4559245883180723822==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4559245883180723822==--
