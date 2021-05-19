Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C0059389396
	for <lists+usrp-users@lfdr.de>; Wed, 19 May 2021 18:23:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A9270385FE6
	for <lists+usrp-users@lfdr.de>; Wed, 19 May 2021 12:23:38 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E4B18385480
	for <usrp-users@lists.ettus.com>; Wed, 19 May 2021 12:22:45 -0400 (EDT)
Date: Wed, 19 May 2021 16:22:45 +0000
To: usrp-users@lists.ettus.com
From: thebouleoffools@gmail.com
Message-ID: <rc4kTepogsp0h7qsQ2DxFXrYtdlGMrjWmzlKOBHPK8@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: MIJLSPIRXYERKKXVAHKXIS3Q3M5E4422
X-Message-ID-Hash: MIJLSPIRXYERKKXVAHKXIS3Q3M5E4422
X-MailFrom: thebouleoffools@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Cross-compile program size for e320.
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MIJLSPIRXYERKKXVAHKXIS3Q3M5E4422/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3153471938903621650=="

This is a multi-part message in MIME format.

--===============3153471938903621650==
Content-Type: multipart/alternative;
 boundary="b1_rc4kTepogsp0h7qsQ2DxFXrYtdlGMrjWmzlKOBHPK8"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_rc4kTepogsp0h7qsQ2DxFXrYtdlGMrjWmzlKOBHPK8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

After much pain and many compile errors, I finally was able to get uhd, g=
nuradio, and gr-ettus cross compiled for my e320. I then found out that t=
he cumulative size of all of those is about 1.6G, and my radio only has 6=
00M of free space. UHD alone, after turning off support for everything bu=
t the E320, comes out to around 300M. Forget about gnuradio. I just follo=
wed the =E2=80=9CSoftware development on the E3xx USRP=E2=80=9D guide whi=
ch got me to this point.

So my questions are: is there a problem with build environment that is ca=
using these builds to come out huge? Is the guide just out of date and no=
t representative of UHD v4 and gnuradio 3.8?

Also curious - why do I not see any mention of cross compiling as of late=
? All the guides, workshops, posts, etc that I can find focus on RFNOC an=
d not so much how to get gnuradio libraries onto the device.

--b1_rc4kTepogsp0h7qsQ2DxFXrYtdlGMrjWmzlKOBHPK8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>After much pain and many compile errors, I finally was able to get uhd=
, gnuradio, and gr-ettus cross compiled for my e320. I then found out tha=
t the cumulative size of all of those is about 1.6G, and my radio only ha=
s 600M of free space. UHD alone, after turning off support for everything=
 but the E320, comes out to around 300M. Forget about gnuradio. I just fo=
llowed the =E2=80=9CSoftware development on the E3xx USRP=E2=80=9D guide =
which got me to this point.</p><p><br></p><p>So my questions are: is ther=
e a problem with build environment that is causing these builds to come o=
ut huge? Is the guide just out of date and not representative of UHD v4 a=
nd gnuradio 3.8?</p><p><br></p><p>Also curious - why do I not see any men=
tion of cross compiling as of late? All the guides, workshops, posts, etc=
 that I can find focus on RFNOC and not so much how to get gnuradio libra=
ries onto the device. </p>


--b1_rc4kTepogsp0h7qsQ2DxFXrYtdlGMrjWmzlKOBHPK8--

--===============3153471938903621650==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3153471938903621650==--
