Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA0B6F5D81
	for <lists+usrp-users@lfdr.de>; Wed,  3 May 2023 20:06:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 35BAF380C19
	for <lists+usrp-users@lfdr.de>; Wed,  3 May 2023 14:06:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683137178; bh=8pIqNPyEG+F3c4kPEc24L7l19uNbklJ1tFgjQRGrPgc=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=yrENrjeZc/Lg+aS4v0hkpdQSK7KBu+isr89PsvEHVZUXA4ME2ZkCtdP4iCH1mkXbY
	 FAknq0V3F5JMY28WR5Cigzuxtl5I8viV5w6wah1vVFC474ZQIIp86x4quR0szVDBMS
	 zfVT8cACq4jl6F7dS+Jzn9bNKEbDGM2pXlxL0J78j6jgU3f0h4tIEAXf/tBBUQR4HT
	 9Oq8/AN1D2OjJNeNSatkCohtFw9qnzBbPBufHacnKyyxfnKq0AN1XM/Cn5Ie3wjBYa
	 D4L5NIZ+DIyjZ5HI7DUZLOGyaXmBK0HDqV00qsRBulT7b2qbX9HsEoyNGWkX/6PHrs
	 4O/IaNOx1g9nA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5B94E3848AD
	for <usrp-users@lists.ettus.com>; Wed,  3 May 2023 14:05:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683137135; bh=gA/Z9YjHyNJzxaYs5UegPwp2e2h21KCbEzJx9h5Nzdc=;
	h=Date:To:From:Subject:From;
	b=q6yTxtEZJEbVywqMOL+IP58Bsjmxdkjh0LgkgJH4QlJeJ5N1wJm6TBNeDrOQZqikr
	 cTWfCtjf+yTkjdjk5GYXJnvhJP2ahcOO4ks8Xm1VrEywlNTpZPXOZKGCBJxkklnydH
	 yOiylD0U0FDo2oEms2lxYJt3JfiaXU9CEorqIt7tdvbnQ8bfXHWyIExexOFBSehyxn
	 8E/VWIQwa2yTrIcyiGstsUSobZa6yIRYMHTwFw8JC1ojNWXsGVd7USbpkbN84ue8cT
	 IwJrvf7lN+rQM39uEIKnzL7NfQq26fV/+1fg4dhfQ34y4giIpxCSd5NItvlSwgXJXw
	 r2gt9Qmxze1rw==
Date: Wed, 3 May 2023 18:05:35 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <ZUkgZQkbRM4geBWDbiZS4mn4v8kvIwtnpDYlCs0Oo@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: F3QXYJ2NC5FGDPTONSFR6I2RT3UEV6UY
X-Message-ID-Hash: F3QXYJ2NC5FGDPTONSFR6I2RT3UEV6UY
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RFNOC Block Not found
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/F3QXYJ2NC5FGDPTONSFR6I2RT3UEV6UY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3268861180171584815=="

This is a multi-part message in MIME format.

--===============3268861180171584815==
Content-Type: multipart/alternative;
 boundary="b1_ZUkgZQkbRM4geBWDbiZS4mn4v8kvIwtnpDYlCs0Oo"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_ZUkgZQkbRM4geBWDbiZS4mn4v8kvIwtnpDYlCs0Oo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

\
I currently have a custom RFNOC module. When I try to initialize my block=
 however, I am unable to find it. I get an error that seems to match up w=
ith the block id I set on my module, but it still seems that it cannot be=
 found. This is the error that is shown=E2=80=A6

`[WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID 0xde30=
, 0xffff`

To test if my block was working properly, I used a NOC_ID used for the pr=
epackaged modules and it worked fine, but I would however like to use a s=
eperate NOC_ID for my own modules. I set the NOC ID in my yml file and bl=
ock_control.cpp file to 0xde30 as per the RFNOC 4.0 Introduction guide.

Thanks

Joe

--b1_ZUkgZQkbRM4geBWDbiZS4mn4v8kvIwtnpDYlCs0Oo
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p><br>I currently have a custom RFNOC module. When I try to=
 initialize my block however, I am unable to find it. I get an error that=
 seems to match up with the block id I set on my module, but it still see=
ms that it cannot be found. This is the error that is shown=E2=80=A6</p><=
p><code>[WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID=
 0xde30, 0xffff</code></p><p>To test if my block was working properly, I =
used a NOC_ID used for the prepackaged modules and it worked fine, but I =
would however like to use a seperate NOC_ID for my own modules. I set the=
 NOC ID in my yml file and block_control.cpp file to 0xde30 as per the RF=
NOC 4.0 Introduction guide.</p><p>Thanks</p><p>Joe</p>


--b1_ZUkgZQkbRM4geBWDbiZS4mn4v8kvIwtnpDYlCs0Oo--

--===============3268861180171584815==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3268861180171584815==--
