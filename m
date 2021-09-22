Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 14BC0414EEE
	for <lists+usrp-users@lfdr.de>; Wed, 22 Sep 2021 19:19:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CFE063849E5
	for <lists+usrp-users@lfdr.de>; Wed, 22 Sep 2021 13:19:20 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 831D638418F
	for <usrp-users@lists.ettus.com>; Wed, 22 Sep 2021 13:18:31 -0400 (EDT)
Date: Wed, 22 Sep 2021 17:18:31 +0000
To: usrp-users@lists.ettus.com
From: thebouleoffools@gmail.com
Message-ID: <dzeo4lLK7Tl1pTALvjDmK5QNsJku8odrUY91o0AxO8@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: J5S75CQWTO3NBJZRUMNYBEQR6JMRHRSX
X-Message-ID-Hash: J5S75CQWTO3NBJZRUMNYBEQR6JMRHRSX
X-MailFrom: thebouleoffools@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Radio loopback / "scaling@OUTPUT_EDGE:0" error
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/J5S75CQWTO3NBJZRUMNYBEQR6JMRHRSX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2614563621447445845=="

This is a multi-part message in MIME format.

--===============2614563621447445845==
Content-Type: multipart/alternative;
 boundary="b1_dzeo4lLK7Tl1pTALvjDmK5QNsJku8odrUY91o0AxO8"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_dzeo4lLK7Tl1pTALvjDmK5QNsJku8odrUY91o0AxO8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I=E2=80=99m trying to do a simple repeater setup with my E320. I found th=
at there=E2=80=99s an example file that does essentially that, =E2=80=9Cr=
fnoc_radio_loopback.=E2=80=9D However, right out of the box, running this=
 file gives the error:

\[ERROR\] \[RFNOC::GRAPH::DETAIL\] Adding edge 0/DDC#0:0 -> 0/DUC#0:1 wit=
hout disabling property_propagation_active will lead to unresolvable grap=
h!

So I modified the file to do the connections manually and set =E2=80=9Csk=
ip_propagation" to true on that particular connection. When graph->commit=
 is called, I now get this error:

RuntimeError: AccessError: Attemping to read property =E2=80=98scaling@OU=
TPUT_EDGE:0=E2=80=99 before it was initialized!

I=E2=80=99m pretty stumped on this one. The only mention of setting a sca=
ling property is in some test programs, that call:

mock_source_term.set_edge_property<double>(=E2=80=9Cscaling=E2=80=9D, 1.0=
, {res_source_info::OUTPUT_EDGE, 0});

The DDC or DUC blocks do not have this method. Anything related to scalin=
g in the ddc_block_control appears to be protected or private. What am I =
doing wrong?

--b1_dzeo4lLK7Tl1pTALvjDmK5QNsJku8odrUY91o0AxO8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I=E2=80=99m trying to do a simple repeater setup with my E320. I found t=
hat there=E2=80=99s an example file that does essentially that, =E2=80=
=9Crfnoc_radio_loopback.=E2=80=9D However, right out of the box, running th=
is file gives the error:</p><p>[ERROR] [RFNOC::GRAPH::DETAIL] Adding edge 0=
/DDC#0:0 -&gt; 0/DUC#0:1 without disabling property_propagation_active will=
 lead to unresolvable graph!</p><p><br></p><p>So I modified the file to do =
the connections manually and set =E2=80=9Cskip_propagation" to true on that=
 particular connection. When graph-&gt;commit is called, I now get this err=
or:</p><p>RuntimeError: AccessError: Attemping to read property =E2=80=
=98scaling@OUTPUT_EDGE:0=E2=80=99 before it was initialized!</p><p>I=
=E2=80=99m pretty stumped on this one. The only mention of setting a scalin=
g property is in some test programs, that call:</p><p>mock_source_term.set_=
edge_property&lt;double&gt;(=E2=80=9Cscaling=E2=80=9D, 1.0, {res_source_inf=
o::OUTPUT_EDGE, 0});</p><p>The DDC or DUC blocks do not have this method. A=
nything related to scaling in the ddc_block_control appears to be protected=
 or private. What am I doing wrong?</p><p><br></p>

--b1_dzeo4lLK7Tl1pTALvjDmK5QNsJku8odrUY91o0AxO8--

--===============2614563621447445845==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2614563621447445845==--
