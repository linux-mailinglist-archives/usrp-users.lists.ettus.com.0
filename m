Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 902421B27DF
	for <lists+usrp-users@lfdr.de>; Tue, 21 Apr 2020 15:29:52 +0200 (CEST)
Received: from [::1] (port=50600 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jQsyC-0005O8-Cd; Tue, 21 Apr 2020 09:29:48 -0400
Received: from mail-oi1-f182.google.com ([209.85.167.182]:46014)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1jQsy8-0005I5-Ty
 for usrp-users@lists.ettus.com; Tue, 21 Apr 2020 09:29:44 -0400
Received: by mail-oi1-f182.google.com with SMTP id k133so11967892oih.12
 for <usrp-users@lists.ettus.com>; Tue, 21 Apr 2020 06:29:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7F21qs8mh1pPfzvV3HBPGYBlpLoTMrEiA/fFEUr4/is=;
 b=jpvX07CLbfMi7fhYN/TE7PbgT6HIO0tjAREGIKm72/Udp2q72DEovkLWkW5NCrtW70
 uDtDBW3sxLaUYJCWTs574Sj7DJEiyNptCqAuGiWm5pOJ+H1Rs5MlyfNkgp+BYmceHMWU
 BRcS7+Ogz2KKIUdrAQ7LnsiK7Q3dfySmah2jYh3lr25uom5Arl11UD1oASsCImb7Ae7V
 zlmQU61CT1zS77mN+ltFlMw1xCtAObvWaG4MpKvIxDclS7ocI2dRVTDqXj+PVv/Ez9GT
 XeHk+nCT5VJzNPjisvXWpQ/S3nyfP9hJ1Ut2KClfjg3RFakFcOVstvXjBmtmSdaCgJ+m
 uAyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7F21qs8mh1pPfzvV3HBPGYBlpLoTMrEiA/fFEUr4/is=;
 b=YKWrqDSYgAnhxrXpCVAhyoK0wNJqxOvTku0He7Old4ivlxoEoahgTUwSF81wOg3dhX
 zzMB/NEiKJW1WPzGlc+oWObl0oeaqQgrZ0Csncxben9l4p8NIrF+yr25NACVcVWoiCDU
 Nc1TFKEZVsD1Mf5Whh4dVhLv/EZtCCt/M5gddw5zMH8O3XVfSeMgm9/DV3XpDUCcW/pa
 9FOpF8BPJmTIAR+wBM9RsgTW8ah4Q0K/th32VTIC5aPtB/K2F+y6hy704aT0UtiMJo9m
 WTHrE4EuZ45RFxMBFnPfytRfeghwUIeQ8Ha2AIrnp/ilej4POZDJN7/q5ixAOdfYmz0c
 As3g==
X-Gm-Message-State: AGi0PuYuMKswB1MSj26VqMf4BrHYf56Yu+vJQLVJ/WKb7PWim7gRWEu5
 yKq383WWm4KufK+Y0yOn5BMRHTcCpbJN0/V9/W1KSg==
X-Google-Smtp-Source: APiQypLUcwZBsDE4c+VwuaDivlzuZ7qaFVkv2TFGPxV4i9pC/pMz9WCWZxnlfux+Xbu8tVJ4DR4Mk4NaCmJ3pBctXbs=
X-Received: by 2002:aca:f288:: with SMTP id q130mr3155143oih.33.1587475744111; 
 Tue, 21 Apr 2020 06:29:04 -0700 (PDT)
MIME-Version: 1.0
References: <mailman.47.1587398404.12990.usrp-users_lists.ettus.com@lists.ettus.com>
 <trinity-f7accbc4-db9b-4912-8e5c-f9c682236c93-1587400437026@3c-app-gmx-bs34>
 <5E9E4751.1090606@gmail.com>
 <trinity-3d608735-14fc-4c76-b755-59be5d062058-1587443012457@3c-app-gmx-bs69>
In-Reply-To: <trinity-3d608735-14fc-4c76-b755-59be5d062058-1587443012457@3c-app-gmx-bs69>
Date: Tue, 21 Apr 2020 09:28:53 -0400
Message-ID: <CAB__hTQGu_aEH+ntDWB9xCDds7mfbEtf6FK0KdXsr==P8V7DEg@mail.gmail.com>
To: Lukas Haase <lukashaase@gmx.at>
Subject: Re: [USRP-users] Questions about UBX-160 Noise Figure
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
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
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2412812490696476239=="
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

--===============2412812490696476239==
Content-Type: multipart/alternative; boundary="000000000000d1806b05a3ccff2c"

--000000000000d1806b05a3ccff2c
Content-Type: text/plain; charset="UTF-8"

I don't quite understand why it is important if it is "analog" bandwidth.
While I understand that the UBX cannot change its analog bandwidth, it
seems to me that digital bandwidth that is inherent in downconversion from
200 MS/s to 5MS/s is still going reduce the noise power by the ratio of the
original bandwidth (160 MHz) to the new bandwidth (say, 4.5 MHz).
Rob

On Tue, Apr 21, 2020 at 12:24 AM Lukas Haase via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Marcus,
>
> > Von: "Marcus D. Leech" <patchvonbraun@gmail.com>
> > [...]
> > > My question is if my approach/understanding is right.
> > >
> > > In particular I do not understand Question 4 (why does noise not
> reduce if I reduce bandwidth).
> > If you're varying *analog* bandwidth, rather than sampling rate, be
> > aware that UBX doesn't have variable analog bandwidth.  It's always
> fixed.
>
> I see.
> Great point.
>
> I just found:
> http://ettus.80997.x6.nabble.com/USRP-users-Which-bandwidth-does-uhd-usrp-multi-usrp-set-rx-bandwidth-set-td11897.html
>
> And it seems set_tx_bandwidth() and set_rx_bandwidth() do nothing then on
> the UBX.
>
> I wrote before my noise level should be -174+NF+10*log10(5e6).
>
> But based on this, it should be more correctly -174+NF+10*log10(160e6) ...
> is that correct? (I just receive the raw samples from the USRP via USRP
> Source. There is no other digital filter?)
>
> > > Furthermore, I'd be interested if Question 5 is conceptually correct.
> > Conceptually, I don't see any problem with it, but it very-squarely
> > enters  "consider a spherical cow" territory.  You CANNOT use a purely
> >    arithmetic analysis, due to uncertainties.   I would, in fact,
> > encourage you to acquire a decent broad-band, calibrated, noise source
> for
> >    you lab so that you can do Y-factor analysis, if for no other reason
> > than to satisfy yourself that the noise equations work.
>
> The issue with the bandwidth calculation above would be one of them ;-)
>
> > I've used these on a budget-sensitive project just last year:
> > https://g8fek.com/precision-noise-sources.html
>
> Thanks for the pointer. I think I'll get one of these.
>
> For a proper use I would need a steep filter though, correct? (in order to
> have a well defined total input power Pin=-174+ENR+10*log10(FilterCuroff)
> dBm? )
>
> Thanks,
> Lukas
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000d1806b05a3ccff2c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I don&#39;t quite understand why it is important if i=
t is &quot;analog&quot; bandwidth.=C2=A0 While I understand that the UBX ca=
nnot change its analog bandwidth, it seems to me that digital bandwidth tha=
t is inherent in downconversion from 200 MS/s to 5MS/s is still going reduc=
e the noise power=C2=A0by the ratio of the original bandwidth (160 MHz) to =
the new bandwidth=C2=A0(say, 4.5 MHz).=C2=A0</div><div>Rob</div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 21, 2=
020 at 12:24 AM Lukas Haase via USRP-users &lt;<a href=3D"mailto:usrp-users=
@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex">Hi Marcus,<br>
<br>
&gt; Von: &quot;Marcus D. Leech&quot; &lt;<a href=3D"mailto:patchvonbraun@g=
mail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;<br>
&gt; [...]<br>
&gt; &gt; My question is if my approach/understanding is right.<br>
&gt; &gt;<br>
&gt; &gt; In particular I do not understand Question 4 (why does noise not =
reduce if I reduce bandwidth).<br>
&gt; If you&#39;re varying *analog* bandwidth, rather than sampling rate, b=
e<br>
&gt; aware that UBX doesn&#39;t have variable analog bandwidth.=C2=A0 It&#3=
9;s always fixed.<br>
<br>
I see.<br>
Great point.<br>
<br>
I just found: <a href=3D"http://ettus.80997.x6.nabble.com/USRP-users-Which-=
bandwidth-does-uhd-usrp-multi-usrp-set-rx-bandwidth-set-td11897.html" rel=
=3D"noreferrer" target=3D"_blank">http://ettus.80997.x6.nabble.com/USRP-use=
rs-Which-bandwidth-does-uhd-usrp-multi-usrp-set-rx-bandwidth-set-td11897.ht=
ml</a><br>
<br>
And it seems set_tx_bandwidth() and set_rx_bandwidth() do nothing then on t=
he UBX.<br>
<br>
I wrote before my noise level should be -174+NF+10*log10(5e6).<br>
<br>
But based on this, it should be more correctly -174+NF+10*log10(160e6) ... =
is that correct? (I just receive the raw samples from the USRP via USRP Sou=
rce. There is no other digital filter?)<br>
<br>
&gt; &gt; Furthermore, I&#39;d be interested if Question 5 is conceptually =
correct.<br>
&gt; Conceptually, I don&#39;t see any problem with it, but it very-squarel=
y<br>
&gt; enters=C2=A0 &quot;consider a spherical cow&quot; territory.=C2=A0 You=
 CANNOT use a purely<br>
&gt;=C2=A0 =C2=A0 arithmetic analysis, due to uncertainties.=C2=A0 =C2=A0I =
would, in fact,<br>
&gt; encourage you to acquire a decent broad-band, calibrated, noise source=
 for<br>
&gt;=C2=A0 =C2=A0 you lab so that you can do Y-factor analysis, if for no o=
ther reason<br>
&gt; than to satisfy yourself that the noise equations work.<br>
<br>
The issue with the bandwidth calculation above would be one of them ;-)<br>
<br>
&gt; I&#39;ve used these on a budget-sensitive project just last year:<br>
&gt; <a href=3D"https://g8fek.com/precision-noise-sources.html" rel=3D"nore=
ferrer" target=3D"_blank">https://g8fek.com/precision-noise-sources.html</a=
><br>
<br>
Thanks for the pointer. I think I&#39;ll get one of these.<br>
<br>
For a proper use I would need a steep filter though, correct? (in order to =
have a well defined total input power Pin=3D-174+ENR+10*log10(FilterCuroff)=
 dBm? )<br>
<br>
Thanks,<br>
Lukas<br>
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
</blockquote></div></div>

--000000000000d1806b05a3ccff2c--


--===============2412812490696476239==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2412812490696476239==--

