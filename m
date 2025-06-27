Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B9276AEB760
	for <lists+usrp-users@lfdr.de>; Fri, 27 Jun 2025 14:14:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D80D438612E
	for <lists+usrp-users@lfdr.de>; Fri, 27 Jun 2025 08:14:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1751026474; bh=vBRoxfpFLQ5U4BvTLOJx92TdwAz5KmpgyoLoK2K8vOI=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=xahW/cdtgJyiKSsCt5U9W9ANAXwqE24aEbcCdLmxahamiLrGextjOwNlfBge9M9D7
	 nRHv3PihZEwuFyZywoCbgqHdOqDJW/rPbeut/1fkVWU6EjHGp9W45hJ3qsMfq1unvh
	 2NrfRv82VVsXjiL+eawwUYFztBD0YmkBpwePA23c7XKutU7HZlFl1InPwo2yUBgecf
	 P3lStw86l5yGv5xTnpeJ7lMDkvn6V9ZS5ZxJrbNOV2za9NlY755gUUBel/tY7X7FQJ
	 2aYoveE68DJ20FyiEAiWZ2L611t+AXZKjoUXbyoHioNCZCEYle2cBbJNXF8k5OrwcI
	 CCaMLy8hdr/cg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CC797385EBC
	for <usrp-users@lists.ettus.com>; Fri, 27 Jun 2025 08:13:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1751026421; bh=qSReF2ko5Ddt/ytTsU48hO5kVjrmfBM3tsyKsrx1wWA=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=pbM5kmctfLPCoUpcxM96WaiwCgWchkydiOyrZP23iG+su5oQZgKhOrent4LrgaAfT
	 4XuTPcpK+oToy5eIjgYNbttWHtbDqe86L8lk6keOmm1YoeWmP3yp6QaUwgXBqccqxl
	 NxEhscVFjFLT2fFEt2CWGkCDGbUo876fQBf7eKbdDtQOUCMu5je9UYKJtTlvSty38E
	 hwx/wW9SGorW/ou+ttyyRF0pYhnfjoXGZknAuROYnhpuNXuWp5cgp8FN6o4rSIpNB9
	 YLzn9/zm5YlRJ6Pyo2CalrMVwJbgKa3mVzFVVjBl25vexFTD36eMsuDNJVZCv4ow3l
	 z2Br1Lg30ehbw==
Date: Fri, 27 Jun 2025 12:13:41 +0000
To: usrp-users@lists.ettus.com
Message-ID: <cmpCXdWrS4wGpn1GNCaJNyFTQ3w0GqALRWlibNQo23g@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 8fcb7a89f603499b8139865148bf59ed@vastech.co.za
MIME-Version: 1.0
Message-ID-Hash: CFWJD67PNO2CVSK77VFPUDYIQHEXKKHA
X-Message-ID-Hash: CFWJD67PNO2CVSK77VFPUDYIQHEXKKHA
X-MailFrom: niels.steffen.garibaldi@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: adding a user ip repo
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CFWJD67PNO2CVSK77VFPUDYIQHEXKKHA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "niels.steffen.garibaldi--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: niels.steffen.garibaldi@emerson.com
Content-Type: multipart/mixed; boundary="===============7430770325207728842=="

This is a multi-part message in MIME format.

--===============7430770325207728842==
Content-Type: multipart/alternative;
 boundary="b1_cmpCXdWrS4wGpn1GNCaJNyFTQ3w0GqALRWlibNQo23g"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_cmpCXdWrS4wGpn1GNCaJNyFTQ3w0GqALRWlibNQo23g
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Kevin, \
have you tried giving your IP directory via the \`--include-dir\` argumen=
t of the rfnoc_image_builder? That=E2=80=99s usually the way to include O=
OT modules.\
\
Or does your IP need to be generated first and you want this to be part o=
f the overall bitfile generation process?\
\
The rfnoc_image_builder uses a gnu-make based build tooling, so you might=
 be able to add your path to one of the makefile related files, depending=
 on what they are and what should be done with them.\
\
It looks like the \`viv_generate_ip.tcl\` script you gets called via the =
\`build_vivado_ip\` function that usually gets called from the respective=
 IP=E2=80=99s makefile in the targets ip directory, e.g. [x4xx ip](github=
.com/EttusResearch/uhd/tree/master/fpga/usrp3/top/x400/ip).\
\
If you had a similar makefile in your repo and added a link to it, e.g. [=
in the Makefile.inc](https://github.com/EttusResearch/uhd/blob/master/fpg=
a/usrp3/top/x400/ip/Makefile.inc),  so that make can find it, that might =
also work.\
\
It is definitely not the recommended way, but if it works for you, it mig=
ht be sufficient.\
\
Regards,\
Niels

--b1_cmpCXdWrS4wGpn1GNCaJNyFTQ3w0GqALRWlibNQo23g
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p class=3D"ProseMirror-selectednode" draggable=3D"true">Hi Kevin, <br>have=
 you tried giving your IP directory via the `--include-dir` argument of the=
 rfnoc_image_builder? That=E2=80=99s usually the way to include OOT modules=
.<br><br>Or does your IP need to be generated first and you want this to be=
 part of the overall bitfile generation process?<br><br>The rfnoc_image_bui=
lder uses a gnu-make based build tooling, so you might be able to add your =
path to one of the makefile related files, depending on what they are and w=
hat should be done with them.<br><br>It looks like the `viv_generate_ip.tcl=
` script you gets called via the `build_vivado_ip` function that usually ge=
ts called from the respective IP=E2=80=99s makefile in the targets ip direc=
tory, e.g. <a href=3D"github.com/EttusResearch/uhd/tree/master/fpga/usrp3/t=
op/x400/ip" title=3D"">x4xx ip</a>.<br><br>If you had a similar makefile in=
 your repo and added a link to it, e.g. <a href=3D"https://github.com/Ettus=
Research/uhd/blob/master/fpga/usrp3/top/x400/ip/Makefile.inc" title=3D"">in=
 the Makefile.inc</a>,  so that make can find it, that might also work.<br>=
<br>It is definitely not the recommended way, but if it works for you, it m=
ight be sufficient.<br><br>Regards,<br>Niels<br><br><br></p>

--b1_cmpCXdWrS4wGpn1GNCaJNyFTQ3w0GqALRWlibNQo23g--

--===============7430770325207728842==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7430770325207728842==--
