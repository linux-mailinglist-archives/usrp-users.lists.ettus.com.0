Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BD1C4916574
	for <lists+usrp-users@lfdr.de>; Tue, 25 Jun 2024 12:43:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 03222384FD8
	for <lists+usrp-users@lfdr.de>; Tue, 25 Jun 2024 06:43:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1719312227; bh=6OnnEhZkEe5FxyBlRCiTKh+5gT5zN6WyavjiZ5W1Ka0=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=pNnwO3zQZFaIKlImUQ4cz0YzWBEVwgJXC7tcDgmOWjzAKHvijh1S407s64KnJK5gk
	 z+6U+wcJaku9gXP2DZa/uDj8FynvEdyrmjufwa+kv3MFMWbqZ/b70ymCQL0/N2xgKL
	 qZ3m8xvMOBhzi9Fnn97EgAurrs0In8edU4/hjS32l7lZpczrRzFnk5HXZ7DGaKv9Q0
	 xNK0uOgqArJot+YgOIU0Sq/Cs2yyezd+NEU5/PMiigxgmY65e/X/xTK42Pter1uItU
	 DbkF+gO5spuk1jFY/5T0ww7MmhTsperReebNVtDrBoAR2iwIABb+fgSW+yK7k4sTGs
	 l6S/rqFnmutlQ==
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 6AD65384D6F
	for <usrp-users@lists.ettus.com>; Tue, 25 Jun 2024 06:43:01 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="ppDG0mtQ";
	dkim-atps=neutral
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a727d9dd367so15648766b.3
        for <usrp-users@lists.ettus.com>; Tue, 25 Jun 2024 03:43:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1719312180; x=1719916980; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=otr1vSBagOqte1boNAubP9Jer28mAE3CeP/RkXANIPk=;
        b=ppDG0mtQrwdVb1zgETHsl45KUV1C8DgcsDnQaf0hMkawe28VCA9ostxrIOpPONZHo0
         RCZM5qTmIwoQmaMVd43C0NHuWn+sTQxmqF+HFisq+s/XdmlITM9pUI34A3xNergvS+Ey
         JS7MNssFcViZUyxro5JwPZwNOcl6iubK2S/nqECLkQM7API6XdcDKIb73YN8+AB2Awuh
         xTNVwdntwHhDuLKLZNVqPXEE8qqvVpQFsM/XmB/LWxgBvi2Ve+ZQkwhvwwJ/mq1y0wRD
         I84s8jfgEAR9Av6+XDC/u0TUTwulEWx4C78VirEuxD2S36wl+gBrdzhcM3U/e0ZFaZRJ
         Dvsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719312180; x=1719916980;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=otr1vSBagOqte1boNAubP9Jer28mAE3CeP/RkXANIPk=;
        b=n4n+In4sEcEbIxUwqSzsZ2igjIgEbwlmx989X+4LR01o9Ly3ilSs4PJBpKcBdiV1LF
         FOO3uWVBJ46KbC7WHiCgRnLT22DmfRGudKGPmZLWJVLMZ1k5ObMjxG1TYtTqmOAvjZPn
         KyBTSfh+LABLvMHtlxe50Z27tumMUfxiRBR//66MOwhX5ZBzG/oOwfwJP5NfN2zXdbp+
         0hZJf4tiX/lLeyFmP/S1iNOKDxJeFvYCddPzwdJFyL8lTLstLLyrKQgU6NI//YLhBfP9
         RaLtgTsyWl4svDoBQZfpNPd/E/S5Mai5blHkdn7Uc9GyJmhoYw1RExM0rllWR5vb3u7s
         LCSA==
X-Gm-Message-State: AOJu0YyTaEyyDwjRY21k89eiONzSilzifLoI0qWo1rRlanNdXFfwois9
	iZXxALNKqpNS8lzE2TzkiXPBkEJIqx4d1CsZUQBa1eOpQA/6IS7AhOyaUpOLhpl5S4rG2Ht7/l8
	whedUgxWKALWhw9jvi3yEdF5j7ORF8ISwx1+lXr9F8j/y+rUg6FQyjA==
X-Google-Smtp-Source: AGHT+IEuCHp/4lNkKjS0dHOeYr6IQD+rPGBm/ecu6ug1kFMbopdin46bDFXaO2PMU6jwkZZbW5pPswo8OKf1uFzHJTE=
X-Received: by 2002:a17:907:d38b:b0:a72:506f:5910 with SMTP id
 a640c23a62f3a-a72506f5975mr535491466b.41.1719312179816; Tue, 25 Jun 2024
 03:42:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAKHaR3=8BVEqujkPk7b9N5bfwqGS=EzsAdcP6e5=qKVwgxvoXg@mail.gmail.com>
In-Reply-To: <CAKHaR3=8BVEqujkPk7b9N5bfwqGS=EzsAdcP6e5=qKVwgxvoXg@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 25 Jun 2024 12:42:48 +0200
Message-ID: <CAFOi1A6OZbXZpLD4_UV4mOPChjsLrdVbjtA_=TKRgG_iYOej1g@mail.gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: 6OJHMVGFXTK2HY7QECCNA5V36XV3GC55
X-Message-ID-Hash: 6OJHMVGFXTK2HY7QECCNA5V36XV3GC55
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: kas and meta-ettus
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6OJHMVGFXTK2HY7QECCNA5V36XV3GC55/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5153524137301963081=="

--===============5153524137301963081==
Content-Type: multipart/alternative; boundary="000000000000bc814e061bb48fb2"

--000000000000bc814e061bb48fb2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Dennis,

we are using kas 4.0 for development.

--M

On Mon, Jun 24, 2024 at 4:10=E2=80=AFPM Dario Pennisi <dario@iptronix.com> =
wrote:

> Hi,
> i just realized a new version of meta-ettus using
> kirkstone/uhd-4.7/gnuradio 3.10 has been released and wanted to give it a
> go but i'm struggling to fund the right version of kas to use. so far i'v=
e
> been using kas 2.6.3 for the zeus version(s) but now i have all sorts of
> errors with that and with newer releases (haven't tried them all yet)
> any hint?
> thanks,
>
> Dario Pennisi
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000bc814e061bb48fb2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Dennis,</div><div><br></div><div>we are using kas =
4.0 for development.</div><div><br></div><div>--M<br></div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jun 24, =
2024 at 4:10=E2=80=AFPM Dario Pennisi &lt;<a href=3D"mailto:dario@iptronix.=
com">dario@iptronix.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div dir=3D"ltr">Hi,<div>i just realized a new versi=
on of meta-ettus using kirkstone/uhd-4.7/gnuradio 3.10 has been released an=
d wanted to give it a go but i&#39;m struggling to fund the right version o=
f kas to use. so far i&#39;ve been using kas 2.6.3 for the zeus version(s) =
but now i have all sorts of errors with that and with newer releases (haven=
&#39;t tried them all yet)</div><div>any hint?</div><div>thanks,</div><div>=
<br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_signature"><div dir=
=3D"ltr"><span style=3D"color:rgb(0,0,0);font-family:Calibri,sans-serif;fon=
t-size:13.3333px">Dario Pennisi</span><br style=3D"color:rgb(0,0,0);font-fa=
mily:Calibri,sans-serif;font-size:13.3333px"><br></div></div></div></div></=
div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000bc814e061bb48fb2--

--===============5153524137301963081==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5153524137301963081==--
