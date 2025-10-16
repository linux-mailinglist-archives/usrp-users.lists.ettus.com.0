Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A6EFABE1F09
	for <lists+usrp-users@lfdr.de>; Thu, 16 Oct 2025 09:35:46 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B442D385A61
	for <lists+usrp-users@lfdr.de>; Thu, 16 Oct 2025 03:35:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1760600145; bh=hrXysNnq6eo1PbEeXU6ArFh4cGv2s6pssMVgd/cGg6U=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=JHTAH5YzGKp5bpZwWHiKI7cRogNFic4EIyTkC5Nux8r8gp/SGQMF0HGhF25Pr9NE8
	 J2EEQ0mkOrQnNuswuiU7d7UDF3tu+5pyYGLXGTYNb4/qoAufW+TCBLwqonYd+Sbzqf
	 pS86U2EUe1/on6DVc5HC3hFb0FFVyV0lxctanXZKXJ1TNdUrcqXtxQXmU5GAoyQPqm
	 GlDKF0rOWreY5ncBPoQk9SKEbMn75VBbnsQa/XowjE8Af47OmpEXxL+dVuDKfcv60j
	 hxNBvZxX6TJVIuzbd66E6DldUpfRanTPeefGxoRO01ly/QbKSzO/IApvFYwFdGsVqD
	 f46GiYBrIEvTw==
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 69B52385A61
	for <usrp-users@lists.ettus.com>; Thu, 16 Oct 2025 03:35:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="D03q0/z8";
	dkim-atps=neutral
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-b4aed12cea3so59779266b.1
        for <usrp-users@lists.ettus.com>; Thu, 16 Oct 2025 00:35:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1760600139; x=1761204939; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2IhY8X+1E3SFwehdeO6+rx8UCF/Xc18h/f5jwsiUvBE=;
        b=D03q0/z88GzXrTTA1Q9QFJwf/+N+xCvokEhJIk/vUJ8ez52vCu9zBH+w4XjmmvXy4p
         8X7J2jb6YjvbMAX+h4gF1s57nEkAqWUA/ZP+rDhnnW/b2e0gKJ/Ecpja7uBj6CaCEFPJ
         Upnap4y5twyju1AkWlJPMKPIH7edUigVz/IbCukoNvboE1VQ7vPQDkyP7qFV6Z9t+hxw
         bKuhvMBL+cnwj/+HaTt5EqKyGvRgo0FD5vbP9LE4wfnLHJjami6M2GV19+8XBty82t8h
         k+MDcYquJNaRDawrlxsjJaimMxQICQkp5TxJ/Nv7nr8dAm4UqDV5OJGG+Gy3NDH7vx+U
         aDew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760600139; x=1761204939;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2IhY8X+1E3SFwehdeO6+rx8UCF/Xc18h/f5jwsiUvBE=;
        b=TCw0OSDJrnMbcEdBqDFuXbGj07Q10U3joxKop5kuS9VokKRrU47Of0J8eJJD/fh2Rb
         8aOVMdnyD9SCsHMdz/Dq4fVjLv6GOy/fjWAPgedFs+c3R/0XwPhpwQZPnAHek7bWGFVb
         x4OBYIIY03tXVp285mrMFyqYPxqfKOQpv20HepqlgDb5SAD1NQ31b8PrNO+egttuILYq
         pMp/Z2lwBTfWs4ZFgTPOQKCGDMledAvb0uJKcHK4EoKkIpREm5eMHhQM4ozwa/FKUH1B
         JXUhWIk2tHJ0ANpmdZ2sHWvR5mQIiKtCACeQDemnposvb/LxtI/174fpxhlctPVK8ur5
         HKUw==
X-Gm-Message-State: AOJu0Yy9ZwEX19zq9Y21gzqy3FT48HI/OI668Fbaa13+dPW/dSHWzuSv
	02NCzMXFLOKID9Zp294r0OncqPiPXITaM0JaQ3BnX6QxKmG2w0BmMO0pYt2UDTFb4Y4JF8CotQN
	nXx7PGlXjDkuzSCpV1NcUaUdL9U5XnHAWsT50NSZzkFXtVpP2UGe75Qk2HIGx
X-Gm-Gg: ASbGncsLbUNWhrbQvANeTQRqa7euSiFnp2y/7AfVhHocgxFo58hLdZKf6Pwmh7YBz71
	dvWuzVKiDxocmnSsmHTO2EgwDnHwJUZk0/+famK31rfyti658/+2xafdryBL84pkrsuf1rt/Av7
	Bbsa4ZbWe42dYti/KE49VttmYBuOz9zceMHyeHQh2jwtNuttUfllCZsDSu2FKww4Yc6dJsHm+bC
	u/hF8v6onVg7JdSAorb5slANt+9eYyzT4ly31199p8ZlZytW9pBAoBfDnvaRTATvylmMmsaPiK+
	65u9VIaXT13AgkmRpBrjeHoLpw==
X-Google-Smtp-Source: AGHT+IEdcy1F+P2pZMN5yHZs63G4pA1fpkUW3CKL1KFTFagoSEIGU+vllXn9YaXjZyvB7jbMjuz58GGVpdh1X6U1VCU=
X-Received: by 2002:a17:907:7246:b0:b46:6718:3f2a with SMTP id
 a640c23a62f3a-b50aca0b701mr3165348166b.65.1760600139093; Thu, 16 Oct 2025
 00:35:39 -0700 (PDT)
MIME-Version: 1.0
References: <lfcxVqCQU7aXNUjOutxoSdaYYohLoAYQUuvZ3W28JKQ@lists.ettus.com>
In-Reply-To: <lfcxVqCQU7aXNUjOutxoSdaYYohLoAYQUuvZ3W28JKQ@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 16 Oct 2025 09:35:27 +0200
X-Gm-Features: AS18NWAPdfHJvsy_B1hTBrjg1-43PlDbzzdRebxFu-TA_GSktVPrO7kD1h3Q2ZI
Message-ID: <CAFOi1A5S3gx3d3yQNE0E7g2QVrjgoNW5E4ODfZNWG2ah4KOtoQ@mail.gmail.com>
To: ryan.a.wolfarth@gmail.com
Message-ID-Hash: ANGMSPX3V3WXBXO3HJGC73F5NJ5WAGQI
X-Message-ID-Hash: ANGMSPX3V3WXBXO3HJGC73F5NJ5WAGQI
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Accessing DDR within OOT RFNoC Block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ANGMSPX3V3WXBXO3HJGC73F5NJ5WAGQI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7661120971116715206=="

--===============7661120971116715206==
Content-Type: multipart/alternative; boundary="000000000000e1e399064141a933"

--000000000000e1e399064141a933
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Ryan,

I don't recognize that commit hash. The commit you need is at least:
"509dfffc1b rfnoc_modtool: Render IO ports for new blocks". That's fairly
recent, but it is in 4.9.

--M

On Wed, Oct 15, 2025 at 10:15=E2=80=AFPM <ryan.a.wolfarth@gmail.com> wrote:

> Hi Martin,
>
> I think I=E2=80=99ve done as you asked, but I still don=E2=80=99t see the=
 memory mapped
> interface in the HDL. I=E2=80=99ve attached both files for reference.
>
> Because I=E2=80=99m not confident I created the YAML properly, I tried ag=
ain with
> the contents of the replay definition copied into my OOT block. That try
> gave a similar result as the first. The associated files are attached and
> appended with =E2=80=9Cv2.=E2=80=9D
>
> Could this be a UHD version issue? We=E2=80=99re using 4.8.0.HEAD-0-g3081=
26a4.
>
> Thank you,
>
> Ryan
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000e1e399064141a933
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey Ryan,</div><div><br></div><div>I don&#39;t recogn=
ize that commit hash. The commit you need is at least: &quot;509dfffc1b rfn=
oc_modtool: Render IO ports for new blocks&quot;. That&#39;s fairly recent,=
 but it is in 4.9.</div><div><br></div><div>--M</div></div><br><div class=
=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr=
">On Wed, Oct 15, 2025 at 10:15=E2=80=AFPM &lt;<a href=3D"mailto:ryan.a.wol=
farth@gmail.com">ryan.a.wolfarth@gmail.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><p>Hi Martin,</p><p>I think I=E2=
=80=99ve done as you asked, but I still don=E2=80=99t see the memory mapped=
 interface in the HDL. I=E2=80=99ve attached both files for reference. </p>=
<p>Because I=E2=80=99m not confident I created the YAML properly, I tried a=
gain with the contents of the replay definition copied into my OOT block. T=
hat try gave a similar result as the first. The associated files are attach=
ed and appended with =E2=80=9Cv2.=E2=80=9D</p><p>Could this be a UHD versio=
n issue? We=E2=80=99re using 4.8.0.HEAD-0-g308126a4.</p><p>Thank you,</p><p=
>Ryan</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000e1e399064141a933--

--===============7661120971116715206==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7661120971116715206==--
