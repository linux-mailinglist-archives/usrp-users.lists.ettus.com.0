Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AAED022B5D5
	for <lists+usrp-users@lfdr.de>; Thu, 23 Jul 2020 20:41:18 +0200 (CEST)
Received: from [::1] (port=36102 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jyg9X-0003cJ-ME; Thu, 23 Jul 2020 14:41:11 -0400
Received: from mail-il1-f170.google.com ([209.85.166.170]:43634)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <bistromath@gmail.com>)
 id 1jyg9U-0003Qv-CP
 for usrp-users@lists.ettus.com; Thu, 23 Jul 2020 14:41:08 -0400
Received: by mail-il1-f170.google.com with SMTP id i18so5182636ilk.10
 for <usrp-users@lists.ettus.com>; Thu, 23 Jul 2020 11:40:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=N7N7TpUI0g6tIG5N7rdQFqwmb86eMYqUfu0z04ZQWW0=;
 b=U2ByQ8kHeReOrqS+M0O05idVbeLy0aPU9T9iauhKufXS/+ZuY9v+BwmcMYmmW4qN1a
 tLRMQjlHUhVscVks2z4XiNziqd9iQF46Q3B6pe7IZrvu5SLIW1tB/uVct/Xq/RDroBbG
 o2z7+/0eDQqQDBXgO7/TOa/Jz/pLqjm+z+fTmkF7VGjwElhX++7I5DeJ69kdNmJfAKN0
 iFrTTuP0fQQnKgkfB3t+69aC26lFgNkd+ta9XjKpRhe4Bzbdwx3OnueLPAXl9iUGkNci
 fjpUUR4nHwGQQXDIooXWQ0VMDdLVllEi0735ubEr7Qj3bz4/OfBSLqNtfmibKCPhafCl
 YlxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=N7N7TpUI0g6tIG5N7rdQFqwmb86eMYqUfu0z04ZQWW0=;
 b=TozllQXYtTtCt8Y85bPkNxgu0ckNvNCQuyXcAnT0KZcgbI2MRZ4VyQS085vBQJ6C+W
 FMfA16BBfV4aLLt5tHgWZBcJ682ZJ+oYGYK+bkoHbXRWyimUiA8WQ0q8ncoLsLRPHBSE
 hBYLVap7lWUtiQE5aOI1PRwNaa2sniBEmf3d6GTNoOog6eM0cR/lwjuSo++yJ05wcThZ
 bdPlvXfkVyLYVA5wQMPfJIbVVE4s2FvHb7PwhE25PtaOizB14xw2CmzNuaY+Nv6ymK/r
 rY74ubNY8Jk1UtO8OJ5z8sPB2RbtRjaVO+ociRJNhysuMZQFICGEnjj30AI9g5sZnQCJ
 S1qg==
X-Gm-Message-State: AOAM5331MEGCsHOTVUQtcWJsWjQe/D7QS0FE0QQmMM3EThAYHlYmErAT
 E4TUlUFT4jQDDrexIsQa46J5DLX95JomHPIFeaA=
X-Google-Smtp-Source: ABdhPJzoDvEo72/ZZ9CKmRw7DV6pVOs3Ds3H3DxD1jAXxsmpzDzgeCdy5JKvIFZhlW/2vaspPOvqT297cJztx737Ly8=
X-Received: by 2002:a92:41d2:: with SMTP id o201mr6034512ila.298.1595529627523; 
 Thu, 23 Jul 2020 11:40:27 -0700 (PDT)
MIME-Version: 1.0
References: <b2ae131056ae4db29b51cfcb63f13284@gtri.gatech.edu>
 <16b71d7c13fe4059b9b7c3ad660eef87@gtri.gatech.edu>
In-Reply-To: <16b71d7c13fe4059b9b7c3ad660eef87@gtri.gatech.edu>
Date: Thu, 23 Jul 2020 11:40:16 -0700
Message-ID: <CA+JMMq95M=qo8N+Ci1r=rcxaLtP086wvu6gAOg6Lz1wX6ZANOQ@mail.gmail.com>
To: "Hodges, Jeff" <Jeff.Hodges@gtri.gatech.edu>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] X310 RFNoC Basic Transmit Signal Source Flowgraph
 Not Working
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
From: Nick Foster via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nick Foster <bistromath@gmail.com>
Content-Type: multipart/mixed; boundary="===============3596804633443415273=="
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

--===============3596804633443415273==
Content-Type: multipart/alternative; boundary="000000000000ad652f05ab2030df"

--000000000000ad652f05ab2030df
Content-Type: text/plain; charset="UTF-8"

RFNoC Radio runs at a constant 200Msps. Use DUC parameters: input rate
1Msps, output rate 200Msps. Use Radio parameter: Sampling Rate 200Msps.

I don't know why you're getting a gain error. What daughterboard are you
using?

In addition, you probably don't need the DMA FIFO for this FG.

Nick

On Thu, Jul 23, 2020 at 11:34 AM Hodges, Jeff via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Has anyone been able to transmit with RFNoC Radio using the standard FPGA
> image from UHD.3.15.LTS?
>
>
> I have a clean installation and ran SigGen --> RFNoC: DmaFIFO --> RFNoC:
> DUC --> RFNoC: Radio
>
>
> Most basic flow graph ever. It does not work. I get a run-time error.
>
>
> Traceback (most recent call last):
>   File "/home/nvd/Documents/top_block.py", line 169, in <module>
>     main()
>   File "/home/nvd/Documents/top_block.py", line 157, in main
>     tb = top_block_cls()
>   File "/home/nvd/Documents/top_block.py", line 84, in __init__
>     self.uhd_rfnoc_streamer_radio_0.set_tx_gain(0, 0)
>   File "/usr/local/lib/python2.7/dist-packages/ettus/ettus_swig.py", line
> 3235, in set_tx_gain
>     return _ettus_swig.rfnoc_radio_sptr_set_tx_gain(self, gain, chan)
> RuntimeError: _Map_base::at
>
>
>
> Jeff
> ------------------------------
> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of
> Hodges, Jeff via USRP-users <usrp-users@lists.ettus.com>
> *Sent:* Wednesday, July 22, 2020 8:49:05 PM
> *To:* usrp-users@lists.ettus.com
> *Subject:* [USRP-users] X310 RFNoC Basic Transmit Signal Source Flowgraph
> Not Working
>
>
> I get a set_tx_gain error running a basic signal generator through RFNoC
> Radio:
>
> Signal Source -> DMA FIFO -> DUC -> Radio  (See image below)
>
>
> This is equivalent to:
> Signal Source --> USRP Sink    (Works fine)
>
>
> https://kb.ettus.com/File:dma_fifo_v02.png
>
>
> <https://kb.ettus.com/File:dma_fifo_v02.png>
>
> Traceback (most recent call last):
>   File "/home/nvd/Documents/top_block.py", line 169, in <module>
>     main()
>   File "/home/nvd/Documents/top_block.py", line 157, in main
>     tb = top_block_cls()
>   File "/home/nvd/Documents/top_block.py", line 84, in __init__
>     self.uhd_rfnoc_streamer_radio_0.set_tx_gain(0, 0)
>   File "/usr/local/lib/python2.7/dist-packages/ettus/ettus_swig.py", line
> 3235, in set_tx_gain
>     return _ettus_swig.rfnoc_radio_sptr_set_tx_gain(self, gain, chan)
> RuntimeError: _Map_base::at
>
>
> I am using 3.15.LTS.
>
>
> Any ideas?
>
>
> Thanks,
>
>
> Jeff
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000ad652f05ab2030df
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>RFNoC Radio runs at a constant 200Msps. Use DUC param=
eters: input rate 1Msps, output rate 200Msps. Use Radio parameter: Sampling=
 Rate 200Msps.</div><div><br></div><div>I don&#39;t know why you&#39;re get=
ting a gain error. What daughterboard are you using?<br></div><div><br></di=
v><div>In addition, you probably don&#39;t need the DMA FIFO for this FG.</=
div><div><br></div><div>Nick<br></div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 23, 2020 at 11:34 AM Hodg=
es, Jeff via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">u=
srp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">




<div dir=3D"ltr">

<div id=3D"gmail-m_-3662757746033311085divtagdefaultwrapper" style=3D"font-=
size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=3D=
"ltr">
<p>Has anyone been able to transmit with RFNoC Radio using the standard FPG=
A image from UHD.3.15.LTS?</p>
<p><br>
</p>
<p>I have a clean installation and ran SigGen --&gt; RFNoC: DmaFIFO --&gt; =
RFNoC: DUC --&gt; RFNoC: Radio</p>
<p><br>
</p>
<p>Most basic flow graph ever. It does not work. I get a run-time error.=C2=
=A0</p>
<p><br>
</p>
<p></p>
<div>Traceback (most recent call last):<br>
=C2=A0 File &quot;/home/nvd/Documents/top_block.py&quot;, line 169, in &lt;=
module&gt;<br>
=C2=A0=C2=A0=C2=A0 main()<br>
=C2=A0 File &quot;/home/nvd/Documents/top_block.py&quot;, line 157, in main=
<br>
=C2=A0=C2=A0=C2=A0 tb =3D top_block_cls()<br>
=C2=A0 File &quot;/home/nvd/Documents/top_block.py&quot;, line 84, in __ini=
t__<br>
=C2=A0=C2=A0=C2=A0 self.uhd_rfnoc_streamer_radio_0.set_tx_gain(0, 0)<br>
=C2=A0 File &quot;/usr/local/lib/python2.7/dist-packages/ettus/ettus_swig.p=
y&quot;, line 3235, in set_tx_gain<br>
=C2=A0=C2=A0=C2=A0 return _ettus_swig.rfnoc_radio_sptr_set_tx_gain(self, ga=
in, chan)<br>
RuntimeError: _Map_base::at<br>
</div>
<br>
<p></p>
<p><br>
</p>
<p><br>
</p>
<p>Jeff<br>
</p>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-3662757746033311085divRplyFwdMsg" dir=3D"ltr"><font sty=
le=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>Fro=
m:</b> USRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.ettus.com"=
 target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt; on behalf of =
Hodges, Jeff via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Sent:</b> Wednesday, July 22, 2020 8:49:05 PM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> [USRP-users] X310 RFNoC Basic Transmit Signal Source Flowgr=
aph Not Working</font>
<div>=C2=A0</div>
</div>
<div>
<div id=3D"gmail-m_-3662757746033311085divtagdefaultwrapper" style=3D"font-=
size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=3D=
"ltr">
<p>I get a set_tx_gain error running a basic signal generator through RFNoC=
 Radio:
<br>
<br>
Signal Source -&gt; DMA FIFO -&gt; DUC -&gt; Radio=C2=A0 (See image below)<=
/p>
<p><br>
</p>
<p></p>
<div>
<p>This is equivalent to:</p>
Signal Source --&gt; USRP Sink=C2=A0=C2=A0=C2=A0 (Works fine)</div>
<br>
<br>
<a href=3D"https://kb.ettus.com/File:dma_fifo_v02.png" id=3D"gmail-m_-36627=
57746033311085LPlnk387264" target=3D"_blank">https://kb.ettus.com/File:dma_=
fifo_v02.png</a>
<p></p>
<p><a href=3D"https://kb.ettus.com/File:dma_fifo_v02.png" id=3D"gmail-m_-36=
62757746033311085LPlnk387264" target=3D"_blank"><br>
</a></p>
<p></p>
<div>Traceback (most recent call last):<br>
=C2=A0 File &quot;/home/nvd/Documents/top_block.py&quot;, line 169, in &lt;=
module&gt;<br>
=C2=A0=C2=A0=C2=A0 main()<br>
=C2=A0 File &quot;/home/nvd/Documents/top_block.py&quot;, line 157, in main=
<br>
=C2=A0=C2=A0=C2=A0 tb =3D top_block_cls()<br>
=C2=A0 File &quot;/home/nvd/Documents/top_block.py&quot;, line 84, in __ini=
t__<br>
=C2=A0=C2=A0=C2=A0 self.uhd_rfnoc_streamer_radio_0.set_tx_gain(0, 0)<br>
=C2=A0 File &quot;/usr/local/lib/python2.7/dist-packages/ettus/ettus_swig.p=
y&quot;, line 3235, in set_tx_gain<br>
=C2=A0=C2=A0=C2=A0 return _ettus_swig.rfnoc_radio_sptr_set_tx_gain(self, ga=
in, chan)<br>
RuntimeError: _Map_base::at<br>
<br>
</div>
<p></p>
<p><br>
</p>
<p>I am using 3.15.LTS.</p>
<p><br>
</p>
Any ideas?
<p><br>
Thanks,<br>
</p>
<p><br>
</p>
<p>Jeff<br>
</p>
<br>
<p></p>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000ad652f05ab2030df--


--===============3596804633443415273==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3596804633443415273==--

