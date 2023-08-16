Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B3A77E57A
	for <lists+usrp-users@lfdr.de>; Wed, 16 Aug 2023 17:45:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D129E384B62
	for <lists+usrp-users@lfdr.de>; Wed, 16 Aug 2023 11:45:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692200724; bh=idkGapMlM4kuTxAm4fQMyg5WVB2kpDnfX6ySjngDJ4I=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=KXACLKQU0dRxwIBjFSZR9nfos1JwIuL5SitLsef7ScNRT8M+JCnRc9oN6YQupKQmH
	 gUsdmJIc+sV2Nhgpur23igzHMApQ8MMXCGtO96Y3j9FQBaDw2A45JlTS9uz/6Tk7sc
	 62qw2YUCrXVNfepmqAcxQNWynMTZoWwL4i09NA4PgHIxP+QrpemOvwQQRF8kUgeNK0
	 ZtrqMplBqBd7aDL4a/JsMVl3CmaYmLvwUm4dRQ9jBj6XE1+9/HFlbir/YXsj9Fg/pu
	 m9nMY/67F6XDQ5fDZjQ2XTRPgRxlp4weQ6uGY/WYJq1a3rIuICdw+DM4gHw4OuXX/u
	 1XQwMsEkwPhAA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3CAD1383AB9
	for <usrp-users@lists.ettus.com>; Wed, 16 Aug 2023 11:45:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692200709; bh=6cGX8ZOa80g19kjzmjcONoLmPwXoWYSZ+uDI5Hh0nfc=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=RbpBQ/Ve/lYj9wJdzhvhNir1cVmC3u/cvoPfQ7+DlQgKwL1fJChLfLEcLcSZdIBQU
	 qNGCOCwx37KeaCqg/AsNsVWkKKEn9XZvis1p0Im9LK4CYOSEz1IQTpxIaRMRP/NPn3
	 bHCRHzriKcLS/uDKF/pRZ9kUYF7hTfQgJQ1qG3cyQEr55bbJu/P76oDci0Ei5uZw2u
	 XTbnC5Jj3FDSE0pjiLesjiT75D6hRHa6pe2TKCNRaLArM7LHn5l+PfTO9lDL6LQqTa
	 WMHmBfu/3LSJdQzBk1Q8fSZeEtG0PkJJtc9eoY6JTjnzuHsL7TST663DdqjjPbG1c8
	 ZLUdXiySuiSAQ==
Date: Wed, 16 Aug 2023 15:45:09 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <mtB3wpJtiRm1phl9BHsFPvCG7e2DRERNE3gyCvkpE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFche=hfcy5f_og2NYh-9j7_Ju+WgnAMvEaLiV0uf9eDHwBSAA@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: C7VMOUYM3PCNLK6YQHZR4L5JOZUNWVYT
X-Message-ID-Hash: C7VMOUYM3PCNLK6YQHZR4L5JOZUNWVYT
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Overflows with CHDR_W = 128 on x410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/C7VMOUYM3PCNLK6YQHZR4L5JOZUNWVYT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2801923063191525675=="

This is a multi-part message in MIME format.

--===============2801923063191525675==
Content-Type: multipart/alternative;
 boundary="b1_mtB3wpJtiRm1phl9BHsFPvCG7e2DRERNE3gyCvkpE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_mtB3wpJtiRm1phl9BHsFPvCG7e2DRERNE3gyCvkpE
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

For my application, I am not collecting samples continuously. The radio b=
lock is commanded to stream continuously, but I have a custom block downs=
tream which =E2=80=9Cgates=E2=80=9D samples in bursts that pass through. =
I am able to at least stream data without any overflows as long as the nu=
mber of samples the custom block allows is not too big, which is why I am=
 assuming its a buffer that is too small. My assumption is as long as my =
buffers are large enough and the total number of samples of each burst is=
 less than 10 Gb/s, samples should be able to unload onto the QSFP before=
 the next burst of samples. This is why I increased the endpoint buffer s=
izes.

However, looking over the verilog, it seems INGRESS_BUFF_SIZE only contro=
ls the buffer size of the input going into the block(before gating), and =
not the output(after gating), which is probably why I am still seeing ove=
rflows at the same exact rate even after increasing the buffer size. Is t=
his interpretation correct, and if so, is it =E2=80=9Csafe=E2=80=9D to co=
ntrol MTU, or will it cause other problems downstream?

--b1_mtB3wpJtiRm1phl9BHsFPvCG7e2DRERNE3gyCvkpE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>For my application, I am not collecting samples continuously. The radio =
block is commanded to stream continuously, but I have a custom block downst=
ream which =E2=80=9Cgates=E2=80=9D samples in bursts that pass through. I a=
m able to at least stream data without any overflows as long as the number =
of samples the custom block allows is not too big, which is why I am assumi=
ng its a buffer that is too small. My assumption is as long as my buffers a=
re large enough and the total number of samples of each burst is less than =
10 Gb/s, samples should be able to unload onto the QSFP before the next bur=
st of samples. This is why I increased the endpoint buffer sizes.</p><p>How=
ever, looking over the verilog, it seems INGRESS_BUFF_SIZE only controls th=
e buffer size of the input going into the block(before gating), and not the=
 output(after gating), which is probably why I am still seeing overflows at=
 the same exact rate even after increasing the buffer size. Is this interpr=
etation correct, and if so, is it =E2=80=9Csafe=E2=80=9D to control MTU, or=
 will it cause other problems downstream?</p><p><br></p><p><br></p>

--b1_mtB3wpJtiRm1phl9BHsFPvCG7e2DRERNE3gyCvkpE--

--===============2801923063191525675==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2801923063191525675==--
