Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE3D774137
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 19:16:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 90926384689
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 13:16:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691515013; bh=8bnbrB01vFC7oP36NKKSrj69Pdk4+vgVZGn0A/N+y8w=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=QEWqzYG22alXQe1JuiPf7g9xH088L05t/qc+o/87rxVaANO549qbYDBOMvittDLtp
	 wjS4u1cDd2unLr/cvSsUSZ1B/jTkV7RzLGGHmhRQL7NBWe93BnfY2I8VcD1iNkvcGS
	 Uye+76KXRqBwEABGQCB8eF2YI4WUSV6q2dn/zqxnaDpwGvanK20KNRV/kerSVVnzXZ
	 wz3CwU1FVcczF9HjiTcn7JXeMf4GbNYptJKSsPawnu4woNarwKzjIZCZQ/xvSaJSap
	 guAadTOr7K+WZr/vAOlydhjIbnyGdRYDhPffrSKpsbwS0y94dsCn16TxrSTZ+3J3BX
	 OZYg43C6oXPCQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B77823800AE
	for <usrp-users@lists.ettus.com>; Tue,  8 Aug 2023 13:16:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691514980; bh=G1Jglk3OjRRE3yXMAcqWMGgDP3ewzH58NXLVoGGsjuo=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=ueR0WWPrM90xZHgizeXsCD3YKYo/3MNcz48G3eFt4/lYnqDr9UpbmVZbAOdv6XNax
	 4D9syhWoIlYpQmqxVvLyTafFSA/JGwDne7iMaKOIEIjtOrtM66IYVBdkFJVTSS/McW
	 maGND3huHjsTCDpAf6cgG+sckBDhFzkV8gB8x6TN5eWEEFPR6o9VKBl4vKx3GNwDT3
	 eWjacu41HdqdWAyqFcS1hvE4Hjnwzna/xlhJfWppK+M6uZO+fVRnNNihxZjlt3Ibvb
	 eHqXFg5XavTIxB1fa+B3f5MuRfMFbGNIE0Rzk6/ny46HwSKrMO7VzRbSCB9AY4pw+l
	 6wTVsqZIq1r0Q==
Date: Tue, 8 Aug 2023 17:16:20 +0000
To: usrp-users@lists.ettus.com
From: shapkiquarry@gmail.com
Message-ID: <fgdt0yZZ0s12IOXmLShFCNjHqQWREy9mP1TlsZcPno@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 33990667-b547-dc4b-8e98-649b560df3df@gmail.com
MIME-Version: 1.0
Message-ID-Hash: VESD5AZ3M5JXNX6VTPQWFTZCVBKSAC4R
X-Message-ID-Hash: VESD5AZ3M5JXNX6VTPQWFTZCVBKSAC4R
X-MailFrom: shapkiquarry@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: What is the power socket on an Octoclock CDA-2990?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VESD5AZ3M5JXNX6VTPQWFTZCVBKSAC4R/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1839418692882425849=="

This is a multi-part message in MIME format.

--===============1839418692882425849==
Content-Type: multipart/alternative;
 boundary="b1_fgdt0yZZ0s12IOXmLShFCNjHqQWREy9mP1TlsZcPno"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_fgdt0yZZ0s12IOXmLShFCNjHqQWREy9mP1TlsZcPno
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Marcus,

Thank you for a response. But I have been hunting down a barrel connector=
 for over a week.  I have searched all of digikey, mouser, and amazon.  I=
 have already bought and received a barrel connector which I purchased fr=
om Ebay, and it was too wide for this socket.  I am currently buying vari=
ous connectors with =E2=80=9Clong barrel=E2=80=9D  versus =E2=80=9Cshort =
barrel=E2=80=9D and simply shooting in the dark now.  =20

If anyone has any definitive datasheets on this with actual specification=
s, please let me know.

--b1_fgdt0yZZ0s12IOXmLShFCNjHqQWREy9mP1TlsZcPno
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello Marcus,</p><p>Thank you for a response. But I have been hunting =
down a barrel connector for over a week.  I have searched all of digikey,=
 mouser, and amazon.  I have already bought and received a barrel connect=
or which I purchased from Ebay, and it was too wide for this socket.  I a=
m currently buying various connectors with =E2=80=9Clong barrel=E2=80=9D =
 versus =E2=80=9Cshort barrel=E2=80=9D and simply shooting in the dark no=
w.   </p><p>If anyone has any definitive datasheets on this with actual s=
pecifications, please let me know.  </p>


--b1_fgdt0yZZ0s12IOXmLShFCNjHqQWREy9mP1TlsZcPno--

--===============1839418692882425849==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1839418692882425849==--
