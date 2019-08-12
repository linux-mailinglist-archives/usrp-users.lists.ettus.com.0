Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4561C8AABD
	for <lists+usrp-users@lfdr.de>; Tue, 13 Aug 2019 00:53:33 +0200 (CEST)
Received: from [::1] (port=55606 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hxJBy-0006Sf-WC; Mon, 12 Aug 2019 18:53:31 -0400
Received: from mail-ed1-f50.google.com ([209.85.208.50]:38434)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <flarroca@gmail.com>) id 1hxJBu-0006Ms-Qu
 for usrp-users@lists.ettus.com; Mon, 12 Aug 2019 18:53:26 -0400
Received: by mail-ed1-f50.google.com with SMTP id r12so2429661edo.5
 for <usrp-users@lists.ettus.com>; Mon, 12 Aug 2019 15:53:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:cc;
 bh=t2evv6/g4nh21uSmBweo3ZJKoGFmuHQjDSz9/vYc3EU=;
 b=AYe7WdRNpV3+OqkD24lK7cQEalx9M+eVAQPLSyRguptNiW8rUJKIkuteyjJ0o9JTXP
 K71g8SWZ4ImaCOiS0bzgxX4rcnsAsEipghw2Br40Evj81xL0szENFI7+NHA/cMW1wCje
 aBTbxQfkiB5ylUiYAGBkmg8+8gGBiQgBTFuczZxylsr/fqSlA20kKT9uJ91/ttv25eXZ
 RRTY+sZGSo9cGqacZj6GdzlYR6G9jjz/wBb9udej3hXIARCC4SC/2eC1JGPPof6tl46+
 nBzp56m7SRGcVCSjAYALZPk2mTXhgUzhrP6CKfsWyRFs5iEzN3U8q4jkwMUsY6RNcSLt
 K/2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:cc;
 bh=t2evv6/g4nh21uSmBweo3ZJKoGFmuHQjDSz9/vYc3EU=;
 b=hGq9joI96CVJRndeifq5jpwJsAt4lsdUvfe7AH49X3JOKnbFeQ34O6qS0icnROPGIG
 YgMewGPElCRmF/8OvcuVhvunZWtYYMvHU8K3reoAkdWTRuwI2Nde738fsHFv/q13i7Eg
 bxve/C/z5IcZeatz540inCr6XRW1kqr0rs76UsqXGwtiDs5Uc5u2MRQia/OjIQ058tsG
 wp9Jc6Ed3ux1ifRntfIj7B1c//zOcwTRLTieGqQTJ+JjXTRSVyOGFsWz1A78pZYLVgiC
 2KC+8Vx3K+FDUyZEktzk9SUF74BBw2uFoOqvFlxAMRCt6XSjb3FdccCdE0xf6MCaTW6o
 nzaA==
X-Gm-Message-State: APjAAAUYm3RMgzsS84kIx+VBsyfm3ZejA5g/zq63a8Q4aWeHPk6HDo81
 Q1Tbf0QOM7d65S9H1G5gvn0KSJbj1pAPpaPpecoVLw==
X-Google-Smtp-Source: APXvYqzLfI2/r9+7tz8G164CwAXPrTU7olwwux/VWNmUvu0k3SEgb1Un5BDUTuqEDmDRfp/Nq9b8QobFdTSLPCt3ysA=
X-Received: by 2002:a17:906:d14c:: with SMTP id
 br12mr15591764ejb.244.1565650365514; 
 Mon, 12 Aug 2019 15:52:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAHe2E1LmevSXC6_CNOn14cpMYRwDMXj7WSv5U=nrEQcesobZfw@mail.gmail.com>
 <5D51D464.6020201@gmail.com>
In-Reply-To: <5D51D464.6020201@gmail.com>
Date: Mon, 12 Aug 2019 19:34:38 -0300
Message-ID: <CAHe2E1JyRinONdSVWBKBYiUN3mAbNnQw2BvrP1YaCK5D0ESGMQ@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Differences between b200 and b100
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Federico 'Larroca' La Rocca via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Federico 'Larroca' La Rocca <flarroca@gmail.com>
Content-Type: multipart/mixed; boundary="===============0509685439084550067=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============0509685439084550067==
Content-Type: multipart/alternative; boundary="000000000000e1098f058ff36163"

--000000000000e1098f058ff36163
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,
Thanks for the quick reply. I forgot to mention that the B100 has a WBX
daughterboard. I know it's old, but for receiving it has worked perfectly
so far and was surprised to see this performance when transmitting.
The sampling rate is fixed at 8 MSps.
best
Federico

El lun., 12 ago. 2019 a las 18:05, Marcus D. Leech via USRP-users (<
usrp-users@lists.ettus.com>) escribi=C3=B3:

> On 08/12/2019 04:38 PM, Federico 'Larroca' La Rocca via USRP-users wrote:
> > Hello everyone,
> >
> > We are testing our ISDB-T transmitter (see
> > https://github.com/git-artes/gr-isdbt) and we came into a very
> > important difference between the B100 and B200 when used as
> > transmitters. See the attached screenshots, but using the same exact
> > setup except for the transmitters (i.e. same antennas, same sampling
> > rate, same receivers, same software, although we have tested several
> > gains on the USRP just to be sure), while the b200 receives the whole
> > signal flawlessly, the b100 tends to distort the edges of the
> > transmitted signal's spectrum. In both cases the signal is received
> > with another b100.
> >
> > To be a little more explicit, the ISDB-T signal is OFDM modulated with
> > 6MHz of bandwidth (we are both receiving and transmitting at 8MSps),
> > and the figures include (starting from below) the received
> > constellation, the received spectrum and the received symbols per
> > sub-carrier. It's precisely in this last graph that the problem is clea=
r.
> >
> > The question is then: what's happening here?
> >
> > best
> > Federico
> >
> What daughtercard do you have in the B100?  What sample rates are you
> using?   The B100 and B200 are *VERY* different hardware internally,
>    and the RF pathways are not that similar, and the internal DSP logic
> is fairly different also.
>
> With the B100, the sample rates have to be an integer fraction of
> 64MHz.  I'll also comment that the B100 is obsolete, and has been for man=
y
>    years, so if there is an internal problem in the DSP design, for
> example, it's not likely to get much maintenance work from Ettus R&D.
>
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000e1098f058ff36163
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi, <br></div><div>Thanks for the quick reply. I forg=
ot to mention that the B100 has a WBX daughterboard. I know it&#39;s old, b=
ut for receiving it has worked perfectly so far and was surprised to see th=
is performance when transmitting.=C2=A0 <br></div><div>The sampling rate is=
 fixed at 8 MSps.</div><div>best</div><div>Federico<br></div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El lun., 12 ag=
o. 2019 a las 18:05, Marcus D. Leech via USRP-users (&lt;<a href=3D"mailto:=
usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;) escribi=C3=
=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 08/12/20=
19 04:38 PM, Federico &#39;Larroca&#39; La Rocca via USRP-users wrote:<br>
&gt; Hello everyone,<br>
&gt;<br>
&gt; We are testing our ISDB-T transmitter (see <br>
&gt; <a href=3D"https://github.com/git-artes/gr-isdbt" rel=3D"noreferrer" t=
arget=3D"_blank">https://github.com/git-artes/gr-isdbt</a>) and we came int=
o a very <br>
&gt; important difference between the B100 and B200 when used as <br>
&gt; transmitters. See the attached screenshots, but using the same exact <=
br>
&gt; setup except for the transmitters (i.e. same antennas, same sampling <=
br>
&gt; rate, same receivers, same software, although we have tested several <=
br>
&gt; gains on the USRP just to be sure), while the b200 receives the whole =
<br>
&gt; signal flawlessly, the b100 tends to distort the edges of the <br>
&gt; transmitted signal&#39;s spectrum. In both cases the signal is receive=
d <br>
&gt; with another b100.<br>
&gt;<br>
&gt; To be a little more explicit, the ISDB-T signal is OFDM modulated with=
 <br>
&gt; 6MHz of bandwidth (we are both receiving and transmitting at 8MSps), <=
br>
&gt; and the figures include (starting from below) the received <br>
&gt; constellation, the received spectrum and the received symbols per <br>
&gt; sub-carrier. It&#39;s precisely in this last graph that the problem is=
 clear.<br>
&gt;<br>
&gt; The question is then: what&#39;s happening here?<br>
&gt;<br>
&gt; best<br>
&gt; Federico<br>
&gt;<br>
What daughtercard do you have in the B100?=C2=A0 What sample rates are you =
<br>
using?=C2=A0 =C2=A0The B100 and B200 are *VERY* different hardware internal=
ly,<br>
=C2=A0 =C2=A0and the RF pathways are not that similar, and the internal DSP=
 logic <br>
is fairly different also.<br>
<br>
With the B100, the sample rates have to be an integer fraction of <br>
64MHz.=C2=A0 I&#39;ll also comment that the B100 is obsolete, and has been =
for many<br>
=C2=A0 =C2=A0years, so if there is an internal problem in the DSP design, f=
or <br>
example, it&#39;s not likely to get much maintenance work from Ettus R&amp;=
D.<br>
<br>
<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000e1098f058ff36163--


--===============0509685439084550067==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0509685439084550067==--

