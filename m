Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 327989ECABE
	for <lists+usrp-users@lfdr.de>; Wed, 11 Dec 2024 11:58:01 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7A730386161
	for <lists+usrp-users@lfdr.de>; Wed, 11 Dec 2024 05:57:58 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733914678; bh=M1NdYJFdJjul6vPKGko0SzZogZkD22Ha4YsTwwDBoUs=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=L1JC1jz4I0rJI0jBFi3dua8CQOUXIavKf8p/OSu5YS7ZMF5Ayli0tXD06YzHdS6fC
	 kJMJLEIhaIOeUSZZYyLQ29jq9uC78WoXNzst97Ru13gZh01IwXNi39qzWO2NAdYCd7
	 Z1tZD2v+hbjOsghuUjgjmZig0qlllpvOnGOvvQPmOnkELyEzAD04tO1m+wHLbRuJU3
	 P0Utx2rD2iq0XXqaX1V1opNNJV0zJqfy5d8AykKqynS/wH6lPwbOkGqfjG8VhSsQF3
	 ShkDvl9TcHu8PXwOZzmsguwTVDAZpub9JXtIQ7l++wRjz7HJ7fIRmAhoDVmRv+VDV0
	 ReCLXJn0kmaqA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 37228385F86
	for <usrp-users@lists.ettus.com>; Wed, 11 Dec 2024 05:57:08 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733914628; bh=7z4vhfXUqgRvPKNZefaQYtozaQlfoxd5h8cmym/MRAs=;
	h=Date:To:From:Subject:From;
	b=AMHTvC9cDWd6wrPv4CMKSSWyNswWdhKh5GopYXorb9HX7LIntxdk5AwQZYlr4vXwz
	 vXs44DO/EHMFT10j5QtZ1WUMGNkcUKyOdmpo2nX/L+J3cQEZPnXVpE2y2ntNB+K8L5
	 bAcDQUm+mN08Aogo545wJRPXTPQ1L9doVkU5zY3/lN1Kntq9EaVTAH0VfefRijpS04
	 YfTYbuJlMKvZTlgeioYP5jW5RgLKagEwd5xUzNLhJTDf+UVr1Oc4AiXB4dYFTCEC1A
	 oEZ54q8UhnuA2gCUMu4McPLnM3UETAoq1j4ZWi6j8YEiP7AC1DxUTXQvNR01Y0qL6M
	 GFssIYGjpmE+g==
Date: Wed, 11 Dec 2024 10:57:08 +0000
To: usrp-users@lists.ettus.com
From: cyberphox@gmail.com
Message-ID: <nxO3D4rKsPVIWwOV7WWQ81H581EQ8BCMrfJ0XcxJuE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 7DGYP3FGCHF6BUDYUNLAQF3DCZIPCNZA
X-Message-ID-Hash: 7DGYP3FGCHF6BUDYUNLAQF3DCZIPCNZA
X-MailFrom: cyberphox@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] How to check RFNOC is already in use
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7DGYP3FGCHF6BUDYUNLAQF3DCZIPCNZA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7951995003514883703=="

This is a multi-part message in MIME format.

--===============7951995003514883703==
Content-Type: multipart/alternative;
 boundary="b1_nxO3D4rKsPVIWwOV7WWQ81H581EQ8BCMrfJ0XcxJuE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_nxO3D4rKsPVIWwOV7WWQ81H581EQ8BCMrfJ0XcxJuE
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi=20

I have a bit of code that finds an OOT module, eg.

auto siggen_blocks =3D graph->find_blocks<rfnoc:: =E2=80=A6

How can I first check that another instance is not already accessing thes=
e block?  Calling this function causes a segmentation fault when another =
instance is already using it. It would be nice to handle this more gracef=
ully.

thank you

M.

--b1_nxO3D4rKsPVIWwOV7WWQ81H581EQ8BCMrfJ0XcxJuE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi </p><p><br></p><p>I have a bit of code that finds an OOT module, eg=
.</p><p>auto siggen_blocks =3D graph-&gt;find_blocks&lt;rfnoc:: =E2=80=A6=
</p><p>How can I first check that another instance is not already accessi=
ng these block?  Calling this function causes a segmentation fault when a=
nother instance is already using it. It would be nice to handle this more=
 gracefully.</p><p><br></p><p>thank you</p><p>M.</p>


--b1_nxO3D4rKsPVIWwOV7WWQ81H581EQ8BCMrfJ0XcxJuE--

--===============7951995003514883703==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7951995003514883703==--
