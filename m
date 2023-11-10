Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 192507E7D47
	for <lists+usrp-users@lfdr.de>; Fri, 10 Nov 2023 16:08:38 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EACCA384C68
	for <lists+usrp-users@lfdr.de>; Fri, 10 Nov 2023 10:08:36 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1699628916; bh=pNqedh0Vws374vzs1dGFBAYEqaqXkDOhQPVUIaBqis4=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=RoyjAX78dNd59OTObG1tEI4db4BxuupsJ/WfPOOT5dabpPilrj8yAb/twT9j11fO2
	 Of1MFfDAnZmO4zHa9kCIzyK4gDNetsbVsc1SuaClEY0kf58OGQHt7T54z9IfKfCm16
	 jirg7qLhUxlgMd+IxiLe/XmZ/CMC7Etiafi7V+qi0EkKYl+4MeTEqm4q7R3Tq5e5JS
	 o21VLz+WkzdEdXJrBfm2tPvALYu3EbORJTca01G1vCeXFj+8pOQQL5iy8UWmNkbHFz
	 JsB1fi2jTerTUfgINWrK07E13M3Hv6/4Mk48CegoLgHQ803Eyr/rTYBuivT6tDG6Zg
	 N0VA+DASeH5eA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B2B8D384C2F
	for <usrp-users@lists.ettus.com>; Fri, 10 Nov 2023 10:07:59 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1699628879; bh=HFNmVJ1hlIrj4FJWzOFVqekqpLpqw49i6iD9ir7CafA=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=yRhi7MR48sIM3awik6uVCbZHlhN25plW3CpbREvq6UiHPBIaBqLozFpLQpGfpwxQl
	 0oRytdd+D71H9Z0isnfan5vi83IjyszGPzskyQYu9k8CYpZ74T9dfT7GPRLOCcNDkh
	 lnVjZGFeFtpNA5CVPJ4YGWuFXQ0OgTbT4/MEQ+uQXR1fLOlU0PxJw80uhcQTIUsCTU
	 S2vTEierJXBK+lMwmtPWzNVWrUOeYDWaBDjeXEjh6DDR3vbbL/0wWfi+Ly39MJ6TDc
	 aEWKRYo/NryCEitfMyiA09oh+iCcZSu2lchv8NK/3Rnj7s18lcnFRoCt/waNMMwvwN
	 voEKtdqeqgOMA==
Date: Fri, 10 Nov 2023 15:07:59 +0000
To: usrp-users@lists.ettus.com
From: gengzy096@gmail.com
Message-ID: <RENjmpG4fQWu92tJCtVPF8JLko8p06mOv82dMFulD8@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 4553a3f8-ae99-4730-81f0-08850904a18f@gmail.com
MIME-Version: 1.0
Message-ID-Hash: CFS2IHIJJKXHKMJAOILK7LHSSMIPXKEP
X-Message-ID-Hash: CFS2IHIJJKXHKMJAOILK7LHSSMIPXKEP
X-MailFrom: gengzy096@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP cannot use external GPSDO as reference clock
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CFS2IHIJJKXHKMJAOILK7LHSSMIPXKEP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6770695587116207189=="

This is a multi-part message in MIME format.

--===============6770695587116207189==
Content-Type: multipart/alternative;
 boundary="b1_RENjmpG4fQWu92tJCtVPF8JLko8p06mOv82dMFulD8"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_RENjmpG4fQWu92tJCtVPF8JLko8p06mOv82dMFulD8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks for your reply.

> Select "PC TIme on Next PPS", and use Time source: External and Clock\
> Source: External

Another question is that Leo Bodnar=C2=A0GPSDO only connects the REF CLOC=
K of USRP, so the clock source should be set to external. But the PPS IN =
of USRP doesn=E2=80=99t connect anything, so should the time source also =
be set to external? In addition, in this situation(PPS IN of USRP doesn=E2=
=80=99t connect anything), should we select "PC TIme on Next PPS"?

Also, I was wondering if there is a way to know that usrp is successfully=
 using an external clock reference?

--b1_RENjmpG4fQWu92tJCtVPF8JLko8p06mOv82dMFulD8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Thanks for your reply.</p><blockquote><p>Select "PC TIme on Next PPS",=
 and use Time source: External and Clock<br>Source: External</p></blockqu=
ote><p>Another question is that Leo Bodnar&nbsp;GPSDO only connects the R=
EF CLOCK of USRP, so the clock source should be set to external. But the =
PPS IN of USRP doesn=E2=80=99t connect anything, so should the time sourc=
e also be set to external? In addition, in this situation(PPS IN of USRP =
doesn=E2=80=99t connect anything), should we select "PC TIme on Next PPS"=
?</p><p>Also, I was wondering if there is a way to know that usrp is succ=
essfully using an external clock reference?</p>


--b1_RENjmpG4fQWu92tJCtVPF8JLko8p06mOv82dMFulD8--

--===============6770695587116207189==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6770695587116207189==--
