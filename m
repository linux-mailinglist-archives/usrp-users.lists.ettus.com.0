Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C989BE43B
	for <lists+usrp-users@lfdr.de>; Wed,  6 Nov 2024 11:27:00 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7A19F385DE8
	for <lists+usrp-users@lfdr.de>; Wed,  6 Nov 2024 05:26:59 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730888819; bh=ikD+8tXSx76mReRIUYFduXMjAQYBNY7qzGcqmps2hB4=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=tAFUnlKQ4ry/4jELzQ5Jdcr6HdLlSrE93dDotZznYRPz7+4QQlkkuH9/rb94yXIA8
	 vb/5MAB9iWNXeIcx/pn1TDHqLrSeKJiooLju8wmm9iepiNdxNsE8nT5BwbwvQbZcA8
	 HJKXEygyy1rR2IWDzbTTRYPfhe8N48na9Bffa82u73b9n+c/9gHNAVy+bi6yLukZts
	 QC7GSWgi5S+nzz0y6cLehyde11degy21bQl+rPhuSp9++BBqkEBDzUA4qcguNcc4JS
	 SEjAI5gwpJ8L5BNM39km844BXVi8w8cz0sZEfFatTSlNqloBfqeTtJituuIZrkTFfA
	 ZIKIQluO9181w==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 47BBE385C8A
	for <usrp-users@lists.ettus.com>; Wed,  6 Nov 2024 05:26:34 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730888794; bh=DQ8fVrVzLennIMBs3GjhMILD6QLSIFPyxdC0pJYHBog=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=U/J/zWPJI1LXXt481JA7JR5bwmJk7tc7cM417T5L89Hv0J9ltqoMCWSi23o92woxL
	 KS4pwfnAoONRhJtFMR6M9AWLVG08WmnPXaoT0PJWuDlea1ui85HgCCXO91fAV47dZo
	 5gtPy+aZvdDNdzEHmowbblpMqu6yWvfsZFc6Ctpu6UUm2zMmG0Y0ami87dO2tY/x9P
	 RKGYQpSFPbhcXrTK5WyKhhYF4h4YkDpqtQptIV67J9YBPO65UqzMAOEl+6j2b5758S
	 Zwwma7d8jWG8VbyFSpSTmwMMX7V8uxIrYeboVow3U9LQ7BgmXF8n7CZzfQ0IU5jI2M
	 7nvFicQfLjGWQ==
Date: Wed, 6 Nov 2024 10:26:34 +0000
To: usrp-users@lists.ettus.com
Message-ID: <uq3xrCLTVej3JMRMxB5fYUvNRDAXvQoyE5hJeGCEurM@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: hUSZgU7rXdtJzTMZYXZ31xIqZ5aXIz4oHZ3AvCfgc@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: JQXMIJZYFB36VYHKE4FCA7UE3KIJUJBT
X-Message-ID-Hash: JQXMIJZYFB36VYHKE4FCA7UE3KIJUJBT
X-MailFrom: joerg.hofrichter@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP X410 with fft_cp FPGA image
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JQXMIJZYFB36VYHKE4FCA7UE3KIJUJBT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "joerg.hofrichter--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: joerg.hofrichter@emerson.com
Content-Type: multipart/mixed; boundary="===============2201966344805207916=="

This is a multi-part message in MIME format.

--===============2201966344805207916==
Content-Type: multipart/alternative;
 boundary="b1_uq3xrCLTVej3JMRMxB5fYUvNRDAXvQoyE5hJeGCEurM"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_uq3xrCLTVej3JMRMxB5fYUvNRDAXvQoyE5hJeGCEurM
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Ruben,

thanks for your question to the new FFT+CP feature.=20

1. The question regarding the delay: you can use the ofdm_loopback.py exa=
mple (probably renamed to fft_loopback.py when officially released) to ca=
librate the exact actual delay of the complete processing chain, includin=
g RF. Don=E2=80=99t provide CP insertion/removal values (no =E2=80=94cp-l=
ist/-p flag) and find the delay (number of samples as =E2=80=94delay/-d f=
lag) where you see a sharp peak in the diagrams shown in the second row (=
=3Damplitude of the received signal). Note that symbol #0 has minor trans=
ient effects but all other symbols should have a sharp peak. 188 samples =
is what we measured for the 200 MHz bitfile, which value do you determine=
?

2. As you noticed, the pre-release version in branch fft_cp_preview2 has =
a limitation that only two (=E2=80=9C0,1=E2=80=9D / =E2=80=9C2,3) or four=
 channels (=E2=80=9C0,1,2,3=E2=80=9D) are supported.

Kind regards,\
J=C3=B6rg

--b1_uq3xrCLTVej3JMRMxB5fYUvNRDAXvQoyE5hJeGCEurM
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Ruben,</p><p>thanks for your question to the new FFT+CP feature. </=
p><ol><li><p>The question regarding the delay: you can use the ofdm_loopb=
ack.py example (probably renamed to fft_loopback.py when officially relea=
sed) to calibrate the exact actual delay of the complete processing chain=
, including RF. Don=E2=80=99t provide CP insertion/removal values (no =E2=
=80=94cp-list/-p flag) and find the delay (number of samples as =E2=80=94=
delay/-d flag) where you see a sharp peak in the diagrams shown in the se=
cond row (=3Damplitude of the received signal). Note that symbol #0 has m=
inor transient effects but all other symbols should have a sharp peak. 18=
8 samples is what we measured for the 200 MHz bitfile, which value do you=
 determine?</p></li><li><p>As you noticed, the pre-release version in bra=
nch fft_cp_preview2 has a limitation that only two (=E2=80=9C0,1=E2=80=9D=
 / =E2=80=9C2,3) or four channels (=E2=80=9C0,1,2,3=E2=80=9D) are support=
ed.</p></li></ol><p>Kind regards,<br>J=C3=B6rg</p>


--b1_uq3xrCLTVej3JMRMxB5fYUvNRDAXvQoyE5hJeGCEurM--

--===============2201966344805207916==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2201966344805207916==--
