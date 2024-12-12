Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DF2079EE6BB
	for <lists+usrp-users@lfdr.de>; Thu, 12 Dec 2024 13:29:30 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 287F43860B3
	for <lists+usrp-users@lfdr.de>; Thu, 12 Dec 2024 07:29:30 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1734006570; bh=MCn3nnWRlgchdkp9uiG86jBrKMHcQ5+dswyxxdhUSUc=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=VwAKSyQWBW4gO/SB7/FteXHQOu9VFnHxJ/sMAP42mNPCh/3uQBSSThee8QA69sld7
	 wr7sf8GKRLTy1OXi7sbkaFk9tS6CaHI1ZH9CNq6bbUUhAY6HZB2rG7sYso6fVCFKdi
	 INthWzWjR6xi4H9ZYydtRCC/xqQmX4VBvm5YB/FtP9yF4qzVgAS433RnFk+danig2d
	 DVMDkGsRbfqmvqRzgAgJYRCw74o9dNWsiJO5GNT9VXxauyRj1hqMhWlxCG8pHbWiR6
	 33oQLmC42UPSndXf+YtJXhqrYOdnjz1QJeAMvAjyTJ7YHI1SaXxp6eh7K5Df0oahha
	 CFb6aRTyXOcFQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 453DC385EDB
	for <usrp-users@lists.ettus.com>; Thu, 12 Dec 2024 07:28:42 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1734006522; bh=SMFIJRmF3dhijcVi5YzWXLXV/bxiFCr4wFgeMhqdI2k=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Xmg0Lr6Rg42azKCDHb1o5CmvCLWMYhL1LDp9sIYX8s2rjYAPdLOHVlnQqxEsGCj2Z
	 zSEI7OrgvOMcWs5nZxpP1wku9Kevom/0/L68n4KA/+0idkDDp+et9BAkUMDu3GUeIx
	 AMpPj+JPllEHK5HSP6996K7fANrTBv58sOKp6DSeSOCNGW6TyAaxL7l3NE4kJrlIgL
	 0c7kIWdmHVeRhDe6VD1jBqZuiq6xUV4ihc5lW2pGI0AoCPNMrE4W/eX3Th7qmBHB3p
	 +7MCbZsQr//gwotpqj9qLk5t/QSRj2bFJmsznEgrPygi97m34AujdUYYp6fOaElUwX
	 /0jZcU3/ovMwQ==
Date: Thu, 12 Dec 2024 12:28:42 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <znrImlFMrZhsFpMfacg1Pzg146wgKPg5GykuuNms@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: wUQ5bzv9XKMy12Km8Wc562AQ3pqlQlJjJt7Q9XGcciw@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: ZOKQVPH6XPAYMDRUZ37ICHPOAVN2UIEO
X-Message-ID-Hash: ZOKQVPH6XPAYMDRUZ37ICHPOAVN2UIEO
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Triggering of Rx synchronously with Tx in RFNoC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZOKQVPH6XPAYMDRUZ37ICHPOAVN2UIEO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6387378056289798965=="

This is a multi-part message in MIME format.

--===============6387378056289798965==
Content-Type: multipart/alternative;
 boundary="b1_znrImlFMrZhsFpMfacg1Pzg146wgKPg5GykuuNms"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_znrImlFMrZhsFpMfacg1Pzg146wgKPg5GykuuNms
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello All,

I=E2=80=99ve got an update regarding synchronization inside of FPGA betwe=
en Tx and Rx after overflows.

I=E2=80=99ve checked that with measurements and there was no synchronizat=
ion loss between replay block working on Tx side and our RFNoC block that=
 selects samples on the Rx side, which is inserted between DDC and Rx str=
eamer. Which is great.

Only thing that is not obvious yet is how to deal with data loss on the t=
ransport. We have some way to compute number of lost samples based on tim=
estamps and account for that in the program working on the PC. However ou=
r RFNoC block doesn=E2=80=99t always set the timestamp correctly - when t=
imestamp is attached to one of dropped samples timestamps are incorrect. =
So the computation of number of lost samples based on timestamps is not r=
eliable. I think keep_one_in_n block has the same issue.

We can get around this issue with some hack that is good enough for us, b=
ut it would be better to have a solution that works in general case.

Best Regards,\
Piotr Krysik

--b1_znrImlFMrZhsFpMfacg1Pzg146wgKPg5GykuuNms
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello All,</p><p>I=E2=80=99ve got an update regarding synchronization in=
side of FPGA between Tx and Rx after overflows.</p><p>I=E2=80=99ve checked =
that with measurements and there was no synchronization loss between replay=
 block working on Tx side and our RFNoC block that selects samples on the R=
x side, which is inserted between DDC and Rx streamer. Which is great.</p><=
p>Only thing that is not obvious yet is how to deal with data loss on the t=
ransport. We have some way to compute number of lost samples based on times=
tamps and account for that in the program working on the PC. However our RF=
NoC block doesn=E2=80=99t always set the timestamp correctly - when timesta=
mp is attached to one of dropped samples timestamps are incorrect. So the c=
omputation of number of lost samples based on timestamps is not reliable. I=
 think keep_one_in_n block has the same issue.</p><p>We can get around this=
 issue with some hack that is good enough for us, but it would be better to=
 have a solution that works in general case.</p><p>Best Regards,<br>Piotr K=
rysik</p>

--b1_znrImlFMrZhsFpMfacg1Pzg146wgKPg5GykuuNms--

--===============6387378056289798965==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6387378056289798965==--
