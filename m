Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E240673096F
	for <lists+usrp-users@lfdr.de>; Wed, 14 Jun 2023 22:50:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8DC8538498F
	for <lists+usrp-users@lfdr.de>; Wed, 14 Jun 2023 16:50:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686775835; bh=gKGJXwvt6SOKptTDkLA4fIl8SIo98yWX/IyAnbeE+qg=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=JxU3Hnqj6u8iuF090EZR8266Bw82A5W43JueYmK1+bBOKjSWugHkWNcoDhlMzEKUl
	 iCVm4q9pMN/DWFm0OK3wAd7IVh665JUsrvYQuCMUbZDz67VPiqei2XnGnmcfbwTQKw
	 Ii1B2Y+E9aklkWQ2sRRZrveU0lSp/QgXnPzBMeqgQgi82j0XG4noXnIqcRpNGjrNlz
	 rWM6OwXBT5ROc84A6dE8jeyL0AHAIlaG63253nlujCWSqHbgoEyheLQUlFCPkpH2jP
	 bXDU9ixjeVi9i0KCCTytz1OnYFD+Q8xdHQKw0XKdLZ8EONN3rjsJ1YCli5XTiJ09mx
	 JHQVCvg2vLlzQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5DEBF38494B
	for <usrp-users@lists.ettus.com>; Wed, 14 Jun 2023 16:49:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686775773; bh=Jo9BgEh8W4o0fLYIXOaSA7DpUOFImkaP+D6I5QRBHzw=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=sGn2Pywx4Q+Dm1FmB7XFiDR2TrnjF8qvU15wxEwC64gd/ENKZ1n21RTc2gWm3lCKP
	 Mxx/MNPVwf5XzEc/KkTkNlrHK63R+hjc9j7bqvHAUo4DLue2XEyUiXb3xjrtKuNa45
	 Ao/XDn7e0dejyeUoHk72vWS5vM8xSkeJXAwGTis7dlEHj21SDi9RlAn1L9Jv3LSj+K
	 oK93OYNmQtA6Kaa8wCo1w2x4Xr2iSq0z4xRDVdCKjf5ZLzf7pc6Z7dtqPIbK0bK9OU
	 v/E2j9Z1F2RK5vwQCoT8pLtVsAXLMJ36Uu9EwJH8P++AxlXGLDpuNsogcPQ7KzdHGO
	 D1x+az8UAXU0Q==
Date: Wed, 14 Jun 2023 20:49:33 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <43XinETWVBYHcfUAxaZRttNbb50GKaDx3mzRMDGG1jw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: ARO3YO41degwgjI4kM60y5Q2EYQlxBP3spd0vX3bwg@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: PF7K3UTABV432PAGZFL2Y7D2CYZLJZGI
X-Message-ID-Hash: PF7K3UTABV432PAGZFL2Y7D2CYZLJZGI
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Custom images with X410_400
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PF7K3UTABV432PAGZFL2Y7D2CYZLJZGI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7324736594960133747=="

This is a multi-part message in MIME format.

--===============7324736594960133747==
Content-Type: multipart/alternative;
 boundary="b1_43XinETWVBYHcfUAxaZRttNbb50GKaDx3mzRMDGG1jw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_43XinETWVBYHcfUAxaZRttNbb50GKaDx3mzRMDGG1jw
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I have tried the changes I made above(both with the srcport clock set to =
radio_2x and just radio on the custom block =E2=80=9Ctrigger=E2=80=9D). T=
ransmission from the Replay block to the Radio block seems to work fine. =
However, receiving from the Radio block to my custom trigger block gives =
an overflow.

It seems like I did miss a few steps: some internal buses were not set to=
 the correct size to handle the 2x SPC, which seems like can at least be =
partially corrected by editing the block yml file(i.e the one used by rfn=
oc block tool).

--b1_43XinETWVBYHcfUAxaZRttNbb50GKaDx3mzRMDGG1jw
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I have tried the changes I made above(both with the srcport clock set =
to radio_2x and just radio on the custom block =E2=80=9Ctrigger=E2=80=9D)=
. Transmission from the Replay block to the Radio block seems to work fin=
e. However, receiving from the Radio block to my custom trigger block giv=
es an overflow.</p><p><br></p><p>It seems like I did miss a few steps: so=
me internal buses were not set to the correct size to handle the 2x SPC, =
which seems like can at least be partially corrected by editing the block=
 yml file(i.e the one used by rfnoc block tool).</p>


--b1_43XinETWVBYHcfUAxaZRttNbb50GKaDx3mzRMDGG1jw--

--===============7324736594960133747==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7324736594960133747==--
