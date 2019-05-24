Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A3628F27
	for <lists+usrp-users@lfdr.de>; Fri, 24 May 2019 04:34:39 +0200 (CEST)
Received: from [::1] (port=33762 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hU02Q-0002at-4e; Thu, 23 May 2019 22:34:30 -0400
Received: from mail-vs1-f54.google.com ([209.85.217.54]:42646)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <ejkreinar@gmail.com>) id 1hU01s-0002V4-Gz
 for usrp-users@lists.ettus.com; Thu, 23 May 2019 22:34:26 -0400
Received: by mail-vs1-f54.google.com with SMTP id z11so4811132vsq.9
 for <usrp-users@lists.ettus.com>; Thu, 23 May 2019 19:33:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GZcKi6KMW0yR8WTX9ZewUdKrQB8jCGah6cX0+MJ2iXc=;
 b=iJVAx4GYvdJ4IyDED0fVf4bIkuYTaaI9oyM4tS5hyXpsKlxffXEymRWLVh/CCPZqXx
 jISernXRHJ0DyF59vGH8KUAAWYkeQ+uK3ZnnLkzLb2mbglMFgWGCz1g5CiIqDHLvqrqq
 5PvrbyneZiYWJSeYqrE4dIqMPQnKtR+GMSDQh2LnDaN3uwinaE8nB5LiD23yZyipxl+U
 Ccdm8W+YoPd3ls2Jm2v2puwvUB4QIVgHGWxfaTvtjeAXHX8VaPyVuMmOJ/uytmwA3dn8
 z5OuWA2KAATcRZWGZCEbkrS81OTT2zRwoLe1k+Gejdd4t3u1zWzaYTgkbS5R1fsrx4JK
 OiGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GZcKi6KMW0yR8WTX9ZewUdKrQB8jCGah6cX0+MJ2iXc=;
 b=r8J5UmdMoDa7hlq+1xuktYUUQ6oezs5baKrn6Rwr7Tlhz8uzCVwUIiSRMB+mjV5D8r
 tTpjIvDvhrvNNc2VJff4iCa2ZwRSGapMYuKOURsrwvK9ZBr0r+HXvY0HvgxVxwOpt75b
 DbfdX7U48ZBbDT7EC13yAma6OmWxHT0ki+g7hN+Zh5J/u1dxSlAbfcjl/tZOLMkV5yMO
 qEGcHu4AN4/wg1/4WxTvy+Qm+eNy22Tk4WQ3lrBvry4OvLSlY7EA63MJRkr9ndnvc0Sq
 7vAuM3dNLQqqzVulHeucyxPnKry7efMxhDtJS8i1EWYLkuYvyVW+uj3OJGlTTNNGgBme
 rTAw==
X-Gm-Message-State: APjAAAV37yr72zJi5ekL7iwmHBVzK5S8MBgRYE2nsXTpgpJ+d9eoLhia
 h5BD+Ajbx2eNxzxx20QcgEGH8L4ofuhVoqhgBdKbXAGZ
X-Google-Smtp-Source: APXvYqzRpvPEzPfyeQVVTnDVDWCsDfloeSIcQmMl7kRHab/34TvGvMYXgfE2mqXEzKCWi6k/+OWdXr5d7V4BIkUYMUQ=
X-Received: by 2002:a67:d293:: with SMTP id z19mr17157650vsi.104.1558665195689; 
 Thu, 23 May 2019 19:33:15 -0700 (PDT)
MIME-Version: 1.0
References: <CADRnH23yQxEPTYysMECCwvgYvN7RZucmDH+x4QLPDJZcJUR4og@mail.gmail.com>
 <ef9bff18-8c8c-5a74-398d-9b50d0bfea9d@ant.uni-bremen.de>
 <2032979BBC82474D954F55A08A5408F9415C9C4F@DLDEFFMIMP03EXC.intra.dlr.de>
In-Reply-To: <2032979BBC82474D954F55A08A5408F9415C9C4F@DLDEFFMIMP03EXC.intra.dlr.de>
Date: Thu, 23 May 2019 22:33:03 -0400
Message-ID: <CADRnH23UBy3CYJ3tE44hDaCCFhLryrcYx7eA3655mSftUq3rWw@mail.gmail.com>
To: Robert.Poehlmann@dlr.de
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] Introducing Theseus Cores: Open source FPGA cores
 for DSP and SDR
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
From: EJ Kreinar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: EJ Kreinar <ejkreinar@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5235877619967750274=="
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

--===============5235877619967750274==
Content-Type: multipart/alternative; boundary="00000000000050200605899905df"

--00000000000050200605899905df
Content-Type: text/plain; charset="UTF-8"

Hi Robert,

Thanks for the feedback!

> Do you plan to provide pre-built FPGA images containing Theseus Cores in
the future for certain USRP devices? I guess this would make it even easier
for first time users and would well suit the "batteries included" concept.

I've been considering this idea for a while now. I really like the concept
of having a few prebuilt bitstreams available, especially for usrp users
who maybe haven't gotten into rfnoc or FPGA builds.

On the other hand, I'd need a license to build images for the relevant
targets, and I'm afraid I don't have access to a license I can use in that
capacity. Also the permutations of cores and devices gets pretty large to
support.

So before I chase this idea down any further, I'm curious if there's
broader interest in having prebuilt downloadable bitstreams with a wider
selection of rfnoc cores... As a quick audience poll: anyone interested?
And what devices/configurations would you most like to see?

EJ

On Thu, May 2, 2019, 10:24 AM Robert via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi!
>
> I agree with Johannes that Schmidl&Cox OFDM sync would be a nice
> extension.
>
> Do you plan to provide pre-built FPGA images containing Theseus Cores in
> the future for certain USRP devices? I guess this would make it even easier
> for first time users and would well suit the "batteries included" concept.
>
> Cheers
> Robert
>
> -----Original Message-----
> From: USRP-users [mailto:usrp-users-bounces@lists.ettus.com] On Behalf Of
> Johannes Demel via USRP-users
> Sent: Thursday, May 02, 2019 9:55 AM
> To: usrp-users@lists.ettus.com
> Subject: Re: [USRP-users] Introducing Theseus Cores: Open source FPGA
> cores for DSP and SDR
>
> Hi EJ,
>
> this sounds like a very interesting project. Since you asked for ideas,
> I guess it would be nice to have a Schmidl&Cox style OFDM
> synchronization block.
>
> Cheers
> Johannes
>
> Am 29.04.19 um 02:00 schrieb EJ Kreinar via USRP-users:
> > Hi all,
> >
> > I'm very happy to announce the (very modest) release of the Theseus
> > Cores project: https://gitlab.com/theseus-cores/theseus-cores
> >
> > Theseus Cores is designed to provide open source FPGA cores for digital
> > signal processing and software defined radio, plus the means to *use*
> > the FPGA cores in real life.... In practice, that mostly means FPGA code
> > propagates up through RFNoC blocks which have both UHD and Gnuradio
> > software hooks for users to attach to. In the future it would be great
> > to support other FPGA platforms if there's interest too.
> >
> > So far, Theseus Cores provides the following RFNoC FPGA blocks and
> > corresponding software:
> > - *Polyphase M/2 Channelizer*: A polyphase channelizer where each
> > channel outputs 2x sample rate and is compatible with
> > perfect-reconstruction. Thanks to Phil Vallance for re-implementing the
> > channelizer described in his GRCon 2017 presentation-- it works!
> > - *"1-to-N" DDC Chain*: Parameterized instantiations of "N" independent
> > DDCs, where each DDC is connected to the *first* input (a very basic,
> > brute force channelizer). Note I've seen several mailing list
> > discussions in the past year about 1-to-4 or 1-to-8 DDC channelizers --
> > this block provides the generalized version of that scenario.
> > - *DUC + DDC Rational Resampler*: A "hacked" rational resampler,
> > consisting of a DUC and a DDC back-to-back. It's not pretty, but it can
> > occasionally be helpful.
> >
> > Furthermore, in an effort to TRY to create an open source FPGA project
> > that doesnt catastrophically break on a regular basis, we've set up
> > continuous integration tests for both software and FPGA. Dockerfiles are
> > provided here (https://gitlab.com/theseus-cores/theseus-docker). Theseus
>
> > Cores also pushes tagged docker images for various versions of UHD and
> > Gnuradio, where the branches for UHD-3.13, UHD-3.14, UHD's master, and
> > gnuradio's maint-3.7 are rebuilt weekly. This may be of auxiliary use to
> > people building UHD and gnuradio in a CI scenario:
> > https://hub.docker.com/u/theseuscores
> > <https://github.com/theseus-cores/theseus-cores>
> > *What's next??* It's a modest list of features so far, but I'm sure we
> > can all sympathize that things move slowly when developing FPGA code.
> > Here's a quick rundown of a few ideas on the horizon:
> > - Arbitrary resampling
> > - Channel downselection for the M/2 channelizer (currently all channels
> > must be output... it's far more useful to select a subset of channels to
> > return and just grab those)
> > - Channel reconsonstruction *after* the M/2 channelizer (maybe)
> > - OFDM receiver (maybe)
> >
> > We need more ideas and contributors! Now that this thing exists, I would
> > LOVE to see Theseus Cores fill itself out with some of the more common
> > DSP utilities that really should be available as open-source... it would
> > be absolutely amazing to provide a library of components and
> > applications for FPGA developers in a similar way that gnuradio provides
> > for the software community. Please reach out with suggestions for
> > relevant FPGA utilities or applications you'd like to see -- or even
> > better, if you have ideas or code you're willing to share with the
> > project! If you are interested in getting involved in any way, I would
> > be happy to hear from you.
> >
> > Cheers,
> > EJ
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000050200605899905df
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Robert,<div dir=3D"auto"><br></div><div dir=3D"auto">T=
hanks for the feedback!<br><div dir=3D"auto"><br></div><div dir=3D"auto">&g=
t;=C2=A0Do you plan to provide pre-built FPGA images containing Theseus Cor=
es in the future for certain USRP devices? I guess this would make it even =
easier for first time users and would well suit the &quot;batteries include=
d&quot; concept.</div><br style=3D"font-family:sans-serif;font-size:12.8px"=
><div dir=3D"auto">I&#39;ve been considering this idea for a while now. I r=
eally like the concept of having a few prebuilt bitstreams available, espec=
ially for usrp users who maybe haven&#39;t gotten into rfnoc or FPGA builds=
.</div><div dir=3D"auto"><br></div><div dir=3D"auto">On the other hand, I&#=
39;d need a license to build images for the relevant targets, and I&#39;m a=
fraid I don&#39;t have access to a license I can use in that capacity. Also=
 the permutations of cores and devices gets pretty large to support.</div><=
div dir=3D"auto"><br></div><div dir=3D"auto">So before I chase this idea do=
wn any further, I&#39;m curious if there&#39;s broader interest in having p=
rebuilt downloadable bitstreams with a wider selection of rfnoc cores... As=
 a quick audience poll: anyone interested? And what devices/configurations =
would you most like to see?</div><div dir=3D"auto"><br></div><div dir=3D"au=
to">EJ</div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Thu, May 2, 2019, 10:24 AM Robert via USRP-users &lt;<=
a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" rel=3D"noref=
errer">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">Hi!<br>
<br>
I agree with Johannes that Schmidl&amp;Cox OFDM sync would be a nice extens=
ion. <br>
<br>
Do you plan to provide pre-built FPGA images containing Theseus Cores in th=
e future for certain USRP devices? I guess this would make it even easier f=
or first time users and would well suit the &quot;batteries included&quot; =
concept.<br>
<br>
Cheers<br>
Robert<br>
<br>
-----Original Message-----<br>
From: USRP-users [mailto:<a href=3D"mailto:usrp-users-bounces@lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">usrp-users-bounces@list=
s.ettus.com</a>] On Behalf Of Johannes Demel via USRP-users<br>
Sent: Thursday, May 02, 2019 9:55 AM<br>
To: <a href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"noreferrer norefer=
rer" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
Subject: Re: [USRP-users] Introducing Theseus Cores: Open source FPGA cores=
 for DSP and SDR<br>
<br>
Hi EJ,<br>
<br>
this sounds like a very interesting project. Since you asked for ideas, <br=
>
I guess it would be nice to have a Schmidl&amp;Cox style OFDM <br>
synchronization block.<br>
<br>
Cheers<br>
Johannes<br>
<br>
Am 29.04.19 um 02:00 schrieb EJ Kreinar via USRP-users:<br>
&gt; Hi all,<br>
&gt; <br>
&gt; I&#39;m very happy to announce the (very modest) release of the Theseu=
s <br>
&gt; Cores project: <a href=3D"https://gitlab.com/theseus-cores/theseus-cor=
es" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">https://gitl=
ab.com/theseus-cores/theseus-cores</a><br>
&gt; <br>
&gt; Theseus Cores is designed to provide open source FPGA cores for digita=
l <br>
&gt; signal processing and software defined radio, plus the means to *use* =
<br>
&gt; the FPGA cores in real life.... In practice, that mostly means FPGA co=
de <br>
&gt; propagates up through RFNoC blocks which have both UHD and Gnuradio <b=
r>
&gt; software hooks for users to attach to. In the future it would be great=
 <br>
&gt; to support other FPGA platforms if there&#39;s interest too.<br>
&gt; <br>
&gt; So far, Theseus Cores provides the following RFNoC FPGA blocks and <br=
>
&gt; corresponding software:<br>
&gt; - *Polyphase=C2=A0M/2 Channelizer*: A polyphase channelizer where each=
 <br>
&gt; channel outputs 2x sample rate and is compatible with <br>
&gt; perfect-reconstruction. Thanks to Phil Vallance for re-implementing th=
e <br>
&gt; channelizer described in his GRCon 2017 presentation-- it works!<br>
&gt; - *&quot;1-to-N&quot; DDC Chain*: Parameterized instantiations of &quo=
t;N&quot; independent <br>
&gt; DDCs, where each DDC is connected to the *first* input (a very basic, =
<br>
&gt; brute force channelizer). Note I&#39;ve seen several mailing list <br>
&gt; discussions in the past year about 1-to-4 or 1-to-8 DDC channelizers -=
- <br>
&gt; this block provides the generalized version of that scenario.<br>
&gt; - *DUC + DDC Rational Resampler*: A &quot;hacked&quot; rational resamp=
ler, <br>
&gt; consisting of a DUC and a DDC back-to-back. It&#39;s not pretty, but i=
t can <br>
&gt; occasionally be helpful.<br>
&gt; <br>
&gt; Furthermore, in an effort to TRY to create an open source FPGA project=
 <br>
&gt; that doesnt catastrophically break on a regular basis, we&#39;ve set u=
p <br>
&gt; continuous integration tests for both software and FPGA. Dockerfiles a=
re <br>
&gt; provided here (<a href=3D"https://gitlab.com/theseus-cores/theseus-doc=
ker" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">https://git=
lab.com/theseus-cores/theseus-docker</a>).=C2=A0Theseus <br>
&gt; Cores also pushes tagged docker images for various versions of UHD and=
 <br>
&gt; Gnuradio, where the branches for UHD-3.13, UHD-3.14, UHD&#39;s master,=
 and <br>
&gt; gnuradio&#39;s maint-3.7 are rebuilt weekly. This may be of auxiliary =
use to <br>
&gt; people building UHD and gnuradio in a CI scenario: <br>
&gt; <a href=3D"https://hub.docker.com/u/theseuscores" rel=3D"noreferrer no=
referrer noreferrer" target=3D"_blank">https://hub.docker.com/u/theseuscore=
s</a><br>
&gt; &lt;<a href=3D"https://github.com/theseus-cores/theseus-cores" rel=3D"=
noreferrer noreferrer noreferrer" target=3D"_blank">https://github.com/thes=
eus-cores/theseus-cores</a>&gt;<br>
&gt; *What&#39;s next??*=C2=A0It&#39;s a modest list of features so far, bu=
t I&#39;m sure we <br>
&gt; can all sympathize that things move slowly when developing FPGA code. =
<br>
&gt; Here&#39;s a quick rundown of a few ideas on the horizon:<br>
&gt; - Arbitrary resampling<br>
&gt; - Channel downselection for the M/2 channelizer (currently all channel=
s <br>
&gt; must be output... it&#39;s far more useful to select a subset of chann=
els to <br>
&gt; return and just grab those)<br>
&gt; - Channel reconsonstruction *after* the M/2 channelizer (maybe)<br>
&gt; - OFDM receiver (maybe)<br>
&gt; <br>
&gt; We need more ideas and contributors! Now that this thing exists, I wou=
ld <br>
&gt; LOVE to see Theseus Cores fill itself out with some of the more common=
 <br>
&gt; DSP utilities that really should be available as open-source... it wou=
ld <br>
&gt; be absolutely amazing to provide a library of components and <br>
&gt; applications for FPGA developers in a similar way that gnuradio provid=
es <br>
&gt; for the software community. Please reach out with=C2=A0suggestions for=
 <br>
&gt; relevant FPGA utilities or applications you&#39;d like to see -- or ev=
en <br>
&gt; better, if you have ideas or code you&#39;re willing to share with the=
 <br>
&gt; project! If you are interested in getting involved in any way, I would=
 <br>
&gt; be happy to hear from you.<br>
&gt; <br>
&gt; Cheers,<br>
&gt; EJ<br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer norefe=
rrer" target=3D"_blank">USRP-users@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">http://=
lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt; <br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer noreferrer"=
 target=3D"_blank">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">http://lists=
.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer noreferrer"=
 target=3D"_blank">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">http://lists=
.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000050200605899905df--


--===============5235877619967750274==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5235877619967750274==--

