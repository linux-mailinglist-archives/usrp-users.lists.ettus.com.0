Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FC5EAEF919
	for <lists+usrp-users@lfdr.de>; Tue,  1 Jul 2025 14:47:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 82E56386325
	for <lists+usrp-users@lfdr.de>; Tue,  1 Jul 2025 08:47:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1751374076; bh=HSgRCZqeck1A5ypzaz++nBdAYSiwg4W7+cJJSnyFq/k=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=hrX+d+pG7lJjAnNMDIT61ilP8a2yZs6FFE5UB5Cg3Z9cMwy/J556yf9lLD02j64Fc
	 AOOBNhJ7c7e5AOS8b2iRUOCDCVY8EkAnm2kLT5B8ZKZei0OW8kXXbkos2fGwNMTyHo
	 GEJ2ZHDR9fFQec+pklZopJODhApWOozFkplEwe7QDG1eSoW/4N43wOdtXfFkg5i+Mi
	 9Q+aoX4wdAztzOnglme1L0pA3mypLUIe6CM4iBhNZlaV4l5Mm9W/heXdmxRMD63j8y
	 3rkkI+vokh8We3wBYz6osFxRCurtSkSp0bEUSYsPMxSkGPoOe14nEDqLalEQ8SKnLS
	 R3hFsSZr2N4Yg==
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	by mm2.emwd.com (Postfix) with ESMTPS id C367A3862A5
	for <usrp-users@lists.ettus.com>; Tue,  1 Jul 2025 08:47:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="YmqRzXe1";
	dkim-atps=neutral
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-60dffae17f3so4203192a12.1
        for <usrp-users@lists.ettus.com>; Tue, 01 Jul 2025 05:47:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1751374035; x=1751978835; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZRvgiK0o0nQqNiHD/uk6JnxaLHmMj74u7LR8sdJz07k=;
        b=YmqRzXe11roxpqLm0NNH+7T3TZGJ2cXpgEslkqxvvIuqyd2bLmmxc3uMdg1V6t8e35
         emUGqO4hVauKrty4+f/udXV9nFnqJfrEwDUu6ARqx8qb+yEhMBaQXUgRZBYbdkCnC6Oc
         0cuCoSsQm5xb6xuptriVmJXfdybCGaplCl9YjhyEUfj1CRpFlW626Ca2GidORT4bqqDv
         G+rF06frBXLPhcnoKZXWpyF2Gd7cdbis0/P2s7z41ga3a1EntLzpJxS3clHK4bSt27Gz
         Dr0xAT9g/qcc9ocmgU/TlJGkiiEsXPz3ddYydIq2pME18EOrMfxUUmZWljUCaft6uJ+C
         vWqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751374035; x=1751978835;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZRvgiK0o0nQqNiHD/uk6JnxaLHmMj74u7LR8sdJz07k=;
        b=IROYyXmsc9YkGDWq22cy0/B1kN8tSsM/t+ckoCOYkhb2GcAn54K9nR+OoPncQmMpSw
         GEsgoNkyU6obr80PJSn0ZuQlT8lIfr+ZDxOZlcVBli4eYMln5fvTnWinFF/YMmjq9YB9
         4IlDtfA0AKs5BivJk1OPd8cfuXxOHCexf+69jnEz8Vr/ga45hMUwO55z2Lz2EN3VvC+N
         VtQIjVbVNGMfOKGW4xs1i+E2BE2v5flawrneI2C1tEGj5akfpXd1eajv3kN266r+xPrt
         TF7HkNFfhw9pZ5wGDTDn3jc/yyPCKJ+k8dnvFXx7QuDjvsEwNVWc4WBEcyJemOyaYUPZ
         Izwg==
X-Gm-Message-State: AOJu0Yz1fDoluvaZ/Bl57QotCkLXzCBBehesYat65+Bq5iRg3696EmKj
	wxv3+SlmNpKOB1PnkXMQg5ThahhuuVmxOds9vmpW9r3UhH6HfoOm/cA0c7UenSSuUwv3a1LnrFt
	hNzy63N+hpS8VrMYYczRXgRgL1/f14tHiaHXUisSnb4hRrqx8Kz7uRKM=
X-Gm-Gg: ASbGncsP1HfYBk2Ko8uqxD5H9GK2xFPIZe0eJMXOzFiYkbMtauGg99eG3a/nL1pGtXj
	ah/rAog2yBvCVLn8Uh/CFl3+CmLbb1SRWpW9N5tXoWscmhljZB9cIYXxB6Ea97w3wXxAZMBrGqX
	y7MarRVeok/izmg2aKFBltMF/fkCSqdU66VufJEu+jV1XvKWaTcC8+Rlb21vMZW+ejOuvyziN2Y
	Sc=
X-Google-Smtp-Source: AGHT+IE9L79qhFQ6P6vdIY6WtcFLKHQ9lV7JR5b8OmHJbh3clk3k2hWUi1LHHk5tGvo7kU8qzcVPOj3IrI7BxpzOaE8=
X-Received: by 2002:a17:907:3d92:b0:ae0:da16:f550 with SMTP id
 a640c23a62f3a-ae35011ffcbmr1646456766b.49.1751374035150; Tue, 01 Jul 2025
 05:47:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAEXYVK7tEQFgKsgpRtnMJgXdgqk-76QARN5UcSuX3W=DnfJ+4g@mail.gmail.com>
In-Reply-To: <CAEXYVK7tEQFgKsgpRtnMJgXdgqk-76QARN5UcSuX3W=DnfJ+4g@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 1 Jul 2025 14:47:03 +0200
X-Gm-Features: Ac12FXwWlFyc4y-rNSXCKdIrYV3OFSg2bF56Yo6i43EOnsv80Med39hsgq6daDw
Message-ID: <CAFOi1A4bPd1GteLucC=9XNF_aTmjgkJJKc1qvZvd7C-RYMF2Tg@mail.gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: TWJ3G3CNHHROGOTG5I3FSWXDIEHSX5DZ
X-Message-ID-Hash: TWJ3G3CNHHROGOTG5I3FSWXDIEHSX5DZ
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Inconsistent Behavior Based on Host (X440)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TWJ3G3CNHHROGOTG5I3FSWXDIEHSX5DZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0322444289841076454=="

--===============0322444289841076454==
Content-Type: multipart/alternative; boundary="0000000000003bfd660638dd8bed"

--0000000000003bfd660638dd8bed
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Brian,

sorry for leaving this thread dangling so long. Did you figure something
out? This behaviour does indeed sound weird.

--M

On Sat, May 10, 2025 at 2:36=E2=80=AFAM Brian Padalino <bpadalino@gmail.com=
> wrote:

> I wrote a program to interact with my RFNoC block. I stream data to it
> which it stores into DRAM. I then write a control register and the DRAM i=
s
> transmitted.
>
> I have been testing my block over 100 Gbe using a remote machine and I
> finally got the results I was expecting. The spectrum looks great.
> Everything is consistent and works wonderfully.
>
> I then rebuilt my application targeted for the RFSoC and use 127.0.0.1 as
> the target IP. When I do this, the spectrum looks absolutely terrible.
> Investigating further, I see the DRAM AXI bus gets written with the
> appropriate data, but the read channel returns absolute garbage.
>
> To further complicate things, if I run my program on the external host
> with 100 Gbe connectivity, and then I run the program locally on the RFSo=
C,
> I get the desired output and the DRAM reads are correct.
>
> I haven't looked at the DRAM signals directly, but it almost seems like
> the write enables are disabled when I am running from the RFSoC directly
> but working fine when ethernet is involved?
>
> I am puzzled by this mainly because, as I stated, the only change I have
> is where the program is running. I would imagine the desired effect shoul=
d
> be the same for running on an external machine or on the local one?
>
> Any pointers or insight would be appreciated.
>
> Thanks,
> Brian
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000003bfd660638dd8bed
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey Brian,</div><div><br></div><div>sorry for leaving=
 this thread dangling so long. Did you figure something out? This behaviour=
 does indeed sound weird.</div><div><br></div><div>--M</div></div><br><div =
class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail=
_attr">On Sat, May 10, 2025 at 2:36=E2=80=AFAM Brian Padalino &lt;<a href=
=3D"mailto:bpadalino@gmail.com">bpadalino@gmail.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">I wrote=
 a program to interact with my RFNoC block. I stream data to it which it st=
ores into DRAM. I then write a control register and the DRAM is transmitted=
.<div><br></div><div>I have been testing my block over 100 Gbe using a remo=
te machine and I finally got the results I was expecting. The spectrum look=
s great. Everything is consistent and works wonderfully.</div><div><br></di=
v><div>I then rebuilt my application targeted=C2=A0for the RFSoC and use 12=
7.0.0.1 as the target IP. When I do this, the spectrum looks absolutely ter=
rible. Investigating further, I see the DRAM AXI bus gets written with the =
appropriate data, but the read channel returns absolute garbage.</div><div>=
<br></div><div>To further complicate things, if I run my program on the ext=
ernal host with 100 Gbe connectivity, and then I run the program locally on=
 the RFSoC, I get the desired output and the DRAM reads are correct.</div><=
div><br></div><div>I haven&#39;t looked at the DRAM signals directly, but i=
t almost seems like the write enables are disabled when I am running from t=
he RFSoC directly but working fine when ethernet is involved?</div><div><br=
></div><div>I am puzzled by this mainly because, as I stated, the only chan=
ge I have is where the program is running. I would imagine the desired effe=
ct should be the same for running on an external machine or on the local on=
e?</div><div><br></div><div>Any pointers or insight would be appreciated.</=
div><div><br></div><div>Thanks,</div><div>Brian</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000003bfd660638dd8bed--

--===============0322444289841076454==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0322444289841076454==--
