Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EE052ACE23D
	for <lists+usrp-users@lfdr.de>; Wed,  4 Jun 2025 18:34:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 14DF4385F1C
	for <lists+usrp-users@lfdr.de>; Wed,  4 Jun 2025 12:34:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1749054855; bh=UsDMprfq5v10KcOPgF0rOmnn6IgFXAatYtpxj7qRUfw=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=nOuXFohiA532efV7ZYRqvJWuBL74/8PlYPpjQbzFbH6DxdShWjyUcpk0RSfwQmxsy
	 UKd/+9CY6XxUqyXvRNxzsiKppf0XlMS5tVdlzWladHCOgx4mfGGuQp0bRqLio47/X4
	 KYbmFJjleasddAYkM4GkMH4OH0xX2CUrs1JKL9FRG/Qx8iNj2Uj8X7SLlYntJCmT2C
	 Tk7LGFgkZzFYAUjWvrr341ViZU+WjsoyyooW1ygQyfplivLL6coA0udRGjC67S07Zo
	 sZQ8TuBZfzQWvSlJpzIvSUvmg1hCQNb4xdoP/xWvIGqlsNX7NJK6kDDmCe0SPlTYGv
	 OoMhlGBHfazRA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9F33A385446
	for <usrp-users@lists.ettus.com>; Wed,  4 Jun 2025 12:33:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1749054804; bh=tMtw/hIH6LzgzYTespQfyDRTwpcBFbq8ou19fkDzwhs=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=wKey00hvVt6rH09fgHvBA2UbSGpoAn444gKq7UGNsgnH17r3ym9xRO9PzTQ/fGMyS
	 RD64Pt9n1aZIHEjVhiqw5LPa3c3iadFQsenvMKl7WYpi6S04s7R5U/c/qjjWvNKxM1
	 pteivhCrs9cIrnhC6aSSueayXNcfjsgTiMIBLlygxL9IMvJmxMrwAuHDziJB/DOIcu
	 roFXu1sbDQFUEJJ9RPV5qDK6ceIej6AXqUPNCsS+HjoYdrKVeXKo00G1DDJQdhRdaT
	 OWY/lHMnMGaWWwf/VJcssy4fGtqZdnMJ25DYabz/exmUa3jRs6c0uH2vz6QaGrJQs/
	 cHW1p+8AxfBZQ==
Date: Wed, 4 Jun 2025 16:33:24 +0000
To: usrp-users@lists.ettus.com
From: tommytsui@w5tech.com
Message-ID: <FT6Me7OMrqsHOjH2ryBekraaGY1TpeOJ6NqDAupenI@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 7b17701a-9fc2-4dd9-9ef6-fdd7ed1e86a2@gmail.com
MIME-Version: 1.0
Message-ID-Hash: 4IIZGM33SX7BPTV37L7SPMHZRLPBHQK4
X-Message-ID-Hash: 4IIZGM33SX7BPTV37L7SPMHZRLPBHQK4
X-MailFrom: tommytsui@w5tech.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 4.8 set_tx_bandwidth() and set_rx_bandwidth() method no longer works
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4IIZGM33SX7BPTV37L7SPMHZRLPBHQK4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6364707397975964097=="

This is a multi-part message in MIME format.

--===============6364707397975964097==
Content-Type: multipart/alternative;
 boundary="b1_FT6Me7OMrqsHOjH2ryBekraaGY1TpeOJ6NqDAupenI"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_FT6Me7OMrqsHOjH2ryBekraaGY1TpeOJ6NqDAupenI
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

After further investigation, I concur with your comment. My X310 has a WB=
X-40 installed (not WBX-120 mentioned in the original post). It has a fix=
ed analog bandwidth 40MHz. What I discovered is that the actual digital b=
andwidth is determined by the sampling rate. The lower the sampling rate,=
 the narrower the bandwidth. My app used 7.68MHz sampling rate, which is =
closed to the target bandwidth 10MHz it set. From an Agilent signal gener=
ator frequency sweep, I can see when the sampling rate is higher, the per=
ceived X310 receive bandwidth is higher until the bandwidth hits the 40MH=
z limit.=20

I think UHD 4.8 release fixed the get_rx_bandwidth() and get_tx_bandwidth=
() API issue. Both return the analog bandwidth limit (40MHz) of the radio=
 daughter card rather than the value set by set_tx_bandwidth() and set_rx=
_bandwidth() method. I thought the UHD driver API documentation on Ettus =
Research =E2=80=9CUSRP Hardware Driver and USRP manual=E2=80=9D website c=
ould be improved. If it would have a clear description of how the API wor=
ks and, if any, the limitation(s) of the API. In this case, the set bandw=
idth method works only when the radio card supports a configurable analog=
 bandpass filter, that would have prevented many users finding an answer =
to the issue that they encountered.

Tom

--b1_FT6Me7OMrqsHOjH2ryBekraaGY1TpeOJ6NqDAupenI
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Marcus,</p><p>After further investigation, I concur with your comment=
. My X310 has a WBX-40 installed (not WBX-120 mentioned in the original pos=
t). It has a fixed analog bandwidth 40MHz. What I discovered is that the ac=
tual digital bandwidth is determined by the sampling rate. The lower the sa=
mpling rate, the narrower the bandwidth. My app used 7.68MHz sampling rate,=
 which is closed to the target bandwidth 10MHz it set. From an Agilent sign=
al generator frequency sweep, I can see when the sampling rate is higher, t=
he perceived X310 receive bandwidth is higher until the bandwidth hits the =
40MHz limit. </p><p>I think UHD 4.8 release fixed the get_rx_bandwidth() an=
d get_tx_bandwidth() API issue. Both return the analog bandwidth limit (40M=
Hz) of the radio daughter card rather than the value set by set_tx_bandwidt=
h() and set_rx_bandwidth() method. I thought the UHD driver API documentati=
on on Ettus Research =E2=80=9CUSRP Hardware Driver and USRP manual=E2=80=
=9D website could be improved. If it would have a clear description of how =
the API works and, if any, the limitation(s) of the API. In this case, the =
set bandwidth method works only when the radio card supports a configurable=
 analog bandpass filter, that would have prevented many users finding an an=
swer to the issue that they encountered.</p><p>Tom</p>

--b1_FT6Me7OMrqsHOjH2ryBekraaGY1TpeOJ6NqDAupenI--

--===============6364707397975964097==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6364707397975964097==--
