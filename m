Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D587B42A40B
	for <lists+usrp-users@lfdr.de>; Tue, 12 Oct 2021 14:11:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 21A08384672
	for <lists+usrp-users@lfdr.de>; Tue, 12 Oct 2021 08:11:25 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B05C7383EF9
	for <usrp-users@lists.ettus.com>; Tue, 12 Oct 2021 08:10:37 -0400 (EDT)
Date: Tue, 12 Oct 2021 12:10:37 +0000
To: usrp-users@lists.ettus.com
From: jason@gardettoengineering.com
Message-ID: <rVaPCM2KeURSjfYKKWUSY3y8Svgy14KANWbuab1sJrg@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 73927ff1-13f0-f5e6-b183-fd243f66de6e@gmail.com
MIME-Version: 1.0
Message-ID-Hash: E6OKKZD6OVDUEVNMBEVAMWF3KMFWIL63
X-Message-ID-Hash: E6OKKZD6OVDUEVNMBEVAMWF3KMFWIL63
X-MailFrom: jason@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Possible to change the name of an N320?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/E6OKKZD6OVDUEVNMBEVAMWF3KMFWIL63/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5231832449033094873=="

This is a multi-part message in MIME format.

--===============5231832449033094873==
Content-Type: multipart/alternative;
 boundary="b1_rVaPCM2KeURSjfYKKWUSY3y8Svgy14KANWbuab1sJrg"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_rVaPCM2KeURSjfYKKWUSY3y8Svgy14KANWbuab1sJrg
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Bingo!  This was it.\
The file was actually located in =E2=80=9C/sbin=E2=80=9D but I could see =
that it first checks for a file called /data/network/hostname.  If it is =
present, it sets the hostname to whatever is in that file.  If it isn=E2=80=
=99t there, it does the default hostname. I created the file and on reboo=
t it uses that name.

Thanks!

--b1_rVaPCM2KeURSjfYKKWUSY3y8Svgy14KANWbuab1sJrg
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Bingo!  This was it.<br>The file was actually located in =E2=80=9C/sbi=
n=E2=80=9D but I could see that it first checks for a file called /data/n=
etwork/hostname.  If it is present, it sets the hostname to whatever is i=
n that file.  If it isn=E2=80=99t there, it does the default hostname. I =
created the file and on reboot it uses that name.</p><p>Thanks!</p>


--b1_rVaPCM2KeURSjfYKKWUSY3y8Svgy14KANWbuab1sJrg--

--===============5231832449033094873==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5231832449033094873==--
