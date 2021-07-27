Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4A73D793A
	for <lists+usrp-users@lfdr.de>; Tue, 27 Jul 2021 17:03:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F1C93384498
	for <lists+usrp-users@lfdr.de>; Tue, 27 Jul 2021 11:03:50 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B3FA0384088
	for <usrp-users@lists.ettus.com>; Tue, 27 Jul 2021 11:03:03 -0400 (EDT)
Date: Tue, 27 Jul 2021 15:03:03 +0000
To: usrp-users@lists.ettus.com
From: thebouleoffools@gmail.com
Message-ID: <dO1bnockdmpuUfNpqKVLsaENYthKcKKl5zIfLBlhd8@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 02485732-C5E9-4735-8A46-1DB9C6A3CBEC@gmail.com
MIME-Version: 1.0
Message-ID-Hash: EAFLQEWMYJMFIHD3K6JYOJOILAXT75XU
X-Message-ID-Hash: EAFLQEWMYJMFIHD3K6JYOJOILAXT75XU
X-MailFrom: thebouleoffools@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: available RFNoc blocks for UHD 4.
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EAFLQEWMYJMFIHD3K6JYOJOILAXT75XU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8275579646026521752=="

This is a multi-part message in MIME format.

--===============8275579646026521752==
Content-Type: multipart/alternative;
 boundary="b1_dO1bnockdmpuUfNpqKVLsaENYthKcKKl5zIfLBlhd8"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_dO1bnockdmpuUfNpqKVLsaENYthKcKKl5zIfLBlhd8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Ah, ok. Multiple problems producing the same error, but ultimately the la=
st one was that I had fat fingered my device to 1 instead of 0 at some po=
int, so the real problem was between the chair and keyboard. Now at least=
 that part is working, my next hurdle is I=E2=80=99m getting =E2=80=9CBad=
 CHDR header=E2=80=9D errors=E2=80=A6

There were several files I needed to update to get the new block pulled i=
nto the compile and grc module tree. I=E2=80=99ll note here that I didn=E2=
=80=99t use rfnocmodtool, and I=E2=80=99m adding all of my edits to the g=
r-ettus source. The CMakeLists.txt files of course, gr-ettus/swig/ettus_s=
wig.i, and gr-ettus/grc/ettus.tree.yml. I also had to add that python wra=
pper to the uhd source code and make similar inclusions, but all the othe=
r blocks appear to have that.

--b1_dO1bnockdmpuUfNpqKVLsaENYthKcKKl5zIfLBlhd8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Ah, ok. Multiple problems producing the same error, but ultimately the=
 last one was that I had fat fingered my device to 1 instead of 0 at some=
 point, so the real problem was between the chair and keyboard. Now at le=
ast that part is working, my next hurdle is I=E2=80=99m getting =E2=80=9C=
Bad CHDR header=E2=80=9D errors=E2=80=A6</p><p>There were several files I=
 needed to update to get the new block pulled into the compile and grc mo=
dule tree. I=E2=80=99ll note here that I didn=E2=80=99t use rfnocmodtool,=
 and I=E2=80=99m adding all of my edits to the gr-ettus source. The CMake=
Lists.txt files of course, gr-ettus/swig/ettus_swig.i, and gr-ettus/grc/e=
ttus.tree.yml. I also had to add that python wrapper to the uhd source co=
de and make similar inclusions, but all the other blocks appear to have t=
hat.</p>


--b1_dO1bnockdmpuUfNpqKVLsaENYthKcKKl5zIfLBlhd8--

--===============8275579646026521752==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8275579646026521752==--
