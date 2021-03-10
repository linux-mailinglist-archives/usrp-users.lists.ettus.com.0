Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A793B334700
	for <lists+usrp-users@lfdr.de>; Wed, 10 Mar 2021 19:43:09 +0100 (CET)
Received: from [::1] (port=44024 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lK3nW-0000ZH-5T; Wed, 10 Mar 2021 13:43:06 -0500
Received: from mail-oi1-f181.google.com ([209.85.167.181]:40621)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <bpadalino@gmail.com>) id 1lK3nS-0000TV-27
 for usrp-users@lists.ettus.com; Wed, 10 Mar 2021 13:43:02 -0500
Received: by mail-oi1-f181.google.com with SMTP id w65so20205409oie.7
 for <usrp-users@lists.ettus.com>; Wed, 10 Mar 2021 10:42:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=A3suBh53eSa9M0OVHZY3euKcvtqbgUwkJyqCqNVOu0E=;
 b=ex0Lk5o0lzbhhUfIOxAkrfNPqnAHQ5QwmscVASDb2hTkpVWYgGM4CtQjpcTryUowM9
 QzkKVkvz7YKNp9CO9FnEhG4RuBCDry5198av6qQn2qoV6FnUZG+GzB10jNaMuPlakj90
 2UfRT/HuzFLTVLuRi8VrtbF3ANzb/oz1tw3pQu99HFj77S1Qe4M2scFkgpXx0xVlpmXj
 1/xFf8gTHn9+VRMmu3wICj+HoeRJULmMBY3Tj1Kh04jMiz40++wBnHBC7HOSWhk+Ulq+
 tUsDUoDVbEK0SqiNKfX0FtoK5WI3otKbQXxGzzO/5Cfn4/GX/io72HwuQtdI6ZhDGMbV
 KEyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=A3suBh53eSa9M0OVHZY3euKcvtqbgUwkJyqCqNVOu0E=;
 b=KgeHDIMiyqmTiZiLNdaytatEy+i1HsYmQ7hycNwek3lJK7HmJwN6U/smRABisG+O0G
 lNlpJlUO+yLK1QsSkY5FoMtcsuUSpBRCrZKtxvYph4HOqincPG4dYOQxZcEtlR2cEwGm
 dU7mv2Soj0dYBSLG8tCuyGY9w2NiHaHT8ARC4j6gASLBtRKoQbLKc0hjA6puEnbhLect
 iUOaMQrBd134Cl3thE7ybcKBNHnqb/huol9UDysFR67tEzKNfGAYiFtia9ETLm/a+aeS
 xg02SH98MYbu98GfKtNAOkCl/bJ+QxEqWRyq/f7Xf0QoROVBewNLa8LfPKOWdB0Hu9Ge
 MhgA==
X-Gm-Message-State: AOAM5326T6BbVFSV9vgVM0ujI1RFgHs431vAp2nxHd7Uqs2/XNtgQ3vq
 NNBshyNNdryaTCBfCbLd2y/0Z739v3kn9thvAjc=
X-Google-Smtp-Source: ABdhPJyZTvruLqIEf9qLldTJX/rz2MzV5nI3zaOZPikzWsQhAfcQE40fjRzXebGtIOO+pm4LCLxzu8nBCJonsp6zvds=
X-Received: by 2002:aca:c7c3:: with SMTP id x186mr3331563oif.96.1615401741112; 
 Wed, 10 Mar 2021 10:42:21 -0800 (PST)
MIME-Version: 1.0
References: <CAKwz1Gf2Qw+Yc9E3e7CK0GLVaL14A6=fcvFQ_efpdyZX4p+Grw@mail.gmail.com>
 <CAEXYVK5S+2i01HbaBpi08iot7NDno1RhJ+6tfdeXHLS2QPovNA@mail.gmail.com>
 <CAKwz1Gfgbox4P5UDooz1eJaTy6iPC2fUBqi12J70L_LxKz7mng@mail.gmail.com>
In-Reply-To: <CAKwz1Gfgbox4P5UDooz1eJaTy6iPC2fUBqi12J70L_LxKz7mng@mail.gmail.com>
Date: Wed, 10 Mar 2021 13:42:09 -0500
Message-ID: <CAEXYVK6-p9TJ6hu34NzKiFuF-AFsiwOF_yLYm5SrbRz6Ky3Z9w@mail.gmail.com>
To: Doug Blackburn <dougb95@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] x300 latency over 10GigE
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
From: Brian Padalino via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Brian Padalino <bpadalino@gmail.com>
Content-Type: multipart/mixed; boundary="===============0150820249885607161=="
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

--===============0150820249885607161==
Content-Type: multipart/alternative; boundary="000000000000f2dc3b05bd33067f"

--000000000000f2dc3b05bd33067f
Content-Type: text/plain; charset="UTF-8"

On Wed, Mar 10, 2021 at 12:39 PM Doug Blackburn <dougb95@gmail.com> wrote:

> Brian,
>
> I've seen this using UHD-3.14 and UHD-3.15.LTS.
>

The DMA FIFO block default size is set here in the source code for
UHD-3.15.LTS:


https://github.com/EttusResearch/uhd/blob/UHD-3.15.LTS/host/lib/rfnoc/dma_fifo_block_ctrl_impl.cpp#L25

And the interface in the header file provides a way to resize it:


https://github.com/EttusResearch/uhd/blob/UHD-3.15.LTS/host/include/uhd/rfnoc/dma_fifo_block_ctrl.hpp#L33

I'd probably resize it before sending any data to it.

That should help with your latency question I think.


>
> I have performed some follow-on testing that raises more questions,
> particularly about the usage of end_of_burst and start_of_burst.  I talk
> through my tests and observations below; the questions that these generated
> are at the end ...
>
> I thought it would be interesting to modify benchmark_rate.cpp to attempt
> to place a timestamp on each buffer that was sent out to see if I could
> observe the same behavior.  I haven't seen thorough explanations of what
> exactly the start_of_burst and end_of_burst metadata fields do at a low
> level beyond this posting --
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2016-November/050555.html
> and a note about start_of_burst resetting the CORDICs (I'd appreciate being
> pointed in the right direction if I've missed it, thank you!) --  so I
> wanted to test the effect on timing when has_time_spec is true and the SOB
> and EOB fields are either false or true.  I initially set my test up in the
> following way (I hope the pseudocode makes sense) to make observations
> easy.  I watched for the LO on a spectrum analyzer.  Per the code below, I
> would expect a burst every 2 seconds if the time_spec was followed ...
>
> ======
> max_samps_per_packet = 50e5; // 100ms at 50 MSPS
> start_of_burst = <true,false>
> end_of_burst = <true,false>
> has_time_spec = true;
> while( not burst_timer_elapsed)
> {
>     tx_stream->send();
>     start_of_burst = <true,false>
>     end_of_burst = <true, false>
>     time_spec = time_spec + 2.0;
>  }
>

A few things.  I'd expect a burst every 2 seconds if you set sob = true,
eob = true outside the loop, and never change it and only change the
time_spec for every send.  Does that not work for you?

Next, The sizing of packets can be really important here.  The way the DUC
works is a little unintuitive.  The DUC works by creating N packets from 1
input packet.  To this end, if you have an extra 1 sample, it will repeat
that small 1 sample packet N times - very processing inefficient.

Furthermore, when I tried doing this I would run into weird edge cases with
the DMA FIFO where the send() call would block indefinitely.  My workaround
was to manually zero stuff and keep the transmit FIFO constantly going -
not using any eob flags at all.  My system would actually use a software
FIFO for bursts that wanted to go out, and I had a software thread in a
tight loop that would check if the FIFO had anything in it.  If it didn't,
it would zero stuff some small amount of transmit samples (1 packet I
believe).  If it did, it would send the burst.  You may want to do
something similar even with a synchronized system and counting outgoing
samples.


>
> My observations were as follows: if end_of_burst for the prior burst was
> set to true, my code adhered to the time_spec.  The value of start_of_burst
> had no effect on whether or not the expected timing was followed.  If
> end_of_burst was set to false, the time_spec for the following burst is
> ignored and the packet is transmitted as soon as possible.
>
> I then followed this up with another test -- I replaced
>       time_spec = time_spec + 2.0;
> with the equivalent of
>       time_spec = time_spec + 0.100;
>
> And set end_of_burst and start_of_burst to true.
>
> I figured if I can run this continuously by setting has_time_spec to
> 'false' after the first burst and easily push data into the FIFO buffer,
> that doing this should not be a problem ... but I'm presented with a stream
> of lates and no actual transmission.
>
> I understand that 100ms is not an integer multiple of packet size returned
> by get_max_num_samps() -- so I tried an integer multiple of the packet
> size, too, with an appropriately updated time_spec. This also resulted with
> a lates through the entire transmit.
>
> So .... here are my additional questions:
>
> Is the only effect of "start_of_burst = true" to cause the CORDICs to
> reset?
> What is end_of_burst doing to enable a following time_spec to be used?
> What additional work is being performed when I set end_of_burst and
> has_time_spec to 'true' such that I get latest throughout the entire
> attempted transmission?
>

I don't know the answer to these questions.  Try the suggestions above and
see if they help you out or not.

Good luck!

Brian

>

--000000000000f2dc3b05bd33067f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, Mar 10, 2021 at 12:39 PM Doug Bla=
ckburn &lt;<a href=3D"mailto:dougb95@gmail.com">dougb95@gmail.com</a>&gt; w=
rote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"ltr">Brian,<div><br></div><div>I&#39;ve seen t=
his using UHD-3.14 and UHD-3.15.LTS.</div></div></blockquote><div><br></div=
><div>The DMA FIFO block default size is set here in the source code for UH=
D-3.15.LTS:</div><div><br></div><div>=C2=A0=C2=A0<a href=3D"https://github.=
com/EttusResearch/uhd/blob/UHD-3.15.LTS/host/lib/rfnoc/dma_fifo_block_ctrl_=
impl.cpp#L25">https://github.com/EttusResearch/uhd/blob/UHD-3.15.LTS/host/l=
ib/rfnoc/dma_fifo_block_ctrl_impl.cpp#L25</a></div><div><br></div><div>And =
the interface in the header file provides a way to resize it:</div><div><br=
></div><div>=C2=A0=C2=A0<a href=3D"https://github.com/EttusResearch/uhd/blo=
b/UHD-3.15.LTS/host/include/uhd/rfnoc/dma_fifo_block_ctrl.hpp#L33">https://=
github.com/EttusResearch/uhd/blob/UHD-3.15.LTS/host/include/uhd/rfnoc/dma_f=
ifo_block_ctrl.hpp#L33</a></div><div><br></div><div>I&#39;d probably=C2=A0r=
esize it before sending any data to it.</div><div><br></div><div>That shoul=
d help with your latency question I think.</div><div>=C2=A0</div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div><br></div><di=
v>I have performed some follow-on testing that raises more questions, parti=
cularly about the usage of end_of_burst and start_of_burst.=C2=A0 I talk th=
rough my tests and observations below; the questions that these generated a=
re at the end ...</div><div><br></div><div>I thought it would be interestin=
g to modify benchmark_rate.cpp to attempt to place a timestamp on each buff=
er that was sent out to see if I could observe the same behavior.=C2=A0 I h=
aven&#39;t seen thorough explanations of what exactly the start_of_burst an=
d end_of_burst metadata fields do at a low level beyond this posting -- <a =
href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2016-No=
vember/050555.html" target=3D"_blank">http://lists.ettus.com/pipermail/usrp=
-users_lists.ettus.com/2016-November/050555.html</a> and a note about start=
_of_burst resetting the CORDICs (I&#39;d appreciate being pointed in the ri=
ght direction if I&#39;ve missed it, thank you!) --=C2=A0 so I wanted to te=
st the effect on timing when has_time_spec is true and the SOB and EOB fiel=
ds are either false or true.=C2=A0 I initially set my test up in the follow=
ing way (I hope the pseudocode makes sense) to make observations easy.=C2=
=A0 I watched=C2=A0for the LO on a spectrum analyzer.=C2=A0 Per the code be=
low, I would expect a burst every 2 seconds if the time_spec was followed .=
..=C2=A0<br><br>=3D=3D=3D=3D=3D=3D</div><div>max_samps_per_packet =3D 50e5;=
 // 100ms at 50 MSPS<br>start_of_burst =3D &lt;true,false&gt;</div><div>end=
_of_burst =3D &lt;true,false&gt;</div><div>has_time_spec =3D true;</div><di=
v></div><div>while( not burst_timer_elapsed)=C2=A0</div><div>{=C2=A0</div><=
div>=C2=A0 =C2=A0 tx_stream-&gt;send();</div><div>=C2=A0 =C2=A0 start_of_bu=
rst =3D &lt;true,false&gt;</div><div>=C2=A0 =C2=A0 end_of_burst =3D &lt;tru=
e, false&gt;</div><div>=C2=A0 =C2=A0 time_spec =3D time_spec=C2=A0+ 2.0;=C2=
=A0</div><div>=C2=A0}</div></div></blockquote><div><br></div><div>A few thi=
ngs.=C2=A0 I&#39;d expect a burst every 2 seconds if you set sob =3D true, =
eob =3D true outside the loop, and never change it and only change the time=
_spec for every send.=C2=A0 Does that not work for you?</div><div><br></div=
><div>Next, The sizing of packets can be really important here.=C2=A0 The w=
ay the DUC works is a little unintuitive.=C2=A0 The DUC works by creating N=
 packets from 1 input packet.=C2=A0 To this end, if you have an extra 1 sam=
ple, it will repeat that small 1 sample packet N times=C2=A0- very processi=
ng inefficient.</div><div><br></div><div>Furthermore, when I tried doing th=
is I would run into weird edge cases with the DMA FIFO where the send() cal=
l would block indefinitely.=C2=A0 My workaround was to manually zero stuff =
and keep the transmit FIFO constantly going - not using any eob flags at al=
l.=C2=A0 My system would actually use a software FIFO for bursts that wante=
d to go out, and I had a software thread in a tight loop that would check i=
f the FIFO had anything in it.=C2=A0 If it didn&#39;t, it would zero stuff =
some small amount of transmit samples (1 packet I believe).=C2=A0 If it did=
, it would send the burst.=C2=A0 You may want to do something similar even =
with a synchronized system and counting outgoing samples.</div><div>=C2=A0<=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><di=
v><br></div><div>My observations were as follows: if end_of_burst for the p=
rior burst was set to true, my code adhered to the time_spec.=C2=A0 The val=
ue of start_of_burst had no effect on whether or not the expected timing wa=
s followed.=C2=A0 If end_of_burst was set to false, the time_spec for the f=
ollowing burst is ignored and the packet is transmitted as soon as possible=
.</div><div><br></div><div>I then followed this up with another test -- I r=
eplaced=C2=A0</div><div>=C2=A0 =C2=A0 =C2=A0 time_spec =3D time_spec=C2=A0+=
 2.0;</div><div>with the equivalent of=C2=A0</div><div>=C2=A0 =C2=A0 =C2=A0=
 time_spec =3D time_spec=C2=A0+ 0.100;</div><div><br></div><div>And set end=
_of_burst and start_of_burst to true.</div><div><br></div><div>I figured if=
 I can run this continuously by setting has_time_spec to &#39;false&#39; af=
ter the first burst and easily push data into the FIFO buffer, that doing t=
his should not be a problem ... but I&#39;m presented with a stream of late=
s and no actual transmission.</div><div><br></div><div>I understand that 10=
0ms is not an integer multiple of packet size returned by get_max_num_samps=
() -- so I tried an integer multiple of the packet size, too, with an appro=
priately updated time_spec. This also resulted with a lates through the ent=
ire transmit.</div><div><br></div><div>So .... here are my additional quest=
ions:</div><div><br></div><div><div>Is the only effect of &quot;start_of_bu=
rst =3D true&quot; to cause the CORDICs to reset?=C2=A0=C2=A0</div><div>Wha=
t is end_of_burst doing to enable a following time_spec to be used?</div><d=
iv>What additional work is being performed when I set end_of_burst and has_=
time_spec to &#39;true&#39; such that I get latest throughout the entire at=
tempted transmission?</div></div></div></blockquote><div><br></div><div>I d=
on&#39;t know the answer to these questions.=C2=A0 Try the suggestions abov=
e and see if they help you out or not.</div><div><br></div><div>Good luck!<=
/div><div><br></div><div>Brian</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex">
</blockquote></div>
</blockquote></div></div>

--000000000000f2dc3b05bd33067f--


--===============0150820249885607161==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0150820249885607161==--

