Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 449553E4AA4
	for <lists+usrp-users@lfdr.de>; Mon,  9 Aug 2021 19:15:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 91E68384EF6
	for <lists+usrp-users@lfdr.de>; Mon,  9 Aug 2021 13:15:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="BgPqx801";
	dkim-atps=neutral
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	by mm2.emwd.com (Postfix) with ESMTPS id A7E8A380857
	for <usrp-users@lists.ettus.com>; Mon,  9 Aug 2021 13:15:07 -0400 (EDT)
Received: by mail-ot1-f50.google.com with SMTP id r16-20020a0568304190b02904f26cead745so18418164otu.10
        for <usrp-users@lists.ettus.com>; Mon, 09 Aug 2021 10:15:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gzn4menPcNCIw2nCABc3OlnCIGcA104HTglZ9DoY/mQ=;
        b=BgPqx801K2NHMNBiYKdfhIVhLxVGxOGwbQk1hETIwSbLwIPSxjHcnzTCsm0adyEH4g
         n2vaZPJ+e2fXqliRS0suL8oMK/GieKkmna0P+Ec/n1/hZJcI6BZi8i7OFSvQBsdsLIOP
         lB0pTIYjB/oeF1eHaUtsMvp12VPFCjOv2n6n0maOzF2Je6IUmbAft3Lw5GJULu2vwkNE
         YiKJjQPwpuYTORdCr4fXn9hw6hD2nGgZqrRPfXmN/LCWutqaspmUqvLOWHQiVZRitLu6
         vpdnnVfdJ9T2PaPCGp1kWHuJULsCIfPHXt0V8ovdbo69c8bK/5kzFGXVIFICdlqH9P1Q
         LyWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gzn4menPcNCIw2nCABc3OlnCIGcA104HTglZ9DoY/mQ=;
        b=G8Oh6NRH4EQMQxN3v9/r1gi5LvxSTEABWr70TTfb4wcEPejwazz5xpAA3OuV6s9Ltu
         CpdldrQXXE4UrAtjDGbEKpNEL3i7APx/V4y590W+xtBxisLyVGz+U0gjcGWk5A2EvRc2
         s+lUazr58wjh782uR3j8Gnjhii9QYQgA0ecT3XsbZ7xZ3S90oHeP6e+12JNpu1rgnfkb
         Wx/UKcQ85ooWQROBxhSGCE9VuTZxN/V9ORFeuDGI3OPaGwCed+ffoNA1ayzMwYmzzlHZ
         cy36dgu8/u/TzUiIjtBoM/0Zb3q9pb+AS6DmoHjUxDElPEy+6B1v9LIl6cATGZObm3K+
         +s+A==
X-Gm-Message-State: AOAM533M0k+5FGJyMiUfEkBBDW60t6cDwFWzvJFlAPJqrJlts32wTGb5
	zIxVdodUwbUpmLbiLSYkYNJZ9E3bQOJ3uHO5o6Q=
X-Google-Smtp-Source: ABdhPJzLNhGfohG62igYRMlmDGX3wQVxhr+gKALnjIGuzp3oGlc2JcTll57wnpjh1nOs2rmxz2WmbRHyQTyT4JaY2Yk=
X-Received: by 2002:a05:6830:3109:: with SMTP id b9mr17963066ots.276.1628529306958;
 Mon, 09 Aug 2021 10:15:06 -0700 (PDT)
MIME-Version: 1.0
References: <A0qfQ4NVDJav3t78VGqE7RQSoqlsUKAMQAMKDtBc@lists.ettus.com>
In-Reply-To: <A0qfQ4NVDJav3t78VGqE7RQSoqlsUKAMQAMKDtBc@lists.ettus.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Mon, 9 Aug 2021 13:14:55 -0400
Message-ID: <CAEXYVK5o4sfq-rC4x34Hoq5cP7ahXksBhMdg4rtzp07sGGMWVw@mail.gmail.com>
To: rblack@swri.org
Message-ID-Hash: OPZARSWC6363XOXR226PHLIEY2JUPDHO
X-Message-ID-Hash: OPZARSWC6363XOXR226PHLIEY2JUPDHO
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 RFNoc radio block question
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OPZARSWC6363XOXR226PHLIEY2JUPDHO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4142001335128940142=="

--===============4142001335128940142==
Content-Type: multipart/alternative; boundary="000000000000d908d405c923861b"

--000000000000d908d405c923861b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 9, 2021 at 1:03 PM <rblack@swri.org> wrote:

> Ettus documentation suggests the radio can be configured for a 25 MS
> sampling rate (The master 200M / 8). I=E2=80=99m wondering if it is possi=
ble to get
> the RFNoc RX *Radio block *to do this without the DDC block. Is that
> possible? Entering anything other than 200M in the =E2=80=9CSample Rate (=
Hz)=E2=80=9D field
> causes errors.
>
> In these Radio blocks, what is the Bandwidth(Hz) entry used for?
>

Some boards have some analog filters for the reconstruction filter on the
output of the DAC.


>
> Is there any reason that you cannot use a Radio block *without* the DDC
> block, sampling rates aside?
>

The ADC is running at a fixed rate.  I believe there are 2 rates readily
available: 200 MHz and 184.32 MHz.  The DDC is needed to change the rates
by filtering and decimating.

Does that make sense?

Brian

--000000000000d908d405c923861b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Mon, Aug 9, 2021 at 1:03 PM &lt;<a hre=
f=3D"mailto:rblack@swri.org">rblack@swri.org</a>&gt; wrote:<br></div><div c=
lass=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>E=
ttus documentation suggests the radio can be configured for a 25 MS samplin=
g rate (The master 200M / 8).  I=E2=80=99m wondering if it is possible to g=
et the RFNoc RX *Radio block *to do this without the DDC block.   Is that p=
ossible?   Entering anything other than 200M in the =E2=80=9CSample Rate (H=
z)=E2=80=9D field causes errors.</p><p>In these Radio blocks, what is the B=
andwidth(Hz) entry used for?</p></blockquote><div><br></div><div>Some board=
s have some analog filters for the reconstruction filter on the output of t=
he DAC.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><p><br></p><p>Is there any reason that you cannot use a Radio block *w=
ithout* the DDC block, sampling rates aside?</p></blockquote><div><br></div=
><div>The ADC is running at a fixed rate.=C2=A0 I believe there are 2 rates=
 readily available: 200 MHz and 184.32 MHz.=C2=A0 The DDC is needed to chan=
ge the rates by filtering and decimating.</div><div><br></div><div>Does tha=
t make sense?</div><div><br></div><div>Brian</div></div></div>

--000000000000d908d405c923861b--

--===============4142001335128940142==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4142001335128940142==--
