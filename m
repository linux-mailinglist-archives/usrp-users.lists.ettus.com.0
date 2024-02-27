Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5613A86A1C7
	for <lists+usrp-users@lfdr.de>; Tue, 27 Feb 2024 22:36:41 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4D7A038465D
	for <lists+usrp-users@lfdr.de>; Tue, 27 Feb 2024 16:36:40 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1709069800; bh=1xZop/+yBUxDRrVWvfpUa7qePsKO9ouGs3qBWlxN6a0=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=FEoT+2dS2XNSUCv7LkWgujwshlBh7ObG7YzTExGKLKcsVRJQ8bxnPo0mOyTbgxLTm
	 D3ivDAmThkc7MoSelqFZL/6+6qIyNtiogdz88anQYyqL4cUFNJgQv+DSlN9GK4nLix
	 AxrzlY2MWCTgSrY+4P/G8QruTP0z+mpueMR3GI1o+nt/t+HW5ENSm2fBxAqYlbxZFq
	 OuolxTvquY7jO/VCiACseDIs3QopDFp00xQbPByiECums17Jq9P1UUFHVLZSTLhD+0
	 S4lHE5Xo5xAfDIKrtBBkQlXCiRzCiaqFPWgg0ak4GA0645UHMM2As+VOlbBUCYuMKr
	 /Y1dL+aI4yyCg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C1E0C3845BD
	for <usrp-users@lists.ettus.com>; Tue, 27 Feb 2024 16:36:32 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1709069792; bh=t3TtvjV7Loia5pNEQODSOBT5nbtfmgvBgI4dzoq8vx4=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=oUPZFHJbRxW3ssDkOxaJURRSee9m7wY+jGur9jHbApUOf1ETkABdJW7xdTZ24aO8c
	 WXum1LTMiCzoD5GgpvZhs68scfIWM/txLLXbbXHhiSRhiErryIJ0fba5wxoo08Jd9U
	 CGWuE7M1PIJgViuBVsjGBq+ag++gMQMiI2TWsLwOWrUmvISB9kiJrZ4Qt3KAn8rJWP
	 zrqZGGMV0Ra1A9zF46jWmS0AtdNvMAExvQ1jM2ftZm6OPKrt7M8SfxOj0afa/nGcP6
	 pRLtxiypbeB6bcQPIuP1WwMWbN1ULpBwaNF0AeLIEVEs21EpKvxErNXwCfnWT7nC1t
	 6FDYscTL25QTA==
Date: Tue, 27 Feb 2024 21:36:32 +0000
To: usrp-users@lists.ettus.com
From: yguruprasad@umass.edu
Message-ID: <g55DPGi25Bn39ZTEQLnejh01w732fZXDB3AszhKA2xA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAD8oTTMq3FK_Vm4-o0OwehKKvRTuKxB-=p8=TO2++BbS==vmGg@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: P2UTJOFWM36HX53653USWGQNZIYDFJH5
X-Message-ID-Hash: P2UTJOFWM36HX53653USWGQNZIYDFJH5
X-MailFrom: yguruprasad@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Issue after adding a new keep one-in-n block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/P2UTJOFWM36HX53653USWGQNZIYDFJH5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5608598402330652376=="

This is a multi-part message in MIME format.

--===============5608598402330652376==
Content-Type: multipart/alternative;
 boundary="b1_g55DPGi25Bn39ZTEQLnejh01w732fZXDB3AszhKA2xA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_g55DPGi25Bn39ZTEQLnejh01w732fZXDB3AszhKA2xA
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

./bin/tx_waveforms --freq 915e6 --rate 5e6 --gain 0 --args addr=3D192.168=
.10.2\
\
I=E2=80=99m trying to run this on the transmission section , I wanted to =
know what will be the output for this

--b1_g55DPGi25Bn39ZTEQLnejh01w732fZXDB3AszhKA2xA
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>./bin/tx_waveforms --freq 915e6 --rate 5e6 --gain 0 --args addr=3D192.=
168.10.2<br><br>I=E2=80=99m trying to run this on the transmission sectio=
n , I wanted to know what will be the output for this</p>


--b1_g55DPGi25Bn39ZTEQLnejh01w732fZXDB3AszhKA2xA--

--===============5608598402330652376==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5608598402330652376==--
