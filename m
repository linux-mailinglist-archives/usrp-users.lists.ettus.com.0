Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 538583F904B
	for <lists+usrp-users@lfdr.de>; Thu, 26 Aug 2021 23:48:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F33B63844B1
	for <lists+usrp-users@lfdr.de>; Thu, 26 Aug 2021 17:47:58 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 09CC5383CF2
	for <usrp-users@lists.ettus.com>; Thu, 26 Aug 2021 17:47:12 -0400 (EDT)
Date: Thu, 26 Aug 2021 21:47:12 +0000
To: usrp-users@lists.ettus.com
From: thebouleoffools@gmail.com
Message-ID: <NxJ8cGyEWaXtlNHPS3errsMmWpyBhNZs0roRxF9gA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: ff7d48dc-f52e-76ed-bb9a-e6ee287d6838@gmail.com
MIME-Version: 1.0
Message-ID-Hash: SB4XF3F2PYQLHT7UZMAUAQRXVV76D5FY
X-Message-ID-Hash: SB4XF3F2PYQLHT7UZMAUAQRXVV76D5FY
X-MailFrom: thebouleoffools@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Python documentation / interfacing with GPSDO
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SB4XF3F2PYQLHT7UZMAUAQRXVV76D5FY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2017703857003127230=="

This is a multi-part message in MIME format.

--===============2017703857003127230==
Content-Type: multipart/alternative;
 boundary="b1_NxJ8cGyEWaXtlNHPS3errsMmWpyBhNZs0roRxF9gA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_NxJ8cGyEWaXtlNHPS3errsMmWpyBhNZs0roRxF9gA
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

So actually what I=E2=80=99ve done is use the OpenEmbedded system to buil=
d my own SDK. This was both a fun and not a fun process. This way I can c=
ompile new packages for my radio and let it deal with the dependencies. S=
o far I=E2=80=99ve added influxdb, ntp, and gnss-sdr to my E320. I starte=
d with the instructions at https://github.com/carlesfernandez/oe-gnss-sdr=
-manifest, using the zeus yocto linux release, and have been hacking off =
the unnecessary bits (e.g. X11) to reduce the size. I still haven=E2=80=99=
t gotten it to where I=E2=80=99m comfortable loading the entire image it =
produces onto my radio, but I can at least copy the individual compiled t=
arballs of stuff I want out of the work directory, or use the new sdk wit=
h all the libraries I need.

--b1_NxJ8cGyEWaXtlNHPS3errsMmWpyBhNZs0roRxF9gA
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>So actually what I=E2=80=99ve done is use the OpenEmbedded system to b=
uild my own SDK. This was both a fun and not a fun process. This way I ca=
n compile new packages for my radio and let it deal with the dependencies=
. So far I=E2=80=99ve added influxdb, ntp, and gnss-sdr to my E320. I sta=
rted with the instructions at https://github.com/carlesfernandez/oe-gnss-=
sdr-manifest, using the zeus yocto linux release, and have been hacking o=
ff the unnecessary bits (e.g. X11) to reduce the size. I still haven=E2=80=
=99t gotten it to where I=E2=80=99m comfortable loading the entire image =
it produces onto my radio, but I can at least copy the individual compile=
d tarballs of stuff I want out of the work directory, or use the new sdk =
with all the libraries I need.</p>


--b1_NxJ8cGyEWaXtlNHPS3errsMmWpyBhNZs0roRxF9gA--

--===============2017703857003127230==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2017703857003127230==--
