Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C1A5B084E
	for <lists+usrp-users@lfdr.de>; Wed,  7 Sep 2022 17:19:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4EC94384CB6
	for <lists+usrp-users@lfdr.de>; Wed,  7 Sep 2022 11:19:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662563994; bh=rHuoawqRjeidp09U/8eawCPp6VKUCS9582Oy1wy1BP8=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=GpqaR9FNy1uuz06flOpT4Rnubmhm/KPPEb0EwUsH2oO7GcZ+i5WlwuzLgBBWmF0QR
	 IADIuHHgWa6u0886zrVI4r3FmpRiw+AMBdOWDEqkmkZiBnFz/dlHJry8KRc93pgvAA
	 nGr3YQqHSP/yFvuYw+76/ULhdDXgavSaoSuyv0RDGBZkSoSiyZBPPIDev1OsrC7SoO
	 Tw7y2J+cnhGisSp4rPLtjQt27yaFB63WcR8vQLoE7+BpPdABVgwdJGa686qSsSmtK+
	 AdLMta/9YsCbkasuZ8U2aAenvFTU0wMWGtm74vflssmHpVpnio3JScYtkYDpVq8jZu
	 X1LZ/4KtJTzFQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7AD2F384C9C
	for <usrp-users@lists.ettus.com>; Wed,  7 Sep 2022 11:19:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662563942; bh=h+1MlT1uPJj9MsCOdy5xVuQcsbCunSELaFXMNQgMYqY=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=MY9cNPmFkCUVzItE4QDGHcBH81uuuh+j/kZeAO9Ch+xqOpYRLK8hNUSXJog6Z7xsG
	 5TQl6a358+49eT3H9mCGg8LCiHmqlEcN+M+NHWfVEwF7xKzDjqc7RPNnYZOJ3mCLI9
	 l8U8ZkedZrvV/zjcby8UbuCMBz7nZv7mMwgiYj6J9rAFz2Al92j9VYXseMZaKKzZf7
	 XBe1Hpm7UsC1p+hg1MMsklSRJt/pFLmG47ksI96uWRh6ES+B8zJlwP6opuPyCyzUiS
	 2aZ/evt2bHg5BfWMvSdRWQBNp4rKkLCXACYEcRQ4raUe7MXTC2YMyDvMliDuhiFS70
	 TlhGQUMSLLPFg==
Date: Wed, 7 Sep 2022 15:19:02 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <W1HKbKy73tVllkpTL8359dGMeZcsPD8VopxDddbnTM@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: rxoU71TBLC5fX5oJOCafYwVDX7e9yxU9ftsi8gIQ@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: QUXKT2PETWO3453OMBOIBU75LM6X7RND
X-Message-ID-Hash: QUXKT2PETWO3453OMBOIBU75LM6X7RND
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Bitstream encryption
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QUXKT2PETWO3453OMBOIBU75LM6X7RND/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9033651111793137913=="

This is a multi-part message in MIME format.

--===============9033651111793137913==
Content-Type: multipart/alternative;
 boundary="b1_W1HKbKy73tVllkpTL8359dGMeZcsPD8VopxDddbnTM"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_W1HKbKy73tVllkpTL8359dGMeZcsPD8VopxDddbnTM
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

mamuki92@gmail.com wrote:

> Hi Piotr,
>
> \
> In this thread: https://lists.ettus.com/empathy/thread/JWF3VHGY3YUT62B6=
CDCPZ5R5PF7AUV7D?hash=3DMVUXQUQBPY7DS7PEZMWMYFVPFZN26YDF#MVUXQUQBPY7DS7PE=
ZMWMYFVPFZN26YDF\
> Martin said that it could be possible to encrypt a netlist with RFNoC, =
so that=E2=80=99s why I wonder how I could do that using the rfnoc framew=
ork tools (rfnoc_image_builder, uhd_image_loader, etc)

I don=E2=80=99t know precisely how what he says relates to bitstream encr=
yption. I never tried bitstream encryption myself, as I didn=E2=80=99t ne=
ed it.

I have some experience with HDL source code encryption, and regarding NI =
they are using that to encrypt sources between Lab View FPGA and Vivado. =
I can only speculate what he says somewhat relates to similar topic.

Best Regards,\
Piotr Krysik

--b1_W1HKbKy73tVllkpTL8359dGMeZcsPD8VopxDddbnTM
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>mamuki92@gmail.com wrote:</p><blockquote><p>Hi Piotr,</p><p><br>In thi=
s thread: https://lists.ettus.com/empathy/thread/JWF3VHGY3YUT62B6CDCPZ5R5=
PF7AUV7D?hash=3DMVUXQUQBPY7DS7PEZMWMYFVPFZN26YDF#MVUXQUQBPY7DS7PEZMWMYFVP=
FZN26YDF<br>Martin said that it could be possible to encrypt a netlist wi=
th RFNoC, so that=E2=80=99s why I wonder how I could do that using the rf=
noc framework tools (rfnoc_image_builder, uhd_image_loader, etc)</p><p><b=
r></p></blockquote><p>I don=E2=80=99t know precisely how what he says rel=
ates to bitstream encryption. I never tried bitstream encryption myself, =
as I didn=E2=80=99t need it.</p><p>I have some experience with HDL source=
 code encryption, and regarding NI they are using that to encrypt sources=
 between Lab View FPGA and Vivado. I can only speculate what he says some=
what relates to similar topic.</p><p>Best Regards,<br>Piotr Krysik</p>


--b1_W1HKbKy73tVllkpTL8359dGMeZcsPD8VopxDddbnTM--

--===============9033651111793137913==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9033651111793137913==--
