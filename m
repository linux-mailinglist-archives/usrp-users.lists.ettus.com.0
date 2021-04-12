Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE5535CF2A
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 19:04:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BC442384C12
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 13:04:15 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3685F3848DB
	for <usrp-users@lists.ettus.com>; Mon, 12 Apr 2021 13:03:27 -0400 (EDT)
Date: Mon, 12 Apr 2021 17:03:27 +0000
To: usrp-users@lists.ettus.com
From: paradis@kwesst.com
Message-ID: <ezDdaGlOKFC9wsh9ehlxUzpCqL3PXFenPTX7PB0uuc@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAAv0A=PQgiHED-hxZSVn1QUkwaK4x=d=cqprNiiFSDCLryjpWw@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: ID26HGCWFTS7WNJKWUEHJRZK5T2OFIJM
X-Message-ID-Hash: ID26HGCWFTS7WNJKWUEHJRZK5T2OFIJM
X-MailFrom: paradis@kwesst.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B205 mini-i isn't found by uhd_find_devices
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ID26HGCWFTS7WNJKWUEHJRZK5T2OFIJM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3177785288116132336=="

This is a multi-part message in MIME format.

--===============3177785288116132336==
Content-Type: multipart/alternative;
 boundary="b1_ezDdaGlOKFC9wsh9ehlxUzpCqL3PXFenPTX7PB0uuc"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_ezDdaGlOKFC9wsh9ehlxUzpCqL3PXFenPTX7PB0uuc
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks Dustin,=20

Did resetting the USB fix your problem?=20

I don=E2=80=99t think I=E2=80=99m having any USB issues per say, I can pl=
ug the B205 in and after doing an =E2=80=98lsusb=E2=80=99 I can see the d=
evice on the bus. The problem I=E2=80=99m having is that when I do a =E2=80=
=98uhd_find_devices=E2=80=99 it doesn=E2=80=99t find anything. My gut fee=
ling is telling me that there=E2=80=99s an issue with the hardware, but I=
=E2=80=99d like to exhaust any other possibilities before trying to debug=
 the actual B205 itself.

--b1_ezDdaGlOKFC9wsh9ehlxUzpCqL3PXFenPTX7PB0uuc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Thanks Dustin, </p><p>Did resetting the USB fix your problem? </p><p>I=
 don=E2=80=99t think I=E2=80=99m having any USB issues per say, I can plu=
g the B205 in and after doing an =E2=80=98lsusb=E2=80=99 I can see the de=
vice on the bus. The problem I=E2=80=99m having is that when I do a =E2=80=
=98uhd_find_devices=E2=80=99 it doesn=E2=80=99t find anything. My gut fee=
ling is telling me that there=E2=80=99s an issue with the hardware, but I=
=E2=80=99d like to exhaust any other possibilities before trying to debug=
 the actual B205 itself.</p>


--b1_ezDdaGlOKFC9wsh9ehlxUzpCqL3PXFenPTX7PB0uuc--

--===============3177785288116132336==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3177785288116132336==--
