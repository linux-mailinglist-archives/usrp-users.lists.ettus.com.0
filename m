Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0F29396A5
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jul 2024 00:40:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3D74E385814
	for <lists+usrp-users@lfdr.de>; Mon, 22 Jul 2024 18:40:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721688032; bh=abSOUrPvl5VD3445Xa7sTSKNU6aKoUOsDGHWl3F3Th4=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=KMV/IYCN6eUuhf8CbWeYu5+XFO5g0EF1E59Oj5pZUTk58gumd10TIutzwm1Cp+wgK
	 EjSHw7NTL7s7zgrB71c6SbykerAmHEJg5lJAFdq6ZUw0HKB/cj7h5EJ6HPLrdgkcaW
	 /bOL51Ts2yw5ySY8w6gDJeAXB2383xMYw0gS5q1XhSdAokRuccwmntjAJqq6oGl/YD
	 DLTSyzLqtKcC7zBbsVIUvjkTCT1iokA60QjEqkPVSRoJEOFkJz1v2jv9JYYXcDS0j0
	 mQdr6pNg2QCqUzxnXINUi0jdGhCmdgBJtetJNwJiFTIR1lUfedgN3Fu6i7Z1di6PNF
	 YP+hE4Xwm32Zw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BB617385814
	for <usrp-users@lists.ettus.com>; Mon, 22 Jul 2024 18:39:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721687978; bh=ZCN0SYfVAi+KFsegtOQtGZHB2YZz2rHVDC+IAAGDkv0=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=ZW+fUngSJ8iF1452MSxLt2asgMdu1cgvQJHf5+okSTU8/5pioqD9KcKSVrtNnwKZG
	 zoUbcNNg0Dvt6UGBo8WVFTgPBNjDPVyz24i/jCFtoSTD06DuPPVxO69imJpr43+Uaw
	 +z12nCHF40Dn+i6rVpMpamo35ZCK+Ho6nQ+Korff+zMhFQ/aBnWBEb4pxgET5dzY3A
	 93PjIA4+rrTly5MGQkY5TQqA35Hwdaj1nM7o5uU/X5485CfFlJYZVFWc7l8CfCBTgl
	 bPQHrc1PGLL3eGaKxym8HGd58ywf0h6SCGgekHuFLehUuleSVF1mm6CqpJHnKSmJhM
	 I1CxDAUNng8eQ==
Date: Mon, 22 Jul 2024 22:39:38 +0000
To: usrp-users@lists.ettus.com
From: cjohnson@serranosystems.com
Message-ID: <hDgQ7gfjRXP73PbwK9Ou0gWgx6ZOYsezhfm3bDez7Ac@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAB__hTQdEvf23e212-_7_izsk7PKkJACcAFPn6cFXmkOHqj7cA@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: TBCJG2YFCAFWQK6PVC3AZ7WBI7GGFA5M
X-Message-ID-Hash: TBCJG2YFCAFWQK6PVC3AZ7WBI7GGFA5M
X-MailFrom: cjohnson@serranosystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Buffers - 200Msps
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TBCJG2YFCAFWQK6PVC3AZ7WBI7GGFA5M/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0744675018705663259=="

This is a multi-part message in MIME format.

--===============0744675018705663259==
Content-Type: multipart/alternative;
 boundary="b1_hDgQ7gfjRXP73PbwK9Ou0gWgx6ZOYsezhfm3bDez7Ac"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_hDgQ7gfjRXP73PbwK9Ou0gWgx6ZOYsezhfm3bDez7Ac
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thank you Rob=E2=80=A6 I will explore this because I don=E2=80=99t want t=
o deal with DPDK.  I read in other posts that it didn=E2=80=99t seem to m=
ake a difference.

--b1_hDgQ7gfjRXP73PbwK9Ou0gWgx6ZOYsezhfm3bDez7Ac
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Thank you Rob=E2=80=A6 I will explore this because I don=E2=80=99t wan=
t to deal with DPDK.  I read in other posts that it didn=E2=80=99t seem t=
o make a difference.<br><br></p>


--b1_hDgQ7gfjRXP73PbwK9Ou0gWgx6ZOYsezhfm3bDez7Ac--

--===============0744675018705663259==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0744675018705663259==--
