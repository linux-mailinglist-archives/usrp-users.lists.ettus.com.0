Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FBD8AE60DA
	for <lists+usrp-users@lfdr.de>; Tue, 24 Jun 2025 11:30:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 28BBA385AFB
	for <lists+usrp-users@lfdr.de>; Tue, 24 Jun 2025 05:30:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1750757455; bh=JWkLEt2zQ3zrYL0pi6WBplIZRC4zuhAAK8bmOVKVFm8=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=n3PIqQQ7jRAnlDjMOVb7yr8M6IPSgKELbs3NF6HZyrMhGVNVRa/NAbfPFy0lPJskD
	 JgN1yhOL86w5AqMkV77QsfiJrgL4royqFAasKb8d0sS5VC0Gpju3CluggD3D5FDxPi
	 YuriAL13NxhxMAyvZBNtg+AR1CvgdD4UDWXJV0+mf6KCwOf9GCQ176/tSEZOUpt5qD
	 rpuIqvwPDkdBwpi4vrJZs78rKg8AwI3zoneqzcNfNxjRhtbQTe8q+BSDhX8dvkUuOz
	 uMJX/9pGpNf6Q1z9jyzkNNU6ijHdGt5Vae7b4MwJdE6KS/jXOG7c1dC3YoXt1lqYW0
	 UG01j3KK0bB/Q==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3842A385A20
	for <usrp-users@lists.ettus.com>; Tue, 24 Jun 2025 05:29:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1750757382; bh=cxlNcVHTp4buJFIRZf7G4gp5ppPCekMJRX52KiLSHeY=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=TcnfJhwKAqKKdpo58sH/Yd5srV136KtF6tIF3Dn6I06DTR2YmdQT5BdikvRrQEvrI
	 Psi0rYz6S6akAw3AsgwcqSKDPt2FeqQ4qWwmpqymGkCg2fPG6E9zjW8Il2yyPn+MlA
	 pC2469IwcQCNC50JdMqHM1wN0VX3xHjAF2HcKQHk3TRBjn8hTPhRbxnCjlFolWUu1U
	 QZAZT0rK+VGAFI7shs33K4E0G2lZpB/aK9cmuSknBAuJWhM7joharklnQfUg7bUSrV
	 vzMxSgkiVAD6t427953SLz4nWxrHqhMyEbXR0dSAznO49I6hRJRZQaVJk4HjbAl84I
	 NPBIOEtKQMFbw==
Date: Tue, 24 Jun 2025 09:29:42 +0000
To: usrp-users@lists.ettus.com
Message-ID: <Cqy0f1spJHoqOZ2qdiMDXrbjiYSvkDv6Hoo2V5ERhnY@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAAxXO2HNVACT5Dze19oDCuNAYBZPkHiBWO2xs24CmyR6bnmmQw@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: SGHWE4HKODZ26APJ5NSJHFHLGDJNN3BX
X-Message-ID-Hash: SGHWE4HKODZ26APJ5NSJHFHLGDJNN3BX
X-MailFrom: niels.steffen.garibaldi@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC Fosphor: rfnoc rx streamer :warning: Received fractional vector! Expect signal fagmentation.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SGHWE4HKODZ26APJ5NSJHFHLGDJNN3BX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "niels.steffen.garibaldi--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: niels.steffen.garibaldi@emerson.com
Content-Type: multipart/mixed; boundary="===============6078176714061585172=="

This is a multi-part message in MIME format.

--===============6078176714061585172==
Content-Type: multipart/alternative;
 boundary="b1_Cqy0f1spJHoqOZ2qdiMDXrbjiYSvkDv6Hoo2V5ERhnY"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Cqy0f1spJHoqOZ2qdiMDXrbjiYSvkDv6Hoo2V5ERhnY
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,\
\
Some RFNoC blocks which process samples in in batches can require \`spp\`=
 to be set to the batch size or a multiple/divider of it.\
\
To my knowledge the updated FFT block is one of them. At least the [examp=
le specifies that the SPP should evenly divide the FFT size](https://gith=
ub.com/EttusResearch/uhd/blob/c354764c93b49c90be08958f942b9bcb7704cbd5/ho=
st/examples/python/fft_loopback.py#L577).

\
So depending on your FFT size, this would probably be my guess to why you=
 are seeing issues when not setting \`spp\` according to this scheme.\
\
Regards,\
\
Niels

---

Nikos Balkanas wrote:

> Hi Zhou,
>
> Glad you were able to resolve your issue.
> Interesting...spp =3D 1024, has nothing to do with fosphor, but instead
> adjusts all I/O to the streamer.
> It is used to set maxsps (maximun samples per second) for your streamer=
.
> Errors to that generate
> a crash in your convert functions. What is your connection MTU? With 90=
00
> MTU you should get 1991 maxsps...
> Is your hardware, cable, card OK? Check uhd_rx_streamer_max_num_samps f=
or
> more details.
>
> HTH
> Nikios
>
> On Tue, Jun 24, 2025 at 11:03=E2=80=AFAM [zhiwen_zhou@seu.edu.cn](mailt=
o:zhiwen_zhou@seu.edu.cn) wrote:
>
> > I=E2=80=99ve resolved this issue. As it turns out, 'spp=3D1024' is ne=
cessary for the
> > =E2=80=98RFNoC RX Radio=E2=80=99 block. The correct yml and grc file =
are attached for
> > reference.
> >
> > ---
> >
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--b1_Cqy0f1spJHoqOZ2qdiMDXrbjiYSvkDv6Hoo2V5ERhnY
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi,<br><br>Some RFNoC blocks which process samples in in batches can r=
equire `spp` to be set to the batch size or a multiple/divider of it.<br>=
<br>To my knowledge the updated FFT block is one of them. At least the <a=
 href=3D"https://github.com/EttusResearch/uhd/blob/c354764c93b49c90be0895=
8f942b9bcb7704cbd5/host/examples/python/fft_loopback.py#L577" title=3D"">=
example specifies that the SPP should evenly divide the FFT size</a>.</p>=
<p><br>So depending on your FFT size, this would probably be my guess to =
why you are seeing issues when not setting `spp` according to this scheme=
.<br><br>Regards,<br><br>Niels</p><div contenteditable=3D"false" class=3D=
""><hr></div><p>Nikos Balkanas wrote:</p><blockquote><p>Hi Zhou,</p><p>Gl=
ad you were able to resolve your issue.
Interesting...spp =3D 1024, has nothing to do with fosphor, but instead
adjusts all I/O to the streamer.
It is used to set maxsps (maximun samples per second) for your streamer.
Errors to that generate
a crash in your convert functions. What is your connection MTU? With 9000
MTU you should get 1991 maxsps...
Is your hardware, cable, card OK? Check uhd_rx_streamer_max_num_samps for
more details.</p><p>HTH
Nikios</p><p>On Tue, Jun 24, 2025 at 11:03=E2=80=AFAM <a href=3D"mailto:z=
hiwen_zhou@seu.edu.cn">zhiwen_zhou@seu.edu.cn</a> wrote:</p><blockquote><=
p>I=E2=80=99ve resolved this issue. As it turns out, 'spp=3D1024' is nece=
ssary for the
=E2=80=98RFNoC RX Radio=E2=80=99 block. The correct yml and grc file are =
attached for
reference.</p><div contenteditable=3D"false"><hr></div><p>USRP-users mail=
ing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com</p></blo=
ckquote></blockquote><p><br></p>


--b1_Cqy0f1spJHoqOZ2qdiMDXrbjiYSvkDv6Hoo2V5ERhnY--

--===============6078176714061585172==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6078176714061585172==--
