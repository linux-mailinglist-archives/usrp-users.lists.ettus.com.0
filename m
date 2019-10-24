Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D166FE3AD3
	for <lists+usrp-users@lfdr.de>; Thu, 24 Oct 2019 20:19:55 +0200 (CEST)
Received: from [::1] (port=53148 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iNhiC-0004ZU-GM; Thu, 24 Oct 2019 14:19:52 -0400
Received: from mail-lj1-f172.google.com ([209.85.208.172]:41656)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1iNhi9-0004Up-1C
 for usrp-users@lists.ettus.com; Thu, 24 Oct 2019 14:19:49 -0400
Received: by mail-lj1-f172.google.com with SMTP id f5so26089010ljg.8
 for <usrp-users@lists.ettus.com>; Thu, 24 Oct 2019 11:19:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BYv1VeyZ5hj0amBHvuUWOlYDRQoXzaDlOjyVvoIst7o=;
 b=QXHLWBr9OJ4F8ev8MoNzqzWzAHrWQCXKkjBnwq3yZS1jNi2ZF/BS+DJkeTA2+e6Mnm
 S0novM8q+rvbPulOo3bWuMA2zVU4bJgC1t41AZqVTf4bDycf3Na6vx32KYXWQg8xIRYO
 p2wAMEHwNfVCwUkSiavA55Eo8BP8uMzaTjp0o3IphaJE4Mt5bvUY+U8zT9/tG0sCkI8b
 p/mAxrLCFJzqnaXjpnTsJNwelH5LIg7KByijNHCmVS2HnrNRZarbgEWuV3EBPBvDlrMx
 djkyhTmi9+FNaInmF0n3+LyfwjO0bC5yyr6K5iO7B6Pw+yP2Pid93TmMXM3KdOUAhIr0
 CTnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BYv1VeyZ5hj0amBHvuUWOlYDRQoXzaDlOjyVvoIst7o=;
 b=ffI5x876RrZJM+gkqBYX+Lw3ZOlxbRljSpx9VgosGhFMdfqdd877xQ586qGtxVQNdq
 m6g/yyAAlYafgcd5trewGC3irrl97J14KhBJ88kStfpAzNU5yWlyeOwkc3ZwhDAOC/FO
 0X09xut62WsTuEL/Qg1EefL+OshLcxm7D3szePXDkEVQcuTlHhJPqgA5lihpkKEMHLcf
 7I8f1T3tEjd6lmapdH0fiOCETwqLlep9vzQ3g5E2mjyedgYUjwagxSsdqRjp9aAt+jah
 TC3btPrTiAk4oQvuOehG6HS5lwUdJPJYRvrAmSpe9dFYAdBZ9wA58zR8W91c79TVPLqM
 9MHA==
X-Gm-Message-State: APjAAAUW1Uv+ww8BwzRPobnU0dRpermnMCF1WkGPfnzKrNTzywG7Pdcs
 EPLzQ1xUdg5yruzKUL6hMB7zWBjD9caG3qyWN7OYR25q
X-Google-Smtp-Source: APXvYqzGAU/GoFCkmaiGIb2OciIgVNEQfvtXH7GvP28GZIhlNmyL3mlahozGh+bJMHmCeDvb1PY/Yq6w2g4LRR7FqmI=
X-Received: by 2002:a2e:5354:: with SMTP id t20mr27200308ljd.227.1571941147509; 
 Thu, 24 Oct 2019 11:19:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAFG_7kdRki3HVcyVTi=k63=A01Y6RVqBRU_9it6PYb=JkPUBww@mail.gmail.com>
In-Reply-To: <CAFG_7kdRki3HVcyVTi=k63=A01Y6RVqBRU_9it6PYb=JkPUBww@mail.gmail.com>
Date: Thu, 24 Oct 2019 13:18:55 -0500
Message-ID: <CANf970ZdC4X48iAYtBQ7Y-3a2ywQA-5QMOyeeL2Gaytw7nSsFw@mail.gmail.com>
To: Alexander W <alexander.e.wagner@gmail.com>
Subject: Re: [USRP-users] [usrp-users] E320 Multi TX Stream Operation in GR
 3.8 stops during configuration of the USRP sink
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
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5563984786657573419=="
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

--===============5563984786657573419==
Content-Type: multipart/alternative; boundary="000000000000b4a4f00595ac118e"

--000000000000b4a4f00595ac118e
Content-Type: text/plain; charset="UTF-8"

Alex,

I suspect this is something specific to GNU Radio 3.8, but it's not
something I've seen up to this point. To help narrow down the problem,
could you run your test flowchart on GNU Radio 3.7 and report back the
results?

Sam

On Tue, Oct 22, 2019 at 8:11 AM Alexander W via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hey,
>
> I am currently setting up an E320 and want to use both TX Chains
> simultaneously. I first did the benchmark_rate test:
>
> $ ~/pybombs_gnuradio/lib/uhd/examples/benchmark_rate    --args
> "addr=192.168.10.2"    --duration 60    --channels "0,1"    --rx_rate 1e6
>  --rx_subdev "A:0 A:1"
>
> This ran fine and I moved over to gnuradio. The test flowchart consists of
> two sine signal sources as input for one sink block. Arguments in the USRP
> sink block are set to the following:
>
> - Device Address: addr=192.168.10.2
> - Mb0: SubDev Spec: A:0 A:1
> - Num Channels: 2
>
> Rest of the arguments are the default values. Starting the flowchart
> returns:
> ...
> [INFO] [0/Radio_0] Performing CODEC loopback test...
> [INFO] [0/Radio_0] CODEC loopback test passed
> [INFO] [0/Radio_0] Performing CODEC loopback test...
> [INFO] [0/Radio_0] CODEC loopback test passed
>
> >>> Done (return code -11)
>
> I tried to see where this comes from. The segfault is triggered after a
> call to set the center frequency of the second channel:
> ...
>         self.uhd_usrp_sink_0 = uhd.usrp_sink(
>             ",".join(('addr=192.168.10.2', "")),
>             uhd.stream_args(
>                 cpu_format="fc32",
>                 args='',
>                 channels=[],
>             ),
>             '',
>         )
>         self.uhd_usrp_sink_0.set_subdev_spec('A:0 A:1', 0)
>         self.uhd_usrp_sink_0.set_center_freq(freq, 0)
>         self.uhd_usrp_sink_0.set_normalized_gain(0.5, 0)
>         print("91")
>         self.uhd_usrp_sink_0.set_antenna('TX/RX', 0)
>         print("93")
>         self.uhd_usrp_sink_0.set_center_freq(freq, 1)
> <-- Segfault appears in this call
>         print("95")
>         self.uhd_usrp_sink_0.set_normalized_gain(0.5, 1)
>         print("97")
>         self.uhd_usrp_sink_0.set_antenna('TX/RX', 1)
>         self.uhd_usrp_sink_0.set_samp_rate(samp_rate)
> ...
>
> Used UHD Version: UHD 3.14.1.1-0-g0347a6d8
> Used GR Version: 3.8.0.0
>
> Did anyone run into the same issue? As the error code is during the config
> call I am not sure if this connected to a wrong config or something else.
>
> Thanks in advance. Regards,
> Alex
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000b4a4f00595ac118e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Alex,</div><div><br></div><div>I suspect this is some=
thing specific to GNU Radio 3.8, but it&#39;s not something I&#39;ve seen u=
p to this point. To help narrow down the problem, could you run your test f=
lowchart on GNU Radio 3.7 and report back the results?</div><div><br></div>=
<div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmai=
l_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">Sam<br></div></div></di=
v></div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Tue, Oct 22, 2019 at 8:11 AM Alexander W via USRP-us=
ers &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettu=
s.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hey,</div><div><br></div><div>I=
 am currently setting up an E320 and want to use both TX Chains simultaneou=
sly. I first did the benchmark_rate test:<br></div><div> <br></div><div>$ ~=
/pybombs_gnuradio/lib/uhd/examples/benchmark_rate
 =C2=A0 =C2=A0--args &quot;addr=3D192.168.10.2&quot; =C2=A0 =C2=A0--duratio=
n 60 =C2=A0 =C2=A0--channels &quot;0,1&quot; =C2=A0=20
=C2=A0--rx_rate 1e6 =C2=A0 =C2=A0--rx_subdev &quot;A:0 A:1&quot;</div><div>=
<br></div><div>This=20
ran fine and I moved over to gnuradio. The test flowchart consists of=20
two sine signal sources as input for one sink block. Arguments in the=20
USRP sink block are set to the following:</div><div><br></div><div>- Device=
 Address: addr=3D192.168.10.2</div><div>- Mb0: SubDev Spec: A:0 A:1</div><d=
iv>- Num Channels: 2</div><div><br></div><div>Rest of the arguments are the=
 default values. Starting the flowchart returns: <br></div><div>...<br></di=
v><div> [INFO] [0/Radio_0] Performing CODEC loopback test... <br>[INFO] [0/=
Radio_0] CODEC loopback test passed<br>[INFO] [0/Radio_0] Performing CODEC =
loopback test... <br>[INFO] [0/Radio_0] CODEC loopback test passed<br><br>&=
gt;&gt;&gt; Done (return code -11)</div><div><br></div><div>I tried to see =
where this comes from. The segfault is triggered after a call to set the ce=
nter frequency of the second channel:</div><div>...</div><div>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.uhd_usrp_sink_0 =3D uhd.usrp_sink(<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;,&quot;.join((&#39;addr=3D1=
92.168.10.2&#39;, &quot;&quot;)),<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 uhd.stream_args(<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 cpu_format=3D&quot;fc32&quot;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 args=3D&#39;&#39;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 channels=3D[],<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 ),<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;&#39;,<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 )<br></div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 sel=
f.uhd_usrp_sink_0.set_subdev_spec(&#39;A:0 A:1&#39;, 0)<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_center_freq(freq, 0)<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_normalized_gain(0.5, 0)<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;91&quot;)<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 self.uhd_usrp_sink_0.set_antenna(&#39;TX/RX&#39;, 0)<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 print(&quot;93&quot;)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd=
_usrp_sink_0.set_center_freq(freq, 1)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 &lt;-- Segfault appears in this call<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 pri=
nt(&quot;95&quot;)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_=
normalized_gain(0.5, 1)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 print(&quot;97&quot;=
)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_antenna(&#39;TX/R=
X&#39;, 1)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_samp_rat=
e(samp_rate)</div><div>...<br></div><div>=C2=A0<br></div><div>Used UHD Vers=
ion: UHD 3.14.1.1-0-g0347a6d8</div><div>Used GR Version: 3.8.0.0</div><div>=
<br></div><div>Did
 anyone run into the same issue? As the error code is during the config=20
call I am not sure if this connected to a wrong config or something=20
else. <br></div><div><br></div><div>Thanks in advance. Regards,</div><div>A=
lex</div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000b4a4f00595ac118e--


--===============5563984786657573419==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5563984786657573419==--

