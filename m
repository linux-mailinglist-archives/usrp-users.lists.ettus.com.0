Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7932D33AD50
	for <lists+usrp-users@lfdr.de>; Mon, 15 Mar 2021 09:25:42 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 43739383963
	for <lists+usrp-users@lfdr.de>; Mon, 15 Mar 2021 04:25:41 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9993738324C
	for <usrp-users@lists.ettus.com>; Mon, 15 Mar 2021 04:24:38 -0400 (EDT)
Date: Mon, 15 Mar 2021 08:24:38 +0000
To: usrp-users@lists.ettus.com
Message-ID: <gJr0XjPr2gPHkgSpymM9xlqvquHS9nM7dp6dfOoORk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAKo1dg-ebX_Ofu2fQ2AdnR0eg1WQg00K3uTDCH2iRK1nWaTF6Q@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: HK4QHDHHY55M5KM2R3YJY3QCC4QWYTXR
X-Message-ID-Hash: HK4QHDHHY55M5KM2R3YJY3QCC4QWYTXR
X-MailFrom: serge.manigault@ingenico.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problems with UHD installation on Windows:
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HK4QHDHHY55M5KM2R3YJY3QCC4QWYTXR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Serge Manigault via USRP-users <usrp-users@lists.ettus.com>
Reply-To: serge.manigault@ingenico.com
Content-Type: multipart/mixed; boundary="===============4610318617095772997=="

This is a multi-part message in MIME format.

--===============4610318617095772997==
Content-Type: multipart/alternative;
 boundary="b1_gJr0XjPr2gPHkgSpymM9xlqvquHS9nM7dp6dfOoORk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_gJr0XjPr2gPHkgSpymM9xlqvquHS9nM7dp6dfOoORk
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Andreas,

I=E2=80=99m probably late for the response,

The problem comes from the MAX LENGTH of the Path. On some version of Win=
dows 10 it is 260 chars. On the most recent ones, it can be more.

There is a way to get a higher value for the max length of the system PAT=
H variable by editing the registery key :=20

Changing **HKEY_LOCAL_MACHINE\\SYSTEM\\CurrentControlSet\\Control\\FileSy=
stem\\LongPathsEnabled** to =E2=80=9C**1**=E2=80=9D.

You can find more information on Microsoft MSDN pages by searching **Long=
PathsEnabled** key

You may have initialy a short path when you first install the UHD 3.15, t=
hen with some other install, the path lenght has grown and when you have =
tryed again to setup UHD it was warning you.

Best regards,

--b1_gJr0XjPr2gPHkgSpymM9xlqvquHS9nM7dp6dfOoORk
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Andreas,</p><p>I=E2=80=99m probably late for the response,</p><p>Th=
e problem comes from the MAX LENGTH of the Path. On some version of Windo=
ws 10 it is 260 chars. On the most recent ones, it can be more.</p><p>The=
re is a way to get a higher value for the max length of the system PATH v=
ariable by editing the registery key : </p><p>Changing <strong>HKEY_LOCAL=
_MACHINE\SYSTEM\CurrentControlSet\Control\FileSystem\LongPathsEnabled</st=
rong> to =E2=80=9C<strong>1</strong>=E2=80=9D.</p><p>You can find more in=
formation on Microsoft MSDN pages by searching <strong>LongPathsEnabled</=
strong> key</p><p>You may have initialy a short path when you first insta=
ll the UHD 3.15, then with some other install, the path lenght has grown =
and when you have tryed again to setup UHD it was warning you.</p><p>Best=
 regards,</p>


--b1_gJr0XjPr2gPHkgSpymM9xlqvquHS9nM7dp6dfOoORk--

--===============4610318617095772997==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4610318617095772997==--
