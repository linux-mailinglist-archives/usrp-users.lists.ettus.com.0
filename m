Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 891693D65AE
	for <lists+usrp-users@lfdr.de>; Mon, 26 Jul 2021 19:26:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7C1EC3853DB
	for <lists+usrp-users@lfdr.de>; Mon, 26 Jul 2021 13:26:58 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A7833384918
	for <usrp-users@lists.ettus.com>; Mon, 26 Jul 2021 13:26:12 -0400 (EDT)
Date: Mon, 26 Jul 2021 17:26:12 +0000
To: usrp-users@lists.ettus.com
From: thebouleoffools@gmail.com
Message-ID: <d5LUCmqe0G6EE2GePmSMi2mrDThZewZBsJCSmoOFo@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: C9129E7E-C27B-456F-AB01-1C25F7322316@gmail.com
MIME-Version: 1.0
Message-ID-Hash: UQ3WLBY5IUEWGES7C45HJCFBBS2SGUD3
X-Message-ID-Hash: UQ3WLBY5IUEWGES7C45HJCFBBS2SGUD3
X-MailFrom: thebouleoffools@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: available RFNoc blocks for UHD 4.
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UQ3WLBY5IUEWGES7C45HJCFBBS2SGUD3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4131543027259401703=="

This is a multi-part message in MIME format.

--===============4131543027259401703==
Content-Type: multipart/alternative;
 boundary="b1_d5LUCmqe0G6EE2GePmSMi2mrDThZewZBsJCSmoOFo"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_d5LUCmqe0G6EE2GePmSMi2mrDThZewZBsJCSmoOFo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Just to pile on to this, I=E2=80=99ve attempted to make a grc block for s=
plit stream. I=E2=80=99ve copied the structure of DDC and everything appe=
ars to compile and cross compile just fine for my e320. I used image buil=
der to put a split stream block on my fpga and verified its existence wit=
h the probe command. However, when I run my application I get the very de=
tailed error message:

File "/data/localinstall/usr/lib/python3.7/site-packages/ettus/ettus_swig=
.py", line 2034, in make

    return _ettus_swig.rfnoc_split_stream_make(graph, block_args, device_=
select, instance)

RuntimeError: Cannot find block!

which returns 0 Google results. I=E2=80=99m assuming I=E2=80=99ve missed =
some configuration setting or didn=E2=80=99t compile some file. Is there =
a guide somewhere that describes everything that must be included to get =
these blocks imported into gnuradio?

--b1_d5LUCmqe0G6EE2GePmSMi2mrDThZewZBsJCSmoOFo
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Just to pile on to this, I=E2=80=99ve attempted to make a grc block fo=
r split stream. I=E2=80=99ve copied the structure of DDC and everything a=
ppears to compile and cross compile just fine for my e320. I used image b=
uilder to put a split stream block on my fpga and verified its existence =
with the probe command. However, when I run my application I get the very=
 detailed error message:</p><p><br></p><p>File "/data/localinstall/usr/li=
b/python3.7/site-packages/ettus/ettus_swig.py", line 2034, in make</p><p>=
    return _ettus_swig.rfnoc_split_stream_make(graph, block_args, device_=
select, instance)</p><p>RuntimeError: Cannot find block!</p><p><br></p><p=
>which returns 0 Google results. I=E2=80=99m assuming I=E2=80=99ve missed=
 some configuration setting or didn=E2=80=99t compile some file. Is there=
 a guide somewhere that describes everything that must be included to get=
 these blocks imported into gnuradio?</p>


--b1_d5LUCmqe0G6EE2GePmSMi2mrDThZewZBsJCSmoOFo--

--===============4131543027259401703==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4131543027259401703==--
