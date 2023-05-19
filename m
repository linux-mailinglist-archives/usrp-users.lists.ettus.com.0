Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 062ED70909B
	for <lists+usrp-users@lfdr.de>; Fri, 19 May 2023 09:44:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 73C9838488D
	for <lists+usrp-users@lfdr.de>; Fri, 19 May 2023 03:44:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684482268; bh=5yaBRsTDZ2Tz4b9eEYWK7F7e365O9/tTzK39YsoO/hA=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=IBDwxkP3Eu7I/LzTNQjh4J96YOUmYijq86VxTDZgxkHuOtB/6zs/yXZ1I35u8SadY
	 CGAFh+X7M9653bgzJ0pX499iHM5cchIyJK0wPla6cI/02icmEiiKCH8jyhhPYQutQI
	 i2cD3Qh2cw/qNUYlYhJGv9LEYFmNzL1E6CHlagdI6Kyc9zw9F0GUifGljeAjqS4LBr
	 yH1ummy7bbMNRKG5N5gcrpL6VZzZf3OUfxaaUc1tTuUV5Y52QH3fJEILIxQJbkksQ+
	 T254S1F/W08/2WKWYbYigTTg6+aFfqy2biBX5LyvHyhan9ET+FKbSesRV1JimE5XEt
	 hhmcgK0UccYNA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 743B038488D
	for <usrp-users@lists.ettus.com>; Fri, 19 May 2023 03:44:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684482243; bh=a3nxue8b3VFtz5AmvL26jcmH9fVDnZW/3/o1vlCxHNQ=;
	h=Date:To:From:Subject:From;
	b=C2AwX8exNssN9y9VQ73AymaUFmN7OM7FJzcjbfQx5SLcO7w4Z+0lNq7ED5F4sFgGU
	 Vel/SbTTMe+2+hY5dzZ8jHYgQvumWsnC7pK5+XCvsmElba7jY69Gd7AW6U5nCkq3bQ
	 OnRUpsNo23WcqIY1AbVs26cbbT76QfOj6Cz/MhRNRrbYJ1s5aw0WDTBbjUIhcTz+VS
	 tvdKWV1XaexIy7W/LTibkHHpRFSXvZretizzNJGGJ5NZCJi9rxCUeRUPnwJtqMUVxv
	 hjIOeOT3boSKIkfd9Y7dr93A8f+sB8IcFgB2hHTA4b85pi6zwDhBiAjZCpZWODahkE
	 QMymZEYo8QyZQ==
Date: Fri, 19 May 2023 07:44:03 +0000
To: usrp-users@lists.ettus.com
Message-ID: <WxEVJudNlhw77HdNGPVfsAUSfroiO8L5xxXJ1mIsbg@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 5E7C4JZK5FVYKB4F6YF6DAHDNQMK27H7
X-Message-ID-Hash: 5E7C4JZK5FVYKB4F6YF6DAHDNQMK27H7
X-MailFrom: a.feta@rheagroup.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X410 not powering on
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5E7C4JZK5FVYKB4F6YF6DAHDNQMK27H7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Arjan Feta via USRP-users <usrp-users@lists.ettus.com>
Reply-To: a.feta@rheagroup.com
Content-Type: multipart/mixed; boundary="===============6180690057223877738=="

This is a multi-part message in MIME format.

--===============6180690057223877738==
Content-Type: multipart/alternative;
 boundary="b1_WxEVJudNlhw77HdNGPVfsAUSfroiO8L5xxXJ1mIsbg"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_WxEVJudNlhw77HdNGPVfsAUSfroiO8L5xxXJ1mIsbg
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi all.

I just unboxed my two new X410. I try to power them on following the proc=
edure in the getting started guide, but they both seem to not turn on.

The green LED on the power supply seems to become weaker when it is attac=
hed to the X410 backplane and the power LED does not turn on.

It seems strange because it happens with both devices by trying both powe=
r suppliers.

I don=E2=80=99t think is a power network problem because the PXI Chassis =
that consumes more power works without problems.

I=E2=80=99ve used the X310 before and I had never had such problem.

Thanks in advance,

Arjan

--b1_WxEVJudNlhw77HdNGPVfsAUSfroiO8L5xxXJ1mIsbg
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi all.</p><p>I just unboxed my two new X410. I try to power them on f=
ollowing the procedure in the getting started guide, but they both seem t=
o not turn on.</p><p>The green LED on the power supply seems to become we=
aker when it is attached to the X410 backplane and the power LED does not=
 turn on.</p><p>It seems strange because it happens with both devices by =
trying both power suppliers.</p><p>I don=E2=80=99t think is a power netwo=
rk problem because the PXI Chassis that consumes more power works without=
 problems.</p><p>I=E2=80=99ve used the X310 before and I had never had su=
ch problem.</p><p><br></p><p>Thanks in advance,</p><p><br></p><p>Arjan</p=
>


--b1_WxEVJudNlhw77HdNGPVfsAUSfroiO8L5xxXJ1mIsbg--

--===============6180690057223877738==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6180690057223877738==--
