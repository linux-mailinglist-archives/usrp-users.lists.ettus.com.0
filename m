Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A3A9C540259
	for <lists+usrp-users@lfdr.de>; Tue,  7 Jun 2022 17:25:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B71E7383FA9
	for <lists+usrp-users@lfdr.de>; Tue,  7 Jun 2022 11:25:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654615555; bh=Re3f0EYRP2RAapP0OWrFlFcA8I1y7UVufeB6HtSLLUY=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=iEcVAqoRiLE9HbDFuEqdzpDr5aavu+0o1mUTzT3hMdQrG5CIoPHLhSu7P1p5osltP
	 mImmWqR9NLpBPHQo9r+SMfzUJ8WPCjxDN1OToOv9jYRdUg32iPxDNjE2JxnlEgKTx4
	 lzGrIYwlI9r7C6EDTXxL9QwQTlSAAD3Gib+d4uoVnEuNeYOlhjczuAZem1P1frZl+Z
	 EFiPt6O2ym8+3UGPaLTzTMS8h+62Eeyz9K5o84KJEMLFswA3nSJGpfcY6HXq79IswX
	 c3ULiYLwKrOiN7Er0XVpIvU7D+s/DO89H3gLzwNDUVRfEoWQnvncuCb4+kZULFSe+d
	 +tNRGfYYORpFQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 692F9383EAA
	for <usrp-users@lists.ettus.com>; Tue,  7 Jun 2022 11:24:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654615485; bh=9MqdjMDE9XVVwmYvH9CdwM+Zirlz6ricJUoeZooMxn8=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=UwPuOGahq/s2AoYO7tO6pRu6/xZ9U3ZzSraAkt64HUQLKkPrXYWRLfVXy4LpbRZ3N
	 +hX5aEcjPC/2QrBTgL3iXRGcGdikkk9T8GLuBsnk/fGy0rqhtIwdKkn7mfA/Y/vDJs
	 DaauNtxFeClDloiI/hTeHbR+iKmO0LaCZVaAuqpuezm/zW5UAnhFy0DOT2WM+yDKid
	 nPflFaLPpZ08//jstDOiCTXCZGaqwyDLzwqPJbRzsznVS0AWzh/sxhZPWfWglIBMR/
	 kb/7esVxZMDfyDEyWCI4p3S14A1pkOf+OM+nOGsPK36+UTwaQndw4rymIYc0GjwrZc
	 /fjIfIpgs4kAw==
Date: Tue, 7 Jun 2022 15:24:45 +0000
To: usrp-users@lists.ettus.com
From: ri28856@mit.edu
Message-ID: <6R1y3tFAgiak8lWeNrN2Sgbnf0PinRmM3omxKLaxzA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFche=ijVYM_Y_SoeRkTpR9VpREyzX0CWUKtS+-trfvV1w4xpQ@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: AKDT2NMPNNVHWBBENQ3XNFV4HX74RZ54
X-Message-ID-Hash: AKDT2NMPNNVHWBBENQ3XNFV4HX74RZ54
X-MailFrom: ri28856@mit.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DDC and DUC timed command queue depth
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AKDT2NMPNNVHWBBENQ3XNFV4HX74RZ54/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6155675218702681988=="

This is a multi-part message in MIME format.

--===============6155675218702681988==
Content-Type: multipart/alternative;
 boundary="b1_6R1y3tFAgiak8lWeNrN2Sgbnf0PinRmM3omxKLaxzA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_6R1y3tFAgiak8lWeNrN2Sgbnf0PinRmM3omxKLaxzA
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Wade Fife wrote:

> I'm not very familiar with how those tune commands get translated into
> register transactions, but one thought I had is that it may also be iss=
uing
> timed commands to the radio. If so, you also might need to make the rad=
io's
> control FIFO deeper by updating the "512" number to the depth you need.=
 It
> should be a power of 2, so I would try 1024 or 2048, etc. It needs to b=
e
> updated in two places to the same value:
>
> https://github.com/EttusResearch/uhd/blob/5333d3d12ffc21229ec4203a9ea1c=
7f68d82e57f/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_radio/noc_shell_radio=
.v#L148
>
> https://github.com/EttusResearch/uhd/blob/5333d3d12ffc21229ec4203a9ea1c=
7f68d82e57f/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_radio/noc_shell_radio=
.v#L195
>
> Wade

I=E2=80=99m using UHD 3.13 because I work in an airgapped environment and=
 I haven=E2=80=99t had time to upgrade. It appears noc_shell_radio.v was =
added around UHD 4.0, is there a 3.0 equivalent?

--b1_6R1y3tFAgiak8lWeNrN2Sgbnf0PinRmM3omxKLaxzA
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Wade Fife wrote:</p><blockquote><p>I'm not very familiar with how thos=
e tune commands get translated into
register transactions, but one thought I had is that it may also be issui=
ng
timed commands to the radio. If so, you also might need to make the radio=
's
control FIFO deeper by updating the "512" number to the depth you need. I=
t
should be a power of 2, so I would try 1024 or 2048, etc. It needs to be
updated in two places to the same value:</p><p>https://github.com/EttusRe=
search/uhd/blob/5333d3d12ffc21229ec4203a9ea1c7f68d82e57f/fpga/usrp3/lib/r=
fnoc/blocks/rfnoc_block_radio/noc_shell_radio.v#L148</p><p>https://github=
.com/EttusResearch/uhd/blob/5333d3d12ffc21229ec4203a9ea1c7f68d82e57f/fpga=
/usrp3/lib/rfnoc/blocks/rfnoc_block_radio/noc_shell_radio.v#L195</p><p>Wa=
de</p></blockquote><p>I=E2=80=99m using UHD 3.13 because I work in an air=
gapped environment and I haven=E2=80=99t had time to upgrade. It appears =
noc_shell_radio.v was added around UHD 4.0, is there a 3.0 equivalent?</p=
>


--b1_6R1y3tFAgiak8lWeNrN2Sgbnf0PinRmM3omxKLaxzA--

--===============6155675218702681988==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6155675218702681988==--
