Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D3BE35343A
	for <lists+usrp-users@lfdr.de>; Sat,  3 Apr 2021 15:59:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 081B1384191
	for <lists+usrp-users@lfdr.de>; Sat,  3 Apr 2021 09:59:56 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A3310383D13
	for <usrp-users@lists.ettus.com>; Sat,  3 Apr 2021 09:59:06 -0400 (EDT)
Date: Sat, 3 Apr 2021 13:59:06 +0000
To: usrp-users@lists.ettus.com
From: pageheller@gmail.com
Message-ID: <VzOXFcDgpLQrzie4B8oLBWdmeURHe7Je39ATuwbCJvM@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 88b0297dc16541e896eb4bac4878105c@boeing.com
MIME-Version: 1.0
Message-ID-Hash: CI7XALBALBYJLICCV6E2DA2IIVCKUFSK
X-Message-ID-Hash: CI7XALBALBYJLICCV6E2DA2IIVCKUFSK
X-MailFrom: pageheller@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problem with interfacing Raspberry Pi 4 to USRP B210 with Python API
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CI7XALBALBYJLICCV6E2DA2IIVCKUFSK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3965977374718537361=="

This is a multi-part message in MIME format.

--===============3965977374718537361==
Content-Type: multipart/alternative;
 boundary="b1_VzOXFcDgpLQrzie4B8oLBWdmeURHe7Je39ATuwbCJvM"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_VzOXFcDgpLQrzie4B8oLBWdmeURHe7Je39ATuwbCJvM
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Ken and Branden, I have UHD running on a Raspberry Pi 4 B 8Gb. It was a q=
uite tedious install. It wasn=E2=80=99t missing 4-5 dependencies, but 20-=
30. It took me 2 weeks, 8-hours a day to figure this out. I am operating =
on the Raspberry Pi OS (formerly called Raspian). And, of course, as they=
 upgrade the OS, this process will only be good for a short period of tim=
e.

One caveat; the pi USB 3.0 interface can=E2=80=99t quite keep up with the=
 B-210 and I get an overflow when capturing 20MSPS on 2 channels at about=
 500k samples. I don=E2=80=99t know if this is hardware or software, but =
if anyone knows of a solution, I=E2=80=99m all ears. Having said that, I =
can consistently and reliably capture 400-500k samples sized files.

I=E2=80=99d be happy to share the install instructions. They are lengthy.=
  -page

--b1_VzOXFcDgpLQrzie4B8oLBWdmeURHe7Je39ATuwbCJvM
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Ken and Branden, I have UHD running on a Raspberry Pi 4 B 8Gb. It was =
a quite tedious install. It wasn=E2=80=99t missing 4-5 dependencies, but =
20-30. It took me 2 weeks, 8-hours a day to figure this out. I am operati=
ng on the Raspberry Pi OS (formerly called Raspian). And, of course, as t=
hey upgrade the OS, this process will only be good for a short period of =
time.</p><p>One caveat; the pi USB 3.0 interface can=E2=80=99t quite keep=
 up with the B-210 and I get an overflow when capturing 20MSPS on 2 chann=
els at about 500k samples. I don=E2=80=99t know if this is hardware or so=
ftware, but if anyone knows of a solution, I=E2=80=99m all ears. Having s=
aid that, I can consistently and reliably capture 400-500k samples sized =
files.</p><p>I=E2=80=99d be happy to share the install instructions. They=
 are lengthy.  -page</p>


--b1_VzOXFcDgpLQrzie4B8oLBWdmeURHe7Je39ATuwbCJvM--

--===============3965977374718537361==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3965977374718537361==--
