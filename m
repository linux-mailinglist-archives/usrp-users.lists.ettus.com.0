Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D0076FB6A
	for <lists+usrp-users@lfdr.de>; Fri,  4 Aug 2023 09:52:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 50A2F384B8B
	for <lists+usrp-users@lfdr.de>; Fri,  4 Aug 2023 03:52:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691135560; bh=LmA+1B8MrpeZ5B06wF83r9kqWXHTp4B0KnMZ/+mScPQ=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=p2yuczf7Sk+PA57uxhqhWyoNjjyT2hcJIUe05PzCsKWTqMpz4T60lF+2dL1Ck0uRm
	 948QrzDrJ9T2Yg3U64M43JyoLSSkW76msL6DmVFzx7s6zeakldSUgPZgGsxI22LqW2
	 CEu4tBcnRbNm+nJnKm3kMbRPB97c31pc/KkWSgrdAvB9ng7KJ7sxz/XAw6SbGvhbIQ
	 SpWfV+mt2Pjxh+un1cjuoPxXLBBYjLbbE0fDktZW8+OTjHCgYAl5t11JdeDsU/+TdY
	 OVNmWywgSpGVkmQHonxY3NR4jt863OxF6r1ZIsqFGr9Q/vLQENy9Nm7DgnPi1sHFqn
	 h8Uhez1cwF6kw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B902F380D06
	for <usrp-users@lists.ettus.com>; Fri,  4 Aug 2023 03:52:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691135524; bh=elEXXEsk/W00Mxib35wEBto57vIvuJkvf8OorQzX8zk=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=F6DjcLtV0vMulQlKlT3HrShQDBvhj0tDOhAZoGWbxb4KP3tkLnjH6VX+Mw4s9NAOB
	 zlUMrmiBZETzdI7Nm7PaEbPwFqxQKfd1tesroFGCRmq+bIEqoofD1Xy9UO7rmU6HoS
	 Amf0op6JsMVkkbZpKpG2YUu3KfpJnOUnJ335H0rM5Wj118Vsa+YkJlFunF/ACelj7h
	 0Nc2qmrzFqzdShkc9weKuZ15yRV40CUDdYZm62N4CBfZVDpHmlnY36f4VF0fhsKOSv
	 eaUenLEzfQZvuwzmxCQ6nrkH0H2UtonwcPrInRSZNtdwz3q87bPXMH4nMZFSp1P31U
	 mD0OC8sPefY/Q==
Date: Fri, 4 Aug 2023 07:52:04 +0000
To: usrp-users@lists.ettus.com
From: patrice.pajusco@imt-atlantique.fr
Message-ID: <tvI3kQ93WrU3mbpxrcoV8o8uSpkKuYLxfg3x1uY@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAEXYVK7sCxS1FtLndFoHkTGUqwU6Yr79JFyRiU-yCEehzf6c4Q@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: 4NK6YMCZQSVR3DEQSXI4OCJMXZHH4HR4
X-Message-ID-Hash: 4NK6YMCZQSVR3DEQSXI4OCJMXZHH4HR4
X-MailFrom: patrice.pajusco@imt-atlantique.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to have 10MHz on REF OUT with a master clock of 184.32 MHz
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4NK6YMCZQSVR3DEQSXI4OCJMXZHH4HR4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6238954017218582434=="

This is a multi-part message in MIME format.

--===============6238954017218582434==
Content-Type: multipart/alternative;
 boundary="b1_tvI3kQ93WrU3mbpxrcoV8o8uSpkKuYLxfg3x1uY"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_tvI3kQ93WrU3mbpxrcoV8o8uSpkKuYLxfg3x1uY
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Dear all,

I plan to use 2 USPRs to analyze LTE signal. One will use a GPSDO to have=
 a good clock and time reference. To have synchronization between them, t=
he second one will be set on external synchronization (ref out -> ref in,=
 for 10 MHz and PPS). A Master clock of 184 is recommended for LTE. Accor=
ding to previous answers of this post, this configuration is impossible. =
If the second USRP can be locked on 9.96 MHz, the received frequency will=
 be wrong. In practice (We have just tried), the synchronization fails =E2=
=80=9CError: RuntimeError: Reference Clock PLL failed to lock to external=
 source=E2=80=9D. Any idea of a backup plan ?

Best regards

Patrice

--b1_tvI3kQ93WrU3mbpxrcoV8o8uSpkKuYLxfg3x1uY
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Dear all,</p><p>I plan to use 2 USPRs to analyze LTE signal. One will =
use a GPSDO to have a good clock and time reference. To have synchronizat=
ion between them, the second one will be set on external synchronization =
(ref out -&gt; ref in, for 10 MHz and PPS). A Master clock of 184 is reco=
mmended for LTE. According to previous answers of this post, this configu=
ration is impossible. If the second USRP can be locked on 9.96 MHz, the r=
eceived frequency will be wrong. In practice (We have just tried), the sy=
nchronization fails =E2=80=9CError: RuntimeError: Reference Clock PLL fai=
led to lock to external source=E2=80=9D. Any idea of a backup plan ?</p><=
p>Best regards</p><p>Patrice</p>


--b1_tvI3kQ93WrU3mbpxrcoV8o8uSpkKuYLxfg3x1uY--

--===============6238954017218582434==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6238954017218582434==--
