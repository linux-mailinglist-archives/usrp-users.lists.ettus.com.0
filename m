Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC1B9EC6DD
	for <lists+usrp-users@lfdr.de>; Wed, 11 Dec 2024 09:17:55 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 189F8385AE8
	for <lists+usrp-users@lfdr.de>; Wed, 11 Dec 2024 03:17:53 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733905073; bh=i7F+jYnEx9wb0c1WihijCGY/gDctglpYwq2CFRFLfUo=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=SGqSBE/ljFE00s3fZ3QsKrV97HzSw1Hzy6iz/B95UCrgMmFjbXp1uWBhEjkMMvC3R
	 lFvORxGLQ16V6hSPHY3i/s872+i/eavBOKkmPW5VXalv6mLkKghoge6C5iJ4wAgbhh
	 1C8b9T+GZOQacOsG8XtxFivYTmkErMfIeYtBKrpIGSJSJ2LneidtAw3CHvMxqHIc11
	 BuiAtTYKW9yfeTe9wGv8ihcEI/B9d27ZaBG/zIRufKjpsGDWYl7+TkF7vzgOVZ/ds/
	 8uZwK7pRiR3CSXTwhWh2uIRrpE1FrjkZGXvbfSz4LrcsERxTSVFnH1RmjMzzhVp/QS
	 eLu08OSQ0skNA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BCE61385AC8
	for <usrp-users@lists.ettus.com>; Wed, 11 Dec 2024 03:17:42 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733905062; bh=BIzkhwi60Oq7r0rmvnvOPUUCDjevGOMNyaqrXk6xuk4=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=oMm03v9VKiX4EejtOdM6YGCkJt/7XcFEe5wqp8aK4eumm6OrVdSRNOWkEQ1HKrCER
	 ANDcAxTjcE+sYjDgXi6eylt6RITG0tBQL70UxBDVk5LJfOuBaKfF5vNi903mGDL5No
	 7MxTWKtGk9B+022PaaPK9q6glsDZ+cAmmJAGQeyU9Fm7abUDNzbtaMZqZJVqdNe4ze
	 bNDPgk1I3XDL4jKNgvIgLoQbZG34D9vobfn9Kmk/wk6qPtTd9yyViD++Xqyz8XyioO
	 BIY67ov2GdO+/o83CPtMlsgQfWfdKPeu1U9MaimwpkOWbpmqfoXTVE8B0x7d9N/VCx
	 6vIeFnn8FH16g==
Date: Wed, 11 Dec 2024 08:17:42 +0000
To: usrp-users@lists.ettus.com
Message-ID: <a5a8Yhq8pT6xckOFqwFH3IlduIpMw2f9wid5bDoXsiQ@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: SN6PR04MB54066A7703EDAD4B62C03BD3C13D2@SN6PR04MB5406.namprd04.prod.outlook.com
MIME-Version: 1.0
Message-ID-Hash: 7XDDT5XFQLPVGYDYYNU5YBQLYFALNTFY
X-Message-ID-Hash: 7XDDT5XFQLPVGYDYYNU5YBQLYFALNTFY
X-MailFrom: joerg.hofrichter@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Running cron job on USRP N320
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7XDDT5XFQLPVGYDYYNU5YBQLYFALNTFY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "joerg.hofrichter--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: joerg.hofrichter@emerson.com
Content-Type: multipart/mixed; boundary="===============1125422929910964346=="

This is a multi-part message in MIME format.

--===============1125422929910964346==
Content-Type: multipart/alternative;
 boundary="b1_a5a8Yhq8pT6xckOFqwFH3IlduIpMw2f9wid5bDoXsiQ"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_a5a8Yhq8pT6xckOFqwFH3IlduIpMw2f9wid5bDoXsiQ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Joshua,

you could use systemd timers for this purpose. A good documentation on ho=
w to use them is available here: https://wiki.archlinux.org/title/Systemd=
/Timers

Kind regards,\
J=C3=B6rg

--b1_a5a8Yhq8pT6xckOFqwFH3IlduIpMw2f9wid5bDoXsiQ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Joshua,</p><p>you could use systemd timers for this purpose. A good=
 documentation on how to use them is available here: https://wiki.archlin=
ux.org/title/Systemd/Timers</p><p>Kind regards,<br>J=C3=B6rg</p>


--b1_a5a8Yhq8pT6xckOFqwFH3IlduIpMw2f9wid5bDoXsiQ--

--===============1125422929910964346==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1125422929910964346==--
