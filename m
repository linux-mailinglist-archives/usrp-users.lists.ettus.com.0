Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D1EF4405FAA
	for <lists+usrp-users@lfdr.de>; Fri, 10 Sep 2021 00:37:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 26692384A3B
	for <lists+usrp-users@lfdr.de>; Thu,  9 Sep 2021 18:37:38 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 06686384593
	for <usrp-users@lists.ettus.com>; Thu,  9 Sep 2021 18:34:58 -0400 (EDT)
Date: Thu, 9 Sep 2021 22:34:58 +0000
To: usrp-users@lists.ettus.com
From: thebouleoffools@gmail.com
Message-ID: <Ih8eoc07mmOUbogUXhjy7FeAJ9MmHhU7aki35h9NU@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: IeiNwyn5psgTn0yc2Ve6JbmYvw3NaZ51NGxVyJ3Arkw@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: OAGTPXPBH437T73DATCYBSVM7YG7ROKZ
X-Message-ID-Hash: OAGTPXPBH437T73DATCYBSVM7YG7ROKZ
X-MailFrom: thebouleoffools@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Disabling property_propagation_active - [ERROR] [RFNOC::GRAPH::DETAIL]
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OAGTPXPBH437T73DATCYBSVM7YG7ROKZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7333957705482924577=="

This is a multi-part message in MIME format.

--===============7333957705482924577==
Content-Type: multipart/alternative;
 boundary="b1_Ih8eoc07mmOUbogUXhjy7FeAJ9MmHhU7aki35h9NU"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Ih8eoc07mmOUbogUXhjy7FeAJ9MmHhU7aki35h9NU
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I have also run into this issue and thought it was just a gnuradio issue.=
 I tried setting the last parameter of connect() to True, but it had no e=
ffect. I then found that there was a loopback cpp example provided by the=
 uhd library. Well, that gives the same error. Is this a =E2=80=9Cfeature=
=E2=80=9D that has been introduced in the new versions of uhd?

--b1_Ih8eoc07mmOUbogUXhjy7FeAJ9MmHhU7aki35h9NU
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I have also run into this issue and thought it was just a gnuradio iss=
ue. I tried setting the last parameter of connect() to True, but it had n=
o effect. I then found that there was a loopback cpp example provided by =
the uhd library. Well, that gives the same error. Is this a =E2=80=9Cfeat=
ure=E2=80=9D that has been introduced in the new versions of uhd?</p>


--b1_Ih8eoc07mmOUbogUXhjy7FeAJ9MmHhU7aki35h9NU--

--===============7333957705482924577==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7333957705482924577==--
