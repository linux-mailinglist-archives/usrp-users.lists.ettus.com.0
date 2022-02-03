Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E67DE4A8E4A
	for <lists+usrp-users@lfdr.de>; Thu,  3 Feb 2022 21:36:26 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 30273385C25
	for <lists+usrp-users@lfdr.de>; Thu,  3 Feb 2022 15:36:26 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="FcecOvdo";
	dkim-atps=neutral
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 47C10384934
	for <usrp-users@lists.ettus.com>; Thu,  3 Feb 2022 15:35:30 -0500 (EST)
Received: by mail-lf1-f48.google.com with SMTP id z19so8374621lfq.13
        for <usrp-users@lists.ettus.com>; Thu, 03 Feb 2022 12:35:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=A0V3nlSOGthhAavciA/hyo2I8ynKl3S5TyZZquYOklQ=;
        b=FcecOvdoSJk8u+ep+26fI9BQv0WNyZA2gmFsmEuOT55Y5I7jPL8sJxMJuPXbqEduLe
         BEy2W+CWueune9NIQdVQgJ143bqzv5O46DokI0vxZZpAZkGNMdP6U+O5+j7sYmwBs0Lp
         9+FE00d7O+J+fSOq4Vc9fFV/NUH1HfdoXnvJXukbRNZYfQhYkL2h59T2saLub0Gacl6t
         pel0jSWaTWOm0oefO0K8vyt37BIZRq5i5uPBk2d9KIR1uet41KKOSv3CuwZflHXSC1ay
         J3EGC43IbQ3U8qEeyOsHTan06DPMsyf6hTU38XN0L4wlyYeoKYlEg6dJmI2f8z6ks3+9
         K87A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=A0V3nlSOGthhAavciA/hyo2I8ynKl3S5TyZZquYOklQ=;
        b=Lsc/Soo+rrqu+TtRj498nXGKyg9r98N4FDdQkyokwLGSYm4jeyoN0KjfyqXZXKgQKI
         BiwqWkHGhkdWlXkutQsyS8Az7Cv67RegeqJR4TYNWZm1HlcruRW17aiUMeAOrwDjpxmQ
         Kh+qPx2n3lg0R8gLOYi3ViM/hzt7XJzij68YGmiuInX9b3AYbBH4E994R5zmXoREiCbE
         lhUDpmBwnu8iEh2vWR0acAKKVtbYNyZMEJpnb89StI4NqIENKLQmk5NEoLbQ1x6rxEEJ
         SRdHD6I3VwsXW5iLMIJ7/0qYUwpcgeYwVUFIuDw3OtZ1Qcg8fb9T4vSQmvN/dJ9mejEl
         vtdA==
X-Gm-Message-State: AOAM531PZogJ7dCjVE8wrT23FM/RYoo0zmisI1VXib6VEfDLBqAMtLk1
	B6QM0vvTFw1YD6Oy/oq3o9QstGCg9eMSVieshSpr1sliYKB8
X-Google-Smtp-Source: ABdhPJyVv515gwjBqWMk1zBkTf8ciF2w2o6S/27W9Svm5Iq+7NukDD6ANcUUnPq5+MteuxDtkmZT0oXRItP6HD1q2n8=
X-Received: by 2002:a05:6512:e87:: with SMTP id bi7mr28879633lfb.550.1643920528922;
 Thu, 03 Feb 2022 12:35:28 -0800 (PST)
MIME-Version: 1.0
References: <CAGM_aqyAQ9M-vHC7NrbzrvbPd6_YJQ8vZiQRE9hSoPJZfM6vGg@mail.gmail.com>
 <9b49be1d-f09c-86b8-cdbe-3389243c29b9@gmail.com>
In-Reply-To: <9b49be1d-f09c-86b8-cdbe-3389243c29b9@gmail.com>
From: John Hodgins <johnyhodgins@gmail.com>
Date: Thu, 3 Feb 2022 23:35:17 +0300
Message-ID: <CAGM_aqwGjfYxw-9rVRfwSRyOV1KwEKheoZALjjjHFvyeVaddAQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: VJ5EYKJW6JSQR7XA2Y2IDWFS7YNRZI6G
X-Message-ID-Hash: VJ5EYKJW6JSQR7XA2Y2IDWFS7YNRZI6G
X-MailFrom: johnyhodgins@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Timed Commands compatibility between different USRP series
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VJ5EYKJW6JSQR7XA2Y2IDWFS7YNRZI6G/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3121963294552418041=="

--===============3121963294552418041==
Content-Type: multipart/alternative; boundary="0000000000002a5b7205d723139e"

--0000000000002a5b7205d723139e
Content-Type: text/plain; charset="UTF-8"

Thanks for the prompt response Marcus. Should the discrepancies express
themselves as a constant offset in cross-correlation or can the delay
measurements also oscillate in a volatile fashion? For B210-E310 we see a
more constant looking offset whereas B210-X310 is just wild.

Also I remembered this discussion
<https://lists.ettus.com/empathy/thread/2H5WCI2MEWWJKXHXGPMK5UWQXETQ4JRW?hash=L7PPGLOU2FJDCA4ELC2TXJZW75WJQX4C#L7PPGLOU2FJDCA4ELC2TXJZW75WJQX4C>
from sometime ago where rising vs falling edges were used for different
USRPs.

Given your answer, can we say that for timed commands it is not a good idea
to mix and match different USRP series?

Best,
John

On Thu, Feb 3, 2022 at 11:27 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2022-02-03 15:17, John Hodgins wrote:
> > Hi there,
> >
> > We have a simple set up where we collect iq snippets from 3 usrp's at
> > the same rx-times via timed commands. We introduce delays between the
> > usrp's via a reference delay box and try to recover the introduced
> > delays via cross-correlation.
> >
> > Things work great when all the rx's belong to the same USRP family.
> > For instance we have been able to recover the correct delay for all
> > B210 (with GPSDO/TCXO) or all E310 (with GPS antenna) scenarios.
> > However, when we mix different USRP's, the delays computed via
> > cross-correlation no longer make sense.
> >
> > For instance, when we use 1 B210 and 2 E310's the delays between B210
> > and E310's just oscillate wildly but the relative difference between
> > E310 remains relatively stable. We tested 2 B210's with a single X310
> > (with GPSDO/OCXO) as well and we see the same problem as well. The
> > interesting thing is though visualizing the spectrum of collected
> > snippets from different USRPs show pretty much the spectrum of the
> > known applied signal.
> >
> > Is there some fundamental discrepancy between different USRP families?
> > Or maybe UHD somehow interprets samples differently for different
> > USRP's (flipping i and.q, different rx-time, pps implementations,
> > some precision issues maybe)?
> >
> > In any case I would be grateful if anyone can shed some light onto
> > this behavior.
> >
> > Best,
> > John
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> The group delays between USRP families will be different due to
> different FPGA implementations, the exact "placement" of time-of-day
> registers, etc.
>
> It would be very difficult to guarantee phase-coherence across different
> USRP device types, because the implementations are different--not just
> the FPGA bits and
>    pieces (DUCs, DDCs, etc), but also the analog stages will be different.
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000002a5b7205d723139e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for the prompt response Marcus. Should the discrepa=
ncies express themselves as a constant offset in cross-correlation or can t=
he delay measurements also oscillate in a volatile fashion? For B210-E310 w=
e see a more constant looking offset whereas B210-X310 is just wild.<br><br=
>Also I remembered this <a href=3D"https://lists.ettus.com/empathy/thread/2=
H5WCI2MEWWJKXHXGPMK5UWQXETQ4JRW?hash=3DL7PPGLOU2FJDCA4ELC2TXJZW75WJQX4C#L7P=
PGLOU2FJDCA4ELC2TXJZW75WJQX4C">discussion</a> from sometime ago where risin=
g vs falling edges were used for different USRPs.=C2=A0<div><br></div><div>=
Given your answer, can we say that for timed commands it is not a good idea=
 to mix and match different USRP series?<br><div><br></div><div>Best,</div>=
<div>John</div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Thu, Feb 3, 2022 at 11:27 PM Marcus D. Leech &lt;<a=
 href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 2022-02-=
03 15:17, John Hodgins wrote:<br>
&gt; Hi there,<br>
&gt;<br>
&gt; We have a simple set up where we collect iq snippets from 3 usrp&#39;s=
 at <br>
&gt; the same rx-times via timed commands. We introduce delays between the =
<br>
&gt; usrp&#39;s via a reference delay box and try to recover the introduced=
 <br>
&gt; delays via cross-correlation.<br>
&gt;<br>
&gt; Things work great when=C2=A0all the rx&#39;s belong to the same USRP f=
amily. <br>
&gt; For instance we have been able to recover the correct delay for all <b=
r>
&gt; B210 (with GPSDO/TCXO) or all=C2=A0E310 (with GPS antenna) scenarios. =
<br>
&gt; However, when we mix different USRP&#39;s, the delays computed via <br=
>
&gt; cross-correlation no longer make sense.<br>
&gt;<br>
&gt; For instance, when we use 1 B210 and 2 E310&#39;s the delays between B=
210 <br>
&gt; and E310&#39;s just oscillate wildly but the relative difference betwe=
en <br>
&gt; E310 remains relatively stable. We tested 2 B210&#39;s with a single X=
310 <br>
&gt; (with GPSDO/OCXO) as well and we see the same problem as well. The <br=
>
&gt; interesting thing is though visualizing the spectrum of collected <br>
&gt; snippets from different USRPs show pretty much the spectrum of the <br=
>
&gt; known applied signal.<br>
&gt;<br>
&gt; Is there some fundamental discrepancy between different USRP families?=
 <br>
&gt; Or maybe UHD somehow interprets samples differently for different <br>
&gt; USRP&#39;s=C2=A0(flipping i and.q, different rx-time, pps implementati=
ons,=C2=A0 <br>
&gt; some precision issues maybe)?<br>
&gt;<br>
&gt; In any case I would be grateful if anyone=C2=A0can shed some light ont=
o <br>
&gt; this behavior.<br>
&gt;<br>
&gt; Best,<br>
&gt; John<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
The group delays between USRP families will be different due to <br>
different FPGA implementations, the exact &quot;placement&quot; of time-of-=
day <br>
registers, etc.<br>
<br>
It would be very difficult to guarantee phase-coherence across different <b=
r>
USRP device types, because the implementations are different--not just <br>
the FPGA bits and<br>
=C2=A0=C2=A0 pieces (DUCs, DDCs, etc), but also the analog stages will be d=
ifferent.<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000002a5b7205d723139e--

--===============3121963294552418041==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3121963294552418041==--
