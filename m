Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C2B7DAB8E33
	for <lists+usrp-users@lfdr.de>; Thu, 15 May 2025 19:54:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id ABAC3385E48
	for <lists+usrp-users@lfdr.de>; Thu, 15 May 2025 13:54:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747331673; bh=fSlSnUQFo1zmqz9yYlPdoUB3SWhoIsz3l8yk3M9Ffl4=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=U6N8s9b0wwJcaDmDV7TozMNOzpcU+yN3Hf149sD3KXda4XFNPWLmAAjcplgMbK+Ht
	 xu7FeckCXPNtWlnmHUGn3U5F493gjJZJXBJ8QCKzD21Yx05W52XC76Q61M8Ww2cszv
	 k1kpXsVp1X3Z4udh4IybKXFynKRUA+6LTehUP5R3SjTLrlpyZfrDXuDHrn/mFhzEW3
	 Y6BO3LiMv+w5wUUNbMZ/Ind2Q1xIUnlnCGpOspVFRUGkgokagyCX2Lm0prdE8DX/ZX
	 XLwySKEgWlW0OCXU/PdQF4GvxkZTvWflqBwMioDrHaNfNN6PVA2vJqYFaZ6HZImpii
	 YneS3mLbIqcRQ==
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 444C9385CF9
	for <usrp-users@lists.ettus.com>; Thu, 15 May 2025 13:53:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Rru3l72M";
	dkim-atps=neutral
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-ad1f6aa2f84so257710766b.0
        for <usrp-users@lists.ettus.com>; Thu, 15 May 2025 10:53:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747331632; x=1747936432; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Fn3tQjh/QD4+4+7/lc+aiXxQ4yZV6n10wfqqLM0Ac8Y=;
        b=Rru3l72MLvId/au+qmz3tiT3j5TqNG83sK/ZrmQPhqk5BOCG2swbIV3LAN7YMxCg/N
         giXr9ccE3M6I7kslgIxDf2WYVClHFFcXSR28IvGtPaTekncNwDzQiGMkPyc7RD5No3bS
         uN+t5JcuJoKZ3qRqfPV3S0rLvyeFp6LYdAZX/TtNJM2EMuHDrgF0b0LNR8AunQStyl7g
         fSN39/ePwrzRjpQR5LfJb7+i6qaz0BRVjszI5M6pcvrNAW2JrEIA2bz37c8g0jghZLQp
         SUfLeRsmzC/52h681VbaddLbIb7Ij5WspHx19gHwNIYihYq6tG7+DdUEeEXQanlrKzGS
         SSzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747331632; x=1747936432;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Fn3tQjh/QD4+4+7/lc+aiXxQ4yZV6n10wfqqLM0Ac8Y=;
        b=st25tSkjt8Wwj8Edu9Bz6LrFPNCXs7tFgWFVNhECsAodzLp26B3A1yjnEriKBORQQv
         VBCKfisyw+NDTC+N7SFl2qIuAOyFKKhyHy4OCDEKxbTi2/KNUL9/4vF9mzgm9YIb+xJg
         JYHZEGVwlE/CgF+5N4q/j5nVzJ5+G1/1Gi5ndVm5bGKbM5uTtrpz1ZB+E704dHwPhBR2
         qK1Xxu7zJf+uWHwHxg4OzuzgVeFdaGc/zb8ZvvlJRZJg6+aH7ADgejCS8YpHHbKNx6yD
         7eaB0+B9mw9Eeq3Q4sEdSNrWlB/qG/FkUkpbVDU0IAW5jB6kDVZob1uUtecPdvMxB8J3
         h9oA==
X-Gm-Message-State: AOJu0Yyoe0GTi56eKr8zN7CvP8H52DPnHEGGe7nhHKlSAjDeo/1ncRJ0
	/6yXfx6iDwb3MjdWDsuWHIdo+W5D+fcW76aF1M7UQP8cvf70inkTA9QEylj4BC/lt7iRYRcRAZb
	y4+tb+/QnrIXcq0IAphcR6LIGAtZ2lJk=
X-Gm-Gg: ASbGncus1PsmpGLuQ//jGavFwmcIpPG1n4Bz+H0QurozZ41jPwKDOBPDjuPx6Ff+k83
	BbT43y3SgMmivek4dXm30vK6twuDHxpBuOdLWdzkEH6oFSQ4a7ZWIroCC/1kqSf0Ez7Hor7UjVl
	g+v4F/RX6F6roHUQFTjhS1wTFJl3u8L0E4
X-Google-Smtp-Source: AGHT+IFdpQjNqXfrFSW0UnGb37c2HrrZCjLCiVDwPoCD4liNMjj5W8rxYG53WezFGyjWgvjZyj8X2UytDr9k8fpFojg=
X-Received: by 2002:a17:907:8dc3:b0:ad2:2d75:d7fc with SMTP id
 a640c23a62f3a-ad52f324fc3mr17868166b.10.1747331631960; Thu, 15 May 2025
 10:53:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAE=q3UNk13p1x49SCNAH_ku3z2p7stxtD=_vU3-AucX=US2GJA@mail.gmail.com>
 <CAEXYVK6B=cERWVd7XWv4=6-Ta2BN-dxKxzmpAM-0JOhj1Qo2QQ@mail.gmail.com>
 <CAE=q3UPho0_BXnC=H_9rrNF4kyr9MV4Emm4tyg0-8vrSYZRbOg@mail.gmail.com> <CAE=q3UMR3n+-QtRW=PF7hKicH-u2ZA6vj3oHRJ_NnZN0RX+tKg@mail.gmail.com>
In-Reply-To: <CAE=q3UMR3n+-QtRW=PF7hKicH-u2ZA6vj3oHRJ_NnZN0RX+tKg@mail.gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Thu, 15 May 2025 13:53:40 -0400
X-Gm-Features: AX0GCFvVURyBs4KXvaC-xbpSV9xEIVrPME3UEWXdnOscyL1P4e6CZhPqVMPB7ps
Message-ID: <CAEXYVK4AOz4hPsLVr-dQscg=YnmDnwD-Y9AgMwSh-dk5tOAipA@mail.gmail.com>
To: David <vitishlsfan21@gmail.com>
Message-ID-Hash: TROVGFEC6CJSHFQUSQPHR2UNPLIXPZFZ
X-Message-ID-Hash: TROVGFEC6CJSHFQUSQPHR2UNPLIXPZFZ
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DUC Behavior
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TROVGFEC6CJSHFQUSQPHR2UNPLIXPZFZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8971326424314639796=="

--===============8971326424314639796==
Content-Type: multipart/alternative; boundary="0000000000003a5e9f063530595e"

--0000000000003a5e9f063530595e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, May 15, 2025 at 12:14=E2=80=AFPM David <vitishlsfan21@gmail.com> wr=
ote:

> Brian,
>
> Issue is resolved, it was how I was asserting EOB from my block, and the
> corresponding effect in the axi_rate_change state machine in the DUC.
> Everything looks good now and it is beginning to make sense.
>

Glad you were able to resolve things relatively quickly. You did a great
job explaining the problem and posting relevant information.


>
> Thanks for the help!
>

No problem!

Brian

>

--0000000000003a5e9f063530595e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Thu, May 15, 2025 at 12:14=E2=80=AFPM =
David &lt;<a href=3D"mailto:vitishlsfan21@gmail.com">vitishlsfan21@gmail.co=
m</a>&gt; wrote:</div><div class=3D"gmail_quote gmail_quote_container"><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Brian,<=
/div><div><br></div><div>Issue is resolved, it was how I was asserting EOB =
from my block, and the corresponding effect in the axi_rate_change state ma=
chine in the DUC. Everything looks good now and it is beginning to make sen=
se.</div></div></blockquote><div><br></div><div>Glad you were able=C2=A0to =
resolve things relatively quickly. You did a great job explaining the probl=
em and posting relevant=C2=A0information.</div><div>=C2=A0</div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div><br></div><div=
>Thanks for the help!<br></div></div></blockquote><div><br></div><div>No pr=
oblem!</div><div><br></div><div>Brian</div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div class=3D"gmail_quote"><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex">
</blockquote></div>
</blockquote></div>
</blockquote></div></div>

--0000000000003a5e9f063530595e--

--===============8971326424314639796==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8971326424314639796==--
