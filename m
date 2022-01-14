Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C80A648F266
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jan 2022 23:28:06 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F1AC1385A82
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jan 2022 17:28:05 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="a+RUGL1M";
	dkim-atps=neutral
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 720683854C9
	for <usrp-users@lists.ettus.com>; Fri, 14 Jan 2022 17:27:11 -0500 (EST)
Received: by mail-lf1-f45.google.com with SMTP id b14so16271839lff.3
        for <usrp-users@lists.ettus.com>; Fri, 14 Jan 2022 14:27:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=l+lRM7t+jwNP2bNzQWOniYlaf1LkQvkjfcSqn4f9HUQ=;
        b=a+RUGL1MjbZlpJ8HNWQcaCyymYSDb3RKG8ckwHCOHR+EllozjWxb6LfliPwLeV/ml8
         VPhH5L89O3vQwrFHAkUMDuQ9BIh5Xe3p5wekAOL3TU3dqv0gSvHYM2F4Xg+78mHJeoyz
         O3bxo4gIqI/HRXc0FtrZS1yvlhu0Xpqh/J1oOIl9QvoZn3AwDFJ4G1ilCoLPgoFwWmrP
         lGdxk0ccCb5K7KOX0bzEwUtWdjVl1u4HoSGUSaahdWTrEkoxeKCt/+4qg8sa+QIQDeEi
         9yrxGTvt3lpcOODCiNEMRJzp/3R9epWsJFsfglzfroecL7Y06JkIY7LuDKTnCS+9rtjy
         ZxTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=l+lRM7t+jwNP2bNzQWOniYlaf1LkQvkjfcSqn4f9HUQ=;
        b=qMV6mRJrdvMkmBpmizLwnUpitHzMJm3x1F5Z10u/a8djpEbBAg3JoPIxV/YCQntL1S
         ZRPwpYEYEm4qyRdjQkEi/kifIiJ9reHta3Ydt+k6vb5Ap3Eic1bWFHvSdk8k7AeXEl1+
         gWe0clow/TiS4yLdSutkFvLeitna9ROSxy7+TMmLCvtHEDnMJv3+iFTvoU3yXF+7rMsT
         ugi3zOCdA8WTXK4/E9cBXvjWR5dEClRrlB1xlGL4YttRfTAEfrhDG2G1ivNYbMj2eTkq
         aJgb4pSV7gmvxW4AXbRwub4hg6gDeIs/E55xI1lBjN6OQBTwLnrK9uDBWChVBZn1y7IQ
         olrg==
X-Gm-Message-State: AOAM532Y1dSr31EMoPDPJ0cImLBI1Uy6+/LQEtlUE1MsZrJcXZDOFdGA
	x/eIJspr8t6r5mMiUdl2ZcWcud3sz/uMCSRCJL46Vkzm
X-Google-Smtp-Source: ABdhPJwguPpksWMNHIL1G5Amjm0HHeSGS0NVCccaG7HDzzc75fJ+cnLH/BWkG2A+MhEChBGkYegsS+6XWPNPR9tXOy0=
X-Received: by 2002:ac2:44d6:: with SMTP id d22mr8021910lfm.590.1642199229999;
 Fri, 14 Jan 2022 14:27:09 -0800 (PST)
MIME-Version: 1.0
References: <55a9f781-6dfd-d2e5-0311-396854c054b3@gmail.com>
 <44F81C71-D632-4048-8B62-7190B8688B05@gmail.com> <006fb235-9773-127c-e6b2-fa6c885ca1b6@gmail.com>
 <CACwKM9LvFd4s8vP6fpMMemHEfwfE0f+D4txNX3zjrGYvpiu9eA@mail.gmail.com>
 <778d7cf6-1bf3-28ed-f641-080b32b937ea@gmail.com> <CACwKM9JZU0UYDraek9LKFKTBvBuoCKKC=-xWvUkH-Jn3yOvz-Q@mail.gmail.com>
 <6972c87a-2795-bc01-a8b1-80b313e96a54@gmail.com>
In-Reply-To: <6972c87a-2795-bc01-a8b1-80b313e96a54@gmail.com>
From: Paul Atreides <maud.dib1984@gmail.com>
Date: Fri, 14 Jan 2022 17:26:59 -0500
Message-ID: <CACwKM9L97NuK4RM_t56Wiu3tGOKzF+x5h35ebzFc_5=c6xVatw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: WAQIQAJMT5XJ3NXQJT436JJ5CYGLDWGA
X-Message-ID-Hash: WAQIQAJMT5XJ3NXQJT436JJ5CYGLDWGA
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 LO sharing between RF 0/1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WAQIQAJMT5XJ3NXQJT436JJ5CYGLDWGA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2841063949869399068=="

--===============2841063949869399068==
Content-Type: multipart/alternative; boundary="000000000000c12bee05d5924d97"

--000000000000c12bee05d5924d97
Content-Type: text/plain; charset="UTF-8"

doing it now. is the LO frequency the carrier freq or is it 1/2 or 2x?

On Fri, Jan 14, 2022 at 5:03 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2022-01-14 17:00, Paul Atreides wrote:
> > That's what I had originally.
> > i've Changed back to this and still getting no LED on the TX LO OUT0:
> > RF0
> > LO Source internal
> > LO export True
> > RF1
> > LO Source external
> > LO export False
> >
> > the generated flowgraph code looks to be reflecting  is:
> >         self.uhd_usrp_sink_0.set_clock_source('external', 0)
> >         self.uhd_usrp_sink_0.set_time_source('external', 0)
> >         self.uhd_usrp_sink_0.set_samp_rate(samp_rate)
> > self.uhd_usrp_sink_0.set_time_unknown_pps(uhd.time_spec(0))
> >
> >         self.uhd_usrp_sink_0.set_center_freq(freq, 0)
> >         self.uhd_usrp_sink_0.set_antenna('TX/RX', 0)
> >         self.uhd_usrp_sink_0.set_gain(gain_0, 0)
> >
> >         self.uhd_usrp_sink_0.set_lo_source('internal', uhd.ALL_LOS, 0)
> >         self.uhd_usrp_sink_0.set_lo_export_enabled(True, uhd.ALL_LOS, 0)
> >         self.uhd_usrp_sink_0.set_center_freq(freq, 1)
> >         self.uhd_usrp_sink_0.set_antenna('TX/RX', 1)
> >         self.uhd_usrp_sink_0.set_gain(gain_1, 1)
> >
> >         self.uhd_usrp_sink_0.set_lo_source('external', uhd.ALL_LOS, 1)
> >         self.uhd_usrp_sink_0.set_lo_export_enabled(False, uhd.ALL_LOS, 1)
> >
>
> I wonder if this is just a case of the LO export LED code isn't there in
> that version of UHD?
>
> Can you confirm presence of the LO signal with a spectrum analyser or
> similar?
>
>
>

--000000000000c12bee05d5924d97
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">doing it now. is the LO frequency the carrier freq or is i=
t 1/2 or 2x?<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Jan 14, 2022 at 5:03 PM Marcus D. Leech &lt;<a href=
=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 2022-01-14 17=
:00, Paul Atreides wrote:<br>
&gt; That&#39;s what I had originally.<br>
&gt; i&#39;ve Changed back to this and still getting no LED on the TX LO OU=
T0:<br>
&gt; RF0<br>
&gt; LO Source internal<br>
&gt; LO export True<br>
&gt; RF1<br>
&gt; LO Source external<br>
&gt; LO export False<br>
&gt;<br>
&gt; the generated flowgraph code looks to be reflecting=C2=A0 is:<br>
&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.uhd_usrp_sink_0.set_cl=
ock_source(&#39;external&#39;, 0)<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_time_source(&#39;=
external&#39;, 0)<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_samp_rate(samp_ra=
te)<br>
&gt; self.uhd_usrp_sink_0.set_time_unknown_pps(uhd.time_spec(0))<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_center_freq(freq,=
 0)<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_antenna(&#39;TX/R=
X&#39;, 0)<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_gain(gain_0, 0)<b=
r>
&gt;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_lo_source(&#39;in=
ternal&#39;, uhd.ALL_LOS, 0)<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_lo_export_enabled=
(True, uhd.ALL_LOS, 0)<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_center_freq(freq,=
 1)<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_antenna(&#39;TX/R=
X&#39;, 1)<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_gain(gain_1, 1)<b=
r>
&gt;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_lo_source(&#39;ex=
ternal&#39;, uhd.ALL_LOS, 1)<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_lo_export_enabled=
(False, uhd.ALL_LOS, 1)<br>
&gt;<br>
<br>
I wonder if this is just a case of the LO export LED code isn&#39;t there i=
n <br>
that version of UHD?<br>
<br>
Can you confirm presence of the LO signal with a spectrum analyser or <br>
similar?<br>
<br>
<br>
</blockquote></div>

--000000000000c12bee05d5924d97--

--===============2841063949869399068==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2841063949869399068==--
