Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5759EAEF911
	for <lists+usrp-users@lfdr.de>; Tue,  1 Jul 2025 14:45:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 55E423862D8
	for <lists+usrp-users@lfdr.de>; Tue,  1 Jul 2025 08:45:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1751373945; bh=7b059X6gARyfjzlPs0ZgE8wBz1P/jKMh6H8tsLxr4t8=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=mk2HGyQ3MCJmfIIyY6mCTaO386bM5mYIW8ll87H4aY6GuAtEOf8F8Czm2gHNlG3Co
	 PXhoy0B6YiYDTlg9JCQruB3ZWi47RaPVX2XF3lmT+bKJeQV0OT7+kUeVJDGmsmUb1i
	 aXTr07tpJkS5aiqoO3AGuvI3sdMZFmh1IcSsxh8Lmg2+Xl89QFyGqKPlX8bCYvd87z
	 7SnMSwilN0wHLNNDd4MgyNaEROYRK1v0If/nz3VIEQ412+4Q31G2fIgGkwgWyXqz7s
	 b5gGELAoLivwoARw0ZysRQXfYoJ0uwG70dddnqxf3M2TOWhZ130np8tZKu+kVJ3J0J
	 Iylxy9uPBAXoQ==
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 2430C385E8B
	for <usrp-users@lists.ettus.com>; Tue,  1 Jul 2025 08:45:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="Un9J7zyy";
	dkim-atps=neutral
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-ae0d11bb2a7so824408366b.3
        for <usrp-users@lists.ettus.com>; Tue, 01 Jul 2025 05:45:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1751373905; x=1751978705; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WGZ7qOt3BCFcOTMlVFpLurvYeUa/3Xnna+QZbssAl5Y=;
        b=Un9J7zyyDdjJOQhFGjl8TT68+5yIhL1rF23siXcVLamQR+/Zl1nnL/NPStJSCgAgaj
         0PeA2OvviVs4hZadQ9mFhfCkOX/VQkoAH7EIgvYVoN1alAhp4FQqKmBSXmPjVqwGzzz0
         wRfVMVtT7+/hmINbdW3V8Ml7vw7W0wL+YrrgmyA+geZq7v+t8zXZq/1AxjF6PV3qU0Fc
         7UObdpVE8harNJWuYma6aeZqLMen8D/VyXcpRBSatMz2t9hKjVGJ9CVkuvVkCGcfN1OW
         1wbOv6cx9mcSDHS/iVMh6lIXhsomCFdOCfvLWTJyzARiUWoS43lw+2852vbPJHj+oB8a
         5lWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751373905; x=1751978705;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WGZ7qOt3BCFcOTMlVFpLurvYeUa/3Xnna+QZbssAl5Y=;
        b=qHZQ1oRtq9A1hz4P9KrQF10Tft56ybqR1ta1hJZO5tWez26P895RH2x7TjzIjYgHkp
         zkeXGs4rZHVsa+AE00dSuzeq0+Qk3/VoN2bM3y+z/1X2HRc+t8j06uOzZJ3u+swOyyS0
         yjubIo64bg/vtkzpRGrUr4nIKzfLA2uvHY6sdahQ00EwiwB2ZBOJtBhGkyDZY3QCmmyY
         YWWs7Zy4Hp5b0Z8Ji6bV5dXqSnbsfm3qaTufApvJV7UnnQ+t7ZHeHKB6oQXyiR3lNye7
         kZLb2wz0jB6tX+p/CVxTkSUyiToApHTWtAei5Ze0nidYD7qGeBp8PV3vMIrn1/VddTmj
         3mqg==
X-Gm-Message-State: AOJu0YzL8V/d5g8bt9rLGTADMveasEMA58SqHHbh9hA6zrg/XzFPkiAy
	J9ltwqW617CqqWs2VmLZQ/kDkeVIqELrrEbcYxz03VaC3jpsJrV2kUfcGo4coa1fWSuaMAgP38L
	49T9Vfy6izz+FTK3vVu/iY+UdTmRbZjvCA5yVHZ9AVB0xzy89NYoHHfU=
X-Gm-Gg: ASbGncs7A69NjFfIZ/Q8q8K0yjSJGC0w1kFRQjhTvup4jfzldTdU0CmM6wm2z2440Hx
	UtOEo17Qw1BrBrk70Lg+tGGdkt8mR2OZLlhFnQ9UfSGpOMIf88eMMw7zYCb7hmHWtBEtMc9xliu
	Y9GwGUvqvZxcwLwjfWUGPissBQTdZ8SEah78YBM7mZeZvfwmXI0CQadorpBGIEuLo4KPsKAOipN
	aLB/Y2SVXywDA==
X-Google-Smtp-Source: AGHT+IEmKnCq7RJwWKCJsYiR2etWNIS3/rYuLQmyU55KMtU8DYAs9O8cssdQrOz8Km1ZT9KcxKd/qaPtH6Qx9Xq/JPY=
X-Received: by 2002:a17:907:a90a:b0:ae3:51c5:8d35 with SMTP id
 a640c23a62f3a-ae351c58fd4mr1707953366b.48.1751373904589; Tue, 01 Jul 2025
 05:45:04 -0700 (PDT)
MIME-Version: 1.0
References: <CAEXYVK7ZMeZHu-V+DHOqHzTXjFuXYEvV2zMREoBssfBQKzzJUA@mail.gmail.com>
In-Reply-To: <CAEXYVK7ZMeZHu-V+DHOqHzTXjFuXYEvV2zMREoBssfBQKzzJUA@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 1 Jul 2025 14:44:53 +0200
X-Gm-Features: Ac12FXw98lxagj2K3lORHMF2CwJTt7yZC47AxEIScz4X-G4yyTZGPzowOCxn6Xo
Message-ID: <CAFOi1A4-PX5DsEGmvESxb9Da-ftDeYnwMXxWd=L=o=jXMMgZhQ@mail.gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: PCGOF2MKPQLGECACUURWS4X7JQS35ZZ7
X-Message-ID-Hash: PCGOF2MKPQLGECACUURWS4X7JQS35ZZ7
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 Remote Streaming Transmit
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PCGOF2MKPQLGECACUURWS4X7JQS35ZZ7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4623846590255984641=="

--===============4623846590255984641==
Content-Type: multipart/alternative; boundary="00000000000073cd270638dd838e"

--00000000000073cd270638dd838e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Brian,

remote streaming to the USRP is not a supported feature; it's on our
roadmap, but with uncertain priority.

That said, if anyone can hack it in, it might be you. Here's some pointers:

- You will need to handle flow control on the Tx side, which is also
something we don't provide simple code for. If you just try and jam UDP
packets into the device, best case you lose data randomly, worst case you
jam something up.
- ...that is, unless your blocks directly connect to the QSFPs and are
doing something smart.
- ...and if you do that, you also don't need to bother with EPIDs.
- EPIDs don't map to blocks! They map to SEPs. Of course, in a
fixed topology, blocks map 1:1 to SEPs, but there's still a distinction.
- In our current UHD code, the EPID assignment is indeed deterministic, but
we make no guarantees that it will not change. For example, we might make
it multithreaded if we get too many people doing multi-device applications
and don't like the startup times.
- There is no API to read the EPID, but the log messages will report them.

--M

On Wed, Jun 25, 2025 at 1:00=E2=80=AFAM Brian Padalino <bpadalino@gmail.com=
> wrote:

> I am trying to solve a remote streaming transmit problem and I am curious
> how this might work in practice.
>
> The setup is an X440 with some custom transmit blocks. I have my baseband
> processing for transmission being done by 8 different computers - one for
> each antenna. I currently have a similar block structure like the radios =
-
> 2x custom TX blocks, 4 antennas for each block. A single streaming endpoi=
nt
> for each TX block, 4 outputs for each SEP.
>
> I want to modify the X440 to start up with my graph committed and running=
,
> and the 8 different computers can stream to my custom blocks to transmit
> whenever they want.
>
> The issue is going to be figuring out the routing for the endpoints, and
> the sequence numbering for the packets coming in. Since all 8 machines wi=
ll
> be separate, they will not adhere to the sequence numbering for the singl=
e
> endpoint.
>
> Is the solution here to utilize a unique endpoint for each TX antenna and
> just "know" what EPID will be assigned to that block? Is it always
> deterministic for the EPID to be the same?
>
> Is there a way to get a map of EPID and block ID? Are there other pitfall=
s
> that might make this a terrible/impossible idea?
>
> Sorry for the questions, thanks in advance for any insights.
>
> Thanks,
> Brian
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000073cd270638dd838e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey Brian,</div><div><br></div><div>remote streaming =
to the USRP is not a supported feature; it&#39;s on our roadmap, but with u=
ncertain priority.</div><div><br></div><div>That said, if anyone can hack i=
t in, it might be you. Here&#39;s some pointers:</div><div><br></div><div>-=
 You will need to handle flow control on the Tx side, which is also somethi=
ng we don&#39;t provide simple code for. If you just try and jam UDP packet=
s into the device, best case you lose data randomly, worst case you jam som=
ething up.</div><div>- ...that is, unless your blocks directly connect to t=
he QSFPs and are doing something smart.</div><div>- ...and if you do that, =
you also don&#39;t need to bother with EPIDs.</div><div>- EPIDs don&#39;t m=
ap to blocks! They map to SEPs. Of course, in a fixed=C2=A0topology, blocks=
 map 1:1 to SEPs, but there&#39;s still a distinction.</div><div>- In our c=
urrent UHD code, the EPID assignment is indeed deterministic, but we make n=
o guarantees that it will not change. For example, we might make it multith=
readed if we get too many people doing multi-device applications and don&#3=
9;t like the startup times.</div><div>- There is no API to read the EPID, b=
ut the log messages will report them.</div><div><br></div><div>--M</div></d=
iv><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Wed, Jun 25, 2025 at 1:00=E2=80=AFAM Brian Padalino &=
lt;<a href=3D"mailto:bpadalino@gmail.com">bpadalino@gmail.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"lt=
r">I am trying to solve a remote streaming transmit problem and I am curiou=
s how this might work in practice.<div><br></div><div>The setup is an X440 =
with some custom transmit blocks. I have my baseband processing for transmi=
ssion being done by 8 different computers - one for each antenna. I current=
ly have a similar block structure like the radios - 2x custom TX blocks, 4 =
antennas for each block. A single streaming endpoint for each TX block, 4 o=
utputs for each SEP.</div><div><br></div><div>I want to modify the X440 to =
start up with my graph committed and running, and the 8 different computers=
 can stream to my custom blocks to transmit whenever they want.</div><div><=
br></div><div>The issue is going to be figuring out the routing for the end=
points, and the sequence numbering for the packets coming in. Since all 8 m=
achines will be separate, they will not adhere to the sequence numbering fo=
r the single endpoint.</div><div><br></div><div>Is the solution here to uti=
lize a unique endpoint for each TX antenna and just &quot;know&quot; what E=
PID will be assigned to that block? Is it always deterministic for the EPID=
 to be the same?</div><div><br></div><div>Is there a way to get a map of EP=
ID and block ID? Are there other pitfalls that might make this a terrible/i=
mpossible idea?</div><div><br></div><div>Sorry for the questions, thanks in=
 advance for any insights.</div><div><br></div><div>Thanks,</div><div>Brian=
</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000073cd270638dd838e--

--===============4623846590255984641==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4623846590255984641==--
