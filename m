Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CBF82860D8
	for <lists+usrp-users@lfdr.de>; Wed,  7 Oct 2020 16:03:22 +0200 (CEST)
Received: from [::1] (port=37920 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kQA2J-0007UM-MZ; Wed, 07 Oct 2020 10:03:19 -0400
Received: from mail-ot1-f68.google.com ([209.85.210.68]:38997)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kQA2F-0007NN-7w
 for usrp-users@lists.ettus.com; Wed, 07 Oct 2020 10:03:15 -0400
Received: by mail-ot1-f68.google.com with SMTP id f10so2288991otb.6
 for <usrp-users@lists.ettus.com>; Wed, 07 Oct 2020 07:02:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UO/3rXJZE813y7Xd2+brmkSehJptWrq5I8zV9SVlC+o=;
 b=N/hlYVu/ykF9lNkh9yv7yRMAHoT6CRdAASa/Fe1foRdAJnCQ9Hjihgr6TaLGOO+w5C
 h9ZIqE4B5IxE7vkZY/79Hdt9TcWF0yFAUWZnatEMilYqlYgEH8d5j2VawsUitWgxaV0w
 tu1FKSXL2cJ3TVAdKd39J6TaLyg1XHo+9DydWAowIyRQnQqN4aUHeSBcTthr5r7OaN3x
 aa4J8BVxW7k1xfUMjAcQk8iGAQYFFVECA1RjbsrzZ1Iub9FhPMMXsI4tC2HaYC8oj7mA
 41uhpvgvRKZONpAmEe/DMdqzmtOFQqSF3Nzs9XSd0oZTwU1sKI6WST0Pn0/in1JKnGV5
 MUhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UO/3rXJZE813y7Xd2+brmkSehJptWrq5I8zV9SVlC+o=;
 b=gcyBGUb4n37JdmddUL0t8ZbKlJqEatLfRVBqXKF1SQDSJ/+wgeTv7sikoZyYKEhbow
 ugjEXTVrzJtHtH7+urFFmsSVuG0r6u+oHhRLm4Gj6ufA+fip4JRgk5QE8JPmxwKYbbhY
 OEaMxOGj9uKr8pfj6g2zdkI7E47xIxiLssuIFYJzhK2zjz7da7IUDmbuV9RbRWR0jsw/
 kjpMoOM+sN0IaR6ymQiXn6z/Pu4P0wMFvAqugcA+mBwfHjsJVktfHA3dvgKGP31PJq7e
 vHJCbNdF5nnXF5YBtYqwgteLIfz7mtnrvyOeScU21jQNIeuVSLAlee/f3GSbzwxisNf1
 +J8A==
X-Gm-Message-State: AOAM5311SSxghTdQ9UJTnYJE3bYtJgrg2/xxw64afHRmpHxnMnsMAnxT
 rMaZiiSUk7k8hYvANq/l5pI8fQSCmUo2G+fQERIv+w==
X-Google-Smtp-Source: ABdhPJwtV50o31SGkPqp6QYmSkQDiqMINOlrO2rZ/z6Ub1rlEPLBVjbSUzltfvWGizEA+3hyQ/Xcq5kqCdOhkvKmjYg=
X-Received: by 2002:a9d:6219:: with SMTP id g25mr2004064otj.58.1602079354321; 
 Wed, 07 Oct 2020 07:02:34 -0700 (PDT)
MIME-Version: 1.0
References: <CAL0m=NZHR7zZCGuYhO07r+KZEr6ZYQYvp41q+kYJo7fh1YLxpQ@mail.gmail.com>
 <5F7D3ACA.1080406@gmail.com>
In-Reply-To: <5F7D3ACA.1080406@gmail.com>
Date: Wed, 7 Oct 2020 10:02:23 -0400
Message-ID: <CAB__hTQT9fHyHF=48WJbR8O975BdvautgXYJXRTzbGLY6GsQWg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Question about N310 Internal synchronization
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============1582675409094281437=="
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

--===============1582675409094281437==
Content-Type: multipart/alternative; boundary="000000000000d1520605b1152aed"

--000000000000d1520605b1152aed
Content-Type: text/plain; charset="UTF-8"

On Tue, Oct 6, 2020 at 11:50 PM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:
>
> On 10/06/2020 10:29 PM, Zeng, Huacheng via USRP-users wrote:
> > Hello:
> >
> > I am using N310 for 4x4 MIMO transmission. Are N310's 4 TX/RX channels
> > internally synchronized for MIMO applications? Does it need an
> > external device (e.g., OctoClock-G CDA-2990) to synchronize those 4
> > channels for MIMO applications?
> >
> > I am also exploring channel reciprocity using N310. I have successful
> > experience with SBX in the implementation of channel calibration. But
> > it seems WBX does not fit for this purpose because of some phase
> > ambiguity issue (if I remember correctly). Would the daughterboards in
> > N310 have the phase ambiguity issue?
> >
> > Many thanks in advance!
> >
> > Hua
> >
> The N310 has a pair of AD9371 RFFE chips.  Those chips have two channels
> each, and those channels are coherent with respect to each other.
>    There will be an unknown phase offset due to the nature of
> (particularly Frac-N) synthesizers between the channels of the two halves.
>
> Unless the N310 channels implement phase-resynch via timed commands (I
> don't think that they do), you'd need some external method for
>    phase-aligning those channels.
>
> Now because they're using a common reference clock, once the phase
> offset has been factored out they should be in perfect synchronization
>    both in time and phase from that point forward.

In addition to the common reference clock that Marcus mentioned, the N310
also has capability
<https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_mg_external_lo> to
use an external LO for all channels. But, there will still be a 180 deg
phase ambiguity.
Rob

--000000000000d1520605b1152aed
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br>On Tue, Oct 6, 2020 at 11:50 PM Marcus D. Leech via US=
RP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists=
.ettus.com</a>&gt; wrote:<br>&gt;<br>&gt; On 10/06/2020 10:29 PM, Zeng, Hua=
cheng via USRP-users wrote:<br>&gt; &gt; Hello:<br>&gt; &gt;<br>&gt; &gt; I=
 am using N310 for 4x4 MIMO transmission. Are N310&#39;s 4 TX/RX channels<b=
r>&gt; &gt; internally synchronized for MIMO applications? Does it need an<=
br>&gt; &gt; external device (e.g., OctoClock-G CDA-2990) to synchronize th=
ose 4<br>&gt; &gt; channels for MIMO applications?<br>&gt; &gt;<br>&gt; &gt=
; I am also exploring channel reciprocity using N310. I have successful<br>=
&gt; &gt; experience with SBX in the implementation of channel calibration.=
 But<br>&gt; &gt; it seems WBX does not fit for this purpose because of som=
e phase<br>&gt; &gt; ambiguity issue (if I remember correctly). Would the d=
aughterboards in<br>&gt; &gt; N310 have the phase ambiguity issue?<br>&gt; =
&gt;<br>&gt; &gt; Many thanks in advance!<br>&gt; &gt;<br>&gt; &gt; Hua<br>=
&gt; &gt;<br>&gt; The N310 has a pair of AD9371 RFFE chips.=C2=A0 Those chi=
ps have two channels<br>&gt; each, and those channels are coherent with res=
pect to each other.<br>&gt; =C2=A0 =C2=A0There will be an unknown phase off=
set due to the nature of<br>&gt; (particularly Frac-N) synthesizers between=
 the channels of the two halves.<br>&gt;<br>&gt; Unless the N310 channels i=
mplement phase-resynch via timed commands (I<br>&gt; don&#39;t think that t=
hey do), you&#39;d need some external method for<br>&gt; =C2=A0 =C2=A0phase=
-aligning those channels.<br>&gt;<br>&gt; Now because they&#39;re using a c=
ommon reference clock, once the phase<br>&gt; offset has been factored out =
they should be in perfect synchronization<br>&gt; =C2=A0 =C2=A0both in time=
 and phase from that point forward.<br><br><div>In addition to the common r=
eference clock that Marcus mentioned, the N310 also has <a href=3D"https://=
files.ettus.com/manual/page_usrp_n3xx.html#n3xx_mg_external_lo">capability<=
/a> to use an external LO for all channels. But, there will still be a 180 =
deg phase ambiguity.=C2=A0</div><div>Rob</div></div>

--000000000000d1520605b1152aed--


--===============1582675409094281437==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1582675409094281437==--

