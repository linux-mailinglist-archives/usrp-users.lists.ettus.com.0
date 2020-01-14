Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 57F0E13B13E
	for <lists+usrp-users@lfdr.de>; Tue, 14 Jan 2020 18:45:30 +0100 (CET)
Received: from [::1] (port=32942 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1irQFn-0007U1-Jv; Tue, 14 Jan 2020 12:45:23 -0500
Received: from mail-lj1-f172.google.com ([209.85.208.172]:38346)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1irQFj-0007P3-Ug
 for usrp-users@lists.ettus.com; Tue, 14 Jan 2020 12:45:20 -0500
Received: by mail-lj1-f172.google.com with SMTP id w1so15356279ljh.5
 for <usrp-users@lists.ettus.com>; Tue, 14 Jan 2020 09:44:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jR5qBYd7nt0VLqxB3T8C4n04A2KqsZYgRa5Nn2ePUqg=;
 b=j7ggwt28qZ54+1rLWxf8Od3BJwFg+vAlfwEuBCN1Wk3bSBGn+fhLi7gWqMm9CD88aA
 MaBOo8ElMtdlQY/3AW98VkZdIoDmHtTZsRS51bnOH2sN2qappXsTtJqM1De18CWH+Q11
 35pW1jP3gqPeiGFdIkDNeYfE9Ppztm0fQlLQcGF27usBYfw8t5CPCEaWyLW2LTJTVZLE
 TXzLyQYxwIvDpC4HA+RxiRd/FN0qKzMvVakLUKY3M6ZhBHuI3afHNTtCS+WJYubSDxcW
 tUZtapCK/UFHBG0KIwE3moi+OQvZ8pVxvkt6vvwBTupESEbiAJfoghnocyl5eGsiKMmz
 AWSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jR5qBYd7nt0VLqxB3T8C4n04A2KqsZYgRa5Nn2ePUqg=;
 b=AtZzfBwvt6DBYYwTlK60sJ/Kkn4/r5a/byPTrHiqdnWjX2GmCWR5nC00YO09tb4lve
 2Z3WPbzpSeots440V0HIujg6Op16r4hqF9ZSjRGVeJV6a4d9pmGhk3I/h9ekoUtQoVZm
 1mO7UBTg+i8ccW3HWAUTY+nVKAVTxm8hggEUBO5x4NfccbEnDZQ0/MGnU59bhPZV3A8j
 gCR081FUwi3agMtAGwXiklTR9/f2mhxG7c058460/byCVHBN+IFZ3reh+orLS/2imqKY
 qGZActZnieMSvVJlBIljOGUb5nJVDO1jO+Qz4GP7QkTzuaWV7XlR7XCg7Yg1vqgQW+jU
 3iXA==
X-Gm-Message-State: APjAAAWxZSLnqtdmHam4ktrzbmalN/ey1zv9t9z3JWa2TrDkbk+lgSoR
 kzfn3APtYNH84+1cebTjhHJU70x+HhR+pJSGC/J0EWNF
X-Google-Smtp-Source: APXvYqwC0RNtswcBmvT8hSjzVF/r8rBJe61CSMyl/NOb4cFU31eaGxF0Acwspa8uf68X2pnUR/2iO+VjIZOHPAUKhHc=
X-Received: by 2002:a2e:9248:: with SMTP id v8mr15066955ljg.189.1579023878531; 
 Tue, 14 Jan 2020 09:44:38 -0800 (PST)
MIME-Version: 1.0
References: <20200114110743.34AAD1400E0@zmtaauth01.partage.renater.fr>
 <BN6PR19MB1635C290AC93638924D3755AA4340@BN6PR19MB1635.namprd19.prod.outlook.com>
In-Reply-To: <BN6PR19MB1635C290AC93638924D3755AA4340@BN6PR19MB1635.namprd19.prod.outlook.com>
Date: Tue, 14 Jan 2020 11:44:27 -0600
Message-ID: <CANf970ZmJ0PNwN2KdiXHifn3Nfn0Mr7SRTkfM6UuOKoQgcrhjw@mail.gmail.com>
To: Jeff S <e070832@hotmail.com>
Subject: Re: [USRP-users] using GPIO output to trigger external RF switches
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
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
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6660797400737691414=="
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

--===============6660797400737691414==
Content-Type: multipart/alternative; boundary="0000000000005f3f5d059c1d2557"

--0000000000005f3f5d059c1d2557
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thomas,

To accomplish what you're talking about, I think you'd just need to use
timed commands on both set_tx_rate() and set_gpio_attr(). If these are set
to execute simultaneously, the GPIO line you set will go high on the same
clock cycle as the LO retune.

Sam


On Tue, Jan 14, 2020 at 5:59 AM Jeff S via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Thomas,
>
> I am looking at GPIO right now as well.  As to your question #2 on
> examples, I compiled and am able to run the example I found in the UHD
> software:
>
> uhd/host/examples/gpio.cpp
>
>
> I am able to set individual data lines to experiment with (and eventually
> use as a roadmap for my development) using commands like:
>
> ./gpio --dwell 0 --bitbang --ddr 0x00ff --out 0x0055
>
>
> which I verified works using a logic analyzer.  I eventually want to try
> to create a keying loop, but that may take some FPGA control (?).
>
> Jeff
>
>
> ------------------------------
> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of
> Thomas Harder via USRP-users <usrp-users@lists.ettus.com>
> *Sent:* Tuesday, January 14, 2020 5:07 AM
> *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* [USRP-users] using GPIO output to trigger external RF switches
>
>
> Hi,
>
> I am continuously transmitting a waveform with several RF with 200MSPS
> with my USRP X310 (modified code on the basis of =E2=80=9Ctx_samples_from=
_file.cpp=E2=80=9D
> with a waveform in a .dat file). I would like to get a trigger signal fro=
m
> the USRP when it is changing the tx- frequency which I set in my .dat fil=
e.
>
> Could the GPIO deliver this trigger without changing the image?
>
> I am using the SRAM image with UHD 3.14.1
>
>
>
> A second question is concerning the GPIO example on
> https://files.ettus.com/manual/page_gpio_api.html.
>
> I copied and paced it in the =E2=80=9Ctx_waveforms=E2=80=9D example just =
changing the usrp
> device handle to =E2=80=9Cusrp=E2=80=9D but when I compiled it and starte=
d tx, I couldn=E2=80=99t
> measure any tension on PIN 4 and 6 as defined in the example. Are there
> more examples how to program the GPIO?
>
> Thank you,
>
> Thomas
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000005f3f5d059c1d2557
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thomas,</div><div><br></div><div>To accomplish what y=
ou&#39;re talking about, I think you&#39;d just need to use timed commands =
on both set_tx_rate() and set_gpio_attr(). If these are set to execute simu=
ltaneously, the GPIO line you set will go high on the same clock cycle as t=
he LO retune.</div><div><br></div><div><div><div dir=3D"ltr" class=3D"gmail=
_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div d=
ir=3D"ltr">Sam</div></div></div></div></div><br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 14, 2020=
 at 5:59 AM Jeff S via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.et=
tus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Thomas,</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
I am looking at GPIO right now as well.=C2=A0 As to your question #2 on exa=
mples, I compiled and am able to run the example I found in the UHD softwar=
e:</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<blockquote style=3D"margin-top:0px;margin-bottom:0px">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
uhd/host/examples/gpio.cpp</div>
</blockquote>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
I am able to set individual data lines to experiment with (and eventually u=
se as a roadmap for my development) using commands like:</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<blockquote style=3D"margin-top:0px;margin-bottom:0px">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
./gpio --dwell 0 --bitbang --ddr 0x00ff --out 0x0055<br>
</div>
</blockquote>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
which I verified works using a logic analyzer.=C2=A0 I eventually want to t=
ry to create a keying loop, but that may take some FPGA control (?).</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Jeff<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div id=3D"gmail-m_1960093859765433781Signature">
<div><br>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_1960093859765433781divRplyFwdMsg" dir=3D"ltr"><font styl=
e=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>From=
:</b> USRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.ettus.com" =
target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt; on behalf of T=
homas Harder via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Sent:</b> Tuesday, January 14, 2020 5:07 AM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> [USRP-users] using GPIO output to trigger external RF switc=
hes</font>
<div>=C2=A0</div>
</div>
<div lang=3D"EN-US">
<div>
<p style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font-family:&quot;Calibr=
i&quot;,sans-serif">
Hi,</p>
<p style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font-family:&quot;Calibr=
i&quot;,sans-serif">
I am continuously transmitting a waveform with several RF with 200MSPS with=
 my USRP X310 (modified code on the basis of =E2=80=9Ctx_samples_from_file.=
cpp=E2=80=9D with a waveform in a .dat file). I would like to get a trigger=
 signal from the USRP when it is changing the tx-
 frequency which I set in my .dat file. </p>
<p style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font-family:&quot;Calibr=
i&quot;,sans-serif">
Could the GPIO deliver this trigger without changing the image? </p>
<p style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font-family:&quot;Calibr=
i&quot;,sans-serif">
I am using the SRAM image with UHD 3.14.1</p>
<p style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font-family:&quot;Calibr=
i&quot;,sans-serif">
=C2=A0</p>
<p style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font-family:&quot;Calibr=
i&quot;,sans-serif">
A second question is concerning the GPIO example on <a href=3D"https://file=
s.ettus.com/manual/page_gpio_api.html" target=3D"_blank">
https://files.ettus.com/manual/page_gpio_api.html</a>.</p>
<p style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font-family:&quot;Calibr=
i&quot;,sans-serif">
I copied and paced it in the =E2=80=9Ctx_waveforms=E2=80=9D example just ch=
anging the usrp device handle to =E2=80=9Cusrp=E2=80=9D but when I compiled=
 it and started tx, I couldn=E2=80=99t measure any tension on PIN 4 and 6 a=
s defined in the example. Are there more examples how to program the GPIO?<=
/p>
<p style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font-family:&quot;Calibr=
i&quot;,sans-serif">
Thank you,</p>
<p style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font-family:&quot;Calibr=
i&quot;,sans-serif">
Thomas</p>
</div>
</div>
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

--0000000000005f3f5d059c1d2557--


--===============6660797400737691414==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6660797400737691414==--

