Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E32A74C1933
	for <lists+usrp-users@lfdr.de>; Wed, 23 Feb 2022 18:01:41 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6E1F6384E24
	for <lists+usrp-users@lfdr.de>; Wed, 23 Feb 2022 12:01:40 -0500 (EST)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E04D93812DB
	for <usrp-users@lists.ettus.com>; Wed, 23 Feb 2022 12:00:41 -0500 (EST)
Date: Wed, 23 Feb 2022 17:00:41 +0000
To: usrp-users@lists.ettus.com
From: zlika_ese@hotmail.com
Message-ID: <fupwrwahRapfiSvxw6o9IskW3A3hWdRACJCUT1egWo@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAB__hTSf7Ms2=d1nNaE=woB+7bOYv_ZZWereBrTFFLO3p2cLyA@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: PDXVXPYQYMSSOCSZ7DMD6USBVCVLOLM2
X-Message-ID-Hash: PDXVXPYQYMSSOCSZ7DMD6USBVCVLOLM2
X-MailFrom: zlika_ese@hotmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Overflows "O" messages with USRP X300
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PDXVXPYQYMSSOCSZ7DMD6USBVCVLOLM2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2252061309874144458=="

This is a multi-part message in MIME format.

--===============2252061309874144458==
Content-Type: multipart/alternative;
 boundary="b1_fupwrwahRapfiSvxw6o9IskW3A3hWdRACJCUT1egWo"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_fupwrwahRapfiSvxw6o9IskW3A3hWdRACJCUT1egWo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks for your answer.

I tried to use benchmark_rate, and I don=E2=80=99t have any sample loss a=
t 200MS/s.

On GnuRadio with a very simple flowgraph (USRP Source -> Null Sink) I sti=
ll have very regular (every few seconds) overflows.

In both cases, the CPU load of each core never goes over \~25%.

Is there any particular performance tips to know on GnuRadio (e.g. playin=
g with the min/max output buffer sizes of the blocks) to optimize the thr=
oughput?

--b1_fupwrwahRapfiSvxw6o9IskW3A3hWdRACJCUT1egWo
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Thanks for your answer.</p><p>I tried to use benchmark_rate, and I don=
=E2=80=99t have any sample loss at 200MS/s.</p><p>On GnuRadio with a very=
 simple flowgraph (USRP Source -&gt; Null Sink) I still have very regular=
 (every few seconds) overflows.</p><p>In both cases, the CPU load of each=
 core never goes over ~25%.</p><p>Is there any particular performance tip=
s to know on GnuRadio (e.g. playing with the min/max output buffer sizes =
of the blocks) to optimize the throughput?</p>


--b1_fupwrwahRapfiSvxw6o9IskW3A3hWdRACJCUT1egWo--

--===============2252061309874144458==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2252061309874144458==--
