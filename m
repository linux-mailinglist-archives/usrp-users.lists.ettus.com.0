Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9967D3D694B
	for <lists+usrp-users@lfdr.de>; Tue, 27 Jul 2021 00:13:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2CE31385441
	for <lists+usrp-users@lfdr.de>; Mon, 26 Jul 2021 18:13:28 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E84B8384715
	for <usrp-users@lists.ettus.com>; Mon, 26 Jul 2021 18:12:39 -0400 (EDT)
Date: Mon, 26 Jul 2021 22:12:39 +0000
To: usrp-users@lists.ettus.com
From: thebouleoffools@gmail.com
Message-ID: <RqtnlE8FGEEewTQpb5TGTTUXXWAM9oiMXwhs9LaqUc@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: zo9y101OrutB2tKUw1oU9ARYWbr4qJhK5fCKSxlXg@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: LTEN7ZWZ52DE3TUIUXWCATWMDPSYOMWA
X-Message-ID-Hash: LTEN7ZWZ52DE3TUIUXWCATWMDPSYOMWA
X-MailFrom: thebouleoffools@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: available RFNoc blocks for UHD 4.
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LTEN7ZWZ52DE3TUIUXWCATWMDPSYOMWA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0532118714561228468=="

This is a multi-part message in MIME format.

--===============0532118714561228468==
Content-Type: multipart/alternative;
 boundary="b1_RqtnlE8FGEEewTQpb5TGTTUXXWAM9oiMXwhs9LaqUc"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_RqtnlE8FGEEewTQpb5TGTTUXXWAM9oiMXwhs9LaqUc
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

After poking around for awhile, I am starting to believe this is not due =
to my omission. Out of all the blocks, split stream was the only one that=
 did not have a =E2=80=9Csplit_stream_block_control_python.hpp=E2=80=9D f=
ile. So I created that, added the entry to pyuhd.cpp, and recompiled uhd =
and gr-ettus. That didn=E2=80=99t fix the problem. I then tracked down th=
e source of the =E2=80=9CCannot find block!=E2=80=9D error, and found it =
in =E2=80=9Crfnoc_block.cc=E2=80=9D It would seem that if the block_id st=
ring is empty, then it throws that error. So I=E2=80=99m not sure what li=
ne of code is missing that generates that block name, but I=E2=80=99m gue=
ssing that reason and maybe others are why this block didn=E2=80=99t have=
 a python wrapper?

--b1_RqtnlE8FGEEewTQpb5TGTTUXXWAM9oiMXwhs9LaqUc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>After poking around for awhile, I am starting to believe this is not d=
ue to my omission. Out of all the blocks, split stream was the only one t=
hat did not have a =E2=80=9Csplit_stream_block_control_python.hpp=E2=80=9D=
 file. So I created that, added the entry to pyuhd.cpp, and recompiled uh=
d and gr-ettus. That didn=E2=80=99t fix the problem. I then tracked down =
the source of the =E2=80=9CCannot find block!=E2=80=9D error, and found i=
t in =E2=80=9Crfnoc_block.cc=E2=80=9D It would seem that if the block_id =
string is empty, then it throws that error. So I=E2=80=99m not sure what =
line of code is missing that generates that block name, but I=E2=80=99m g=
uessing that reason and maybe others are why this block didn=E2=80=99t ha=
ve a python wrapper?</p>


--b1_RqtnlE8FGEEewTQpb5TGTTUXXWAM9oiMXwhs9LaqUc--

--===============0532118714561228468==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0532118714561228468==--
