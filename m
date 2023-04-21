Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B70B96EB1BE
	for <lists+usrp-users@lfdr.de>; Fri, 21 Apr 2023 20:39:02 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 36719384669
	for <lists+usrp-users@lfdr.de>; Fri, 21 Apr 2023 14:39:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682102341; bh=U1usu2jLZM28wPBoXSLLkOWmJleoh6hacdqPFQdrZNM=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=lxdkU6vTlo1fxlx2EfNWYOpCv441wqbd19N6W9sfGIsfZ6HunH27nUDL50m9R6kJc
	 kIhkEauxvfVT1FBNTp3mBXz/Oh1gUs3I37UQ1lcxT8xfutlkTCrRi3vvQ5gHGYNdtV
	 vAQsbeADvdiAM9dfIG87OCwPX1hanpBTrh8dYbKzjWqeFKwzJFNEHeN6ZpVQxDWmv+
	 0YmoGdUUUARe5XiTygt+vKhF+zMfQZIkSUDuiU3Pz+cHl/non7/1MhfbeXBmr/kwqW
	 TtU1pY3K1bP99j5enVTJo4bwUvBMFSu47aRGncJm0Kvs5ilNPubbSS93z7JeMWwZ8s
	 jFEXVg7ZMJhBQ==
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 75CEB384669
	for <usrp-users@lists.ettus.com>; Fri, 21 Apr 2023 14:38:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="RY2B4bQL";
	dkim-atps=neutral
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-50506111a6eso3510402a12.1
        for <usrp-users@lists.ettus.com>; Fri, 21 Apr 2023 11:38:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682102319; x=1684694319;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=nvgXjpIYmIuoHB34zd1Xqiqpf/8FEXxUACG6aIrCIII=;
        b=RY2B4bQLuvUhVstdQOiUKw4y8TBhadetYnV1iz8I4edVWm41O6l7l1b+xVd3gyFKdC
         LYHbEoBOi4oJy5thxUj1rEVydspQsiAHUhcu+AyUV+BeEZUa4uI5LsPKmbc0O2yU4A1W
         /e4mBGZG5RGJP65VQ3mWHnK1p5AcipzY/9KPCdrQxKy1k9VKjCapgAkh2016V1tUgXTP
         6lDcynnLaWPBVkzeZmHExEfarB25L5T260fyUGTJmQFh9MR/9ReKYL/bCIOjwAt7jJzP
         1aZhNFSBJC+H9WJG6nfP9dtWN9zaULsEuwDdJ9x4nP3POrlFxccuQNzCGVCgX1ouwzGQ
         Ns8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682102319; x=1684694319;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nvgXjpIYmIuoHB34zd1Xqiqpf/8FEXxUACG6aIrCIII=;
        b=W8J5mwCOYvdCp8qXkOZvt/xZUxcWvEBckSTQMSkzuYvUoegKQ+IwI5/tfpR0wurYqh
         beCwgtDGfBiQfHHMWyrmrHjdXRG9VzTszg2K9CdL0POYwFUjWEohJaNCVein1tfxB0S5
         jByeu9dR/ZoPtDV9mOId8bcXZcakvyqNifY+pBmcqX1spujr+Ej7r++BOobv/2ng+wmP
         RZmQMx0cPRVK0nrOGR0K1iqe92eOLHi1RyMt6zz1gelBIDN6jteXhQUeUPhlTkBNcWQn
         5Uxaz776qMLYmzVW0jUJ2UaZSzb9emrLE9nEHqFEt8169D4lMa3o114ssIEjqdL7NCpj
         YV9w==
X-Gm-Message-State: AAQBX9ee5UjR7HuU0gf5KMQM60hRybc2D+zHbSwovmteooJGcFUI/sTE
	kKo1pEKgPBbisQb7eQW4cSWTHBAlBBAYdzjv7TsLEyxv
X-Google-Smtp-Source: AKy350YeWdLdUOT7TJMnGItgpffpphggTlwKNrLGbmFUqTuzH1Hhfn16q1ReZcILhQzaU2HGRd6CqNEMTOCoKeR6Rzg=
X-Received: by 2002:a17:906:fa14:b0:94e:ffab:296a with SMTP id
 lo20-20020a170906fa1400b0094effab296amr2899162ejb.73.1682102318952; Fri, 21
 Apr 2023 11:38:38 -0700 (PDT)
MIME-Version: 1.0
References: <cPLSfXQbPtmOYLD4qcX1ZXQmkxMOb08nPk3YtZmbmYk@lists.ettus.com>
In-Reply-To: <cPLSfXQbPtmOYLD4qcX1ZXQmkxMOb08nPk3YtZmbmYk@lists.ettus.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Fri, 21 Apr 2023 14:38:28 -0400
Message-ID: <CAEXYVK505qeVip+vbJ9NXXZMZE2WSZQDXFy7O6jutS2Rh+rocw@mail.gmail.com>
To: jmaloyan@umass.edu
Message-ID-Hash: 6XPCLYL7IQ5SEUCNQXUNJDME2JZAOZ7M
X-Message-ID-Hash: 6XPCLYL7IQ5SEUCNQXUNJDME2JZAOZ7M
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Overflow using Keep One In N block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6XPCLYL7IQ5SEUCNQXUNJDME2JZAOZ7M/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5827812793141844611=="

--===============5827812793141844611==
Content-Type: multipart/alternative; boundary="00000000000032758a05f9dcf7ff"

--00000000000032758a05f9dcf7ff
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The X4_400 image has no decimation inline.  That means that the block needs
to be able to handle 491.52 or 500 Msps coming into it.  That means more
than 1 sample per clock being fed into the block.  If you don't handle more
than 1 sample per clock going into the block, then you will get overflows
because the RFNoC framework is translating from N samples per clock down
into 1 sample per clock at the clock rate - my guess is it's either 122.88
MHz or 245.76 MHz? - which isn't fast enough to keep up.

I was recently told that the DRAM clock is 250 MHz which makes for a
perfect computation engine clock for 491.52 Msps data, but still slightly
slow for a 500 Msps stream due to the RFNoC header overhead.

tl;dr: Use multiple items per clock in that block to avoid overflow with
the X4_400 image.

Good luck.

Brian

On Thu, Apr 20, 2023 at 6:41=E2=80=AFPM <jmaloyan@umass.edu> wrote:

> Hello,
>
> I am currently working with the X410(X4_400 image) using other the 1Gbe
> ethernet only(for now) and an image that uses the following RFNOC graph
>
> Active connections:
>
> * 0/Radio#0:0-->0/KeepOneInN#0:0
>
> * 0/KeepOneInN#0:0-->RxStreamer#0:0.
>
> Regardless of any value of N I use(even when the maximum value is used), =
I
> get an overflow error. Though it does appear to effect the number of
> samples I recieve: higher values of N gives lower data rates. The data
> rates I do get however are far lower then expected despite the overflow
> errors. For example, for N =3D 100, I get around 0.37 KSps, when I would
> expect around 4-5 MSps.When I request data using the default images
> however, I am able to achieve much higher data rates, at least 10 MSps. A=
ny
> tips is very appreciated.
>
>
> Thanks,
>
> Joe
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000032758a05f9dcf7ff
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The X4_400 image has no decimation inline.=C2=A0 That mean=
s that the block needs to be able to handle 491.52 or 500 Msps coming into =
it.=C2=A0 That means more than 1 sample per clock being fed into the block.=
=C2=A0 If you don&#39;t handle more than 1 sample per clock going into the =
block, then you will get overflows because the RFNoC framework is translati=
ng from N samples per clock down into 1 sample per clock at the clock rate =
- my guess is it&#39;s either 122.88 MHz or 245.76 MHz? - which isn&#39;t f=
ast enough to keep up.<div><br></div><div>I was recently told that the DRAM=
 clock is 250 MHz which makes for a perfect computation engine clock for 49=
1.52 Msps data, but still slightly slow for a 500 Msps stream due to the RF=
NoC header overhead.</div><div><br></div><div>tl;dr: Use multiple items per=
 clock in that block to avoid overflow with the X4_400 image.</div><div><br=
></div><div>Good luck.</div><div><br></div><div>Brian</div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 20, =
2023 at 6:41=E2=80=AFPM &lt;<a href=3D"mailto:jmaloyan@umass.edu">jmaloyan@=
umass.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><p>Hello,</p><p>I am currently working with the X410(X4_400 imag=
e) using other the 1Gbe ethernet only(for now) and an image that uses the f=
ollowing RFNOC graph</p><p>Active connections:</p><p>* 0/Radio#0:0--&gt;0/K=
eepOneInN#0:0</p><p>* 0/KeepOneInN#0:0--&gt;RxStreamer#0:0.</p><p>Regardles=
s of any value of N I use(even when the maximum value is used), I get an ov=
erflow error. Though it does appear to effect the number of samples I recie=
ve: higher values of N gives lower data rates. The data rates I do get howe=
ver are far lower then expected despite the overflow errors. For example, f=
or N =3D 100, I get around 0.37  KSps, when I would expect around 4-5 MSps.=
When I request data using the default images however, I am able to achieve =
much higher data rates, at least 10 MSps. Any tips is very appreciated.</p>=
<p><br></p><p>Thanks,</p><p>Joe</p><p><br></p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000032758a05f9dcf7ff--

--===============5827812793141844611==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5827812793141844611==--
