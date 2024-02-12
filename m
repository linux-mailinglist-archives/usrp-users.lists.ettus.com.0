Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C000E851DBE
	for <lists+usrp-users@lfdr.de>; Mon, 12 Feb 2024 20:14:56 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C5B8B38421F
	for <lists+usrp-users@lfdr.de>; Mon, 12 Feb 2024 14:14:55 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707765295; bh=xpL1xQ+Z1U+2CTIcxV8Jkebd19ujS84RaCzuB8JQsxE=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=h0hHQnOAtXb118wrTXxrGILcWo9KeY/GzwEam6G+UHwD84bhuEUk7/aZ6cZEAfBBe
	 FXCT6BSQEmPrxjMzqjjuxCGRJ6GmDggATqT+WF3fTE52hgK77VjsBNqsZVtp4chBCh
	 xKobaz7k0yfuGPBNxlyzIIg8zTfW7K1m1MS8RlIdez0DApJM3ZlyTvtS2LTauTYvbO
	 toUdnsy/qVPXAt/wf85MwehG1KaGcDDrGutTM+er+opVhRoGEhb+k4BqOhoV2Qo+6A
	 7qKm1b2n/x0aPUhauUkqfOf2AX5W2GQDr3qNfGZhvC4SCWuShiLgdCrhf3J4oY7pHl
	 IP0MFt++JrwpA==
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 9F52E380E27
	for <usrp-users@lists.ettus.com>; Mon, 12 Feb 2024 14:14:17 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=iptronix.com header.i=@iptronix.com header.b="Sd0dpBve";
	dkim-atps=neutral
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2d0a4e1789cso42307201fa.3
        for <usrp-users@lists.ettus.com>; Mon, 12 Feb 2024 11:14:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=iptronix.com; s=google; t=1707765256; x=1708370056; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=r5rBNhVB+CCy3yyHxj2ZHhamx+cBwNJHwDY47AX576o=;
        b=Sd0dpBveh5uQO5ipZUpcO7XS+yutflf4y16GALD1F08nk6Uoq2Z7wmpCm1QTOlrYjw
         eBqQrnx4yHQWGgZwGriIbQ4yeiJYDCE22b0pcUAv5Mywn96Fshd8xKvw23uKz2tIYGog
         ykeyqadGQmN45hw6KxO42rOdqxQCTQXba/EsVKs5+KHlNkZt0VgP2/+ixWHS6j01gXZg
         N5qkNZ2tKlvLj7GktPQ8MEuqGdP353U2K2Bq2xWwuIHGR7BD/VRdoFi2c8lwMJvRoJlw
         vforMFSRE19PqDPZcg9CpD/adAl3AAKofw7NJN8nsfGmYFIv3eVl+0GM0gRX08HXVhKt
         z5Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707765256; x=1708370056;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=r5rBNhVB+CCy3yyHxj2ZHhamx+cBwNJHwDY47AX576o=;
        b=wt40SgUEAHZFL2lE0jEjgbWD5hGxo8m8LcVPXNM/tzp3MT4reV97/mJUQ23BY/oH90
         /68q3ZBQdQ+b3E/wa/vqY9CEgUq3p7iwFw3DrbYDQTMLjekbk99SlYneNojK7Xb6bA6G
         7ZjvjoxitXbjx2K6yFiuJzt1qWNVYDalgZ/kD4NLA5HrrKxAl8+0yhHpCRWXUmD7uOZH
         Cvr/onQqfJwvwinSGuazlTmAfnOJz5DD8H1YHcv1mUCgkUKxMafoij35ZeUXcSZwHbmn
         /nBqYuikvaBokXVHF/sMmZAfpU5bSiVtJjVkjjuU5ozBdcPRQ4cZ90wj/9w8QDQy4Ih3
         AHxw==
X-Gm-Message-State: AOJu0YwXMJWMGpxacscVrR0QkQIo3NbKSLTsgu+CJNgrY+oDCjxHNW5v
	BwW6vAoM4aJxJnPHEfkEhXairlMwyNlu9qd2ZfUI3LmnsY0jGVYEDQqPilZDGxSRjV8bV9d6StB
	oYkepMm5Szt7xwTugZDUIldPhMyda4v7M3Mq8N/1+aREIWB0n
X-Google-Smtp-Source: AGHT+IHqvKv+IAIK4Nw0AiJREqduPjaN1mAd1xT3k69I+Aug2Mx/rzfUJgb10dGDlY8A1Uyeb52nO1oS91gvjMj8PyA=
X-Received: by 2002:a2e:a0d5:0:b0:2d0:4ef8:347a with SMTP id
 f21-20020a2ea0d5000000b002d04ef8347amr4871473ljm.18.1707765256123; Mon, 12
 Feb 2024 11:14:16 -0800 (PST)
MIME-Version: 1.0
References: <ydTJtYzwSbHTPd2X7O9RMzkCGwqAlfBUIAKOjVf6RQ@lists.ettus.com>
In-Reply-To: <ydTJtYzwSbHTPd2X7O9RMzkCGwqAlfBUIAKOjVf6RQ@lists.ettus.com>
From: Dario Pennisi <dario@iptronix.com>
Date: Mon, 12 Feb 2024 20:14:03 +0100
Message-ID: <CAKHaR3k90Bn3oXPCckYiNqToGKUmCrfW6GZPNrM+7f0JOx7SoQ@mail.gmail.com>
To: gaytanc4@gmail.com
Message-ID-Hash: 3KAIXFYNO7QLNZLC5N4WFBAHG2Q7YVHX
X-Message-ID-Hash: 3KAIXFYNO7QLNZLC5N4WFBAHG2Q7YVHX
X-MailFrom: dario@iptronix.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Adding existing RFNOC blocks in GNU Radio GUI
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3KAIXFYNO7QLNZLC5N4WFBAHG2Q7YVHX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8583884910687636168=="

--===============8583884910687636168==
Content-Type: multipart/alternative; boundary="000000000000738c7b061134154d"

--000000000000738c7b061134154d
Content-Type: text/plain; charset="UTF-8"

You have to install gr-ettus which contains what's needed for compiling OOT
blocks and also installs rfnock blocks

Dario Pennisi


Il Lun 12 Feb 2024, 19:05 <gaytanc4@gmail.com> ha scritto:

> I also cannot find existing installed blocks like the radio block, DDC and
> DUC blocks in my current GUI. Any help would be greatly appreciated!!
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000738c7b061134154d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>You have to install gr-ettus which contains what&#39=
;s needed for compiling OOT blocks and also installs rfnock blocks=C2=A0</d=
iv><div><br></div><div data-smartmail=3D"gmail_signature">Dario Pennisi<br>=
<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">Il Lun 12 Feb 2024, 19:05  &lt;<a href=3D"mailto:gaytanc4@gmail.c=
om">gaytanc4@gmail.com</a>&gt; ha scritto:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex"><p>I also cannot find existing installed blocks like the radio bloc=
k, DDC and DUC blocks in my current GUI. Any help would be greatly apprecia=
ted!!</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div>

--000000000000738c7b061134154d--

--===============8583884910687636168==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8583884910687636168==--
