Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B8E2CB1D6B8
	for <lists+usrp-users@lfdr.de>; Thu,  7 Aug 2025 13:31:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AB9D238635F
	for <lists+usrp-users@lfdr.de>; Thu,  7 Aug 2025 07:31:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1754566299; bh=bt4RfrptngTqvXqMS+h+Web6SCyrC/YqwMZ51lzoON8=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Bv0cQzzyAtJPgyLiNZUsgwUosx9qDsXAHuBymn5zyWBhbaSmPHqHXPI9eiwXEXXCE
	 Xk6TQnvuvwPAlWbDNbPO+OtOEncmAkFohYtqf16BVJ+6to7x1sIfDncO3dJ7Ah7qNf
	 xBcjl9jrUFr59Y1U/fljAY+TGbT0BoeMrKNvWcEkyqn1OBflNLMJwlouDSi2sbxrov
	 iMC1++qqfmqD6hIT4m2t3jNVjDez1o3GLtV8FCy4YRMXN4IwgUjgm4cr81u5AJWtl1
	 I17TyDMLaR6roHhMXdNS49K2Kp64Edz3tXADKbqmTpVTPKNQokGPRoMrFNQcP658VA
	 YQJAqPgGezD+A==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B189F38631A
	for <usrp-users@lists.ettus.com>; Thu,  7 Aug 2025 07:31:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1754566267; bh=cOQN/fNQsIOIRRq4vk1Ddsxjv2XGjoCXpgp0DUU5EKI=;
	h=Date:To:From:Subject:From;
	b=mq/kxt0CNKjJVTfpqWu4Q74/Qr1+T/bE8ZYEHWxjxOZ1I4otIYTfP3hdck9G9MDV7
	 47uqFk4g+u4J8ARAVVgTaMJo/66mHugwlxax6cnYJD8ulOqem512bKljkufeHAB+c7
	 6HIJx9ZMgfDsK45HFHDA1XxMj1zEEP9cpbpR++rXVcJw8+KNCMiznbCHe/1NdPBt5S
	 weB54TI8GHuRajuy6FKJ9X8DoKc3ESOSTc/ZOIKyCkUhHWViVgomqcPc/JppYxeao3
	 HdACgCNKvJc6fB/hFv6TOlYWq21gq2lk2/DeLo5xQ+lMaWCXWRYG/u0yajZD0snZOd
	 DLjoFm/4arVgA==
Date: Thu, 7 Aug 2025 11:31:07 +0000
To: usrp-users@lists.ettus.com
From: nirkicatal1@gmail.com
Message-ID: <omY3a5sIsTP4vkVgUEI2Dmfa7xyHhbUlr0vUJscDEc@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 6HU45DNF7JC5JXC52IC7IL2F6PHMENYQ
X-Message-ID-Hash: 6HU45DNF7JC5JXC52IC7IL2F6PHMENYQ
X-MailFrom: nirkicatal1@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Non-Stationary TDOA Behavior using PCM Signals
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6HU45DNF7JC5JXC52IC7IL2F6PHMENYQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1307491989363867680=="

This is a multi-part message in MIME format.

--===============1307491989363867680==
Content-Type: multipart/alternative;
 boundary="b1_omY3a5sIsTP4vkVgUEI2Dmfa7xyHhbUlr0vUJscDEc"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_omY3a5sIsTP4vkVgUEI2Dmfa7xyHhbUlr0vUJscDEc
Content-Type: text/plain; charset=us-ascii

Hi,

We are observing a time difference of arrival (TDOA) variation between two E320 devices using PCM signals.

* The devices receive with zero hardware delay delta to the RF inputs.

* Both devices have the latest filesystem installed (UHD 4.8).

* Matched filtering is applied to estimate the time of arrival of the pulses.

* The time of arrivals are subtracted to compute the TDOA.

* Internal GPSDO PPS and 10 MHz clocks are used.

* cgps reports GDOP values around 2.0 for both devices.

* Multiple 60-second test runs have been conducted.

* A deviation of around 150 ns in TDOA between the initial and final estimations across the radios is observed.

We know that the matched filtering estimation and other imperfections follow a stationary Gaussian distribution with a 20 ns sigma (and a constant mean per run). We verified this behavior on the same setup using two B210 devices with external Ettus-supplied GPSDOs. The B210s report similar GPS performance to the E320s.

What could be the cause of the non-stationary behavior observed on the E320s?

--b1_omY3a5sIsTP4vkVgUEI2Dmfa7xyHhbUlr0vUJscDEc
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hi,</p><p>We are observing a time difference of arrival (TDOA) variation=
 between two E320 devices using PCM signals.</p><ul><li><p>The devices rece=
ive with zero hardware delay delta to the RF inputs.</p></li><li><p>Both de=
vices have the latest filesystem installed (UHD 4.8).</p></li><li><p>Matche=
d filtering is applied to estimate the time of arrival of the pulses.</p></=
li><li><p>The time of arrivals are subtracted to compute the TDOA.</p></li>=
<li><p>Internal GPSDO PPS and 10 MHz clocks are used.</p></li><li><p>cgps r=
eports GDOP values around 2.0 for both devices.</p></li><li><p>Multiple 60-=
second test runs have been conducted.</p></li><li><p>A deviation of around =
150 ns in TDOA between the initial and final estimations across the radios =
is observed.</p></li></ul><p>We know that the matched filtering estimation =
and other imperfections follow a stationary Gaussian distribution with a 20=
 ns sigma (and a constant mean per run). We verified this behavior on the s=
ame setup using two B210 devices with external Ettus-supplied GPSDOs. The B=
210s report similar GPS performance to the E320s.</p><p>What could be the c=
ause of the non-stationary behavior observed on the E320s?</p>

--b1_omY3a5sIsTP4vkVgUEI2Dmfa7xyHhbUlr0vUJscDEc--

--===============1307491989363867680==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1307491989363867680==--
