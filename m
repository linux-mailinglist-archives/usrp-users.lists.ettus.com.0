Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EDDD14D69F3
	for <lists+usrp-users@lfdr.de>; Fri, 11 Mar 2022 23:12:24 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B18C4384D5F
	for <lists+usrp-users@lfdr.de>; Fri, 11 Mar 2022 17:12:23 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Rlz5p/2g";
	dkim-atps=neutral
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 90E9B3846B9
	for <usrp-users@lists.ettus.com>; Fri, 11 Mar 2022 17:11:23 -0500 (EST)
Received: by mail-pg1-f171.google.com with SMTP id t187so8572378pgb.1
        for <usrp-users@lists.ettus.com>; Fri, 11 Mar 2022 14:11:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=ooD+KO9QUHpoD3JYtHC4S6FAgeZH4rW/fWTJaY7rW40=;
        b=Rlz5p/2gyicC6kve0tyHLiPHP/kTlRctacSqzoxyYT1eANY9dmQ2TrUcnAnseFO5y0
         C1anGHSTlllFOhH+0MrIGPs3uROURDpPhD1JYx1fYWwl3TPjWZsTtOj6dMz2K97wwYb6
         DRVEW6Pte/zVpwVklTO55R+5HAN8Cm5p7uo77Qn+fkymspw4vvWXgnFSTqp7I1ZKKy/C
         ajU8bDX7LG8C4vrm7kB8DVLdsJT9WjT67S1E4eB4JBr+fqM+jSH0C2C1UhcQJ5RdJKx+
         kB9H63w1aBRAz+dEqKQ15/0oW/YPuJf1GnDCtBnHAYCBPQUqT211Wgee+c0JEcQYys9T
         j11w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=ooD+KO9QUHpoD3JYtHC4S6FAgeZH4rW/fWTJaY7rW40=;
        b=nH/whi/BDBelVO1B60zIm4nar12pLEGCd8zETULa5Vpf1KMoMR17/YMpNjAuizApRL
         ANOcCVdDk7G55fln80++bm+TLrllpW6lcZeu3KyANpb1d8DPw61b7EuN7W964FjRGqyg
         dB2JcK04XuQdXhboOoVdmC7zL5Q2ROvTzOE/zj8ITFx4ITUOvAseuchbPYWbSNjTkiaD
         mYRcL4bXIa9V8VuojlEzeaXCVuQvbjBoYMON7VvyAvcWqFP3LEWrgsjMC79cP8AwWzSe
         bCu7uY+C0Yj4zVIaNiYDoW+34LcYhi3LAVwF5cy6hRhi1Ob+GLg82GK+nJG0/34i+xY6
         iQbA==
X-Gm-Message-State: AOAM531faALOKpJBIG3M0gyoIDhB0cbUTXl4RJTvXq3XsZfvGhrZ/2/N
	NqgSxdPiIBAi9qjVm+IJODSf/vtb9mZUk1cGrnpGHX2n48zmjQ==
X-Google-Smtp-Source: ABdhPJzAhXKOMNx+vLHoDhonG/dNgcqpC07J/Hh3pxdI7gapI2O5ljbQRn5u/8JXu4/zqJZHNDaMFVi/gIZgwcBacJU=
X-Received: by 2002:a63:4c2:0:b0:381:113e:2b07 with SMTP id
 185-20020a6304c2000000b00381113e2b07mr3428345pge.100.1647036682298; Fri, 11
 Mar 2022 14:11:22 -0800 (PST)
MIME-Version: 1.0
From: Craigs List <5000craigslist@gmail.com>
Date: Fri, 11 Mar 2022 16:11:11 -0600
Message-ID: <CAE+UwfCNb8ZQnriJogKoQwbu-evrZ5ATPxABkW-RKNZ+eupYWQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: GPDYRB4SAOILMHHOYQ3N4DF2SZSPOOFX
X-Message-ID-Hash: GPDYRB4SAOILMHHOYQ3N4DF2SZSPOOFX
X-MailFrom: 5000craigslist@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Register access on E310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GPDYRB4SAOILMHHOYQ3N4DF2SZSPOOFX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4143133489704758196=="

--===============4143133489704758196==
Content-Type: multipart/alternative; boundary="00000000000061699905d9f89c94"

--00000000000061699905d9f89c94
Content-Type: text/plain; charset="UTF-8"

Hello,

I need to do a direct read and write of the AD9361 registers on the E310.
I'd like to just modify one of the C/C++ examples. I have an existing
application that uses the AD9361 and need to document the E310 state.

Frankly, I am having trouble getting a clean compile, using uhd::usrp or
multi_ursp.  I can get things via the tree, but I'd like to be able
to simply do a peek8 or poke8 and read a register. How to do so?

As an example, I can see if the AGC mode is in fast or slow mode with
the tree (or the command line 'uhd_usrp_probe --tree .../agc/mode/value')
but I'd like to read the AGCConfigX registers (0xFA-FC) in their entirety.
I'm sure it's possible, but I have been struggling with how.

Thank you for any assistance you can provide.

Kevin Tolliver

--00000000000061699905d9f89c94
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,<br><br>I need to do a direct read and write of=
 the AD9361 registers on the E310. =C2=A0<br>I&#39;d like to just modify on=
e of the C/C++ examples. I have an existing <br>application that uses the A=
D9361 and need to document the E310 state. <br><br>Frankly, I am having tro=
uble getting a clean compile, using uhd::usrp or <br>multi_ursp.=C2=A0 I ca=
n get things via the tree, but I&#39;d like to be able <br>to simply do a p=
eek8 or poke8 and read a register. How to do so?<br><br>As an example, I ca=
n see if the AGC mode is in fast or slow mode with <br>the tree (or the com=
mand line &#39;uhd_usrp_probe --tree .../agc/mode/value&#39;) <br>but I&#39=
;d like to read the AGCConfigX registers (0xFA-FC) in their entirety. <br><=
/div>I&#39;m sure it&#39;s possible, but I have been struggling with how.<b=
r><div><br>Thank you for any assistance you can provide.<br><br>Kevin Tolli=
ver<br><br><br></div></div>

--00000000000061699905d9f89c94--

--===============4143133489704758196==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4143133489704758196==--
