Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C82C15699EB
	for <lists+usrp-users@lfdr.de>; Thu,  7 Jul 2022 07:35:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8361038433E
	for <lists+usrp-users@lfdr.de>; Thu,  7 Jul 2022 01:35:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657172130; bh=Ef9q/7vQwQ9eJQnkNhlPwaKZpkz/GUEl3oIgzPzoIxA=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ggSGTtejGOI42JYaMgSawQKFfeFyrxb4Fs/HfMeS7h/444vso/JDSRtetxLEyq/6B
	 +W5pGdJiaeY4PQBnEYvDPXXW3jlxh3RDhBGI2c04QIbvvGhkvnbZPTbqI0SB1ryRQm
	 k+03ijprHI0aygc2jIPC6MCcsy9rHodB7WLRpsbH9/y7mFMidboRwpRdwh3cIPpZe5
	 /QLGaFIFhu3SdiMPiuEwBHkGwCx3ifh+BefjOxZEC1pwHIXC34hz0np+AmTRbWjBBo
	 I8B9w0qXw2CEr8Zn6kq/UAnf3W47fflpEqYh1ZDll826Am/dIj1yi1UGothc51oDGt
	 HX8MMVeRf71Nw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2B3CC384336
	for <usrp-users@lists.ettus.com>; Thu,  7 Jul 2022 01:34:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657172040; bh=h0WDSAl7wWhvj2DaItVQJg63cNhVeJxg+SsZeiuAlts=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=pwquLkltfqQN7jDNtc99Vm79ZWsuRBUHnuMIsZTnNqOP0kYAlCxMLBdVXSSAET499
	 o0BBtT0KaJ+zfP6kfkKputaUIko/QwDg25EEHp2JFghfPzlQlikAomu7pXFT59WNDA
	 wZsXg1nU39DrtLF/4e98qOVeOUqHlUCWdCWU7MneCaRTsQyIH0r6B7/rHCCGf5ylYe
	 Q2PRJcXmUK79W7SdTZ+8Cdw6KkhmzXNMarxVXfDWUfi0zKCmI3LrSRHV++VW90e6Gi
	 LfOknukBkMufAwL1h2U3CqlVkvR4husU2es4UgtKzrtDvP4XlOMF9dZCQpXq0nPFAP
	 uEcdCKs8hpIpA==
Date: Thu, 7 Jul 2022 05:34:00 +0000
To: usrp-users@lists.ettus.com
From: ouzan_ts@hotmail.com
Message-ID: <kgMwpkSlFj0ZiipenNmcEtSnxd2pivnWH9jOPR3fP8@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 66c1063b-0983-9a84-ee95-3f058d1bb3f3@gmail.com
MIME-Version: 1.0
Message-ID-Hash: 2OBNK43VGENGEEW7EWFC2LVCW3UYW6UJ
X-Message-ID-Hash: 2OBNK43VGENGEEW7EWFC2LVCW3UYW6UJ
X-MailFrom: ouzan_ts@hotmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Frequency Switch with USRP B200
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2OBNK43VGENGEEW7EWFC2LVCW3UYW6UJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0616640704361977505=="

This is a multi-part message in MIME format.

--===============0616640704361977505==
Content-Type: multipart/alternative;
 boundary="b1_kgMwpkSlFj0ZiipenNmcEtSnxd2pivnWH9jOPR3fP8"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_kgMwpkSlFj0ZiipenNmcEtSnxd2pivnWH9jOPR3fP8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Marcus, thanks for answering.

I have different questions. Is parallel working possible? I connect SDR t=
o my PC. I want to SDR takes signal and meanwhile the PC makes read, writ=
e and plot.

Another question is my B200 have 61.44MS/s rate and I can=E2=80=99t set s=
ample rate to 3MHz because underflows and overflows occur. I don=E2=80=99=
t want this. If you help me, I would be grateful.

Have a nice day.

--b1_kgMwpkSlFj0ZiipenNmcEtSnxd2pivnWH9jOPR3fP8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello Marcus, thanks for answering.</p><p>I have different questions. =
Is parallel working possible? I connect SDR to my PC. I want to SDR takes=
 signal and meanwhile the PC makes read, write and plot.</p><p>Another qu=
estion is my B200 have 61.44MS/s rate and I can=E2=80=99t set sample rate=
 to 3MHz because underflows and overflows occur. I don=E2=80=99t want thi=
s. If you help me, I would be grateful.</p><p>Have a nice day.</p>


--b1_kgMwpkSlFj0ZiipenNmcEtSnxd2pivnWH9jOPR3fP8--

--===============0616640704361977505==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0616640704361977505==--
