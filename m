Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BC55335E6B8
	for <lists+usrp-users@lfdr.de>; Tue, 13 Apr 2021 20:57:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9EC24384974
	for <lists+usrp-users@lfdr.de>; Tue, 13 Apr 2021 14:57:40 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 50AFD384065
	for <usrp-users@lists.ettus.com>; Tue, 13 Apr 2021 14:56:53 -0400 (EDT)
Date: Tue, 13 Apr 2021 18:56:53 +0000
To: usrp-users@lists.ettus.com
From: paradis@kwesst.com
Message-ID: <2LAxAiowGrQrWOvNMdsu6nT7C6cpS5Ns368Jjsc1Ga4@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 7C43CCBD-0058-4D7B-B832-962D6B1337E2@gmail.com
MIME-Version: 1.0
Message-ID-Hash: UYDQXNNMUWHGNHJR5F3W6X43PKJCZ36V
X-Message-ID-Hash: UYDQXNNMUWHGNHJR5F3W6X43PKJCZ36V
X-MailFrom: paradis@kwesst.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B205 mini-i isn't found by uhd_find_devices
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UYDQXNNMUWHGNHJR5F3W6X43PKJCZ36V/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9069157699713961890=="

This is a multi-part message in MIME format.

--===============9069157699713961890==
Content-Type: multipart/alternative;
 boundary="b1_2LAxAiowGrQrWOvNMdsu6nT7C6cpS5Ns368Jjsc1Ga4"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_2LAxAiowGrQrWOvNMdsu6nT7C6cpS5Ns368Jjsc1Ga4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Marcus, I originally build the UHD without the 64bit option, then I re=
built it with the 64bit on, but I didn=E2=80=99t uninstall the first UHD =
build. That might be causing some issues. Maybe I=E2=80=99ll do a clean i=
nstall and try again.=20

Also, yes, I did a =E2=80=98sudo ldconfig=E2=80=99 after the build/instal=
l.

Thanks, hopefully tomorrow I=E2=80=99ll have some success.

--b1_2LAxAiowGrQrWOvNMdsu6nT7C6cpS5Ns368Jjsc1Ga4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Marcus, I originally build the UHD without the 64bit option, then I=
 rebuilt it with the 64bit on, but I didn=E2=80=99t uninstall the first U=
HD build. That might be causing some issues. Maybe I=E2=80=99ll do a clea=
n install and try again. </p><p>Also, yes, I did a =E2=80=98sudo ldconfig=
=E2=80=99 after the build/install.</p><p>Thanks, hopefully tomorrow I=E2=80=
=99ll have some success.</p>


--b1_2LAxAiowGrQrWOvNMdsu6nT7C6cpS5Ns368Jjsc1Ga4--

--===============9069157699713961890==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9069157699713961890==--
