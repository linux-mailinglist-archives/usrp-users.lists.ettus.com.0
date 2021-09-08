Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E47524040D8
	for <lists+usrp-users@lfdr.de>; Thu,  9 Sep 2021 00:03:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2000A384991
	for <lists+usrp-users@lfdr.de>; Wed,  8 Sep 2021 18:03:50 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A1E013844AF
	for <usrp-users@lists.ettus.com>; Wed,  8 Sep 2021 18:03:01 -0400 (EDT)
Date: Wed, 8 Sep 2021 22:03:01 +0000
To: usrp-users@lists.ettus.com
From: thebouleoffools@gmail.com
Message-ID: <5iMbsH0VEOSSZ26CAtQkrO8lhbL3xMRhQGGX68ZL0@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: FB78972D-B829-4AAA-9D7B-E34374B6B1B5@gmail.com
MIME-Version: 1.0
Message-ID-Hash: AHSOWCVDBYUWMO6YQNY6NHK4QSRILBQG
X-Message-ID-Hash: AHSOWCVDBYUWMO6YQNY6NHK4QSRILBQG
X-MailFrom: thebouleoffools@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Radio Application fails to run as service on E310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AHSOWCVDBYUWMO6YQNY6NHK4QSRILBQG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1742820314325538076=="

This is a multi-part message in MIME format.

--===============1742820314325538076==
Content-Type: multipart/alternative;
 boundary="b1_5iMbsH0VEOSSZ26CAtQkrO8lhbL3xMRhQGGX68ZL0"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_5iMbsH0VEOSSZ26CAtQkrO8lhbL3xMRhQGGX68ZL0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks for the tip, it helped me find what was ultimately an embarrassing=
 mistake. I=E2=80=99ll post the explanation in case it helps someone new =
in the future. By default, gnuradio generates a python script with a try/=
except block in main() that passes on EOF. The correct solution was to re=
place this block with a simple signal.pause() and make sure a signal hand=
ler was defined.

--b1_5iMbsH0VEOSSZ26CAtQkrO8lhbL3xMRhQGGX68ZL0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Thanks for the tip, it helped me find what was ultimately an embarrass=
ing mistake. I=E2=80=99ll post the explanation in case it helps someone n=
ew in the future. By default, gnuradio generates a python script with a t=
ry/except block in main() that passes on EOF. The correct solution was to=
 replace this block with a simple signal.pause() and make sure a signal h=
andler was defined.</p>


--b1_5iMbsH0VEOSSZ26CAtQkrO8lhbL3xMRhQGGX68ZL0--

--===============1742820314325538076==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1742820314325538076==--
