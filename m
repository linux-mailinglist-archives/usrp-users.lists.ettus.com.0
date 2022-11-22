Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B626333D6
	for <lists+usrp-users@lfdr.de>; Tue, 22 Nov 2022 04:21:50 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 56D4138420A
	for <lists+usrp-users@lfdr.de>; Mon, 21 Nov 2022 22:21:49 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1669087309; bh=ebWLOWlLfS6d2bjwI6NA7SSy6m9QX839ghDbA8LuHmI=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Vp/nU5TIOLTMF+muWbtDaMHbiShoYXK+6GzK1UU0PIEmCW3/RX/bZsjaIJvwUm9vE
	 rd5MprwNBibKkVBZ7lo/gvtKp9WIUvbAnjrYDIApRbQjtgHgLv9nMKolcJKNtTAjwj
	 6PzILp/uuTF7JnfoS7t0r0JK7wAdk6Q6YrWnjHyvYrc4H/9NnEUvkhG9UgEfbWpL43
	 Az+FuQQpAxIW7puC6y5aXjkOj2G1ik0c6622WnMYDJ3McEIrgFnXlOaEBZrizHNOmW
	 EoGaxNfK3aowMcWboN6jcO2o0iXmXyL8R99wFblSk1Azl4TlwAVIKIATJjdOR2vMmx
	 TllKNWZ5XfwAg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 94DC3384195
	for <usrp-users@lists.ettus.com>; Mon, 21 Nov 2022 22:20:59 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1669087259; bh=nOxMTN1yVG5qkvYXn6k5F+RO/1OtjvION/POwoL04tY=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=DG295ag0mqADUdG7fvXVU8mDGdnO+coGyZCV25XXf2LD/PBGw4lctR8irG6jGo226
	 ltJx4KvloTA6NGCscLkZW+ThTd3sBEeLvwmxMn7qEKc/Oqe61KVP2HXp7njN3dlZQP
	 MF3anXa7LlzLTjE4tlPGLJEc+2ZOS34+hUyg/U2gmp1ey70NQmoa12CsxU+hbXp/Qt
	 tduY27kdEgHf4neANy/YtvYmLstDub3br1706PtQVoNIe8W6tXRNuqw3AA/odVtxqA
	 4xZ3Dn3r7L+OOBQ63fKE9do+9yv3peaDremVcEkBjJG1NuY+IfotlhEsU1P6i9zt8H
	 VHWjyY3caQNZA==
Date: Tue, 22 Nov 2022 03:20:59 +0000
To: usrp-users@lists.ettus.com
From: ri28856@mit.edu
Message-ID: <yItRTPT8Vwa1G7JrBJNOxLeuXNtI6GG0INb5hLN6p0U@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAB__hTQ394WE56ZX7VuUKk5LaQKxrDPZ5HM4mbbRST167N1L3A@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: SDFBJPZ2PXGLNZCR4P5U2UKIHU47R3EA
X-Message-ID-Hash: SDFBJPZ2PXGLNZCR4P5U2UKIHU47R3EA
X-MailFrom: ri28856@mit.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Accessing DDC block control in mutli_usrp application
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SDFBJPZ2PXGLNZCR4P5U2UKIHU47R3EA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8350492010997494185=="

This is a multi-part message in MIME format.

--===============8350492010997494185==
Content-Type: multipart/alternative;
 boundary="b1_yItRTPT8Vwa1G7JrBJNOxLeuXNtI6GG0INb5hLN6p0U"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_yItRTPT8Vwa1G7JrBJNOxLeuXNtI6GG0INb5hLN6p0U
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thank your for the reply, Rob, this appears to be exactly what I was look=
ing for. I have spent a little while attempting to replicate the factory =
function at the bottom of multi_usrp.cpp that uses what looks like the ma=
ke_rfnoc_device from multi_usrp_rfnoc.cpp. I can=E2=80=99t seem to figure=
 out what I need to include to actually build this. Any pointers would be=
 appreciated!

--b1_yItRTPT8Vwa1G7JrBJNOxLeuXNtI6GG0INb5hLN6p0U
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Thank your for the reply, Rob, this appears to be exactly what I was l=
ooking for. I have spent a little while attempting to replicate the facto=
ry function at the bottom of multi_usrp.cpp that uses what looks like the=
 make_rfnoc_device from multi_usrp_rfnoc.cpp. I can=E2=80=99t seem to fig=
ure out what I need to include to actually build this. Any pointers would=
 be appreciated!</p>


--b1_yItRTPT8Vwa1G7JrBJNOxLeuXNtI6GG0INb5hLN6p0U--

--===============8350492010997494185==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8350492010997494185==--
