Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 516C3853933
	for <lists+usrp-users@lfdr.de>; Tue, 13 Feb 2024 18:58:25 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5B904380E5F
	for <lists+usrp-users@lfdr.de>; Tue, 13 Feb 2024 12:58:24 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707847104; bh=i62ATh8SBewTDU450mu/tfkqZpRUlCWX7g6Hoh6854Y=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=PLBX+2Gq3TTyB6nGGhoEpSRiZ77iARXvGksBeiogA47qnUYy/9xnCohBPjhW4EtnP
	 FsVMSOvdsqi8exewkIuO2asZpzxFchDO+rkE1WxiuOQ+HjL/tDPxqJsSimMRMWjsdh
	 i/1ckngsPQyv7rzclla/IkCeMM1XbSDxxe9Klr5xNcp3IfAN3AJYQqCThNivjud4Ik
	 P93Wk0QwvdN2BMfA9I1qKkw49CqZVCDiGQSuTTKXdJMbrjsPQmBnaQdrgvOhIWRb4K
	 kUeF8q2Y6gMFOqdMiPCUxMyXvKHY299gmW5mzdZFVu03W7jdofQMcEm8uVrVZqL/V4
	 fFhMhCi1TS3qw==
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	by mm2.emwd.com (Postfix) with ESMTPS id E850A380E27
	for <usrp-users@lists.ettus.com>; Tue, 13 Feb 2024 12:57:44 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="DMvjR+io";
	dkim-atps=neutral
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-783dc658bd9so215856385a.1
        for <usrp-users@lists.ettus.com>; Tue, 13 Feb 2024 09:57:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707847064; x=1708451864; darn=lists.ettus.com;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/GzYqxQbvS6+b5D+7fMr10T55+T7Hn5l/9si2+zAl74=;
        b=DMvjR+io8+IwKRbXBjHJQG8s4i0pQH0h0Ed44rnfjdCkYqV6qqFn0Suz9HgqycfXnI
         kqpUic5fw6cy6gzxXtWyBFsRFlQLBL2w4Ou6atXIle3y2e8Oc1ok9RVrC6IVtzSYPaZz
         YM6LinPnfveT38OtSP9djKLszLCLwFtxyPyJha5OdKxI9a/bs0Qh5SDJMgiv4jowYcwq
         kk0VVr0m/20Lyrf55k3TIAv0cWTEqO4eR5gVxc0r2BC2e2+v5wNl49ucrps69EljKlXk
         eWmcxSHhvijs68fcgAr1s2iHWhiKN1LFcz2WFMWxcpIa7Waw1IT3FQZKBdkR2gtn+eeu
         fJFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707847064; x=1708451864;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/GzYqxQbvS6+b5D+7fMr10T55+T7Hn5l/9si2+zAl74=;
        b=SsR2e23+6/XwP0VfbaWQ4RURAUbJTXwIWiVrq3gt+JsuZ1Qm0JbOL3CEfF1/vRAqmc
         FVXXgvPM/KrwU5slpMn7obQOUjuf+8bjno5HLMJw78BCfOwhToYokjoKzcI1xwMzax4Z
         aDlwCurOg5H6agrp6Z+i8qwCj3L/pp21vSQqh8VuK9vLk8lDTJkziUirD4BAeSZ8clCd
         NjsoDgWszZBrbBAm88uJ6Cd1t1IRN8vp/H8dBytMoTKF43VccsEmz8DX6UD+yzgWiSJr
         o4UxEHJv2jeVvFZELa7DoyoH+hYdkhIeGYZslMMbEfnQyEoxsnXJB1Up4CrXH7Kj2ddc
         H2cA==
X-Gm-Message-State: AOJu0YxaaHQCsH0MRDMI8MXBigw/cBKi+tnhDE0O90COrdlQz5Y+Pg58
	iK87Aqq52HVOiYpMsw7GBsZQ1dNEKArnd526CIRO6+KHv2rfROGEG3y2yMAk
X-Google-Smtp-Source: AGHT+IHgptM69TgD+vuJDmUiqiXxxAG9bQz8apxunJYJPaJZu8jAIsPMK2n7vUexn5DdaEMIMUdi0Q==
X-Received: by 2002:ae9:e20b:0:b0:783:bfb7:77d5 with SMTP id c11-20020ae9e20b000000b00783bfb777d5mr320111qkc.78.1707847064187;
        Tue, 13 Feb 2024 09:57:44 -0800 (PST)
Received: from smtpclient.apple ([2605:b100:d11:4181:f5fa:bae6:fdbd:704f])
        by smtp.gmail.com with ESMTPSA id c20-20020a05620a201400b0078725bb9cedsm205573qka.136.2024.02.13.09.57.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Feb 2024 09:57:43 -0800 (PST)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 13 Feb 2024 12:57:31 -0500
Message-Id: <3FFDA1C0-26DB-4C92-B5F2-2C822B016808@gmail.com>
References: <S5jj5EbXWK8qgzAU4cul5WBl1a9QAxwBxIJeHbKOw@lists.ettus.com>
In-Reply-To: <S5jj5EbXWK8qgzAU4cul5WBl1a9QAxwBxIJeHbKOw@lists.ettus.com>
To: jnunez@cud.uvigo.es
X-Mailer: iPhone Mail (20D67)
Message-ID-Hash: QIX6LHDYOTJ6GYBNJGGIKY5RJRRRIZXP
X-Message-ID-Hash: QIX6LHDYOTJ6GYBNJGGIKY5RJRRRIZXP
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Can't set gain on N200
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QIX6LHDYOTJ6GYBNJGGIKY5RJRRRIZXP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7333883794300904697=="


--===============7333883794300904697==
Content-Type: multipart/alternative; boundary=Apple-Mail-678C835A-D9C7-4F15-9432-B7DD742EB0FE
Content-Transfer-Encoding: 7bit


--Apple-Mail-678C835A-D9C7-4F15-9432-B7DD742EB0FE
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

What daughter card do you have installed ?

Sent from my iPhone

> On Feb 13, 2024, at 11:22 AM, jnunez@cud.uvigo.es wrote:
>=20
> =EF=BB=BF
> I am using an up-to-date version of Radioconda, both in Windows and Linux.=
 Binary files (like rx_samples_to_file) are distributed with Radioconda and c=
ompiled on 04-10-2023.
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-678C835A-D9C7-4F15-9432-B7DD742EB0FE
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">What daughter card do you have installed ?<=
br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><block=
quote type=3D"cite">On Feb 13, 2024, at 11:22 AM, jnunez@cud.uvigo.es wrote:=
<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=
=BF<p>I am using an up-to-date version of Radioconda, both in Windows and Li=
nux. Binary files (like <em>rx_samples_to_file</em>) are distributed with Ra=
dioconda and compiled on 04-10-2023.</p>

<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></body></html>=

--Apple-Mail-678C835A-D9C7-4F15-9432-B7DD742EB0FE--

--===============7333883794300904697==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7333883794300904697==--
