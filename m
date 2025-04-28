Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 24AFBA9E5C0
	for <lists+usrp-users@lfdr.de>; Mon, 28 Apr 2025 03:28:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1052D385DD4
	for <lists+usrp-users@lfdr.de>; Sun, 27 Apr 2025 21:28:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1745803697; bh=Wkfr0c32xwFJmCOp0Uwnv2WJ176uw/762uw4ZTaIuwU=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=jR07CG74/iu6JSrwKGcyJfrEHtkbHjzzXPKHiYJGYk2ET1gx/RXF1RMlePpJwoPCF
	 F3RjDosB9Dljx50TjrEHJXOnKvMC4o7tgmy/RhVaoWebjHhWOIpy3ZAlKG5FSsE2+m
	 JDbRAfnyqWY05z8kV6AHxcO0mEwu6H0dBqu86f5waiLF+Chw+hAQD9peYETr0jDrVs
	 OqypCjQMv0cKNqAsZ7APnHiFqrKNfkpbAMnYsnomEtiILasrNvevmkt0Hqch9KBMad
	 dznvwd2JKZfc0dW38Bl7HakpR0jWd0VecPiL72SROHiXAIjdthcpUUQZnM798AyMJV
	 dEdK9HvJb8m9A==
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 5EAA1385F50
	for <usrp-users@lists.ettus.com>; Sun, 27 Apr 2025 21:27:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="lgQNyq4W";
	dkim-atps=neutral
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-ac345bd8e13so578567866b.0
        for <usrp-users@lists.ettus.com>; Sun, 27 Apr 2025 18:27:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745803641; x=1746408441; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ATR/s7S/b8wTR9K99u+g8qIv/enwD/jXcg7yRGc9tHM=;
        b=lgQNyq4WfM659VOo6lnRnjWUdnWn+fBOhQnMWEaLpzlrOGJWsbnK6QeViQuQcIzE+J
         A6Pe4SsiLDzrYwu94lvFUqU5kP3T2KPXpiMCtx9kj9h3ObtaTFgY3nSLYHOgaLas7UWD
         6nhFfo2B9D3uQPZ4EeTOJTlz9wGWkBSFLTnNnbRDwoKF7vubJmtFMfyYT57awwHXvGGG
         P/o7AbsiNtzidArK5XCB1TTPk4Jqt9gGqeSAzrks35AZzY9UTS0xn5oYjGbzoiUSm4hN
         rU6bJtgI6NV7DedcjYP+GgQnsjg5UhT/kVk2JrQ85pcd+elxUcyxckHTj6JR7ESMR+5r
         rmrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745803641; x=1746408441;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ATR/s7S/b8wTR9K99u+g8qIv/enwD/jXcg7yRGc9tHM=;
        b=lvGdbRlDI7pv6VUIy28orqOvNm+I8iAhhJTq2CaZoqJ3/75OMeAX/4WMqOlsNBYX27
         qCJzzpqe2rNbIeJotZDXGaScJudW0hypmV0oGk7bNKGBHXJB+pfAvtn0HE5YWvmKpQDj
         1D+FV62k8kijzOtBc2vaZFwfynsjoGMIM7uk1wfX0jBunh+Pk12rDMC7UUJ6Oqt78MNJ
         rUYfWUnYro34quB5zW3noWNv13QI4sbfmvkunb6+JdyUGUpgLwrEoGvS9pcl6EZ0lpae
         grNa+RWNvkETjz/Ur7PxEsKKezD+DqFBgjDFY9PZQJTmSFwmtS9QbFqP3lOafHnxsfM2
         qqcA==
X-Gm-Message-State: AOJu0Ywz5VuZ14wb5Z1jmo8TX6hqrEnsJ51qFFmZl1rqfRqLPvKR/tlA
	OzXAy/igbtvqIwdXWJAUqLB+Weh+Ceex6KYXD9SiqG4YsO1HMbrlPuvwXp1SbO9cOqM29QO1jRH
	d3e4V98moLx2U6rCvmRmnvswsDllbLw==
X-Gm-Gg: ASbGncseE/kTNFqQmidRT0FD5pz3Ljk6gXqMsil6o7+iIxTL1aIR9j5p6A/d4iCDR5h
	RxCppg1z0t9FMCqieuWZvaBSzD+iaKpqJpxqKCNz0fVxUb3R6cg+vgA0kzLs1gaoBR/TQnyRs01
	Dn/l01xHkMUgfxgLxi1a10FQ==
X-Google-Smtp-Source: AGHT+IG/b9BafeNNWEgZAYKI0vm5ShaeaE4B2rwQeUQFfGSCO3opmppB7gzBtcjBs9XFBBLY98Hsy322ZoXNoDWunyU=
X-Received: by 2002:a17:907:9804:b0:ab7:cfe7:116f with SMTP id
 a640c23a62f3a-ace71399afbmr836934566b.46.1745803640945; Sun, 27 Apr 2025
 18:27:20 -0700 (PDT)
MIME-Version: 1.0
References: <CAEXYVK4_EZt1CN7eic+zX89q_UM9xkLRrgDYOfQgAJa-vxgkEA@mail.gmail.com>
 <CAFche=hXaVLyqJA7Ay7k8NqnVaKyWni1h7JwapVwue2iwAM5MA@mail.gmail.com>
In-Reply-To: <CAFche=hXaVLyqJA7Ay7k8NqnVaKyWni1h7JwapVwue2iwAM5MA@mail.gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Sun, 27 Apr 2025 21:27:09 -0400
X-Gm-Features: ATxdqUFc4mZzn6RDi1KRpPi1bIGQImWLn2c9Y_EDZR9WLfWkIrU5vXADMUIN5Ro
Message-ID: <CAEXYVK5W_kupokFpwQY+GpwEUO1nN4Y0cH6Bhj8z1HFMYP54uw@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: WW7TNGR2YMF2Q5NSHJRGOAEIYOHQ63NP
X-Message-ID-Hash: WW7TNGR2YMF2Q5NSHJRGOAEIYOHQ63NP
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC CHDR DstEPID and Virtual Channels Clarification
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WW7TNGR2YMF2Q5NSHJRGOAEIYOHQ63NP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7348473394323877627=="

--===============7348473394323877627==
Content-Type: multipart/alternative; boundary="000000000000ddc22b0633cc95ab"

--000000000000ddc22b0633cc95ab
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Apr 27, 2025 at 8:44=E2=80=AFPM Wade Fife <wade.fife@ettus.com> wro=
te:

> The EPIDs are only used by the stream endpoints. I think it will always b=
e
> set to 0 when it is sent to your block, and anything you put in there wil=
l
> be ignored by downstream blocks. In theory, I suppose it could be used th=
e
> way you described, but I think that would require pretty significant
> changes in both UHD and in the FPGA.
>
> Could you use two stream endpoints instead to double the number of virtua=
l
> channels?
>

Maybe I could do that. So have 4 endpoints be the lower 64 channels, and
then have 4 endpoints be the upper 64 channels and utilize only the VC
field?

When it comes to SeqNum, do the VC's count as being separate or would the
SeqNum also increase since the DestEPID is still the same?

Thanks,
Brian

--000000000000ddc22b0633cc95ab
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"></div><div class=3D"gmail_quote gmail_quo=
te_container"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Apr 27, 2025 at=
 8:44=E2=80=AFPM Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com">wade.=
fife@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div dir=3D"ltr"><div>The EPIDs are only used by the stream e=
ndpoints. I think it will always be set to 0 when it is sent to your block,=
 and anything you put in there will be ignored by downstream blocks. In the=
ory, I suppose it could be used the way you described, but I think that wou=
ld require pretty significant changes in both UHD and in the FPGA.</div><di=
v><br></div><div>Could you use two stream endpoints instead to double the n=
umber of virtual channels?</div></div></blockquote><div><br></div><div>Mayb=
e I could do that. So have 4 endpoints be the lower 64 channels, and then h=
ave 4 endpoints be the upper 64 channels and utilize only the VC field?</di=
v><div><br></div><div>When it comes to SeqNum, do the VC&#39;s count as bei=
ng separate or would the SeqNum also increase since the DestEPID is still t=
he same?</div><div></div><div><br></div><div>Thanks,</div><div>Brian</div><=
/div></div>

--000000000000ddc22b0633cc95ab--

--===============7348473394323877627==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7348473394323877627==--
