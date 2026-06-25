Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id EXhXA54zPWqmywgAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Thu, 25 Jun 2026 15:56:46 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F4046C64CE
	for <lists+usrp-users@lfdr.de>; Thu, 25 Jun 2026 15:56:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=emwd.com header.s=harmony header.b="Iv/3lpvL";
	dkim=fail ("body hash did not verify") header.d=ettus-com.20251104.gappssmtp.com header.s=20251104 header.b=wdpzzFOJ;
	spf=none (mail.lfdr.de: domain of "usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com" has no SPF policy when checking 172.104.30.75) smtp.mailfrom="usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B5D95385F25
	for <lists+usrp-users@lfdr.de>; Thu, 25 Jun 2026 09:56:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1782395803; bh=UeZ8ayFlAEhl/TP4uf+4hgRGLnP6HogQMuBw6nRgHWI=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Iv/3lpvLYInA2PcEEC8q3tE7dKYQ9dQafezCrf0UKumk7leRDLCkh3sTVfY/KqVPW
	 ugTguzVKkQatgSFvW3zpRyvK8UXaOlrs5d02DKHP3Lem7iGfNXaf4JgLZKLSyVBp+3
	 9RvehdP57zSlEnWfPSQZKrhMkxy0QNwTsXU0RKipWhawqr51NErzRXSKR9/W/NQvQa
	 YGJEPJD9jYSoPgcwGq/mVYM1OnciMNOvTJX5baLCkdJ5XZYrRMYRjIjzQ0q4s3GI0S
	 D2FZfqxMsPBXlEH7umAbWB/+ZivsGdruUQnnDwujcYMVNdib326oNDyOhuT6X2LzL+
	 1ryIIBnPGOVkQ==
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com [209.85.217.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 583A2385260
	for <usrp-users@lists.ettus.com>; Thu, 25 Jun 2026 09:55:48 -0400 (EDT)
Received: by mail-vs1-f50.google.com with SMTP id ada2fe7eead31-7296071d19fso1318139137.1
        for <usrp-users@lists.ettus.com>; Thu, 25 Jun 2026 06:55:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1782395748; cv=none;
        d=google.com; s=arc-20260327;
        b=GEX5Fkn1tgFDMPZzTpCeAxo+HLGCxTomPAQG95eUUtnUYbCuLn3pUgmAszeg+pHL9s
         WQL+rcwBIf/Om6tz3BXOBQ0B7xBhoVEACEtVe7NI3qP0y1PptjokBTqF3a/tXqxPYij7
         8MkaquD/1c/umCKGnTK9G6/v/ReMbBsU4HM7kBDe8fNmfU6RiL2TIpKMfRSvwvMMCgcf
         5DFoTxwe1osnzeDsmsWu7GzbghRt60HrEtQu/hUwVVxkswWVXGy3QmCBjNV8J2Jze+7q
         Mv6J4GWFvwJoZyz+zt8PPuAU8AaIkJS1h2roKSbSIaJk6DBqogvXHKtoaCiMFDz4U5wP
         f4YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=jbqj7JLpMBFLajz1vdXSubTW2HGQLNFcMtHDajbI1b4=;
        fh=Rni46yqVkxPnzoJaeasF2jRWS6SwffKhmhdmBaa8z1Q=;
        b=PqV2dOLXEFxNDJVX+8jyrVhK7k1sINUi8W3ebFxe53u2T2U/8sD2LVxaBod0JaQbUI
         7V4CzsomR3C4hi9kGwewwBl7UvFTcFBnBnBfQL2gVLdMpVssUmTyqWsqvrRqJByzW+AF
         fjZh72xdCm7t1vqgo0y9GR1OX5+tMgjonTMPCkiVjvhGwra1d6UmMMgDtaQsiAkhc+WT
         Yr5pDdXQgJeUe0ATLkPsDFA0KIGbiC8nWsQ81zpJnwkDwsQVSOCsfs1yylC4DELPe/md
         OSQ/kAtvUHiviuXF7fxLq3ZJ365RpEg0NS6PBLBUjj0KOV237NEav2xYS2NeGH62yQy8
         Z/Vw==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20251104.gappssmtp.com; s=20251104; t=1782395748; x=1783000548; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jbqj7JLpMBFLajz1vdXSubTW2HGQLNFcMtHDajbI1b4=;
        b=wdpzzFOJU2Ef1ktpS3b7DkP/0g11p2FyxilUs6zkGJQ5O+UWS/LUtOqLWPHAJxCd/m
         0Q3B8QzaVi+kN7nkViHWmitrwrdAGmHMFZkrW3j+CzJC55wbFF8NhiUUKmdFjSalHSW/
         FtSL7l0WibrhShwvOlEHRPkPmu5pSjUvgpiQHQkkgsuhco/SDjmDzKixWbarGh+hYydM
         kW7ZyAi1P4+WearBUrngo24k1+kpxDSoitjMV4OkxCYfIoVQ/MUVX6oUqCt0pr/IZIrB
         ivoR+kv8rkl5nhwwOpFvcfNx8RuAJNtJX+4xnd2KbrukI4zeBhk0K0vJDI3kUBYQkXSa
         pkTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782395748; x=1783000548;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jbqj7JLpMBFLajz1vdXSubTW2HGQLNFcMtHDajbI1b4=;
        b=Ae7OPHj0ol4XPt2B7JSJfw7xOYlKYKSam0oC6cgsWqaVlpqYcVDMUXGPeCWon7I543
         K8kFHhjh54+3Y5q6GAEQzkLn//FKCl7qd7825XiWIMvG4iJ4rNSIUNIXLnLz1h6PLpue
         a6mV3uRNB6+Dw94kC1e/UYJ/5mcxFYAPgRlMZU15R5cJyb2KW6bmgSO4HvR28GVD51Az
         VRr8CyXcCzIfHUhPQWB/xbQ57gBt7+YruvI+mpxCaTBcjx5XY1K1MajLtLrk16OrvFLe
         VBz6ZcLI2+8VJ8isUvbGA+YTWSZokSLU3Gmcs+9asIK5UgVgLKzjg3ri26It7Z5UK1eW
         fBzA==
X-Gm-Message-State: AOJu0YxaaRez50adeNkJsiYH+7f7RMbgplIwS2BqbVAOHi1pJrQzUwM9
	C2B01ROWweMDhDyoaPPkAfCe+BKXKQDA840gm/XkflwA1+7CdvQ8yKg4W4XZ5zvZw/wd/EGDt6s
	w7QZb9zCto2U5oAgfRuu1tzddfaELYv1zUcs/ycoocJ/W8lPVlyaQlJRNLg==
X-Gm-Gg: AfdE7cl+zcH623nqRDZscWMngLjjCd4taYQnWQBl00L21GnTX6dVruwHX3FBw/X6F3c
	w/BatpLYE5qK54/2pTk1LfBblbh+VZ688zwMjotD1Cv79uvC5Lj4nvdh3Z/0uVHtaF8hlIlWukB
	4Qt1C14SepW5BNRlwKYldTrvYfO76NooDWb8AF7esgN/C8mZH+CKCO0crYhq62TNZcbXShhvn31
	KkgOtN3IIyv0gDLKymfxgHpo0pVWGpRT3NhnE3UJyJBqnJhHB/Qx+g8FnKMUG4ZxCRg047CC6oy
	3JuZ163Xeci9XUuRkhzpMV2wPv6J
X-Received: by 2002:a05:6102:510f:b0:660:cba2:b6a5 with SMTP id
 ada2fe7eead31-73434452323mr1088663137.7.1782395747618; Thu, 25 Jun 2026
 06:55:47 -0700 (PDT)
MIME-Version: 1.0
References: <EfcfBT8wlajXkFRxZBUn3tHdJwD2dJrWvmRAnNZ4Uw@lists.ettus.com>
In-Reply-To: <EfcfBT8wlajXkFRxZBUn3tHdJwD2dJrWvmRAnNZ4Uw@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 25 Jun 2026 15:55:36 +0200
X-Gm-Features: AVVi8CeBSHwdOLnhHMmTHG0pjGLvR4TdHAzpIJ7dnhWNRAfxbt6pcuR6X_Sd_4c
Message-ID: <CAFOi1A6d_503kWbvhQJ9yOvZPLondwvQvk1JY1L5ndwuwCR8CQ@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: BYI5UFTNQMFM7NI3CCJ6UF2AM4W2BKKJ
X-Message-ID-Hash: BYI5UFTNQMFM7NI3CCJ6UF2AM4W2BKKJ
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: I could not achieve high time resolutions when transmit or receive in x440
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BYI5UFTNQMFM7NI3CCJ6UF2AM4W2BKKJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5845474295112131206=="
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.29 / 15.00];
	MISSING_TO(2.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:usrp-users@lists.ettus.com,s:lists@lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	DMARC_NA(0.00)[ettus.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[martin.braun@ettus.com,usrp-users-bounces@lists.ettus.com];
	R_DKIM_REJECT(0.00)[ettus-com.20251104.gappssmtp.com:s=20251104];
	DKIM_TRACE(0.00)[emwd.com:+,ettus-com.20251104.gappssmtp.com:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[martin.braun@ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_MIXED(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,ettus.com:from_mime,ettus.com:email,lists.ettus.com:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0F4046C64CE

--===============5845474295112131206==
Content-Type: multipart/alternative; boundary="00000000000062df2506551459c5"

--00000000000062df2506551459c5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Rub=C3=A9n,

assuming you're running the X440s at 2000Msps (almost full rate), then a
single sample is .5ns (5e-10), and that's the accuracy you can control
transmit/receive at. Doubles have a better resolution (around 1e-18). When
you start measuring in the picoseconds range (1e-12 range), then the
hardware will eventually introduce worse timing errors than you can get
with doubles, but as mentioned, you can only go down to .5ns in terms of
what you can spec.

How are you synchronizing your devices? And what exactly is the failure
mode that you see?

--M

On Fri, Jun 19, 2026 at 9:57=E2=80=AFAM Rub=C3=A9n Serrano via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi everyone,
>
> I am currently using two Ettus x440 devices. To develop my application
> correctly I need to send and receive two signals between them (each devic=
e
> has to implement one transmitter and one receiver). This signal exchange
> must occur on different time. The thing is that, this time mismatching,
> must occur in short times, in order of nanoseconds, so I need to control
> the "sender" and "receiver" objects with high time resolutions. The code
> related to what I am saying is the following one:
>
> // in the receiver this is the command which controls the time where the
> receiver is began to listen
>
> *stream_cmd.time_spec =3D timeInit+uhd::time_spec_t(ATdma);*
>
> // in the transmitter this is the command which controls the time where
> the transmitter is began to send the signal buffered
>
> *md.time_spec =3D timeInit+uhd::time_spec_t(ATdma);*
>
> // with timeInit =3D usrp->uhd::get_time_now()+uhd::time_spec_t(0.25) &
> ATdma =3D double(1e-7)
>
> My questions here are the following:
>
> 1 - When ATdma is lower than tenths-hundreds of microseconds, the time
> controlled by the previous lines are changed to zero, so there is no
> displacement between simples. Does uhd::time_spec_t has no the enough
> resolution to represent this kind of decimals? Or maybe is the hardware
> which does not support this kind of resolutions?
>
> 2 - If it is a negative answer on 1st questions, maybe the problem could
> be given by the data type (double)? I do not think that the problem could
> be given by the data type, because this kind of data use floated point fo=
r
> the number representation, but maybe I am wrong.
>
> 3 - If none of those question is the problem, could I use
> "to_tick"/"from_tick" functions to achieve those resolutions? I tried to =
do
> this, but I do not know how, if time_pect_t variable always set the time
> with a integer part and a fractional part, and tick functions only gives
> integers, right?
>
> Thank you all for read/respond to my questions. I hope I would have
> explained my self on a properly manner.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000062df2506551459c5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Rub=C3=A9n,</div><div><br></div><div>assuming you&#39=
;re running=C2=A0the X440s at 2000Msps (almost full rate), then a single sa=
mple is .5ns (5e-10), and that&#39;s the accuracy you can control transmit/=
receive at. Doubles have a better resolution (around 1e-18). When you start=
 measuring in the picoseconds range (1e-12 range), then the hardware will e=
ventually introduce worse timing errors than you can get with doubles, but =
as mentioned, you can only go down to .5ns in terms of what you can spec.</=
div><div><br></div><div>How are you synchronizing your devices? And what ex=
actly is the failure mode that you see?</div><div><br></div><div>--M</div><=
/div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" =
class=3D"gmail_attr">On Fri, Jun 19, 2026 at 9:57=E2=80=AFAM Rub=C3=A9n Ser=
rano via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-=
users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><p>Hi everyone,</p><p>I am currently using two Ettus x=
440 devices. To develop my application correctly I need to send and receive=
 two signals between them (each device has to implement one transmitter and=
 one receiver). This signal exchange must occur on different time. The thin=
g is that, this time mismatching, must occur in short times, in order of na=
noseconds, so I need to control the &quot;sender&quot; and &quot;receiver&q=
uot; objects with high time resolutions. The code related to what I am sayi=
ng is the following one:</p><p>// in the receiver this is the command which=
 controls the time where the receiver is began to listen</p><p>            =
        <em>stream_cmd.time_spec =3D timeInit+uhd::time_spec_t(ATdma);</em>=
    </p><p>// in the transmitter this is the command which controls the tim=
e where the transmitter is began to send the signal buffered</p><p>        =
            <em>md.time_spec =3D timeInit+uhd::time_spec_t(ATdma);</em></p>=
<p>// with timeInit =3D usrp-&gt;uhd::get_time_now()+uhd::time_spec_t(0.25)=
 &amp; ATdma =3D double(1e-7)</p><p>My questions here are the following:</p=
><p> 1 - When ATdma is lower than tenths-hundreds of microseconds, the time=
 controlled by the previous lines are changed to zero, so there is no displ=
acement between simples. Does uhd::time_spec_t has no the enough resolution=
 to represent this kind of decimals? Or maybe is the hardware which does no=
t support this kind of resolutions?</p><p> 2 - If it is a negative answer o=
n 1st questions, maybe the problem could be given by the data type (double)=
? I do not think that the problem could be given by the data type, because =
this kind of data use floated point for the number representation, but mayb=
e I am wrong.</p><p> 3 - If none of those question is the problem, could I =
use &quot;to_tick&quot;/&quot;from_tick&quot; functions to achieve those re=
solutions? I tried to do this, but I do not know how, if time_pect_t variab=
le always set the time with a integer part and a fractional part, and tick =
functions only gives integers, right?</p><p>Thank you all for read/respond =
to my questions. I hope I would have explained my self on a properly manner=
.</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000062df2506551459c5--

--===============5845474295112131206==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5845474295112131206==--
