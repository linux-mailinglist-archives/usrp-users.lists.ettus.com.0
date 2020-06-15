Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CFE61FA3AE
	for <lists+usrp-users@lfdr.de>; Tue, 16 Jun 2020 00:46:45 +0200 (CEST)
Received: from [::1] (port=59286 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jkxsI-00030C-Hj; Mon, 15 Jun 2020 18:46:42 -0400
Received: from mail-ej1-f52.google.com ([209.85.218.52]:40008)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <aarsmith54@gmail.com>)
 id 1jkxsE-0002VI-Lc
 for usrp-users@lists.ettus.com; Mon, 15 Jun 2020 18:46:38 -0400
Received: by mail-ej1-f52.google.com with SMTP id q19so19271101eja.7
 for <usrp-users@lists.ettus.com>; Mon, 15 Jun 2020 15:46:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=k9uqat9EvIhVBAmhH9BwXU/ER01Zd16WqNWYE6OI5BA=;
 b=IwxV+x5UcaKnMG4CUgd9qmBVA9TxtbUoOIoyOEBPgTDuqNoYIQtsxI0k0/5ici6ven
 sVtnanPQvd5rv/WgC01/YcYQEWrcjFTClKEBaatDC9vMLdXW1f9/XEXdPclh788J/+Eu
 Wx/N0RbHjpn5Y+neXTpZFvYUXAq4huURelaBuYElP15VL53yn3bJRoSMUOEkg4LDMHcK
 MJwZVJIUoHFHIjmESDo3ILnXpK4qfC+g2P0tk0pq4Hs4BDVInmXoDuNFuu8StKHPih2J
 3rtsBpkuBL5UkfeCbDU1uZqtU8uIu+UsMLdJgTeTnGjKrYmJVVrALomhYaagpGue7utA
 jeew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=k9uqat9EvIhVBAmhH9BwXU/ER01Zd16WqNWYE6OI5BA=;
 b=bs2qirB8UlPnJyBRphuT0dffACF7mOGRdmdszj39JIFUMqtX4+Ir7tRjxOq+hcFuJu
 5etC7KCvtcSJQJ16xkcZXnfrG6/xYC2cVy0NVlWxs+jlfirwQvV2TodM65mxxPx3ppfz
 mQK20soL3MEuyVcOKcKf+NTDzvKeryPvjoFsYUokC7l9dIkdcfpiDPDGC13MBuwcEtBz
 t0ZE5giRLB4fCzSvfqm0Z6WLfd8hdy5aEVv6I1NHnKWP+GOSEXW6gJX+rqV8s6uGslYF
 ApafzX64R4BJxBqjnGFdtDeqK4dtLYsCZNmQPPKL/NI/hL1U71NoPwHLQABEW3Ubx+Jv
 XuNA==
X-Gm-Message-State: AOAM530kXcoeYcXgp7ks5pIbWGnmTDQMFj6+d7w58TbCsqmyXQA5CKR5
 5LYHgOmWRSyxY7s3yXkVOgSU5R/y1ond2QL6sAw=
X-Google-Smtp-Source: ABdhPJyhoyHOnZez1LLKrgi/A+b+BXDjx16sxfdlDBQ4+wN5nU51uT5SW4jWk107oAvQqwoW104BP2aps8JdnWxhtCQ=
X-Received: by 2002:a17:906:4c81:: with SMTP id q1mr39006eju.273.1592261157673; 
 Mon, 15 Jun 2020 15:45:57 -0700 (PDT)
MIME-Version: 1.0
References: <CAH2Hh72HmeMWJW_qoXLZqnSQTtA_E329tJ0CSnsAtAy7Mj7_=w@mail.gmail.com>
 <056029D3-7656-4461-A933-7298467C4D5A@gmail.com>
 <CAH2Hh70z2hCajHOLWk=R24ZhqLTR_KuR=fKaY9q=zebG8Y4CQQ@mail.gmail.com>
 <5EE7C3EA.9090902@gmail.com>
 <CAH2Hh72yRc9Hu-+0JxiLr4pi1UyDz1RpxKRwgN6vdwAmaVbaEA@mail.gmail.com>
 <5EE7F8FF.50904@gmail.com>
In-Reply-To: <5EE7F8FF.50904@gmail.com>
Date: Mon, 15 Jun 2020 16:45:45 -0600
Message-ID: <CAH2Hh70Gz9wyDZGcZtwaNO90iZJb0eJfZ3_yx0oh0z3rmP6zcg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Precise Time Synchronization In B200/N210
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
From: Aaron Smith via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Aaron Smith <aarsmith54@gmail.com>
Content-Type: multipart/mixed; boundary="===============2812289375942043139=="
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

--===============2812289375942043139==
Content-Type: multipart/alternative; boundary="000000000000b15cf805a82730ee"

--000000000000b15cf805a82730ee
Content-Type: text/plain; charset="UTF-8"

I am using a master clock rate of 48 MHz and a sample rate of 8 MHz.

On Mon, Jun 15, 2020, 4:41 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 06/15/2020 03:42 PM, Aaron Smith wrote:
> > I am using the python api.
> >
> > usrp = uhd.usrp.MultiUSRP()
> >
> > # Set gain, clock rate, sample rate etc...
> >
> > usrp.set_clock_source('external')
> > usrp.set_time_source('external')
> >
> > ts_reset = uhd.types.TimeSpec(0.0)
> > usrp.set_time_next_pps(ts_reset)
> > time.sleep(1.0)
> > last_pps = usrp.get_time_last_pps().to_ticks(1e9)
> > if last_pps % int(1e9) != 0:
> >     print("Error failed to align clock")
> >
> > # The signal is complex float data, scaled to a max amplitude of 0.9
> > approx 0.1 secs in duration
> > signal_data = numpy.fromfile('signal.dat',dtype=numpy.complex64)
> >
> > wirefmt = 'sc16'
> >
> > sa = uhd.usrp.StramArgs('fc32',wirefmt)
> > sa.channels = [0]
> > stream = usrp.get_tx_stream(sa)
> >
> > # Send 3 seconds in future
> > send_time = usrp.get_time_last_pps().get_real_secs() + 3.0
> > metadata = uhd.type.TXMetadata()
> > metadata.has_time_spec = True
> > metadata.time_spec = uhd.types.TimeSpec(send_time)
> >
> > stream.send(signal_data, metadata)
> >
> > # Ensure the transmission is complete before returning
> > time.sleep(4.0)
> >
> > sys.exit(0)
> >
> >
> This probably has to do with uncertainty in the way the 1PPS signal is
> flopped into the device.    What sample rate are you using, and what
>    master clock rate?
>
>
>

--000000000000b15cf805a82730ee
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I am using a master clock rate of 48 MHz and a sample rat=
e of 8 MHz.=C2=A0</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Mon, Jun 15, 2020, 4:41 PM Marcus D. Leech &lt;<a href=
=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex">On 06/15/2020 03:42 PM, Aaron Smith=
 wrote:<br>
&gt; I am using the python api.<br>
&gt;<br>
&gt; usrp =3D uhd.usrp.MultiUSRP()<br>
&gt;<br>
&gt; # Set gain, clock rate, sample rate etc...<br>
&gt;<br>
&gt; usrp.set_clock_source(&#39;external&#39;)<br>
&gt; usrp.set_time_source(&#39;external&#39;)<br>
&gt;<br>
&gt; ts_reset =3D uhd.types.TimeSpec(0.0)<br>
&gt; usrp.set_time_next_pps(ts_reset)<br>
&gt; time.sleep(1.0)<br>
&gt; last_pps =3D usrp.get_time_last_pps().to_ticks(1e9)<br>
&gt; if last_pps % int(1e9) !=3D 0:<br>
&gt;=C2=A0 =C2=A0 =C2=A0print(&quot;Error failed to align clock&quot;)<br>
&gt;<br>
&gt; # The signal is complex float data, scaled to a max amplitude of 0.9 <=
br>
&gt; approx 0.1 secs in duration<br>
&gt; signal_data =3D numpy.fromfile(&#39;signal.dat&#39;,dtype=3Dnumpy.comp=
lex64)<br>
&gt;<br>
&gt; wirefmt =3D &#39;sc16&#39;<br>
&gt;<br>
&gt; sa =3D uhd.usrp.StramArgs(&#39;fc32&#39;,wirefmt)<br>
&gt; sa.channels =3D [0]<br>
&gt; stream =3D usrp.get_tx_stream(sa)<br>
&gt;<br>
&gt; # Send 3 seconds in future<br>
&gt; send_time =3D usrp.get_time_last_pps().get_real_secs() + 3.0<br>
&gt; metadata =3D uhd.type.TXMetadata()<br>
&gt; metadata.has_time_spec =3D True<br>
&gt; metadata.time_spec =3D uhd.types.TimeSpec(send_time)<br>
&gt;<br>
&gt; stream.send(signal_data, metadata)<br>
&gt;<br>
&gt; # Ensure the transmission is complete before returning<br>
&gt; time.sleep(4.0)<br>
&gt;<br>
&gt; sys.exit(0)<br>
&gt;<br>
&gt;<br>
This probably has to do with uncertainty in the way the 1PPS signal is <br>
flopped into the device.=C2=A0 =C2=A0 What sample rate are you using, and w=
hat<br>
=C2=A0 =C2=A0master clock rate?<br>
<br>
<br>
</blockquote></div>

--000000000000b15cf805a82730ee--


--===============2812289375942043139==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2812289375942043139==--

