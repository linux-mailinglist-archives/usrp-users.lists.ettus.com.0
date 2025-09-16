Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F44B59820
	for <lists+usrp-users@lfdr.de>; Tue, 16 Sep 2025 15:49:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E63C438621B
	for <lists+usrp-users@lfdr.de>; Tue, 16 Sep 2025 09:49:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1758030558; bh=iIt6kyhI0/it+P6clLgH9R0k8dndgXiPjm2lNSdsnI0=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Tlg97mSc7Mhg1D2x0CybFibGa8u563eBB99tPB64PnhVT7kRF4mz6P3AH3mQRIlnI
	 QmqPMuOWeVFnKlJ/LH6em1CwYylDHT5y5s7pRy45BrD4l/XL9kbxe0nJdGvv/7VLSe
	 3aE76ptjG4zGjsbOZW5yMtaJDq4g6FbCb3oxwE3E/6lC2kXCyx8C0DceRaRP3vMr0W
	 gKZsb5MQSSEwYN3VB2lCB3A5lRHGbIxlpJu1kI0qd9cezftQaDtDtQclE+l237OE+J
	 DH4tuDtRkiPK2bPVZCqbcLFjkVND2zJ+FpR3CbzPSehddt+4p6Tkqzs/uYkZb+l4jS
	 SPQ8YEf+4RtIQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 52CC23861BF
	for <usrp-users@lists.ettus.com>; Tue, 16 Sep 2025 09:48:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1758030530; bh=5H9k5viSt+2lPNBvUfC+KeLURkiLpAQeNLvCIpHgacI=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=OdYpk4WueEhijBMugIj+oGFuDqKfgvor7c054+5cTAhXeiN1wPtmArnPxkw2hR/h7
	 MGSAMr5wkW3y6KkQdY9/2cnEwI5ovmSwh98fereTqSqvDnLM9eQLkoSSnFsCeEgvaJ
	 l7WvxVJ7vdH1/PA8Mo/7FPoJnHYjTY7Y+me/MPkzThcd25RfkOtf0k4DceBiUkga77
	 3DTqJAErVEX1lOO8YSW0kvievhMgngG+DFKWQ/FgK2DcnTTdSSnk8bU36BLGMt/KMq
	 vaEGZP8ooky/niLpMJqQGWqF4joda/hEgoW/8FNsGUnBDJLDOR7GNNaJdH13P/GGbK
	 jfXpavFaJ1H5Q==
Date: Tue, 16 Sep 2025 13:48:50 +0000
To: usrp-users@lists.ettus.com
From: ardelgado@gradiant.org
Message-ID: <n1U8QdaJHFBrbIeBbJdrcKxKImYxzcNgQRUkywMeY@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFOi1A53VJvS67LeUbTSzSOqLr9adK=pW9ukwTGJ_GakB2jy0A@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: ZJYNFZNWMAVPX2YINHJM4O2XP5IQ67OA
X-Message-ID-Hash: ZJYNFZNWMAVPX2YINHJM4O2XP5IQ67OA
X-MailFrom: ardelgado@gradiant.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to pin a specific UHD version across machines/devcontainers?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZJYNFZNWMAVPX2YINHJM4O2XP5IQ67OA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2231632882847832961=="

This is a multi-part message in MIME format.

--===============2231632882847832961==
Content-Type: multipart/alternative;
 boundary="b1_n1U8QdaJHFBrbIeBbJdrcKxKImYxzcNgQRUkywMeY"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_n1U8QdaJHFBrbIeBbJdrcKxKImYxzcNgQRUkywMeY
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Martin,

The issue about python API was my mistake, srry about that =F0=9F=98=85. =
I was experimenting with different installations in a devcontainer and I =
didn=E2=80=99t realise I had skipped the previous dependency commands:\
\
sudo apt update && sudo apt install -y \\

=C2=A0=C2=A0=C2=A0 git build-essential cmake libboost-all-dev \\

=C2=A0=C2=A0=C2=A0 libusb-1.0-0-dev libudev-dev python3-dev \\

=C2=A0=C2=A0=C2=A0 python3-mako python3-numpy python3-requests \\

=C2=A0=C2=A0=C2=A0 python3-setuptools python3-pip\
\
I understand that, in your opinion, building UHD from source is the bette=
r approach. Do you not recommend using the PPA option? I=E2=80=99m really=
 afraid about potential version missmatches between devices and USRPs (e.=
g. N310 or X410 images).=20

Thanks for your fast support.

Best regards,

=C3=81lvaro

--b1_n1U8QdaJHFBrbIeBbJdrcKxKImYxzcNgQRUkywMeY
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Martin,</p><p>The issue about python API was my mistake, srry about=
 that =F0=9F=98=85. I was experimenting with different installations in a=
 devcontainer and I didn=E2=80=99t realise I had skipped the previous dep=
endency commands:<br><br>sudo apt update &amp;&amp; sudo apt install -y \=
</p><p>&nbsp;&nbsp;&nbsp; git build-essential cmake libboost-all-dev \</p=
><p>&nbsp;&nbsp;&nbsp; libusb-1.0-0-dev libudev-dev python3-dev \</p><p>&=
nbsp;&nbsp;&nbsp; python3-mako python3-numpy python3-requests \</p><p>&nb=
sp;&nbsp;&nbsp; python3-setuptools python3-pip<br><br>I understand that, =
in your opinion, building UHD from source is the better approach. Do you =
not recommend using the PPA option? I=E2=80=99m really afraid about poten=
tial version missmatches between devices and USRPs (e.g. N310 or X410 ima=
ges). </p><p>Thanks for your fast support.</p><p>Best regards,</p><p>=C3=81=
lvaro</p>


--b1_n1U8QdaJHFBrbIeBbJdrcKxKImYxzcNgQRUkywMeY--

--===============2231632882847832961==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2231632882847832961==--
