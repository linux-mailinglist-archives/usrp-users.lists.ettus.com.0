Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9840780F5B1
	for <lists+usrp-users@lfdr.de>; Tue, 12 Dec 2023 19:49:22 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C594F384E88
	for <lists+usrp-users@lfdr.de>; Tue, 12 Dec 2023 13:49:21 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702406961; bh=czjzxfSYiRmcifB9fMOWR6v6HEJ/hRoCIeUV//KZ3dI=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=gO++JvJKMjipO7DEu3JH37DivW6fb7PzPUi0/Z4mcSv+crnerGyphRlvDGok+v4lo
	 j3F9UG/dThRgldL5R4a4BqshshhXA1HSbAA9eX+GjyptnHgoqH5zHomi/YuwernfL2
	 LDIK3RABwIJJbx0t59MCjnjeQ3xhc6tPAWSWrU1H1H7N8a/L0dwi5Qvvc928i12VlJ
	 FN6FantN9VQGQs3VfPvwUSAURwW2tNdBlEpBKCHYFk8cwQtRWBdbCqGHhQgT2bWBlD
	 aeq0a0Nd2Se8opBBtV1ljV42w/pGFOlCXkzMjF/oOgUi+2bjy2SYR1jF0CxvC5wDFj
	 gBcN7F39ct7qw==
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 7EBF4384B45
	for <usrp-users@lists.ettus.com>; Tue, 12 Dec 2023 13:49:10 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="I9I9MTfw";
	dkim-atps=neutral
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-54cdef4c913so14170975a12.1
        for <usrp-users@lists.ettus.com>; Tue, 12 Dec 2023 10:49:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1702406949; x=1703011749; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=gfn6+EIPfBp7mM/ded9jStanrCi6kr9z30XGIzn6PZA=;
        b=I9I9MTfwXpOhlj3C26U593SI0scPacr7V980OVSX8B6tT4r4QBtY11CvIovY/KV8pt
         VTnheS4Io4IKJYOKPPCF6SpqLV15DVd71Jj3MNZf2zhaOrsZzVFQBE8fEeIZMifFJSTe
         /rwpFm73W39qirWhdKnySGbzw6J//DluF64YDN6Am9lcDFnzC/N8uASJko9C+4dCugyL
         vwqTscPdsjcd/R5+BRXpUrhhjubdIogrs7AWOqqUSwmAR/hlj6QvOohHr/k9W9kHRXKp
         vTaJgJxOWSZ4o6qNLX4Uw1+U3YKJnfI7y8zlBJTNXrGHCSC5fEm6hqaTeNvMYL9B5In8
         +hug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702406949; x=1703011749;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gfn6+EIPfBp7mM/ded9jStanrCi6kr9z30XGIzn6PZA=;
        b=r4D/VpkwgMc8vZwQRsKzmU1mvXsXwka5ULdmfpCW6q11hcNGt+d2HQ97dFewH20GAw
         Pl+mXgge8TkcZRKtL8LKEpa4QgjL0d+i0YXvXYlx9TjiY9g+AuYF1SkqC4vi2jKQwFm1
         G8OTIUR1nZeKzgqc6VyExKVoJGJgv3RT4/YQOmDReMdsc4IAiVBn5l7u1HPAx6tnsilY
         gNzMzLkK2YYZwYWC9BzOeK9nY5axcnrtl0VlfO3J+QmHefA1SL5AQoqP27L4GP6k63N8
         zsSir6HqjG96U135xmXpH2/1HxodC4Y75PFddENhzHZCD8ak/AYo54ibHCKGMkkYPQWw
         6lJQ==
X-Gm-Message-State: AOJu0YwYSK910EFsxrprVyDnZMYV+LyXy4XD1e38ZHE8+DIViam5OchL
	nvuZ7CXC0NsawW2HjHyLZnmMJAcxPznJ3Xm9fCWVEDBB
X-Google-Smtp-Source: AGHT+IFRUZSqVfJX1jvrlMwzizBPidKmbHx58mmollAgSc8rbaoKzEIVaT9nGgdzThPUZo9+lXR7zMTDUEgqgd8gilo=
X-Received: by 2002:a17:906:74cc:b0:a1c:5c4b:6cff with SMTP id
 z12-20020a17090674cc00b00a1c5c4b6cffmr6200810ejl.17.1702406949011; Tue, 12
 Dec 2023 10:49:09 -0800 (PST)
MIME-Version: 1.0
References: <toa24R2P6rc648EVYtjhDK62dqCh2P2ERgg1Jueyxes@lists.ettus.com>
In-Reply-To: <toa24R2P6rc648EVYtjhDK62dqCh2P2ERgg1Jueyxes@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Tue, 12 Dec 2023 12:48:52 -0600
Message-ID: <CAFche=hEX-WiwPh_X_8WTx8gNxLkcoYsJ1_wnYN2iP=S+aW-xA@mail.gmail.com>
To: engr.muhd.hassan@gmail.com
Message-ID-Hash: DQ5W3VHWLJREEJKABEDXZ3HBLJRRIR2Y
X-Message-ID-Hash: DQ5W3VHWLJREEJKABEDXZ3HBLJRRIR2Y
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error while running command "rfnoc_image_builder -y ./e310_rfnoc_image_core.yml"
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DQ5W3VHWLJREEJKABEDXZ3HBLJRRIR2Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8536020264982195773=="

--===============8536020264982195773==
Content-Type: multipart/alternative; boundary="000000000000759615060c5481b5"

--000000000000759615060c5481b5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The E310 has a very small FPGA, so fitting the replay block and DRAM logic
is a challenge. You might be able to fit a single replay channel, but
nothing else extra. If you're limiting the device to one channel, you might
also be able to remove one of the radio channels and the corresponding
stream endpoint to free up some space.

Wade

On Tue, Dec 12, 2023 at 10:12=E2=80=AFAM <engr.muhd.hassan@gmail.com> wrote=
:

> Dear Wade,
>
>
> Thank you very much for your response. The YAML was modified by ettus
> research (Jonathon). He added replay block and sent me via email. I
> replaced that file in following folder (uhd/fpga/usrp3/top/e31x) and then
> run command. I also installed vivado 2021.1 according to his instructions
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000759615060c5481b5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The E310 has a very small FPGA, so fitting the replay=
 block and DRAM logic is a challenge. You might be able to fit a single rep=
lay channel, but nothing else extra. If you&#39;re limiting the device to o=
ne channel, you might also be able to remove one of the radio channels and =
the corresponding stream endpoint to free up some space.</div><div><br></di=
v><div>Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Tue, Dec 12, 2023 at 10:12=E2=80=AFAM &lt;<a href=
=3D"mailto:engr.muhd.hassan@gmail.com">engr.muhd.hassan@gmail.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>Dear Wa=
de,</p><p><br></p><p>Thank you very much for your response. The YAML was mo=
dified by ettus research (Jonathon). He added replay block and sent me via =
email. I replaced that file in following folder (uhd/fpga/usrp3/top/e31x) a=
nd then run command. I also installed vivado 2021.1 according to his instru=
ctions</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000759615060c5481b5--

--===============8536020264982195773==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8536020264982195773==--
