Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C27DC3462AF
	for <lists+usrp-users@lfdr.de>; Tue, 23 Mar 2021 16:23:05 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A605C383AB8
	for <lists+usrp-users@lfdr.de>; Tue, 23 Mar 2021 11:23:04 -0400 (EDT)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 8F4C5383A19
	for <usrp-users@lists.ettus.com>; Tue, 23 Mar 2021 11:22:16 -0400 (EDT)
Received: by mail-ej1-f43.google.com with SMTP id kt15so18258535ejb.12
        for <usrp-users@lists.ettus.com>; Tue, 23 Mar 2021 08:22:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=LES4/s1SoGqnxEZLUDOwfpzZJqj0vm0Of1GJ08i2tFw=;
        b=MAxUluw10Z2YhEU5zSWsQV692FlGmxItBr5oCAnj7f5bwjBP47sI7DntPTtDKQwpWO
         3BbhwFQ0yPq/ISVdP/DFXmvG2djSTKPY4rFUopDvH0NBqWpwSNuM3kGDpMTMaBbLNzMo
         wFfjTv0AuxkV6yS8NOcGBi0FweDx+WGAG6nEJ2RmQwUIm7HUE5GhX6QP1Ipl+eczts1L
         f7UTFKd4DclzMVn2H94bvGMono5EwmG7ubOki8tmEqsHU1ftgtZ/DBXbTYrCnjtFiMWo
         1TI65UZnwXRKQ/42Nr5EDjQgHvV7nQI9wkjvNysr253OHFr18cFRHQVYeId+lPd6kAma
         Mw4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=LES4/s1SoGqnxEZLUDOwfpzZJqj0vm0Of1GJ08i2tFw=;
        b=nEWiGmPWIaK65coG+sr6e1Zq+pUmTwAfqB7eumZJmCfl7gJje7Tto7p7swgvexBTy4
         ssu7yyS4G/AMM0p8EdLzKtcgQkmAr3M4k/52x0v3lMjUWb6uZMP3oWIqkFxiy42sqotm
         51L9bGpa1J4FsNShzTSwZMcvxwMzcnT0N6LyYop+0d4uX9ieGdnSMbxHZLMUjyfqRgKG
         SEvQuOq/AiNy82P++XH4+9NukXGZ8fxtcHWr8gihjc//9HigI3rtaIhvyjgortHyVVsu
         UrZX5A4gtzDkfedkcExSiYwZLXhc++zhKboYQQ9mhGyBuKZTUxG3XKxs3H4GmiskuE3s
         BYkQ==
X-Gm-Message-State: AOAM533HoRrFLhj8ghIeYxnXWAnHx8mM9nj1YXGw6Y8wccDXSA2P6fnD
	PmDig14iBE7bZuN4WMWs2h1Z8xIY+2N6xIsPi9E=
X-Google-Smtp-Source: ABdhPJzy4uRdRh+X0AwjnjnyTF3ALqbz8DEVIciMQ2WbCltOSBvvYHvMMyFkRw0EUfKI0HJwgE3n7U1yq4KBkG8IRL8=
X-Received: by 2002:a17:907:2075:: with SMTP id qp21mr5588097ejb.451.1616512935688;
 Tue, 23 Mar 2021 08:22:15 -0700 (PDT)
MIME-Version: 1.0
References: <CPEG0Eq0Bs5v67hrLxbWOjWtit6FjasPMJeIwKkd04@lists.ettus.com> <a41419487b434275ab05fd054e1860c4@campus.tu-berlin.de>
In-Reply-To: <a41419487b434275ab05fd054e1860c4@campus.tu-berlin.de>
From: Julian Casallas <jcasallas2019@gmail.com>
Date: Tue, 23 Mar 2021 11:22:04 -0400
Message-ID: <CAFBYX1U+SaLEbvrp85Kex08-mHJNQ1CPEdY4SeXeZU4PkEn5Vw@mail.gmail.com>
To: "Chang, Kaixin" <k.chang@campus.tu-berlin.de>
Message-ID-Hash: OCRHJYTBB7KZYM56Q6YCS3F5LBTFWYUP
X-Message-ID-Hash: OCRHJYTBB7KZYM56Q6YCS3F5LBTFWYUP
X-MailFrom: jcasallas2019@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Disabling property_propagation_active - [ERROR] [RFNOC::GRAPH::DETAIL]
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OCRHJYTBB7KZYM56Q6YCS3F5LBTFWYUP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4632704173250507990=="

--===============4632704173250507990==
Content-Type: multipart/alternative; boundary="0000000000004e7f4005be35bf78"

--0000000000004e7f4005be35bf78
Content-Type: text/plain; charset="UTF-8"

Thank you, I will try this and publish my findings.

On Tue, Mar 23, 2021 at 6:16 AM Chang, Kaixin <k.chang@campus.tu-berlin.de>
wrote:

> Hi,
>
>
> in c++ there is something like
>
> virtual void connect(const block_id_t& src_blk,
> size_t src_port,
> const block_id_t& dst_blk,
> size_t dst_port,
> bool skip_property_propagation = false) = 0;
> in class
> uhd::rfnoc::rfnoc_graph
> Maybe you can find similar function in python and set this
> skip_property_propagation
>
> ------------------------------
> *From:* jcasallas2019@gmail.com <jcasallas2019@gmail.com>
> *Sent:* 18 March 2021 19:27:46
> *To:* usrp-users@lists.ettus.com
> *Subject:* [USRP-users] Disabling property_propagation_active - [ERROR]
> [RFNOC::GRAPH::DETAIL]
>
>
> Hi all,
>
> I get the following error when running gnuradio with a RFNoC block created
> following UHD 4 guide.
>
>
> [ERROR] [RFNOC::GRAPH::DETAIL] Adding edge 0/passthrough#0:1 -> 0/DUC#0:0
> without disabling property_propagation_active will lead to unresolvable
> graph!
>
> Traceback (most recent call last):
>
> File "/home/wisp/rfnoc_ws/rfnoc-test/examples/pass_through.py", line 236,
> in <module>
>
> main()
>
> File "/home/wisp/rfnoc_ws/rfnoc-test/examples/pass_through.py", line 212,
> in main
>
> tb = top_block_cls()
>
> File "/home/wisp/rfnoc_ws/rfnoc-test/examples/pass_through.py", line 156,
> in __init__
>
> self.rfnoc_graph.connect(self.test_passthrough_0.get_unique_id(), 1,
> self.ettus_rfnoc_duc_0.get_unique_id(), 0, False)
>
> File "/usr/local/lib/python3/dist-packages/ettus/ettus_swig.py", line
> 2045, in connect
>
> return _ettus_swig.rfnoc_graph_sptr_connect(self, *args)
>
> RuntimeError: RfnocError: Adding edge without disabling
> property_propagation_active will lead to unresolvable graph!
>
>
> Has anyone run into this error before and know the reason behind?
>
>
> Thanks
>

--0000000000004e7f4005be35bf78
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you, I will try this and publish my findings.</div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue,=
 Mar 23, 2021 at 6:16 AM Chang, Kaixin &lt;<a href=3D"mailto:k.chang@campus=
.tu-berlin.de">k.chang@campus.tu-berlin.de</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">



<div>

<div id=3D"gmail-m_-7254443442322399834divtagdefaultwrapper" style=3D"font-=
size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=3D=
"ltr">
<p>Hi,</p>
<p><br>
</p>
<p>in c++ there is something like <br>
</p>
<p></p>
<div style=3D"color:rgb(212,212,212);background-color:rgb(30,30,30);font-fa=
mily:&quot;Droid Sans Mono&quot;,monospace,monospace,&quot;Droid Sans Fallb=
ack&quot;;font-weight:normal;font-size:14px;line-height:19px;white-space:pr=
e-wrap">
<div><span style=3D"color:rgb(212,212,212)"></span><span style=3D"color:rgb=
(86,156,214)">virtual</span><span style=3D"color:rgb(212,212,212)">
</span><span style=3D"color:rgb(86,156,214)">void</span><span style=3D"colo=
r:rgb(212,212,212)"> </span>
<span style=3D"color:rgb(220,220,170)">connect</span><span style=3D"color:r=
gb(212,212,212)">(</span><span style=3D"color:rgb(86,156,214)">const</span>=
<span style=3D"color:rgb(212,212,212)">
</span><span style=3D"color:rgb(78,201,176)">block_id_t</span><span style=
=3D"color:rgb(86,156,214)">&amp;</span><span style=3D"color:rgb(212,212,212=
)">
</span><span style=3D"color:rgb(156,220,254)">src_blk</span><span style=3D"=
color:rgb(212,212,212)">,</span></div>
<div><span style=3D"color:rgb(212,212,212)"></span><span style=3D"color:rgb=
(78,201,176)">size_t</span><span style=3D"color:rgb(212,212,212)">
</span><span style=3D"color:rgb(156,220,254)">src_port</span><span style=3D=
"color:rgb(212,212,212)">,</span></div>
<div><span style=3D"color:rgb(212,212,212)"></span><span style=3D"color:rgb=
(86,156,214)">const</span><span style=3D"color:rgb(212,212,212)">
</span><span style=3D"color:rgb(78,201,176)">block_id_t</span><span style=
=3D"color:rgb(86,156,214)">&amp;</span><span style=3D"color:rgb(212,212,212=
)">
</span><span style=3D"color:rgb(156,220,254)">dst_blk</span><span style=3D"=
color:rgb(212,212,212)">,</span></div>
<div><span style=3D"color:rgb(212,212,212)"></span><span style=3D"color:rgb=
(78,201,176)">size_t</span><span style=3D"color:rgb(212,212,212)">
</span><span style=3D"color:rgb(156,220,254)">dst_port</span><span style=3D=
"color:rgb(212,212,212)">,</span></div>
<div><span style=3D"color:rgb(212,212,212)"></span><span style=3D"color:rgb=
(86,156,214)">bool</span><span style=3D"color:rgb(212,212,212)">
</span><span style=3D"color:rgb(156,220,254)">skip_property_propagation</sp=
an><span style=3D"color:rgb(212,212,212)"> =3D
</span><span style=3D"color:rgb(86,156,214)">false</span><span style=3D"col=
or:rgb(212,212,212)">) =3D
</span><span style=3D"color:rgb(181,206,168)">0</span><span style=3D"color:=
rgb(212,212,212)">;</span></div>
</div>
in class
<div style=3D"color:rgb(212,212,212);background-color:rgb(30,30,30);font-fa=
mily:&quot;Droid Sans Mono&quot;,monospace,monospace,&quot;Droid Sans Fallb=
ack&quot;;font-weight:normal;font-size:14px;line-height:19px;white-space:pr=
e-wrap">
<div><span style=3D"color:rgb(78,201,176)">uhd</span><span style=3D"color:r=
gb(212,212,212)">::</span><span style=3D"color:rgb(78,201,176)">rfnoc</span=
><span style=3D"color:rgb(212,212,212)">::</span><span style=3D"color:rgb(7=
8,201,176)">rfnoc_graph</span></div>
</div>
Maybe you can find similar function in python and set this skip_property_pr=
opagation<br>
<p></p>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-7254443442322399834divRplyFwdMsg" dir=3D"ltr"><font fac=
e=3D"Calibri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>Fro=
m:</b> <a href=3D"mailto:jcasallas2019@gmail.com" target=3D"_blank">jcasall=
as2019@gmail.com</a> &lt;<a href=3D"mailto:jcasallas2019@gmail.com" target=
=3D"_blank">jcasallas2019@gmail.com</a>&gt;<br>
<b>Sent:</b> 18 March 2021 19:27:46<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> [USRP-users] Disabling property_propagation_active - [ERROR=
] [RFNOC::GRAPH::DETAIL]</font>
<div>=C2=A0</div>
</div>
<div>
<p>Hi all,</p>
<p>I get the following error when running gnuradio with a RFNoC block creat=
ed following UHD 4 guide.</p>
<p><br>
</p>
<p><code>[ERROR] [RFNOC::GRAPH::DETAIL] Adding edge 0/passthrough#0:1 -&gt;=
 0/DUC#0:0 without disabling property_propagation_active will lead to unres=
olvable graph!</code></p>
<p><code>Traceback (most recent call last):</code></p>
<p><code>File &quot;/home/wisp/rfnoc_ws/rfnoc-test/examples/pass_through.py=
&quot;, line 236, in &lt;module&gt;</code></p>
<p><code>main()</code></p>
<p><code>File &quot;/home/wisp/rfnoc_ws/rfnoc-test/examples/pass_through.py=
&quot;, line 212, in main</code></p>
<p><code>tb =3D top_block_cls()</code></p>
<p><code>File &quot;/home/wisp/rfnoc_ws/rfnoc-test/examples/pass_through.py=
&quot;, line 156, in __init__</code></p>
<p><code>self.rfnoc_graph.connect(self.test_passthrough_0.get_unique_id(), =
1, self.ettus_rfnoc_duc_0.get_unique_id(), 0, False)</code></p>
<p><code>File &quot;/usr/local/lib/python3/dist-packages/ettus/ettus_swig.p=
y&quot;, line 2045, in connect</code></p>
<p><code>return _ettus_swig.rfnoc_graph_sptr_connect(self, *args)</code></p=
>
<p><code>RuntimeError: RfnocError: Adding edge without disabling property_p=
ropagation_active will lead to unresolvable graph!</code></p>
<p><br>
</p>
<p>Has anyone run into this error before and know the reason behind?</p>
<p><br>
</p>
<p>Thanks</p>
</div>
</div>

</blockquote></div>

--0000000000004e7f4005be35bf78--

--===============4632704173250507990==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4632704173250507990==--
