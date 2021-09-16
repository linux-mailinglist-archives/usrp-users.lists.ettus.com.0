Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F90340EA35
	for <lists+usrp-users@lfdr.de>; Thu, 16 Sep 2021 20:47:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 74934385477
	for <lists+usrp-users@lfdr.de>; Thu, 16 Sep 2021 14:47:11 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D34DC3843C6
	for <usrp-users@lists.ettus.com>; Thu, 16 Sep 2021 14:46:20 -0400 (EDT)
Date: Thu, 16 Sep 2021 18:46:20 +0000
To: usrp-users@lists.ettus.com
From: thebouleoffools@gmail.com
Message-ID: <WZ8PXImNOWNOVzfW4wCKhzGgsiqx3uGtZYXQsQ128@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: tJVYPT2ujlItsctGnpS20Bowmr4IbLmcGPzK7dF7E@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: D57KDBGGTRJX5D3UODV2GDH6GV36UX5X
X-Message-ID-Hash: D57KDBGGTRJX5D3UODV2GDH6GV36UX5X
X-MailFrom: thebouleoffools@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Building MPM, UHD 4.1 for E320
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/D57KDBGGTRJX5D3UODV2GDH6GV36UX5X/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8158924502103394906=="

This is a multi-part message in MIME format.

--===============8158924502103394906==
Content-Type: multipart/alternative;
 boundary="b1_WZ8PXImNOWNOVzfW4wCKhzGgsiqx3uGtZYXQsQ128"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_WZ8PXImNOWNOVzfW4wCKhzGgsiqx3uGtZYXQsQ128
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I think maybe I made progress by running the build multiple times, but no=
w when I try to start up the usrp-hwd service, I get:

Traceback (most recent call last):

  File "/usr/bin/usrp_hwd.py", line 15, in <module>

    import usrp_mpm as mpm

  File "/usr/lib/python3.7/site-packages/usrp_mpm/__init__.py", line 19, =
in <module>

    from . import libpyusrp_periphs as lib

ImportError: /usr/lib/python3.7/site-packages/usrp_mpm/libpyusrp_periphs.=
so: undefined symbol: _ZTIN3uhd16filter_info_baseE

I guess I=E2=80=99ll just switch back to 4.0 for now.

--b1_WZ8PXImNOWNOVzfW4wCKhzGgsiqx3uGtZYXQsQ128
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I think maybe I made progress by running the build multiple times, but=
 now when I try to start up the usrp-hwd service, I get:</p><p>Traceback =
(most recent call last):</p><p>  File "/usr/bin/usrp_hwd.py", line 15, in=
 &lt;module&gt;</p><p>    import usrp_mpm as mpm</p><p>  File "/usr/lib/p=
ython3.7/site-packages/usrp_mpm/__init__.py", line 19, in &lt;module&gt;<=
/p><p>    from . import libpyusrp_periphs as lib</p><p>ImportError: /usr/=
lib/python3.7/site-packages/usrp_mpm/libpyusrp_periphs.so: undefined symb=
ol: _ZTIN3uhd16filter_info_baseE</p><p><br></p><p>I guess I=E2=80=99ll ju=
st switch back to 4.0 for now.</p><p><br></p>


--b1_WZ8PXImNOWNOVzfW4wCKhzGgsiqx3uGtZYXQsQ128--

--===============8158924502103394906==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8158924502103394906==--
