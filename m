Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B2B99A925
	for <lists+usrp-users@lfdr.de>; Fri, 11 Oct 2024 18:52:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1F6E3385C35
	for <lists+usrp-users@lfdr.de>; Fri, 11 Oct 2024 12:52:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728665524; bh=3neaGix2nKlCa4QMW31vq61mNjX5QKFEGu70n1TMUlU=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=tw9jxDf9IYrBgwt88tufT/Y5w3eHSD4ODyAQR6Lr5b5ir+MGesveiAs676nqMeNuI
	 yqKftKhUUB2ZfU6tHXK2a+BrVspDbJz0SSrwmMSak3fZDqJ95c88otSs9di0ROdbe9
	 zldqrkhBuO/nMuDQ06+yysaKnORW6gPAoFBC9hOGQbxG0uw9Vlhs2gBgcfhkIjRkIt
	 TmRw4EeCCeP7kvIq+bp/9xQZTtBEssn5bMNFHcDAFKfDx9tWwfs5Iu45xsqHkM1L2V
	 sfxDqlCdz0LOIZGXtWQrNMEjdqDAyWJTlgbRzqlE/hDAjDDOBtYRpnvAsupuuJPtPA
	 e7/SkKUaLRAYg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8402C385C30
	for <usrp-users@lists.ettus.com>; Fri, 11 Oct 2024 12:51:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728665504; bh=RqexC76YHsZxdVoAu5MmeADaegnMf8V2l6S5LM0Lhew=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=L3VMOugBXpfDIJ3oWYugvzp6MxEnVdnHt5L+whz9/bn7idzAxBEk0uxgbbLg0Oqio
	 OEOZzymYMdzxJVjQDotPaM6zeBikFGWOOl2Z/WhaSlmosiDkaN+xMaQEomAIk7k6PW
	 BUmkAZzrpPw4clV6F7if8LSZ++kV/7dIogSWb70QT3Q5ia128NaUoBedopiYeUby55
	 lujFfxPtbHpzJYeFDGj0oA/agipur9eJz0jyhRCLVCz41SioVzBWkJ7NQ+tTT+Y8a9
	 IJsbz/AFpFGlbHCqE2D7E0A2XSYrDfTbNxh4Z/1yIfnXT5VVQ2xAzA8j2eS6aYh0tz
	 kKwfNpHfh27qA==
Date: Fri, 11 Oct 2024 16:51:44 +0000
To: usrp-users@lists.ettus.com
From: houshang.azizi@accelleran.com
Message-ID: <jEHzg7N7GXkL626habkl3ieW34SAq0SMubq3Zxggw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: qCDL2pGvpv5ZeTpVOTs2JHnxJgsYLaQZ0QUaBj5k9E@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: XC2USQNKWZR3U63SHTOJTXB32E7LYI2R
X-Message-ID-Hash: XC2USQNKWZR3U63SHTOJTXB32E7LYI2R
X-MailFrom: houshang.azizi@accelleran.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Control operation timed out with custom block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XC2USQNKWZR3U63SHTOJTXB32E7LYI2R/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7731248669940117518=="

This is a multi-part message in MIME format.

--===============7731248669940117518==
Content-Type: multipart/alternative;
 boundary="b1_jEHzg7N7GXkL626habkl3ieW34SAq0SMubq3Zxggw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_jEHzg7N7GXkL626habkl3ieW34SAq0SMubq3Zxggw
Content-Type: text/plain; charset=us-ascii

Hi! I am facing similar issue. Can you please be more specific on how did you manage to fix it? Thanks!

`du  | Error: failed receiving packet. RfnocError: OpTimeout: Control operation timed out waiting for ACK.`

`du  | Error: failed receiving packet. RfnocError: OpTimeout: Control operation timed out waiting for ACK.`

`du  | Error: failed receiving packet. RfnocError: OpTimeout: Control operation timed out waiting for ACK.`

`du  | Error: failed receiving packet. RfnocError: OpTimeout: Control operation timed out waiting for ACK.`

`du  | Error: failed receiving packet. RfnocError: OpTimeout: Control operation timed out waiting for ACK.`

`du  | Error: failed receiving packet. RfnocError: OpTimeout: Control operation timed out waiting for ACK.`

`du  | Error: failed receiving packet. RfnocError: OpTimeout: Control operation timed out waiting for ACK.`

`du  | Error: failed receiving packet. RfnocError: OpTimeout: Control operation timed out waiting for ACK.`

`du  | Error: failed receiving packet. RfnocError: OpTimeout: Control operation timed out waiting for ACK.`

`du  | Error: failed receiving packet. RfnocError: OpTimeout: Control operation timed out waiting for ACK.`

`du  | Error: failed receiving packet. RfnocError: OpTimeout: Control operation timed out waiting for ACK.`

--b1_jEHzg7N7GXkL626habkl3ieW34SAq0SMubq3Zxggw
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hi! I am facing similar issue. Can you please be more specific on how di=
d you manage to fix it? Thanks!</p><p><br></p><p><code>du  | Error: failed =
receiving packet. RfnocError: OpTimeout: Control operation timed out waitin=
g for ACK.</code></p><p><code>du  | Error: failed receiving packet. RfnocEr=
ror: OpTimeout: Control operation timed out waiting for ACK.</code></p><p><=
code>du  | Error: failed receiving packet. RfnocError: OpTimeout: Control o=
peration timed out waiting for ACK.</code></p><p><code>du  | Error: failed =
receiving packet. RfnocError: OpTimeout: Control operation timed out waitin=
g for ACK.</code></p><p><code>du  | Error: failed receiving packet. RfnocEr=
ror: OpTimeout: Control operation timed out waiting for ACK.</code></p><p><=
code>du  | Error: failed receiving packet. RfnocError: OpTimeout: Control o=
peration timed out waiting for ACK.</code></p><p><code>du  | Error: failed =
receiving packet. RfnocError: OpTimeout: Control operation timed out waitin=
g for ACK.</code></p><p><code>du  | Error: failed receiving packet. RfnocEr=
ror: OpTimeout: Control operation timed out waiting for ACK.</code></p><p><=
code>du  | Error: failed receiving packet. RfnocError: OpTimeout: Control o=
peration timed out waiting for ACK.</code></p><p><code>du  | Error: failed =
receiving packet. RfnocError: OpTimeout: Control operation timed out waitin=
g for ACK.</code></p><p><code>du  | Error: failed receiving packet. RfnocEr=
ror: OpTimeout: Control operation timed out waiting for ACK.</code></p>

--b1_jEHzg7N7GXkL626habkl3ieW34SAq0SMubq3Zxggw--

--===============7731248669940117518==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7731248669940117518==--
