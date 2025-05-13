Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D081DAB5989
	for <lists+usrp-users@lfdr.de>; Tue, 13 May 2025 18:16:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 24056385DF7
	for <lists+usrp-users@lfdr.de>; Tue, 13 May 2025 12:16:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747152997; bh=GN8GotVNId7+q8bzNjEBN1kE06ZI+rtDR9cIDtelxH8=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=ZkNY/2eR6m2Z+wHdAJfl8DqgWyFLTCPgs12OqlOdOPvEBnh6B20AHGCqC8xoZRF6X
	 vJcSwXKynQrjpjYiJ9jZ48bDJELyzixsyfmpGC3xNSYuN3QFHdXjfRgW7b0asnsOoT
	 eOvXm3sqfaw9smwat6PX3nEI5xMFABUqVcJl62/kU/X/Z5j7pOrgT4XDmCxuD6oatA
	 rculE1AchZLLhc1ZnGDIPfE/GyJ1hyUwK+4jH5kQYmicUz4k8Q58z86M2mINgSxmWF
	 MoDz6IWsfsS1dxeEEzyTOTWGxDJ7HeH+bRzh6jKOb6gGtPjOvnKHmherr4Rsa35LrQ
	 UZenS50cugBhA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E1F3C385CD0
	for <usrp-users@lists.ettus.com>; Tue, 13 May 2025 12:16:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747152960; bh=UyBRJev92dGXDtIRByJeLCPu+5MOtOaIobsa76rq1gA=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=ZVZhHZ3CAt2NwKKohfq6y5OL3s3gg67+CZcABYiYxz8mOCL/aohv4E0oUlJ4LYKns
	 GsOVxG8uvEmngMLmeXOLoaYCw5csUMgQ5JC3Xaa01p0XfvBvehrA9g01QPIpFMHe/a
	 UHoo4IfviMGKe84WFNhaQHdtexRsH0O0K2pOS+ZP7FqyDwcyKCkOMvTM5w/fdfxy9T
	 OMnOtb3NbYdxVvQV7quEVnHhVrl4kggUm4vPDMisspJ+O+9zr/jebR5TvXR8djS9XZ
	 Dyjd6ZL6n+vis3TVFQ2uJAi3621OwLHMmMIMxdweg8op6m0xMz2w1AO1qWQkjGA2qh
	 qCQDhXjVo/LGw==
Date: Tue, 13 May 2025 16:16:00 +0000
To: usrp-users@lists.ettus.com
Message-ID: <EOGmst1w7U9YcbJPapVNuk0UXsLVkS7rnYUqzFmJ4@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAEXYVK4rA6aKhstWZhSxb02GY_cYYLC5AudcrpzXnHiYu+Wz2w@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: JYXE65ZHZB5AJ4VCIGQSFXGMHQEIR73L
X-Message-ID-Hash: JYXE65ZHZB5AJ4VCIGQSFXGMHQEIR73L
X-MailFrom: niels.steffen.garibaldi@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Is it possible to set sps radio core 1mhz or lower sps without using ddc (RFNOC block)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JYXE65ZHZB5AJ4VCIGQSFXGMHQEIR73L/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "niels.steffen.garibaldi--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: niels.steffen.garibaldi@emerson.com
Content-Type: multipart/mixed; boundary="===============7494799568712986554=="

This is a multi-part message in MIME format.

--===============7494799568712986554==
Content-Type: multipart/alternative;
 boundary="b1_EOGmst1w7U9YcbJPapVNuk0UXsLVkS7rnYUqzFmJ4"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_EOGmst1w7U9YcbJPapVNuk0UXsLVkS7rnYUqzFmJ4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

If you only need very simple downsampling/decimation, I think i saw a [ke=
ep-one-in-n rfnoc block in the repo](https://github.com/EttusResearch/uhd=
/tree/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_keep_one_in_n) that =
only keeps every n-th sample. You might be able to use it, or at least us=
e it as a starting point together with some simple post processing. \
It seems like an older block and I have never used it myself so I have no=
 idea if its fully functional on x300, but it probably has a smaller fpga=
 footprint compared to the full ddc block  and maybe you can at least use=
 it to get some ideas.

Regards,

Niels\
\
Brian Padalino wrote:

> On Tue, May 13, 2025 at 10:55=E2=80=AFAM sp [stackprogramer@gmail.com](=
mailto:stackprogramer@gmail.com) wrote:
>
> > Thanks for giving useful information. Reason for i want to remove ddc=
 in
> > my FPGA image core, Really I have a USRP X300, I want to add a custom=
 RFNOC
> > block that it needs very much resources such a BRAM or others on FPGA=
 USRP
> > X300. I emphasize I don't afford to buy a new USRP x310 or X400. So I=
 have
> > to write more optimized code!
>
> Understood. You can then remove the DUC or DDC from the design and
> implement your own very efficient DUC or DDC in your own block. Just ma=
ke
> sure the interpolation or decimation rate is exactly what you need. For=
 the
> X300 it's 200 Msps you're targeting.
>
> Good luck.
>
> Brian
>
> >

--b1_EOGmst1w7U9YcbJPapVNuk0UXsLVkS7rnYUqzFmJ4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>If you only need very simple downsampling/decimation, I think i saw a =
<a href=3D"https://github.com/EttusResearch/uhd/tree/master/fpga/usrp3/li=
b/rfnoc/blocks/rfnoc_block_keep_one_in_n" title=3D"">keep-one-in-n rfnoc =
block in the repo</a> that only keeps every n-th sample. You might be abl=
e to use it, or at least use it as a starting point together with some si=
mple post processing. <br>It seems like an older block and I have never u=
sed it myself so I have no idea if its fully functional on x300, but it p=
robably has a smaller fpga footprint compared to the full ddc block  and =
maybe you can at least use it to get some ideas.</p><p>Regards,</p><p>Nie=
ls<br><br>Brian Padalino wrote:</p><blockquote><p>On Tue, May 13, 2025 at=
 10:55=E2=80=AFAM sp <a href=3D"mailto:stackprogramer@gmail.com">stackpro=
gramer@gmail.com</a> wrote:</p><blockquote><p>Thanks for giving useful in=
formation. Reason for i want to remove ddc in
my FPGA image core, Really I have a USRP X300, I want to add a custom RFN=
OC
block that it needs very much resources such a BRAM or others on FPGA USR=
P
X300. I emphasize I don't afford to buy a new USRP x310 or X400. So I hav=
e
to write more optimized code!</p></blockquote><p>Understood. You can then=
 remove the DUC or DDC from the design and
implement your own very efficient DUC or DDC in your own block. Just make
sure the interpolation or decimation rate is exactly what you need. For t=
he
X300 it's 200 Msps you're targeting.</p><p>Good luck.</p><p>Brian</p><blo=
ckquote><p><br></p></blockquote></blockquote><p><br></p>


--b1_EOGmst1w7U9YcbJPapVNuk0UXsLVkS7rnYUqzFmJ4--

--===============7494799568712986554==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7494799568712986554==--
