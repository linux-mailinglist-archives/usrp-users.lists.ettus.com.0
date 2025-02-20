Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D5CD0A3E1D7
	for <lists+usrp-users@lfdr.de>; Thu, 20 Feb 2025 18:08:05 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B0CB8385AE6
	for <lists+usrp-users@lfdr.de>; Thu, 20 Feb 2025 12:08:04 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740071284; bh=3BaHsNMTw1Ke5oIMbrBCPZ6nGC7cxmVUWtBELBy0a2U=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=FqegBLWicY6J9gCYYED8S8ix5J1gO3laNAGGhA/wEkaQpu7YHhP4/sX5KnbDLoHeD
	 QoE9QuB3oiFkZZC1WXLtkD3b3eedMxtSef0u/D5h/C02FYY9Qybaod6nutEA+TMVCs
	 ffKWJ1VbjarLYbAYkHprLAcyZk1zRV/oEQVxGV1Uo2xLeRg3K1xThGmkMainWPPiQV
	 NpdoQxKz1KYgL73ryYaoR4XmxOBV9kQ46Bl4Mv7AiJm9eB7jplHbhdPNhC+edGTm1d
	 tLn7BybPt0OY92YC9K2tzvPuZHqv+OZlemmZGxDXT6yQJarRjWQtPpUDDJ5GObDk/2
	 QYX2aqJz39RDg==
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 2200A385AE6
	for <usrp-users@lists.ettus.com>; Thu, 20 Feb 2025 12:08:01 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="hr1XYH4a";
	dkim-atps=neutral
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5ded46f323fso1635737a12.1
        for <usrp-users@lists.ettus.com>; Thu, 20 Feb 2025 09:08:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1740071280; x=1740676080; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LFUBpWO5YUjv4Elvlor6Kv5QoQsEbJEqtSDga4M8Wqw=;
        b=hr1XYH4awKxWv5Fv9rTxsTegEgYK5lJkzHrzsSYMWAzM56CuAkKQ7qjcZcv1Q0JhOC
         Q0wYiCZAR/ragi+nOjgN8MDCGNEhknG1qfzjORMXpmzC4d9TLZl3KEOniDC+k3pIbSU9
         wTZd8EJfGu9YM6/lgKRdiM6I/SH14n8jo3hZv3vDvQ9e+J9ccVnKxqeOPDvvxp9vI7e7
         yRgpzOvLj3gFl/SXL5U5xqJHpsuSovjdgumjHPURR+L0iQ/y6IennosxP8O0Oqk/iXoG
         Jx5U+BcaltIFIdkBrAh9q2W5tOP1/bu7F+WFAqvwH9d096FWKC9eYH2fkFvqP9kLpaJ5
         P5RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740071280; x=1740676080;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LFUBpWO5YUjv4Elvlor6Kv5QoQsEbJEqtSDga4M8Wqw=;
        b=rjE3yNYqQcr/08UFZm2of2exxUfwLSAekHCVPeAO4V18Q3EQs/zi38odrsntI3TWKM
         Nd8l07ZquMaK55rfANXkhvaKJysqHEq5hW5MHNdz639gjuckPPCiV81jKmCV1PJrE+bV
         DEIPqipK11T3C7zhXUlLAUDyEB3DG644SK5I47FBlitUlaFHAbFtyY61L6gTH7SAIN8j
         tj7Og/U5FsvsfJxojdNCRV923qgHduDQW1EOziZVfH9pNV6OFatNOYCVbjNh5+Uh15fF
         279DEZ+HKXbPq63730eMtzURaqhlz1AEZnFDiNDofFM15Ylht81bJda4N4J2wiO+LUV1
         hu6A==
X-Gm-Message-State: AOJu0Yzrzu3dPTGtMKS3NoF9ClVZeWrxnAnm8MeUglCIPTmdwI4hWwr0
	7RXoVklnUnrnRA0EBmLgTvK0DbKSXSEjQ76UkoSUgLascjVJozHtLXC4KqjsldoY2s+W0tPI9ul
	mWZVylRfDo6ECvfkzbxaVv0DrSMdsDwuuYqT3aDtiIeAcs1VUl9o=
X-Gm-Gg: ASbGncuVW5dOTYTlQJ2R1hg95XPs/Tx488/3MsQa1VfnpFkH/2zw/Qssb7hXKOGFDSU
	3GYChhswtOJ1/TYsG7yVL1DTWy19cRb4a6PLPtZ5RYaj5cDZZLnqZmVLYypUviZfuF8Mxx3nemf
	kgsCuu9KeJLvNJX+EOoRR4Cx4wDaM=
X-Google-Smtp-Source: AGHT+IGh0vbS/JwCVA2IzyMi0VcMZOXymqYYfCHF0LsbaYboyyHti0odU8jWDoldhiQNgrXrfmojFRKx9py2KidFmQw=
X-Received: by 2002:a05:6402:378e:b0:5dc:a44d:36a9 with SMTP id
 4fb4d7f45d1cf-5e0895173acmr7031203a12.14.1740071279338; Thu, 20 Feb 2025
 09:07:59 -0800 (PST)
MIME-Version: 1.0
References: <D3YEaOFisLcjvI3tRnvEpEeeisKwnTfTFlNvyBiZnpo@lists.ettus.com>
In-Reply-To: <D3YEaOFisLcjvI3tRnvEpEeeisKwnTfTFlNvyBiZnpo@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 20 Feb 2025 18:07:48 +0100
X-Gm-Features: AWEUYZnzVvYJ1ux7JU9TjHEN3gnhcspWUDql6laNdo8-oElAtsD_CF_JRAxh8do
Message-ID: <CAFOi1A7V6KifEi5kOsrFGO2zOZt2ROinWh3gEcSOOEEdPnZ4Ug@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: ZP36WHS5CRIJWAXAIVLVAEFEIVICWB4Y
X-Message-ID-Hash: ZP36WHS5CRIJWAXAIVLVAEFEIVICWB4Y
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reading/Write registers - Timeout
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZP36WHS5CRIJWAXAIVLVAEFEIVICWB4Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4661004271201036838=="

--===============4661004271201036838==
Content-Type: multipart/alternative; boundary="0000000000007d44b7062e95ea5b"

--0000000000007d44b7062e95ea5b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, exactly. I'm afraid we'll need a standalone test case to investigate
this further. If you can provide that, then we can try to locally reproduce
it. A bug report would help, put it on github.com/EttusResearch/uhd/issues
if you can, or if you can't publish the test code, reach out to your sales
rep and we'll figure something out.

--M

On Thu, Feb 20, 2025 at 5:42=E2=80=AFPM <cyberphox@gmail.com> wrote:

> Hi Martin,
>
> If it is stuck here should it not timeout (either massive @10s the defaul=
t
> @ 1s) ?
>
> thanks
>
> Marino
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000007d44b7062e95ea5b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Yes, exactly. I&#39;m afraid we&#39;ll need a standal=
one test case to investigate this further. If you can provide that, then we=
 can try to locally reproduce it. A bug report would help, put it on <a hre=
f=3D"http://github.com/EttusResearch/uhd/issues">github.com/EttusResearch/u=
hd/issues</a> if you can, or if you can&#39;t publish the test code, reach =
out to your sales rep and we&#39;ll figure something out.</div><div><br></d=
iv><div>--M</div></div><br><div class=3D"gmail_quote gmail_quote_container"=
><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 20, 2025 at 5:42=E2=80=
=AFPM &lt;<a href=3D"mailto:cyberphox@gmail.com">cyberphox@gmail.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>Hi M=
artin, </p><p>If it is stuck here should it not timeout (either massive @10=
s the default @ 1s) ? </p><p>thanks</p><p>Marino</p><p><br></p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000007d44b7062e95ea5b--

--===============4661004271201036838==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4661004271201036838==--
