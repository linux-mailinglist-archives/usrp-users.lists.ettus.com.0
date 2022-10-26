Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A2C660DD28
	for <lists+usrp-users@lfdr.de>; Wed, 26 Oct 2022 10:37:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 401B3383CBE
	for <lists+usrp-users@lfdr.de>; Wed, 26 Oct 2022 04:37:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666773473; bh=TjpLz10a2YN0AuCoVboXYB7OQ8BwEZImwsZaGDNSk7s=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=qdNS+7rjpgXgBbsxRO9+lSCTbKjexiPu7GBL3VXsS3J0o2TVNUo9vtnWnskTsCCFP
	 AVWkNNW/lDcScFY7ABiLiBovGODAqLXmg5hsvitvoDbJdZXTUEOHX0v8rp8qAOk5N6
	 YoSOP3+2fJbBUtRDcBVd37DwaFl922FNVmVFKX0o52OrtoRyEbKR228EvSJByJ6DTX
	 10WCd+0stXF01oIm+0iH3KC/07s628U3RfZ4AUZoayoMXjfsv1h4Qd/TZkkzEpVAdb
	 2129uV12n96Bd6i26bCivsBeJhkUZ9mc9EBpKCcawYfhksqdX8vQxcm0iNPhuW95jD
	 rrSw0/x/smwoQ==
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
	by mm2.emwd.com (Postfix) with ESMTPS id E9F2138368D
	for <usrp-users@lists.ettus.com>; Wed, 26 Oct 2022 04:36:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="RiwiY4GF";
	dkim-atps=neutral
Received: by mail-pg1-f179.google.com with SMTP id f9so9731135pgj.2
        for <usrp-users@lists.ettus.com>; Wed, 26 Oct 2022 01:36:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=u3BpoLApsdWvTveIXVjnJanmi7XpoFXPHmzqOrI8SBk=;
        b=RiwiY4GFr0aDaSh8bNTOVyTWwe3aHgKy/dfO287MLJdkNk+KlYdNvU0APyBAQcskCq
         b3QPX+fR3NeU+KuKHjunZ70B7qUE4yw6vFq8t0RmmFBCvsZqf+tPMKfvPFQZcWbf6Ewj
         Gy3f5cqhzwjy+h4YCAeEE/5p3eZ9XljkH4+jyuvLdI44bC/Qwa7vVokkXXOhA0R8s97H
         OzSwjMwH2u76PrBLjDVEnCp7GQOCr6pJNZjUcYlRGtpKDeDVutAxlX0dVtuqEyd8GZEo
         LaZdhHlUUjA9h2ZmfJ+6venB8ycJe41fXaxG5pT0OcUv/VZFHHn7jDKoGvS4RjV+2lEL
         98iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u3BpoLApsdWvTveIXVjnJanmi7XpoFXPHmzqOrI8SBk=;
        b=JDUTCKpcFzRfEFV4HxFZMDMwBzRFcaLqehxQpjypUzft8NJc4Txa0OVaif7IYVFc5B
         cOgaw9rrUV/Mgg/ivvH6R6glVdTPM47b3sw/Sf/HEaiBfdz+ShkRlil7ZWApFfYeP8eA
         hCwvuFsPpTfyer7bYfFgby1lH6nVm+aBgLkmH7ArlivP6Csift91ku41ilVQ/C4QmmAM
         /XiKKq9eP02aSasaM4C0lta1zPvsgVr7F2U6LMIfMT4qT+wb0xz/3r15+S8eluOmFpI2
         2eqH53Ul9q7FYcmqdMZ3HmxD9Bs5mRlnHJ6KsWg7iE6iXiPdwOqXA+nEtozO+XRxovjo
         Z07A==
X-Gm-Message-State: ACrzQf1Z9GwyjytPGbEhiD4bb/hPaIY3jkXtxlyYCp4DOWF3fMw3s0NA
	1gFLALp9zktffiup0l9/ZCI0qiHNZx+DY1/+iK7+RZYGO9Bt2g==
X-Google-Smtp-Source: AMsMyM5EglGMCWdUSPQwLxBwJmy3HHr0Hy5A0JQOeL806qR1T5UFTymiqU+3HUUaoTTH5DMVeG+CV+/B05zKGvxureQ=
X-Received: by 2002:a05:6a00:23c6:b0:563:a1e9:eab8 with SMTP id
 g6-20020a056a0023c600b00563a1e9eab8mr44041651pfc.16.1666773395847; Wed, 26
 Oct 2022 01:36:35 -0700 (PDT)
MIME-Version: 1.0
References: <20221024103340.717b7ca0@x230_1.trabucayre.com>
In-Reply-To: <20221024103340.717b7ca0@x230_1.trabucayre.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Wed, 26 Oct 2022 10:36:24 +0200
Message-ID: <CAFOi1A4SqF9HMVqWOR1T7WbLipJasrLZ19fX6dPkdH+JdZw9dA@mail.gmail.com>
To: Gwenhael Goavec-Merou <gwenj@trabucayre.com>
Message-ID-Hash: NLMDP4VW77GXTTG2SOSRWLRNMLRINYQ7
X-Message-ID-Hash: NLMDP4VW77GXTTG2SOSRWLRNMLRINYQ7
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: gr-ettus status
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NLMDP4VW77GXTTG2SOSRWLRNMLRINYQ7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1380586668071079256=="

--===============1380586668071079256==
Content-Type: multipart/alternative; boundary="0000000000002e554e05ebebec9d"

--0000000000002e554e05ebebec9d
Content-Type: text/plain; charset="UTF-8"

Hi,

The plan (TM) is to move gr-ettus into gr-uhd, and there have been several
PRs submitted (and many of them already merged), all into main branch.
We'll be backporting to the 3.10 branch, so a future stable release of GNU
Radio 3.10 will include those changes. Long-term, we plan to retire
gr-ettus, and leave it there as support for people using GNU Radio 3.8.

Now those changes don't include rfnocmodtool, as of yet. Personally, I
think the current OOT structure for rfnoc modules has room for improvement.
In particular, I dislike the fact that we mix the GNU Radio code with the
rest of the code (there are people who want to run RFNoC without GNU Radio,
but even for those who do, it makes sense to split up the non-GNU Radio and
the GNU Radio portions). But like I said, that's my personal opinion -- I'd
be interested to hear your, or other people's thoughts on this topic.

--Martin

On Mon, Oct 24, 2022 at 10:34 AM Gwenhael Goavec-Merou <gwenj@trabucayre.com>
wrote:

> Hi everyone,
>
> I am working on an OOT block with latest UHD's release (4.3.0.0) and
> GNURadio
> (3.10.4.0).
>
> The gr-ettus master branch [1] seems compatible with UHD's release I use
> but
> not with GNURadio (build/install fails)
>
> I have found a fork [2] who compile with my setup. But support seems
> limited to
> build and to provided OOTs. rfnoc_modtools remains broken.
>
> I have, locally, fixed some issues but before spending time to this
> support I
> prefer asking about gr-ettus status: a complete portage to 3.10 is already
> done
> somewhere or everything must be done?
>
> Thanks
>
> Gwenhael
>
>
> [1] https://github.com/EttusResearch/gr-ettus
> [2] https://github.com/bkerler/gr-ettus
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000002e554e05ebebec9d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>The  plan (TM) is to mov=
e gr-ettus into gr-uhd, and there have been several PRs submitted (and many=
 of them already merged), all into main branch. We&#39;ll be backporting to=
 the 3.10 branch, so a future stable release of GNU Radio 3.10 will include=
 those changes. Long-term, we plan to retire gr-ettus, and leave it there a=
s support for people using GNU Radio 3.8.</div><div><br></div><div>Now thos=
e changes don&#39;t include rfnocmodtool, as of yet. Personally, I think th=
e current OOT structure for rfnoc modules has room for improvement. In part=
icular, I dislike the fact that we mix the GNU Radio code with the rest of =
the code (there are people who want to run RFNoC without GNU Radio, but eve=
n for those who do, it makes sense to split up the non-GNU Radio and the GN=
U Radio portions). But like I said, that&#39;s my personal opinion -- I&#39=
;d be interested to hear your, or other people&#39;s thoughts on this topic=
.</div><div><br></div><div>--Martin<br></div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Oct 24, 2022 at 10:34 =
AM Gwenhael Goavec-Merou &lt;<a href=3D"mailto:gwenj@trabucayre.com">gwenj@=
trabucayre.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">Hi everyone,<br>
<br>
I am working on an OOT block with latest UHD&#39;s release (4.3.0.0) and GN=
URadio<br>
(3.10.4.0).<br>
<br>
The gr-ettus master branch [1] seems compatible with UHD&#39;s release I us=
e but<br>
not with GNURadio (build/install fails)<br>
<br>
I have found a fork [2] who compile with my setup. But support seems limite=
d to<br>
build and to provided OOTs. rfnoc_modtools remains broken.<br>
<br>
I have, locally, fixed some issues but before spending time to this support=
 I<br>
prefer asking about gr-ettus status: a complete portage to 3.10 is already =
done<br>
somewhere or everything must be done?<br>
<br>
Thanks<br>
<br>
Gwenhael<br>
<br>
<br>
[1] <a href=3D"https://github.com/EttusResearch/gr-ettus" rel=3D"noreferrer=
" target=3D"_blank">https://github.com/EttusResearch/gr-ettus</a><br>
[2] <a href=3D"https://github.com/bkerler/gr-ettus" rel=3D"noreferrer" targ=
et=3D"_blank">https://github.com/bkerler/gr-ettus</a><br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000002e554e05ebebec9d--

--===============1380586668071079256==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1380586668071079256==--
