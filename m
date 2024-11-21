Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 79C999D493F
	for <lists+usrp-users@lfdr.de>; Thu, 21 Nov 2024 09:54:06 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 554A9385F9B
	for <lists+usrp-users@lfdr.de>; Thu, 21 Nov 2024 03:54:05 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1732179245; bh=c9eAfmpbje2ImBXhq1XWucn6nvF6+1Zv00XI0ECBSPo=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=TvBVDB3fn2cqyZQbmEoJz8HPthb4jL+vGMxn9UZcGWbpufu8tg94x7/LoSDhvvGdi
	 WDJQ9Hjpkl19ZFRk/z0SFhiR6w8joeWWcBSG61oqxHyz6o05iCJQVZ1yRuvMMj8nGW
	 uQVZaevqOMe+dqB4erJuDR9t3V+4fOCkD0Rc4OvooBtaFErdEkccXBjtddfEhEoG7m
	 P6bTINH1CuTyEtEW7eyPoA5JUHt6NcnInPgH7MbQ16hZln3KtW+2o5o4IBsmkz23qC
	 AtVnKiGf5KmoCatHdbTbTfQy04ql1z79y3lkep2V3ZdQoImM2XCRTbW2wrIHlBDYdx
	 oCoxPbzhf8mFQ==
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 8C377385E1A
	for <usrp-users@lists.ettus.com>; Thu, 21 Nov 2024 03:53:49 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="ygZytim6";
	dkim-atps=neutral
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-53da353eb2eso964895e87.3
        for <usrp-users@lists.ettus.com>; Thu, 21 Nov 2024 00:53:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1732179228; x=1732784028; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KtGmP0GfSG6VlKkHJe/hczusOTIAL8pFSxOmVnVEZLQ=;
        b=ygZytim6UCfAVDT/i5ITE/964EPAFqMqlMr1CzdEiLeHiFg0QPouWHtjxySjSSCy5h
         6pLB8pN6VamCR9TVtE2zdQJmy0aMQ3H7AZ5W9Pzfoy8/4rPp0zPaA7A1VRa68H6aOTcT
         1uMVQxmI+6G9zphTU5onSId3WM6RjKWFRQoaMdyII+NMiUni65JJkuJF0s5eDlIZG7gi
         wSO9Wg9/v1Xfzsz+ONLZbqC2hpIHLDH20TNO+oNrXqkGI0M++6JuJQNYQf+orJ18b8Qw
         Zp0/GpeF57S2uJYirREe5wtH1dAutAWSaXO/Ir8Hij9AgHQPMjzsxPWkW/+UIF/mwZyP
         dx3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732179228; x=1732784028;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KtGmP0GfSG6VlKkHJe/hczusOTIAL8pFSxOmVnVEZLQ=;
        b=YCJOVqWQacx5FIJvAHYggsnakKYOGK0eb30xxQ70OwRD/UO5QnYuYEh2HZwG3+thhR
         Ev3XntB+MTdsgqa5rWkFjgz6sw45ovs9Mi8sv7UzYM3VPs69TavXx/XzzL8PCSZikv03
         yFsmIvjWGIZP4QVGmgpFAM+XDNucw15JZEqyz4GVrqW1OSdQwvNpXUBHAL3LM5CN/iEX
         PUoZVMfYN/xsKJ+QlZjnKkEzWoe7gC5lWvDxHE8Kj9iTIov8Vx+EZXuXgA2k01Op2JLT
         OOLys/GLczsDRdIFvwHnrY++W8JYjAsb3XbD9znPJaUo95dwprScy22oGUsGMWSBBg50
         gTrg==
X-Gm-Message-State: AOJu0YyoKXVBkfT2MLH0/tno3m1qmQPK0UW7HXZABqZCztElqpuLSFGR
	3nNcDbp7G1Sc/VdXpZFUH/HpJ89/jgGYFhI18Tq3NvCQynXnAPuTNludfmMzxbc06CMhI2dvduN
	LVgZ25BYvqXLzJz3zd08MwRGp75dq3aHbNdyxxbOdYQz35YHkAXg=
X-Google-Smtp-Source: AGHT+IHvIm521bubPi6H60j5RI27UkNq+MSuEnq3vgKoCRTS/hFDZw489sVG3ahIeFe61cbmFQ8L3k7TFvbwH01Vvo8=
X-Received: by 2002:ac2:5232:0:b0:53d:a998:51b5 with SMTP id
 2adb3069b0e04-53dc132d7cdmr3322445e87.20.1732179227871; Thu, 21 Nov 2024
 00:53:47 -0800 (PST)
MIME-Version: 1.0
References: <kZftg1uRfg0M9aHO1ljKI4u2PWcQvyUZjxYqkTOVA@lists.ettus.com>
In-Reply-To: <kZftg1uRfg0M9aHO1ljKI4u2PWcQvyUZjxYqkTOVA@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 21 Nov 2024 09:53:37 +0100
Message-ID: <CAFOi1A5bcUVmTJo-gtMyrx_R6+pmD2hG+RKpKnd4Ws-TQsorBw@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: Y2NOBRVW46QNU3IUUBJ36RQJIS2MVQQK
X-Message-ID-Hash: Y2NOBRVW46QNU3IUUBJ36RQJIS2MVQQK
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: starting radios in parallel
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Y2NOBRVW46QNU3IUUBJ36RQJIS2MVQQK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0656614033018215413=="

--===============0656614033018215413==
Content-Type: multipart/alternative; boundary="00000000000090a88a0627686751"

--00000000000090a88a0627686751
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Jason,

With current UHD I have no suggestion other than what Marcus wrote. But I
took a peek into our code; the X3x0 actually initializes in parallel
(unless you disable that), but our MPM devices (which includes N320) don't.
I can see how this is annoying, especially since N320 initializes longer
than X3x0.

Do you have a point of contact for NI (like your sales person)? You could
make a feature request. I can't promise any fast resolution but that would
be a good way to get that addressed. You can also submit a bug report to
github.com/EttusResearch/uhd, but it would get lower priority than some of
the other things (as this is not actually breaking something).

Cheers,

--M

On Wed, Nov 20, 2024 at 8:41=E2=80=AFPM <jason@gardettoengineering.com> wro=
te:

> I have a project where I have to start up a series of N320 radios.
> Currently we do it sequentially and that can take some time.  Is there a
> way to do them in parallel? I thought I saw somewhere that the driver was
> the limiting factor for being able to have separate threads start up the
> devices at the same time to speed things up, is that really the case?
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000090a88a0627686751
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey Jason,</div><div><br></div><div>With current UHD =
I have no suggestion other than what Marcus wrote. But I took a peek into o=
ur code; the X3x0 actually initializes in parallel (unless you disable that=
), but our MPM devices (which includes N320) don&#39;t. I can see how this =
is annoying, especially since N320 initializes longer than X3x0.</div><div>=
<br></div><div>Do you have a point of contact for NI (like your sales perso=
n)? You could make a feature request. I can&#39;t promise any fast resoluti=
on but that would be a good way to get that addressed. You can also submit =
a bug report to <a href=3D"http://github.com/EttusResearch/uhd">github.com/=
EttusResearch/uhd</a>, but it would get lower priority than some of the oth=
er things (as this is not actually breaking something).</div><div><br></div=
><div>Cheers,</div><div><br></div><div>--M<br></div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 20, 2024 at=
 8:41=E2=80=AFPM &lt;<a href=3D"mailto:jason@gardettoengineering.com">jason=
@gardettoengineering.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><p>I have a project where I have to start up a seri=
es of N320 radios.=C2=A0 Currently we do it sequentially and that can take =
some time.=C2=A0 Is there a way to do them in parallel? I thought I saw som=
ewhere that the driver was the limiting factor for being able to have separ=
ate threads start up the devices at the same time to speed things up, is th=
at really the case?</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000090a88a0627686751--

--===============0656614033018215413==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0656614033018215413==--
