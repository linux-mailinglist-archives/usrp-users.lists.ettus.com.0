Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CF4797106C3
	for <lists+usrp-users@lfdr.de>; Thu, 25 May 2023 09:55:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 319E0384855
	for <lists+usrp-users@lfdr.de>; Thu, 25 May 2023 03:54:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1685001299; bh=ImFtvxQGPBWfd5rkF9AEOv6XV2Ws6WE/K+0uCARfXTI=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=L7R8Kal2QaIZ3F8TlIfUnb11uhMjhQ/Qr1ORgM72SrO7PPdjb6d7iuNO+N4N5QUPA
	 f/9KRpzII2h1Gup4/JSstpgoVs//SAxBAN0cenuDZE+sPiIm09UBS45FJ6fFP/c8qa
	 KDhSIexICwz7PzHUsD/OqzQWVX1IjbjprI1pViz4wOouqVTntshWkLOjGYiXPfRgNC
	 /gdK9m9+9GTKiI+1geIj+3aQYUW0JXMo/o6e7so/bZ5utnFB7VbZdOtTJvjbmOmgqY
	 d6xLgs1XQ03nkb4cZkYNNdHNsbDWphbPnWtaZhipebJGd1PV4bih6MFJlbX7masz02
	 UyLdnm8LEpUVw==
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 8198738482D
	for <usrp-users@lists.ettus.com>; Thu, 25 May 2023 03:54:02 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=chaosinc.com header.i=@chaosinc.com header.b="qyeVnyj+";
	dkim-atps=neutral
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-253e0f1e514so833324a91.1
        for <usrp-users@lists.ettus.com>; Thu, 25 May 2023 00:54:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chaosinc.com; s=google; t=1685001241; x=1687593241;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=EvIL8PnTk0RJYin2Y+e9BQPHJI8+Px7GDJbQnGiN0iI=;
        b=qyeVnyj+/R+aqyWMUOPMPmguGvbCf9uaC4xeEd0xJS97mpBTXAvCh3+M+fRRcKdBAi
         H6ygLaoOAjKUqLCvjH7GNmX44gkg8CCZe/h8iE4HBy8rHNMxGjyv4Ug+smolSSfMqguf
         ebP2bViVTr2c28yj7YtyL3+8IeXRwFt8oL6wa7M+gIqH2cy69yRsU3TBeVPN3xgBI7R3
         3jy2WgUVYEakfJ6u80f7k664tHbSP0uvyXvIgzwW6sa9vtS8MnybR63uPq5Wh0XCbi1v
         eSgIKX/WEZcAieog3WB+f+stv1zLFdG71xcQfstmd8ls/8L85cTd1Dwfo3nhh7rcQOx4
         DgVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685001241; x=1687593241;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EvIL8PnTk0RJYin2Y+e9BQPHJI8+Px7GDJbQnGiN0iI=;
        b=Q5IOWmQpZW+nwiF8LCcyJc9A65dqZ3Wr9e0M72LIioPqb84fYYDU85hiMRx98AQuvQ
         3QE+EkfgoNJJovTPEAAX7rrfMJz0fH8KGxJusF8pfreHMmcMFxEvQM1tAQDpdLLEooXu
         byH3gVIWVxZGlCU5GlDZVz3v1IkJ3y1nPAA8e3oERtHoYnUVmaTLcnd4II/7khPqYV4+
         iraxSBlpxvnE1kGK27LWVHU2pk0EkIr6Kr2kGpUCwpjeH/DLUlzZsYsabidqBRUXy1LJ
         3AW9L64nJBOLXWtYyzxB0yVeoOnFkEr1fEJK1ESLNcfgT8MmP3pluEPw+Hocgmuq1ICh
         sz/Q==
X-Gm-Message-State: AC+VfDz+TU/0nxJLIGQvTs5Pt/iuec16BBTkmGCdm9j8Lbc8YDfIvdiA
	g6PLsnOeH8rR6xRg9vsAM1cljptHaS1oAn28Lqc9kg==
X-Google-Smtp-Source: ACHHUZ68IbdY0NwNenawcCrq/RV0hKHkXlziItDbRfSJmyCa9M591iMNwIutMCfoTVaBdve5HyE1tonVgnVNoyHXdiw=
X-Received: by 2002:a17:90b:3145:b0:255:33e1:3c46 with SMTP id
 ip5-20020a17090b314500b0025533e13c46mr870932pjb.21.1685001241379; Thu, 25 May
 2023 00:54:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAMhTvws54hP-vxo9FwLt9FncOgGsR-Ps+FAe4x9-mnJVy59C0Q@mail.gmail.com>
 <f51e48a3-9d30-2e07-e7e2-a30cc4bab1f9@gmail.com> <CAB__hTQgDtPFOMXqK7-gyAhnc_1Q7=Or9rw2bgBaqwe+_xTSbw@mail.gmail.com>
In-Reply-To: <CAB__hTQgDtPFOMXqK7-gyAhnc_1Q7=Or9rw2bgBaqwe+_xTSbw@mail.gmail.com>
From: Michael Toussaint <mtoussaint@chaosinc.com>
Date: Thu, 25 May 2023 00:53:51 -0700
Message-ID: <CAMhTvwvb+g+CP_yTedvAfObnjbmUUw+ZOC2J1m3xYbWh_HaC_g@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: XNSYLJFBGAVEJCCJBVUR6Z2SBRODKGDZ
X-Message-ID-Hash: XNSYLJFBGAVEJCCJBVUR6Z2SBRODKGDZ
X-MailFrom: mtoussaint@chaosinc.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 LO Distribution
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XNSYLJFBGAVEJCCJBVUR6Z2SBRODKGDZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2159168430461006715=="

--===============2159168430461006715==
Content-Type: multipart/alternative; boundary="0000000000007058c905fc7fec62"

--0000000000007058c905fc7fec62
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Used a single streamer and saw the delay slightly improve to between 2.5 -
3 ns.

Any other suggestions to improve the delay to match the results from the
knowledge base, https://kb.ettus.com/USRP_N320/N321_LO_Distribution?

Also, what is synchronized mode and how can I make sure that I am running
in synchronized mode?

Thanks for your help,

Michael

On Wed, May 17, 2023 at 6:26=E2=80=AFAM Rob Kossler via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On Tue, May 16, 2023 at 8:35=E2=80=AFPM Marcus D. Leech <patchvonbraun@gm=
ail.com>
> wrote:
> >
> > On 16/05/2023 20:31, Michael Toussaint wrote:
> > > Hi,
> > >
> > > I am testing the LO synching on a single N321 using the 2 Tx channels
> > > on the N321.
> > >
> > > I have followed the LO setup steps from the knowledge base,
> > > https://kb.ettus.com/USRP_N320/N321_LO_Distribution, to distribute th=
e
> > > LO. (Sample Python code used for setup below)
> > >
> > > I am using separate streamers for each Tx channel and noticing a dela=
y
> > > between the 2 channels executing.
> > Yeah, using separate streamers, the code doesn't attempt synchronizatio=
n
> > across two streamers.  You'll need a single
> >    two-channel streamer--that's the "synchronization paradigm" that has
> > been in UHD for over a decade...
>
> Separate streamers shouldn't be a problem. I use them regularly in
> synchronized mode.  If both streamers have the same time spec, the
> radio should start them both in sync. That said, it won't hurt to test
> with a single streamer.
>
> > > The Tx channels do not appear to be synchronized, we're measuring
> > > anywhere from 0.5ns to 4ns of delay across the channels.
>
> The master clock cycle on the N321 is between 4 and 5 ns.  This is
> also the D/A (and A/D) clock cycle.  When you are seeing a relative
> delay of 0.5ns this is about one tenth of a D/A sample interval.  Or,
> from another perspective, this represents a difference of about 4
> inches of cable length (if the relative delay had an analog cause).
> So, the channels are definitely synchronized to some degree - I don't
> have a guess at why the synchronization is not tighter.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>


--=20

[image: Chaos Industries]
Michael Toussaint
Principal Software Engineer

mtoussaint@chaosinc.com

--0000000000007058c905fc7fec62
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Used a single streamer and saw the delay slightly improve =
to between 2.5 - 3 ns.<div><br></div><div>Any other suggestions to improve =
the delay to match the results from the knowledge base,=C2=A0<a href=3D"htt=
ps://kb.ettus.com/USRP_N320/N321_LO_Distribution" rel=3D"noreferrer" target=
=3D"_blank">https://kb.ettus.com/USRP_N320/N321_LO_Distribution</a>?</div><=
div><br></div><div>Also, what is synchronized mode and how can I make=C2=A0=
sure that I am running in synchronized mode?</div><div><br></div><div>Thank=
s for your help,</div><div><br></div><div>Michael</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 17, 2023=
 at 6:26=E2=80=AFAM Rob Kossler via USRP-users &lt;<a href=3D"mailto:usrp-u=
sers@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">On Tue, May 16, 2023 at 8:3=
5=E2=80=AFPM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"=
 target=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; On 16/05/2023 20:31, Michael Toussaint wrote:<br>
&gt; &gt; Hi,<br>
&gt; &gt;<br>
&gt; &gt; I am testing the LO synching on a single N321 using the 2 Tx chan=
nels<br>
&gt; &gt; on the N321.<br>
&gt; &gt;<br>
&gt; &gt; I have followed the LO setup steps from the knowledge base,<br>
&gt; &gt; <a href=3D"https://kb.ettus.com/USRP_N320/N321_LO_Distribution" r=
el=3D"noreferrer" target=3D"_blank">https://kb.ettus.com/USRP_N320/N321_LO_=
Distribution</a>, to distribute the<br>
&gt; &gt; LO. (Sample Python code used for setup below)<br>
&gt; &gt;<br>
&gt; &gt; I am using separate streamers for each Tx channel and noticing a =
delay<br>
&gt; &gt; between the 2 channels executing.<br>
&gt; Yeah, using separate streamers, the code doesn&#39;t attempt synchroni=
zation<br>
&gt; across two streamers.=C2=A0 You&#39;ll need a single<br>
&gt;=C2=A0 =C2=A0 two-channel streamer--that&#39;s the &quot;synchronizatio=
n paradigm&quot; that has<br>
&gt; been in UHD for over a decade...<br>
<br>
Separate streamers shouldn&#39;t be a problem. I use them regularly in<br>
synchronized mode.=C2=A0 If both streamers have the same time spec, the<br>
radio should start them both in sync. That said, it won&#39;t hurt to test<=
br>
with a single streamer.<br>
<br>
&gt; &gt; The Tx channels do not appear to be synchronized, we&#39;re measu=
ring<br>
&gt; &gt; anywhere from 0.5ns to 4ns of delay across the channels.<br>
<br>
The master clock cycle on the N321 is between 4 and 5 ns.=C2=A0 This is<br>
also the D/A (and A/D) clock cycle.=C2=A0 When you are seeing a relative<br=
>
delay of 0.5ns this is about one tenth of a D/A sample interval.=C2=A0 Or,<=
br>
from another perspective, this represents a difference of about 4<br>
inches of cable length (if the relative delay had an analog cause).<br>
So, the channels are definitely synchronized to some degree - I don&#39;t<b=
r>
have a guess at why the synchronization is not tighter.<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr"><br><div><table cellpadding=3D"0" cellspacing=3D"0" style=3D=
"border-collapse:collapse;font-family:Helvetica,Arial,sans-serif;line-heigh=
t:1.15;color:rgb(0,0,0)"><tbody><tr><td><table cellpadding=3D"0" cellspacin=
g=3D"0" width=3D"100%" style=3D"border-collapse:collapse;width:391px"><tbod=
y><tr><td style=3D"vertical-align:top;padding:0.01px 0.01px 14px 1px;width:=
110px"><img alt=3D"Chaos Industries" src=3D"https://chaosinc.com/img/chaos_=
logo_email@2x.png" height=3D"18" width=3D"110" border=3D"0" style=3D"width:=
 110px; max-width: 110px; vertical-align: middle; border-radius: 0px; heigh=
t: 18px;"></td></tr></tbody></table></td></tr><tr><td nowrap style=3D"line-=
height:1.2;white-space:nowrap"><span style=3D"text-transform:initial;letter=
-spacing:0px;line-height:1.2;font-size:16px">Michael Toussaint</span><br><s=
pan style=3D"font-size:12px">Principal Software Engineer</span></td></tr><t=
r><td><table cellpadding=3D"0" cellspacing=3D"0" style=3D"border-collapse:c=
ollapse"><tbody><tr><td style=3D"vertical-align:top"><table cellpadding=3D"=
0" cellspacing=3D"0" style=3D"border-collapse:collapse;line-height:1.2"><tb=
ody><tr><td nowrap width=3D"391" style=3D"padding-top:14px;white-space:nowr=
ap;width:391px;font-family:Helvetica,Arial"><p style=3D"margin:0.1px;line-h=
eight:1"><span style=3D"font-size:12px"><a rel=3D"nofollow noreferrer" styl=
e=3D"font-family:Helvetica,Arial,sans-serif;text-decoration:unset"><span st=
yle=3D"line-height:1.2">mtoussaint@chaosinc.com</span></a></span></p></td><=
/tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></d=
iv></div></div>

--0000000000007058c905fc7fec62--

--===============2159168430461006715==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2159168430461006715==--
