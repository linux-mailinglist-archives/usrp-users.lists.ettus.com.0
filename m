Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 398D038C529
	for <lists+usrp-users@lfdr.de>; Fri, 21 May 2021 12:43:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EDE913857D9
	for <lists+usrp-users@lfdr.de>; Fri, 21 May 2021 06:43:20 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=student-ltu-se.20150623.gappssmtp.com header.i=@student-ltu-se.20150623.gappssmtp.com header.b="SHE2lga+";
	dkim-atps=neutral
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 337EB3842FE
	for <usrp-users@lists.ettus.com>; Fri, 21 May 2021 06:42:29 -0400 (EDT)
Received: by mail-pj1-f47.google.com with SMTP id t11so10776480pjm.0
        for <usrp-users@lists.ettus.com>; Fri, 21 May 2021 03:42:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=student-ltu-se.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QZx4yskY8/VUyRSMVhEb0zjxj3x/7QhHks95kTKj03U=;
        b=SHE2lga+VXnft0YWY7OotAtNw6ebYsp3ob8GMGoaiWvohZHsemSSv2xQs81GdOIVTT
         kob2T5cvBIl7+k+CidiIwAK2ahsX76vjd9UkYOA9lJp9bUKI30VEWYW57UDzdyhZdpwv
         bv0m2eKlgIih+29gEW9B5/K7J2bNLdzApjwlmhn6vLWV1JorOP9orHrbiOMi6h5aC6jo
         k7mZiS+FL80hkwB08SMF6EfdwnyDSt/GpgI68biJngPD29fyygGXiYqcAPIX5pDQj5Ek
         ufRTdzM8Y0Uwuhaicwlj8cLm0ZmE6Fcic8OjoxGsrm+td6Nth9KTqelLMAmlvSfAgwbZ
         ONZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QZx4yskY8/VUyRSMVhEb0zjxj3x/7QhHks95kTKj03U=;
        b=mCCwHD9Qye1+U+GqXSBOEWI/WPwaJnm5v7HZOyJCRmYtWsWrvnWkA8Ig1uJJv0vMSy
         4dzNfqls7+2ZTOCbtDrLdYEjhRDZ/Gafp/76gBvcfE2+8f/bzWA8IBOjajzP8iioJjF1
         jsFsMMs3WsTisUE3bAHTNvkGqZgeSJdDodEBQL0W/+2/XK4HQVIaDI6vvpJ6UDtmazZQ
         yLKnZ/Yt0uDIEgfb/XQfD1nJQJ/SljAi4uEaw0o2Phy5HPiA88IzpU5whu2uxTU4EDiB
         AgP0sk4t2EvUiUTKRZmH5qM4/Niww3MVyyYmjVNTemFMaqgfe9IZ0Zckq1aR0C+fYTXE
         wT/w==
X-Gm-Message-State: AOAM531Yj4DKBQGiCyFZS6e90hCYpSaHJbe6jUpoZ4ffXy8hgtyG0dPN
	5GPQ4faTQEhuqq3yCMq9iMPNuaD1aU4TdR2rwWbbhdShvas=
X-Google-Smtp-Source: ABdhPJyT9CGZWrqcjlFJqjjL2JUOb2Fv/r2pHv1nvs9IbmDb8/01eR5l9JkdCEs9ZWiqondGahD9OZ5RoR5iObnjUgk=
X-Received: by 2002:a17:90a:4a0e:: with SMTP id e14mr10626969pjh.209.1621593748196;
 Fri, 21 May 2021 03:42:28 -0700 (PDT)
MIME-Version: 1.0
References: <CADjF3Px5e2rjFJG+CtMwkWFSAPw4eVsvt7sPDcpoDphnmrdjdA@mail.gmail.com>
 <20d26f00-f3ec-7813-e448-51c455d857cd@ettus.com>
In-Reply-To: <20d26f00-f3ec-7813-e448-51c455d857cd@ettus.com>
Date: Fri, 21 May 2021 12:42:17 +0200
Message-ID: <CADjF3PwZ8YtHiZfZzQapznKM=e-FNX49Qjp75bp0vDioKZoHsw@mail.gmail.com>
To: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
Message-ID-Hash: Q5T3OL2E3O4NSNXYCI4J3NVUKOQCSVRF
X-Message-ID-Hash: Q5T3OL2E3O4NSNXYCI4J3NVUKOQCSVRF
X-MailFrom: marelf-5@student.ltu.se
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: GPP requirements for USRP B210 amsat
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Q5T3OL2E3O4NSNXYCI4J3NVUKOQCSVRF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Martin Elfvelin via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Martin Elfvelin <marelf-5@student.ltu.se>
Content-Type: multipart/mixed; boundary="===============5117284504934302968=="

--===============5117284504934302968==
Content-Type: multipart/alternative; boundary="00000000000054ec2e05c2d4b7a0"

--00000000000054ec2e05c2d4b7a0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Marcus,

Many thanks for your reply. The ground station is intended to primarily
support future educational CubeSat projects so it's difficult to say
exactly what communications protocols will be used but you are right to
assume common amsat modes. Currently we are developing a 1U cubesat that
will use a 9.6 kbps GFSK/ASM+Golay/Reed Solomon configuration. However it
might be of interest in the future to add support for reception of higher
frequencies and data rates (say amateur S-band for example) which would
mean adding another SDR to the same PC and there I'm worried about creating
a bottleneck in terms of computing power. Thank you for the links I will
have a look and investigate further.

Best regards,
Martin

On Fri, May 21, 2021 at 11:16 AM Marcus M=C3=BCller <marcus.mueller@ettus.c=
om>
wrote:

> Hi Martin,
>
> that's a bit of a wide field there :) In essence, there's not a single
> answer to your
> question: whether your hardware is sufficiently fast depends on what you
> do with it!
>
> For example: 192 kb/s is really not much data to process, if there's a
> simple (say,
> Hamming(4,7) ) error-correcting code to be decoded on it. It's going to b=
e
> tough to
> calculate if it's been through a large LDPC code and you want to do 50
> iterations of a
> message passing decoder to really get even the last bit out of your
> channel.
>
> But, you say "amateur satellite communications", which probably at a firs=
t
> approximation
> means you're using modes that are currently common in that community, or
> such that are
> currently constructed with complexity in mind. So, yeah. Most things
> *should* work on the
> four 1.5 GHz ARM Cortex-A72 cores of a raspberry pi 4 Model B. Note that
> there's very
> different Raspberry Pi models, so make sure you get the latest generation=
.
> Also note that
> your Raspberry Pi doesn't have to do *all* the work, if in doubt: for
> example, the
> relatively compute-intense steps could be, on demand, done on a laptop
> with significantly
> more computational power.
>
> So, it should work. However, that's a "should": I've got exactly zero
> knowledge of people
> who have done that, and a back-of-envelop calculation saying, hm, yeah,
> that compute power
> should suffice assuming the usage of sufficiently optimized software
> doesn't say
> sufficiently optimized software is available to you. But honestly, I thin=
k
> there's really
> a treasure trove of online information and working groups on that topic.
> Maybe pay the GNU
> Radio Amateur Radio Working Group a virtual visit [1]; I'm sure there's
> much experience
> with satellite comms in that channel. If text-chatting isn't very much
> your thing, maybe
> also try showing up to one of their monthly video calls[2], and hang
> around before or
> after the invited talk and chat a bit.
>
> Of course, as the largest community of citizen-operated satellite
> groundstations, I bet
> satnogs[3] has guidance on hardware. I do know they have raspberry Pi
> images, but I
> honestly don't know whether they're doing the digital communications part
> on that, or
> whether they are just recording the spectrum and maybe do some simple
> demodulation (FM
> demod?). Admittedly, and regrettably, not my prime area of expertise.
> However, whenever I
> meet satnogs people, they're a friendly bunch! They have a well-kept
> online forum[4],
> that's very active, and also a matrix presence[5].
>
> Best regards,
>
> Marcus
>
> [1] via Matrix chat: #HamRadio:gnuradio.org; easily reachable via
> https://chat.gnuradio.org/#/room/#HamRadio:gnuradio.org
> [2] https://wiki.gnuradio.org/index.php/Talk:HamRadio
> [3] https://wiki.satnogs.org/Main_Page
> [4] https://community.libre.space/t/new-users-welcome/29
> [5] #satnogs:matrix.org (I think you really might want to have a Matrix
> account on some
> arbitrary homeserver ;) )
>
> On 21.05.21 10:20, Martin Elfvelin via USRP-users wrote:
> > Hello all,
> >
> > I'm building a ground station for amateur satellite communications on
> the VHF and UHF
> > bands using a B210. The SDR will be connected to a mini-pc and I'm
> trying to figure out
> > the system requirements. The PC will be controlling the SDR, running th=
e
> signal
> > processing at low data rates (4k8 - 19k2 bps) as well as controlling
> other hardware.
> > Basically the PC is the brain of the ground station. I've seen people
> making ground
> > stations with Raspberry Pi but I'm wondering if 1.5 GHz quad core is
> enough processing
> > power in this case. Any help would be much appreciated.
> >
> > Best regards
> > Martin Elfvelin
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000054ec2e05c2d4b7a0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello Marcus,</div><div><br></div><div>Many thanks fo=
r your reply. The ground station is intended to primarily support future ed=
ucational CubeSat projects so it&#39;s difficult to say exactly what commun=
ications protocols will be used but you are right to assume common amsat mo=
des. Currently we are developing a 1U cubesat that will use a 9.6 kbps GFSK=
/ASM+Golay/Reed Solomon configuration. However it might be of interest in t=
he future to add support for reception of higher frequencies and data rates=
 (say amateur S-band for example) which would mean adding another SDR to th=
e same PC and there I&#39;m worried about creating a bottleneck in terms of=
 computing power. Thank you for the links I will have a look and investigat=
e further.</div><div><br></div><div>Best regards,</div><div>Martin<br></div=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Fri, May 21, 2021 at 11:16 AM Marcus M=C3=BCller &lt;<a href=3D"mailto:=
marcus.mueller@ettus.com">marcus.mueller@ettus.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">Hi Martin,<br>
<br>
that&#39;s a bit of a wide field there :) In essence, there&#39;s not a sin=
gle answer to your<br>
question: whether your hardware is sufficiently fast depends on what you do=
 with it!<br>
<br>
For example: 192 kb/s is really not much data to process, if there&#39;s a =
simple (say,<br>
Hamming(4,7) ) error-correcting code to be decoded on it. It&#39;s going to=
 be tough to<br>
calculate if it&#39;s been through a large LDPC code and you want to do 50 =
iterations of a<br>
message passing decoder to really get even the last bit out of your channel=
.<br>
<br>
But, you say &quot;amateur satellite communications&quot;, which probably a=
t a first approximation<br>
means you&#39;re using modes that are currently common in that community, o=
r such that are<br>
currently constructed with complexity in mind. So, yeah. Most things *shoul=
d* work on the<br>
four 1.5 GHz ARM Cortex-A72 cores of a raspberry pi 4 Model B. Note that th=
ere&#39;s very<br>
different Raspberry Pi models, so make sure you get the latest generation. =
Also note that<br>
your Raspberry Pi doesn&#39;t have to do *all* the work, if in doubt: for e=
xample, the<br>
relatively compute-intense steps could be, on demand, done on a laptop with=
 significantly<br>
more computational power.<br>
<br>
So, it should work. However, that&#39;s a &quot;should&quot;: I&#39;ve got =
exactly zero knowledge of people<br>
who have done that, and a back-of-envelop calculation saying, hm, yeah, tha=
t compute power<br>
should suffice assuming the usage of sufficiently optimized software doesn&=
#39;t say<br>
sufficiently optimized software is available to you. But honestly, I think =
there&#39;s really<br>
a treasure trove of online information and working groups on that topic. Ma=
ybe pay the GNU<br>
Radio Amateur Radio Working Group a virtual visit [1]; I&#39;m sure there&#=
39;s much experience<br>
with satellite comms in that channel. If text-chatting isn&#39;t very much =
your thing, maybe<br>
also try showing up to one of their monthly video calls[2], and hang around=
 before or<br>
after the invited talk and chat a bit.<br>
<br>
Of course, as the largest community of citizen-operated satellite groundsta=
tions, I bet<br>
satnogs[3] has guidance on hardware. I do know they have raspberry Pi image=
s, but I<br>
honestly don&#39;t know whether they&#39;re doing the digital communication=
s part on that, or<br>
whether they are just recording the spectrum and maybe do some simple demod=
ulation (FM<br>
demod?). Admittedly, and regrettably, not my prime area of expertise. Howev=
er, whenever I<br>
meet satnogs people, they&#39;re a friendly bunch! They have a well-kept on=
line forum[4],<br>
that&#39;s very active, and also a matrix presence[5].<br>
<br>
Best regards,<br>
<br>
Marcus<br>
<br>
[1] via Matrix chat: #HamRadio:<a href=3D"http://gnuradio.org" rel=3D"noref=
errer" target=3D"_blank">gnuradio.org</a>; easily reachable via<br>
<a href=3D"https://chat.gnuradio.org/#/room/%23HamRadio:gnuradio.org" rel=
=3D"noreferrer" target=3D"_blank">https://chat.gnuradio.org/#/room/#HamRadi=
o:gnuradio.org</a><br>
[2] <a href=3D"https://wiki.gnuradio.org/index.php/Talk:HamRadio" rel=3D"no=
referrer" target=3D"_blank">https://wiki.gnuradio.org/index.php/Talk:HamRad=
io</a><br>
[3] <a href=3D"https://wiki.satnogs.org/Main_Page" rel=3D"noreferrer" targe=
t=3D"_blank">https://wiki.satnogs.org/Main_Page</a><br>
[4] <a href=3D"https://community.libre.space/t/new-users-welcome/29" rel=3D=
"noreferrer" target=3D"_blank">https://community.libre.space/t/new-users-we=
lcome/29</a><br>
[5] #satnogs:<a href=3D"http://matrix.org" rel=3D"noreferrer" target=3D"_bl=
ank">matrix.org</a> (I think you really might want to have a Matrix account=
 on some<br>
arbitrary homeserver ;) )<br>
<br>
On 21.05.21 10:20, Martin Elfvelin via USRP-users wrote:<br>
&gt; Hello all,<br>
&gt;<br>
&gt; I&#39;m building a ground station for amateur satellite communications=
 on the VHF and UHF<br>
&gt; bands using a B210. The SDR will be connected to a mini-pc and I&#39;m=
 trying to figure out<br>
&gt; the system requirements. The PC will be controlling the SDR, running t=
he signal<br>
&gt; processing at low data rates (4k8 - 19k2 bps) as well as controlling o=
ther hardware.<br>
&gt; Basically the PC is the brain of the ground station. I&#39;ve seen peo=
ple making ground<br>
&gt; stations with Raspberry Pi but I&#39;m wondering if 1.5 GHz quad core =
is enough processing<br>
&gt; power in this case. Any help would be much appreciated.<br>
&gt;<br>
&gt; Best regards<br>
&gt; Martin Elfvelin<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000054ec2e05c2d4b7a0--

--===============5117284504934302968==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5117284504934302968==--
