Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D51DA11FB1
	for <lists+usrp-users@lfdr.de>; Thu,  2 May 2019 18:05:19 +0200 (CEST)
Received: from [::1] (port=35190 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hMECy-00079V-HT; Thu, 02 May 2019 12:05:16 -0400
Received: from mail-lj1-f170.google.com ([209.85.208.170]:46900)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <luke.whittlesey@gmail.com>)
 id 1hMECQ-0006zq-57
 for usrp-users@lists.ettus.com; Thu, 02 May 2019 12:05:12 -0400
Received: by mail-lj1-f170.google.com with SMTP id h21so2642425ljk.13
 for <usrp-users@lists.ettus.com>; Thu, 02 May 2019 09:04:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lX5iM+yILeBQQ5JEZFjXF2wBbePwiTkHoI4LfKTCnHg=;
 b=peKDUFjz4O7ECQl4ikQSP8KC+re67fpJ8cTOakWUHI13kOMNdzFVvLqHzf0vnXAs8w
 RC/0RlH5I1JO792+hcGdkCivBVne0Od4ZoY+ZsdxuF/NvQeokD0CpQ475d1/OlJV++lb
 zJyGiAwkGjanoLg9xXZxsK+8IqV/6QE5ExIPuxUkRZLyzQECAYQEOdkNtdezzfyvtfaH
 sqyorhJNLQxU5IXPSRPpRkdP0PyRAGTo/D8RJXef4CQmQ5qZAuBzQtRtf83RKLcqLY6n
 LE/9huyH4M+/ykVeNmZEypru9YYnMvVpmg8SpqDdsnjUufoMTz2zwfC9cHgL8TPCGsAw
 0ROw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lX5iM+yILeBQQ5JEZFjXF2wBbePwiTkHoI4LfKTCnHg=;
 b=PbXphmXQIKQdTwsmowLISnbOQ59UKuGQn14DwfAyFROHlhFYK9EIZ9L43RQfOI/FlX
 5qnLiQAKBNS/1i38a4NkOyLFXaGIkJK8ay22jIdP6PlWcLpjWaTSoQ4Ipf9PEaAaTcLd
 Miuda4vuemgWMK6PyQeNmdSldsi2CoLqxNc/wkqp3ESk9cWEAJrNP16elyS1Gw440wz6
 HeCLn3hiN1WdoLt28xpiHZaErMJVTQ9ocx7dR7nC4BucjH2j3oKAxhlO/yrdsJfiQAnV
 ZBjU+9tJ6hsowuFArUNe29yLXSdNnrke5HjXep8Dxk32Ktx20UNMRQNdO2SlPb3eELyo
 rUVg==
X-Gm-Message-State: APjAAAXmAQrEuPy8PK4mV6Eqm9YyjviskEjZ05WMlxu4uLbvV2Bz8UiV
 IvygkJ506qyKUlJVfQTCUNnyUrjnWTDLUkuO/vk=
X-Google-Smtp-Source: APXvYqzEHKSTUWzcTTbASCo92cgBzdC/2wZ/jakm7y7uaGxW7+IY6TboegNh/1pt7QDnLVv6CKZFuVd8r68DpE4Ydkk=
X-Received: by 2002:a2e:9ac8:: with SMTP id p8mr2141488ljj.79.1556813040500;
 Thu, 02 May 2019 09:04:00 -0700 (PDT)
MIME-Version: 1.0
References: <2489f2eb-d1a4-2156-04b3-bf4611f16a57@mpb.li>
 <2c9b1761-ed34-e991-b10a-4d73a04368cc@comcast.net>
In-Reply-To: <2c9b1761-ed34-e991-b10a-4d73a04368cc@comcast.net>
Date: Thu, 2 May 2019 12:03:32 -0400
Message-ID: <CA+ce6i1J0tGrBg0w-EewEb9Na0meQ0yAk7qeV05e6syPRY-HuA@mail.gmail.com>
To: Ron Economos <w6rz@comcast.net>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] Plagued by sporadic TX underruns on some systems,
 B200
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
From: Luke Whittlesey via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Luke Whittlesey <luke.whittlesey@gmail.com>
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============7179959630327415393=="
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

--===============7179959630327415393==
Content-Type: multipart/alternative; boundary="00000000000042c7730587e9c8e5"

--00000000000042c7730587e9c8e5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I've had similar issues on the e310 with similar sample rates. On the e310
no usb is involved. Unfortunately I have not been able to fully get rid of
the underrun issues as well.

So far I have tried:
- separate threads with ping-pong buffers: this helped
- linux real-time scheduling
- increasing the linux process nice value : this helped
- compiling with -O3 : this helped because I forgot initially
- making the buffers a multiple of tx_streamer::get_max_num_samps() :
https://github.com/EttusResearch/uhd/issues/128 : didn't help

With all of this I still get about 1 underrun an hour, but it is sporadic.

From here I'm a bit stumped in looking for a software solution. Unless
there is something in UHD?

Some things that I haven't yet tried.
- increasing buffering on the FPGA : should give me more time before an
underrun
- pushing more of the work to the FPGA to reduce burden on the pc

On Thu, May 2, 2019 at 11:26 AM Ron Economos via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Setting a large number of UHD buffers can help quite a bit. In the GRC
> UHD Sink block device address:
>
> "num_send_frames=3D256"
>
> In Python:
>
>          self.uhd_usrp_sink_0_0 =3D uhd.usrp_sink(
>              ",".join(("num_send_frames=3D256", "")),
>              uhd.stream_args(
>                  cpu_format=3D"fc32",
>                  channels=3Drange(1),
>              ),
>          )
>
> Ron
>
> On 5/2/19 05:18, Matthias Br=C3=A4ndli via USRP-users wrote:
> > Dear all,
> >
> > I'm maintaining ODR-DabMod[1], a Digital Audio Broadcasting modulator
> > which uses UHD to drive a USRP at 2048ksps, in most applications a B200=
.
> >
> > ODR-DabMod runs the modulator and the UHD output in separate threads, t=
o
> > ensure that a few modulated frames are always ready when the USRP needs
> > one[2]. It requests realtime scheduling[3]. The system runs headless (n=
o
> > X11 running), and generally doesn't have anything else running.
> >
> > On some systems, we observe sporadic underruns. They occur in irregular
> > intervals, something like once a minute, sometimes rarer. Seen with bot=
h
> > USB2 and USB3 hosts, over several UHD versions. Until now we've mostly
> > been able to avoid the issue by selecting machines that don't show the
> > issue, but we hope we can find a mitigation in software.
> >
> > Both the data source the modulator connects to and the USRP have a
> > disciplined time reference, implying there is no rate drift (plus, that
> > would trigger regular underruns, not sporadic ones).
> >
> >
> > There are some parameters described in USB Transport Parameters[4], doe=
s
> > it make sense to change those?
> >
> > Could CPU frequency scaling lead to interruptions?
> >
> > Are there other knobs to turn that I'm not aware of? Device, stream or
> > linux kernel settings?
> >
> > Is the approach of using a separate thread for UHD output beneficial?
> >
> > Anything else?
> >
> > Sorry for the vague description of the issue and the many questions, bu=
t
> > I'm a bit out of ideas about how to approach that. If anybody had
> > similar problems I'd be curious to hear your experiences.
> >
> > Cheers
> > mpb
> >
> > [1]
> > https://github.com/Opendigitalradio/ODR-DabMod
> >
> > [2]
> > Look for m_queue in
> >
> https://github.com/Opendigitalradio/ODR-DabMod/blob/master/src/output/SDR=
.cpp
> >
> > [3]
> > For all threads involved in DSP and the SDR output thread. Grep for
> > `set_realtime_prio`.
> >
> > [4]
> > https://files.ettus.com/manual/page_transport.html#transport_usb
> >
> > Default send_frame_size seems to be on line 85 of
> > https://files.ettus.com/manual/b200__impl_8hpp_source.html
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000042c7730587e9c8e5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>I&#39;ve had similar issues on the e=
310 with similar sample rates. On the e310 no usb is involved. Unfortunatel=
y I have not been able to fully get rid of the underrun issues as well.<br>=
</div><div><br></div><div>So far I have tried:</div><div>- separate threads=
 with ping-pong buffers: this helped<br></div><div>- linux real-time schedu=
ling</div><div>- increasing the linux process nice value : this helped</div=
><div>- compiling with -O3 : this helped because I forgot initially</div><d=
iv>- making the buffers a multiple of tx_streamer::get_max_num_samps() : <a=
 href=3D"https://github.com/EttusResearch/uhd/issues/128">https://github.co=
m/EttusResearch/uhd/issues/128</a> : didn&#39;t help<br></div><div><br></di=
v><div>With all of this I still get about 1 underrun an hour, but it is spo=
radic.</div><div><br></div><div>From here I&#39;m a bit stumped in looking =
for a software solution. Unless there is something in UHD?<br></div><div><b=
r></div><div>Some things that I haven&#39;t yet tried. <br></div><div>- inc=
reasing buffering on the FPGA : should give me more time before an underrun=
<br></div><div>- pushing more of the work to the FPGA to reduce burden on t=
he pc<br></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Thu, May 2, 2019 at 11:26 AM Ron Economos via USRP-=
users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.et=
tus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">Setting a large number of UHD buffers can help quite a bit. In the G=
RC <br>
UHD Sink block device address:<br>
<br>
&quot;num_send_frames=3D256&quot;<br>
<br>
In Python:<br>
<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.uhd_usrp_sink_0_0 =3D=
 uhd.usrp_sink(<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 &quot;,=
&quot;.join((&quot;num_send_frames=3D256&quot;, &quot;&quot;)),<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 uhd.str=
eam_args(<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=
=C2=A0=C2=A0 cpu_format=3D&quot;fc32&quot;,<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=
=C2=A0=C2=A0 channels=3Drange(1),<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 ),<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 )<br>
<br>
Ron<br>
<br>
On 5/2/19 05:18, Matthias Br=C3=A4ndli via USRP-users wrote:<br>
&gt; Dear all,<br>
&gt;<br>
&gt; I&#39;m maintaining ODR-DabMod[1], a Digital Audio Broadcasting modula=
tor<br>
&gt; which uses UHD to drive a USRP at 2048ksps, in most applications a B20=
0.<br>
&gt;<br>
&gt; ODR-DabMod runs the modulator and the UHD output in separate threads, =
to<br>
&gt; ensure that a few modulated frames are always ready when the USRP need=
s<br>
&gt; one[2]. It requests realtime scheduling[3]. The system runs headless (=
no<br>
&gt; X11 running), and generally doesn&#39;t have anything else running.<br=
>
&gt;<br>
&gt; On some systems, we observe sporadic underruns. They occur in irregula=
r<br>
&gt; intervals, something like once a minute, sometimes rarer. Seen with bo=
th<br>
&gt; USB2 and USB3 hosts, over several UHD versions. Until now we&#39;ve mo=
stly<br>
&gt; been able to avoid the issue by selecting machines that don&#39;t show=
 the<br>
&gt; issue, but we hope we can find a mitigation in software.<br>
&gt;<br>
&gt; Both the data source the modulator connects to and the USRP have a<br>
&gt; disciplined time reference, implying there is no rate drift (plus, tha=
t<br>
&gt; would trigger regular underruns, not sporadic ones).<br>
&gt;<br>
&gt;<br>
&gt; There are some parameters described in USB Transport Parameters[4], do=
es<br>
&gt; it make sense to change those?<br>
&gt;<br>
&gt; Could CPU frequency scaling lead to interruptions?<br>
&gt;<br>
&gt; Are there other knobs to turn that I&#39;m not aware of? Device, strea=
m or<br>
&gt; linux kernel settings?<br>
&gt;<br>
&gt; Is the approach of using a separate thread for UHD output beneficial?<=
br>
&gt;<br>
&gt; Anything else?<br>
&gt;<br>
&gt; Sorry for the vague description of the issue and the many questions, b=
ut<br>
&gt; I&#39;m a bit out of ideas about how to approach that. If anybody had<=
br>
&gt; similar problems I&#39;d be curious to hear your experiences.<br>
&gt;<br>
&gt; Cheers<br>
&gt; mpb<br>
&gt;<br>
&gt; [1]<br>
&gt; <a href=3D"https://github.com/Opendigitalradio/ODR-DabMod" rel=3D"nore=
ferrer" target=3D"_blank">https://github.com/Opendigitalradio/ODR-DabMod</a=
><br>
&gt;<br>
&gt; [2]<br>
&gt; Look for m_queue in<br>
&gt; <a href=3D"https://github.com/Opendigitalradio/ODR-DabMod/blob/master/=
src/output/SDR.cpp" rel=3D"noreferrer" target=3D"_blank">https://github.com=
/Opendigitalradio/ODR-DabMod/blob/master/src/output/SDR.cpp</a><br>
&gt;<br>
&gt; [3]<br>
&gt; For all threads involved in DSP and the SDR output thread. Grep for<br=
>
&gt; `set_realtime_prio`.<br>
&gt;<br>
&gt; [4]<br>
&gt; <a href=3D"https://files.ettus.com/manual/page_transport.html#transpor=
t_usb" rel=3D"noreferrer" target=3D"_blank">https://files.ettus.com/manual/=
page_transport.html#transport_usb</a><br>
&gt;<br>
&gt; Default send_frame_size seems to be on line 85 of<br>
&gt; <a href=3D"https://files.ettus.com/manual/b200__impl_8hpp_source.html"=
 rel=3D"noreferrer" target=3D"_blank">https://files.ettus.com/manual/b200__=
impl_8hpp_source.html</a><br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000042c7730587e9c8e5--


--===============7179959630327415393==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7179959630327415393==--

