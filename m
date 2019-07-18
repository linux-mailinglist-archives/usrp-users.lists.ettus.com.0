Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A239E6D641
	for <lists+usrp-users@lfdr.de>; Thu, 18 Jul 2019 23:09:36 +0200 (CEST)
Received: from [::1] (port=48382 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hoDeg-0004lx-N7; Thu, 18 Jul 2019 17:09:34 -0400
Received: from mail-oi1-f172.google.com ([209.85.167.172]:42648)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1hoDec-0004d6-QT
 for usrp-users@lists.ettus.com; Thu, 18 Jul 2019 17:09:30 -0400
Received: by mail-oi1-f172.google.com with SMTP id s184so22650246oie.9
 for <usrp-users@lists.ettus.com>; Thu, 18 Jul 2019 14:09:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9HCXfPUMIxlY0qgVy/jA83pQhEjSUQ5DQujw4Lpansk=;
 b=gcqJ+sV5HWQ+pTvt2vCgKB4PeAg405mEc/riZMh+uwokFzjFVBGmfhDDHRiYHh7UIY
 c8RkS2XtyPdCLXuqzg638cLt/WkytTfp5PrOfoqXSgFDgSBlTzTNgQCMe+TNE8eeaLnc
 RpY0tYpotmZhiOFO0PFm3k7MQhadq68qsaoc4G2Xj4RWRwV7j64C5Q9vVzfellVp8K9c
 dgI+HjR/HfOHSd95cPHgJCOFq/JZCQyF+r6KMZaBmEvPJ/wVagTUn58Xhk7C5IpSPPQW
 xnrB/X8npZi7od4KAHNntk7HyvxFY60wsmYOqvyX4CPVparYwMzLoopSu8LrOIjJjnah
 0z9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9HCXfPUMIxlY0qgVy/jA83pQhEjSUQ5DQujw4Lpansk=;
 b=PEwKqZ5H+aJzlVz1qgRFMPsAkmCRx0efALvado3BofxUAiAE2eOCahyk5v8wD7j0oD
 I/gk7UrCw0HoY4J92/7ZQqjvCTq6a3Eu4Y7m/t2OaaTfTPpyMLAfIW2k8K1PZPOReiGi
 a9izKnjUZYNCbTD5HOUfP/0puJGnFWg1R0gnIInBzCfF+HUNxvX34nh76IsW4hnMgVUu
 SaEBFVMxWpAasAJ/zThXDBrBeiNawBuJT1RaxrSfHmtzjIEa2V3qsxlBVCxBU8H6IDXP
 mIFxngj63/4z6QhTYLpz6528aUu2TOB7Oujqs6y/pwgrKZbopY0nDytzSEcaIoEfdJH3
 04gg==
X-Gm-Message-State: APjAAAXzJNInCdS4s0vu/3gG3N7Dbbm1cxcRhMrETHvUBjwRItIAYQcb
 jpfSynYAnFITI2rfFDrgT+0TqOxx7OBXBXOiRC2Wby6n
X-Google-Smtp-Source: APXvYqxJtTR+oPnc6GSMH32Q84Jbao0MnSuozWetJ0OfcRE0/TwMSsgnDzBjYgmsHOVPxNcBwKOBJkj5Rpw7HUSbDRI=
X-Received: by 2002:aca:ecc1:: with SMTP id k184mr23741706oih.82.1563484130103; 
 Thu, 18 Jul 2019 14:08:50 -0700 (PDT)
MIME-Version: 1.0
References: <fa2116e1dbbe2b6fa62a181551995721@imapproxy.vub.ac.be>
 <b738183536799608fb8bc13ed55756a67ad03bba.camel@ettus.com>
In-Reply-To: <b738183536799608fb8bc13ed55756a67ad03bba.camel@ettus.com>
Date: Thu, 18 Jul 2019 14:09:07 -0700
Message-ID: <CAL263ixXc7fVj5EG3gkoGJQHMCxFX2_rgFeuLRjeh5oLseBqSw@mail.gmail.com>
To: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
Subject: Re: [USRP-users] USRP X310 send period
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
From: Nate Temple via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nate Temple <nate.temple@ettus.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3408840186087607528=="
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

--===============3408840186087607528==
Content-Type: multipart/alternative; boundary="0000000000002fe652058dfb0421"

--0000000000002fe652058dfb0421
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The RFNoC Replay block would be a good starting point, if you want to do
this all in the FPGA.

On Thu, Jul 18, 2019 at 2:04 PM Marcus M=C3=BCller via USRP-users <
usrp-users@lists.ettus.com> wrote:

> At the very benign 20 MS/s, I'd really say your first option is the way
> to go. The rest probably won't work very well du to turn on/off
> behaviour requiring you to zero pad a bit to flush your TX data chains.
>
> You can of course also write an RFNoC block to store and generate data
> in-FPGA, but really: at 20MS/s just continously stream. Even a bog-
> normal Gigabit Ethernet card has plenty enough bandwidth to do that. I
> doubt sending a sequence from RAM will occupy much CPU on your host PC.
>
> Best regards,
> Marcus
>
> On Thu, 2019-07-18 at 22:58 +0200, C=C3=A9dric Hannotier via USRP-users
> wrote:
> > Dear all,
> >
> > I would like to periodically send a frame with an USRP X310 (frame
> > length: 320 samples, rate: 20 MS/s, period: 1-500 ms). However, I
> > struggle to find the best way to implement it. What I have tried so
> > far:
> >
> >   1. Append zeros to the frame to reach the expected period.
> > However,
> > this consumes too much bandwidth due to the zeros.
> >
> >   2. Use tx_streamer->send() with a tx_metadata_t.time_spec and
> > tx_streamer->recv_async_msg(). Using that, only the frame is sent,
> > saving most of the bandwidth. However, with small periods, it tends
> > to
> > print some 'L'.
> >
> >   3. Buffer a batch of send request on the USRP, then wait a
> > specific
> > time (using eg. recv_async_msg() until the returned metadata
> > contains
> > the penultimate time_spec (I expect that the time_spec returned is
> > the
> > one specified in the send metadata)) and redo. The issue is that I
> > was
> > not able to find the buffer size (is it related to the
> > tx_streamer->get_max_num_samps()?). I would like to fill the buffer
> > without overflow.
> >
> > I was hoping that I could save the frame in an USRP's memory, and
> > then
> > ask it to periodically send the frame with a specific period. Is it
> > possible?
> >
> > Here is an example of (2):
> >
> > template <typename samp_type>
> > void send_from_file(const uhd::usrp::multi_usrp::sptr &usrp,
> >                      uhd::tx_streamer::sptr tx_stream, const
> > std::string&
> > file,
> >                      const double period)
> > {
> > size_t data_size =3D get_file_size<samp_type>(file);
> > std::ifstream infile(file, std::ifstream::binary);
> > std::vector<samp_type> buff(data_size);
> > infile.read(reinterpret_cast<char*>(buff.data()),
> > (std::streamsize)(buff.size()*sizeof(samp_type)));
> > infile.close();
> > size_t num_tx_samps =3D buff.size();
> > std::cout << file << " " << buff[0] << " " << num_tx_samps <<
> > std::endl;
> >
> > uhd::tx_metadata_t md;
> > md.start_of_burst =3D true;
> > md.end_of_burst   =3D true;
> > md.has_time_spec  =3D true;
> > md.time_spec    =3D usrp->get_time_last_pps()+5.;
> > double timeout =3D md.time_spec.get_real_secs();
> > uhd::async_metadata_t md_status;
> >
> > while (not stop_signal_called) {
> >       tx_stream->send(&buff.front(), num_tx_samps, md);
> >       if (tx_stream->recv_async_msg(md_status, timeout)) {
> >               if (md_status.event_code !=3D
> > uhd::async_metadata_t::event_code_t::EVENT_CODE_BURST_ACK) {
> >                       std::cerr << "Error: " << md_status.event_code
> > << std::endl;
> >                       exit(EXIT_FAILURE);
> >               }
> >       } else {
> >               std::cerr << "timeout before sent" << std::endl;
> >               exit(EXIT_FAILURE);
> >       }
> >
> >       timeout =3D 0.1;
> >       md.time_spec +=3D period;
> > }
> > }
> >
> >
> >
> > Best Regards,
> > C=C3=A9dric
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000002fe652058dfb0421
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">The RFNoC Replay block would be a good starting point, =
if you want to do this all in the FPGA. <br></div></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 18, 2019 at 2=
:04 PM Marcus M=C3=BCller via USRP-users &lt;<a href=3D"mailto:usrp-users@l=
ists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">At the very benign 20 MS/s, I&#39=
;d really say your first option is the way<br>
to go. The rest probably won&#39;t work very well du to turn on/off<br>
behaviour requiring you to zero pad a bit to flush your TX data chains.<br>
<br>
You can of course also write an RFNoC block to store and generate data<br>
in-FPGA, but really: at 20MS/s just continously stream. Even a bog-<br>
normal Gigabit Ethernet card has plenty enough bandwidth to do that. I<br>
doubt sending a sequence from RAM will occupy much CPU on your host PC.<br>
<br>
Best regards,<br>
Marcus<br>
<br>
On Thu, 2019-07-18 at 22:58 +0200, C=C3=A9dric Hannotier via USRP-users<br>
wrote:<br>
&gt; Dear all,<br>
&gt; <br>
&gt; I would like to periodically send a frame with an USRP X310 (frame <br=
>
&gt; length: 320 samples, rate: 20 MS/s, period: 1-500 ms). However, I <br>
&gt; struggle to find the best way to implement it. What I have tried so<br=
>
&gt; far:<br>
&gt; <br>
&gt;=C2=A0 =C2=A01. Append zeros to the frame to reach the expected period.=
<br>
&gt; However, <br>
&gt; this consumes too much bandwidth due to the zeros.<br>
&gt; <br>
&gt;=C2=A0 =C2=A02. Use tx_streamer-&gt;send() with a tx_metadata_t.time_sp=
ec and <br>
&gt; tx_streamer-&gt;recv_async_msg(). Using that, only the frame is sent, =
<br>
&gt; saving most of the bandwidth. However, with small periods, it tends<br=
>
&gt; to <br>
&gt; print some &#39;L&#39;.<br>
&gt; <br>
&gt;=C2=A0 =C2=A03. Buffer a batch of send request on the USRP, then wait a=
<br>
&gt; specific <br>
&gt; time (using eg. recv_async_msg() until the returned metadata<br>
&gt; contains <br>
&gt; the penultimate time_spec (I expect that the time_spec returned is<br>
&gt; the <br>
&gt; one specified in the send metadata)) and redo. The issue is that I<br>
&gt; was <br>
&gt; not able to find the buffer size (is it related to the <br>
&gt; tx_streamer-&gt;get_max_num_samps()?). I would like to fill the buffer=
 <br>
&gt; without overflow.<br>
&gt; <br>
&gt; I was hoping that I could save the frame in an USRP&#39;s memory, and<=
br>
&gt; then <br>
&gt; ask it to periodically send the frame with a specific period. Is it <b=
r>
&gt; possible?<br>
&gt; <br>
&gt; Here is an example of (2):<br>
&gt; <br>
&gt; template &lt;typename samp_type&gt;<br>
&gt; void send_from_file(const uhd::usrp::multi_usrp::sptr &amp;usrp,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 uhd::tx_streamer::sptr tx_stream, const<br>
&gt; std::string&amp; <br>
&gt; file,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 const double period)<br>
&gt; {<br>
&gt; size_t data_size =3D get_file_size&lt;samp_type&gt;(file);<br>
&gt; std::ifstream infile(file, std::ifstream::binary);<br>
&gt; std::vector&lt;samp_type&gt; buff(data_size);<br>
&gt; infile.read(reinterpret_cast&lt;char*&gt;(buff.data()), <br>
&gt; (std::streamsize)(buff.size()*sizeof(samp_type)));<br>
&gt; infile.close();<br>
&gt; size_t num_tx_samps =3D buff.size();<br>
&gt; std::cout &lt;&lt; file &lt;&lt; &quot; &quot; &lt;&lt; buff[0] &lt;&l=
t; &quot; &quot; &lt;&lt; num_tx_samps &lt;&lt;<br>
&gt; std::endl;<br>
&gt; <br>
&gt; uhd::tx_metadata_t md;<br>
&gt; md.start_of_burst =3D true;<br>
&gt; md.end_of_burst=C2=A0 =C2=A0=3D true;<br>
&gt; md.has_time_spec=C2=A0 =3D true;<br>
&gt; md.time_spec=C2=A0 =C2=A0 =3D usrp-&gt;get_time_last_pps()+5.;<br>
&gt; double timeout =3D md.time_spec.get_real_secs();<br>
&gt; uhd::async_metadata_t md_status;<br>
&gt; <br>
&gt; while (not stop_signal_called) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0tx_stream-&gt;send(&amp;buff.front(), num_tx=
_samps, md);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (tx_stream-&gt;recv_async_msg(md_status, =
timeout)) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (md_status.ev=
ent_code !=3D <br>
&gt; uhd::async_metadata_t::event_code_t::EVENT_CODE_BURST_ACK) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0std::cerr &lt;&lt; &quot;Error: &quot; &lt;&lt; md_status.even=
t_code<br>
&gt; &lt;&lt; std::endl;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0exit(EXIT_FAILURE);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0} else {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0std::cerr &lt;&l=
t; &quot;timeout before sent&quot; &lt;&lt; std::endl;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0exit(EXIT_FAILUR=
E);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0timeout =3D 0.1;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0md.time_spec +=3D period;<br>
&gt; }<br>
&gt; }<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; Best Regards,<br>
&gt; C=C3=A9dric<br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
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

--0000000000002fe652058dfb0421--


--===============3408840186087607528==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3408840186087607528==--

