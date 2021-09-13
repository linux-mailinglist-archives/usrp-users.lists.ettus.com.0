Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E95C7409EC0
	for <lists+usrp-users@lfdr.de>; Mon, 13 Sep 2021 23:02:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D3F31384FF0
	for <lists+usrp-users@lfdr.de>; Mon, 13 Sep 2021 17:02:49 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D56903844A4
	for <usrp-users@lists.ettus.com>; Mon, 13 Sep 2021 17:01:56 -0400 (EDT)
Date: Mon, 13 Sep 2021 21:01:56 +0000
To: usrp-users@lists.ettus.com
From: thebouleoffools@gmail.com
Message-ID: <a3jjiu71qg97hyRnyVdINQVPDgANJfp68tw4f2P4A@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 587cb507-aca9-abdf-ae11-807c6dcdee89@balister.org
MIME-Version: 1.0
Message-ID-Hash: TXLRXPD4OMM6ALCA42ZT646DKSEVZANI
X-Message-ID-Hash: TXLRXPD4OMM6ALCA42ZT646DKSEVZANI
X-MailFrom: thebouleoffools@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Building custom OE sdimg for E310 / can't find radio module
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TXLRXPD4OMM6ALCA42ZT646DKSEVZANI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7664275256283105061=="

This is a multi-part message in MIME format.

--===============7664275256283105061==
Content-Type: multipart/alternative;
 boundary="b1_a3jjiu71qg97hyRnyVdINQVPDgANJfp68tw4f2P4A"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_a3jjiu71qg97hyRnyVdINQVPDgANJfp68tw4f2P4A
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks for the help, I think that was it. I built UHD from a source I kno=
w was working and copied that over to my non-working custom built image. =
Everything appears to be working now. Looking through my bitbake files, i=
t does appear that UHD isn=E2=80=99t being built with MPM support.

--b1_a3jjiu71qg97hyRnyVdINQVPDgANJfp68tw4f2P4A
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Thanks for the help, I think that was it. I built UHD from a source I =
know was working and copied that over to my non-working custom built imag=
e. Everything appears to be working now. Looking through my bitbake files=
, it does appear that UHD isn=E2=80=99t being built with MPM support.</p>


--b1_a3jjiu71qg97hyRnyVdINQVPDgANJfp68tw4f2P4A--

--===============7664275256283105061==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7664275256283105061==--
