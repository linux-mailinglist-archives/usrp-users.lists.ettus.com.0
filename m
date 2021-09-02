Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 434643FF7A6
	for <lists+usrp-users@lfdr.de>; Fri,  3 Sep 2021 01:07:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 17BBD38451B
	for <lists+usrp-users@lfdr.de>; Thu,  2 Sep 2021 19:07:30 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D5CFF384024
	for <usrp-users@lists.ettus.com>; Thu,  2 Sep 2021 19:06:39 -0400 (EDT)
Date: Thu, 2 Sep 2021 23:06:39 +0000
To: usrp-users@lists.ettus.com
From: thebouleoffools@gmail.com
Message-ID: <NIVukW9BNAShpy3QzWzdY19rGujDeEdWf1WWgrJS9Y@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: BYASRUMJB4Q64N7J4F2RXQMX2Y2VNP6N
X-Message-ID-Hash: BYASRUMJB4Q64N7J4F2RXQMX2Y2VNP6N
X-MailFrom: thebouleoffools@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Building custom OE sdimg for E310 / can't find radio module
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BYASRUMJB4Q64N7J4F2RXQMX2Y2VNP6N/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4153231037339370477=="

This is a multi-part message in MIME format.

--===============4153231037339370477==
Content-Type: multipart/alternative;
 boundary="b1_NIVukW9BNAShpy3QzWzdY19rGujDeEdWf1WWgrJS9Y"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_NIVukW9BNAShpy3QzWzdY19rGujDeEdWf1WWgrJS9Y
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I decided to tackle building an image from scratch, so I could pull in so=
ftware packages with complicated dependencies a little easier. Everything=
 basically worked, except the radio daughterboard. I did use the meta-ett=
us layer and correct machine, following the instructions at https://githu=
b.com/EttusResearch/ettus-docker/tree/master/oe-build .  If I load the of=
ficial sdimg from ettus the radio is detected and works fine.

Looking through lsmod and dmesg on the working image, I don=E2=80=99t see=
 anything obviously related to a radio or daughterboard. Does anyone know=
 what kernel config or software package might be missing from my yocto bu=
ild?

--b1_NIVukW9BNAShpy3QzWzdY19rGujDeEdWf1WWgrJS9Y
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I decided to tackle building an image from scratch, so I could pull in=
 software packages with complicated dependencies a little easier. Everyth=
ing basically worked, except the radio daughterboard. I did use the meta-=
ettus layer and correct machine, following the instructions at https://gi=
thub.com/EttusResearch/ettus-docker/tree/master/oe-build .  If I load the=
 official sdimg from ettus the radio is detected and works fine.</p><p>Lo=
oking through lsmod and dmesg on the working image, I don=E2=80=99t see a=
nything obviously related to a radio or daughterboard. Does anyone know w=
hat kernel config or software package might be missing from my yocto buil=
d?</p><p><br></p>


--b1_NIVukW9BNAShpy3QzWzdY19rGujDeEdWf1WWgrJS9Y--

--===============4153231037339370477==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4153231037339370477==--
