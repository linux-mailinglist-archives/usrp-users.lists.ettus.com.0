Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 879A935E681
	for <lists+usrp-users@lfdr.de>; Tue, 13 Apr 2021 20:33:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 51C3A384695
	for <lists+usrp-users@lfdr.de>; Tue, 13 Apr 2021 14:33:44 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5D61538399D
	for <usrp-users@lists.ettus.com>; Tue, 13 Apr 2021 14:32:54 -0400 (EDT)
Date: Tue, 13 Apr 2021 18:32:54 +0000
To: usrp-users@lists.ettus.com
From: paradis@kwesst.com
Message-ID: <Rr42AwscUGNFDKWOrsIX0zhpA36roSXwZNM5fOhNI@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: a27d13db-8ed9-8f14-b59e-84a18aa9caed@ettus.com
MIME-Version: 1.0
Message-ID-Hash: KJDCROPCCOI2NGF33ZFS3OUOAPKGLSCQ
X-Message-ID-Hash: KJDCROPCCOI2NGF33ZFS3OUOAPKGLSCQ
X-MailFrom: paradis@kwesst.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B205 mini-i isn't found by uhd_find_devices
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KJDCROPCCOI2NGF33ZFS3OUOAPKGLSCQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4483696655293635288=="

This is a multi-part message in MIME format.

--===============4483696655293635288==
Content-Type: multipart/alternative;
 boundary="b1_Rr42AwscUGNFDKWOrsIX0zhpA36roSXwZNM5fOhNI"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Rr42AwscUGNFDKWOrsIX0zhpA36roSXwZNM5fOhNI
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Marcus, thanks for the response. So I tried to do what you suggested, =
but unfortunately it=E2=80=99s giving me and error, and google isn=E2=80=99=
t being helpful at all, maybe you=E2=80=99ve seen this before?

/usr/local/lib64/uhd/utils/b2xx_fx3_utils: symbol lookup error: /usr/loca=
l/lib64/uhd/utils/b2xx_fx3_utils: undefined symbol: _ZN10b200_iface16fx3_=
state_stringB5cxx11Eh

It seems like the b2xx_fx3_utils is looking for a symbol it can find, is =
there something else I need to do before using the B2xx_fx3_utils?

Thanks!

--b1_Rr42AwscUGNFDKWOrsIX0zhpA36roSXwZNM5fOhNI
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Marcus, thanks for the response. So I tried to do what you suggeste=
d, but unfortunately it=E2=80=99s giving me and error, and google isn=E2=80=
=99t being helpful at all, maybe you=E2=80=99ve seen this before?</p><p>/=
usr/local/lib64/uhd/utils/b2xx_fx3_utils: symbol lookup error: /usr/local=
/lib64/uhd/utils/b2xx_fx3_utils: undefined symbol: _ZN10b200_iface16fx3_s=
tate_stringB5cxx11Eh</p><p><br></p><p>It seems like the b2xx_fx3_utils is=
 looking for a symbol it can find, is there something else I need to do b=
efore using the B2xx_fx3_utils?</p><p>Thanks!</p><p><br></p>


--b1_Rr42AwscUGNFDKWOrsIX0zhpA36roSXwZNM5fOhNI--

--===============4483696655293635288==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4483696655293635288==--
