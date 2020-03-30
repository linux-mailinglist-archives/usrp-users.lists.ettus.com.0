Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EC34C197F6E
	for <lists+usrp-users@lfdr.de>; Mon, 30 Mar 2020 17:20:35 +0200 (CEST)
Received: from [::1] (port=52416 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jIwDI-0004KP-GK; Mon, 30 Mar 2020 11:20:32 -0400
Received: from mail-yb1-f175.google.com ([209.85.219.175]:45691)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <sam.reiter8@gmail.com>)
 id 1jIwDE-0004Dw-HA
 for usrp-users@lists.ettus.com; Mon, 30 Mar 2020 11:20:28 -0400
Received: by mail-yb1-f175.google.com with SMTP id g6so9234695ybh.12
 for <usrp-users@lists.ettus.com>; Mon, 30 Mar 2020 08:20:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xeJRUvDijbTkhZmYSfNE3l1dPkArQAF56i3eyRoY62c=;
 b=sQ1CJlkHshUx7XpwozF/TjtzgLIBIIkJ1PvyYCmVfXmXHfjXk0JFAtQic9ZgVzCWpY
 52DfJ89C3en9B7oQDEZYaixFIe30qVlqUQTvDFw5LQ4r/X/R2nzQVe35GDIrfp5jE2eO
 rFlolGiChhu80sZuqRLlGcdJ8+3CpMW2DjWctMW3fBlXDkURVh0vsRiqVThrJ6R3ljPH
 Vn5QSi9VPIKCZuYhBjUAIfcPfBE3aDUQcsLkR35s91ZidY9D6xKrZA81Q6VpmRiD0QW3
 yNcRTIdhMBVyeSCLI5fbGlrz5sfg9mitSOitEn+J10LlweVzqymhilz1vo6qLhErbeqA
 Fuig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xeJRUvDijbTkhZmYSfNE3l1dPkArQAF56i3eyRoY62c=;
 b=eP5ahmc1J7BLvsHRnPgpRXULVMKb73acv1PZY0YD57X66LbvIQjt5q2ObyGlMg9x89
 8lylGpgIDVOMZGksHS/mTwsbqeD/KTosMUjiHPQFStoyeJ95ciXW2qP/vuv3+KgN7ccO
 36RgJw9fxLXAOI1Noy5UN8TpXbuOAOCQsfvAgkP6CRFngIw9JTpNCLtaY33aVRoVpUR3
 l61FJXAu+SsVZEeHQ4hwpnMUhitG3OlLcDpN8l6Q/N0HuXjNvy3VMJOV7utMgdRVBROO
 8I3omLNKvDIh60Pvo0qv5NgrfUL+ig1cq6gD2sxh/6JXt87u3ZzjFfhU4pQ+Mg/eb6wV
 TEQg==
X-Gm-Message-State: ANhLgQ2CuyVH+oWYBWWikN0EGn9QoH60Y9pluQchj/Il59e7PcMmyH50
 yjFDDgwourmHfp0IjLYSv6TkFbzz+ntr7JkkpAE=
X-Google-Smtp-Source: ADFU+vsFMLKAzcN5gFZwPy6OXsaiv4ZvflTt03LFo3Aj2MhyMQvOPJyU/+3dZbjmiHpxSglkEPf8cbNgFj57c394Dzg=
X-Received: by 2002:a25:b8c5:: with SMTP id g5mr20129409ybm.64.1585581587777; 
 Mon, 30 Mar 2020 08:19:47 -0700 (PDT)
MIME-Version: 1.0
References: <10F7328F6AD1354BA6DD787687B66B9001A3050D6A@Maui.in.dynetics.com>
In-Reply-To: <10F7328F6AD1354BA6DD787687B66B9001A3050D6A@Maui.in.dynetics.com>
Date: Mon, 30 Mar 2020 10:19:49 -0500
Message-ID: <CADBWrHi0youfPJH1+VVg5AM7bX_DsBt2vmkP09XAJxevzPmBAg@mail.gmail.com>
To: "Carmichael, Ryan" <Ryan.Carmichael@dynetics.com>
Subject: Re: [USRP-users] X310 UHD 3.15 Lockups
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
Reply-To: Sam Reiter <sam.reiter8@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5903673978422636404=="
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

--===============5903673978422636404==
Content-Type: multipart/alternative; boundary="0000000000004d4b9705a213fb9a"

--0000000000004d4b9705a213fb9a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ryan,

In that example, line 93 sets the USRP's internal sense of time to 0.0s,
after which point this sense of time ticks up. Any timed commands you issue
to the USRP need to occur in the future, relative to the USRP's sense of
time. In this case, you have to give a "--secs" value greater than 0.0 +
the latency for the stream command to be processed and sent to the radio
over Ethernet (probably hundreds of microseconds).

As far as initialization of timespec, I'm not sure what it should
initialize to by default. But for the intermittent, race-condition-esque
behavior you're describing, it couldn't hurt to set all of those times
explicitly.

-Sam

On Mon, Mar 30, 2020 at 9:37 AM Carmichael, Ryan <
Ryan.Carmichael@dynetics.com> wrote:

> *From:* Sam Reiter <sam.reiter8@gmail.com>
> *Sent:* Sunday, March 29, 2020 1:15 PM
> *To:* Carmichael, Ryan <Ryan.Carmichael@dynetics.com>
> *Cc:* usrp-users@lists.ettus.com
> *Subject:* [EXTERNAL] Re: [USRP-users] X310 UHD 3.15 Lockups
>
>
>
> I would suspect that your setting of the time_spec with an uninitialized
> value could be a problem. rx_multi_samples sets up multi-channel RX with =
an
> initialized time_spec:
>
>
>
>
> https://github.com/EttusResearch/uhd/blob/UHD-3.15.LTS/host/examples/rx_m=
ulti_samples.cpp
>
>
>
> Can you compile and run that example on 3.15?
>
>
>
> -Sam
>
>
>
>
>
>
>
> Sam,
>
>
>
> Thanks for the suggestion. time_spec uninitialized takes the default of
> zero, right?
>
>
>
> If I run rx_multi_samples with --secs 0, I get an error =E2=80=9CError: R=
eceiver
> error ERROR_CODE_LATE_COMMAND=E2=80=9D, which we aren=E2=80=99t seeing in=
 our usage
> (instead we just see it never return).
>
>
>
> If I run rx_multi_samples with another value (like --secs 0.1) it works
> fine.
>
>
>
> But the code I showed works 99.9% of the time. But when we run it for
> hours on end, it eventually locks up. I can try running rx_multi_samples
> with a very large --nsamps but that testing will take a while.
>
>
>
> Thanks,
>
> Ryan
>
> * ------------------------------ The information contained in this
> message, and any attachments, may contain privileged and/or proprietary
> information that is intended solely for the person or entity to which it =
is
> addressed. Moreover, it may contain export restricted technical data
> controlled by Export Administration Regulations (EAR) or the Internationa=
l
> Traffic in Arms Regulations (ITAR). Any review, retransmission,
> dissemination, or re-export to foreign or domestic entities by anyone oth=
er
> than the intended recipient in accordance with EAR and/or ITAR regulation=
s
> is prohibited. *
>

--0000000000004d4b9705a213fb9a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Ryan,<div><br></div><div>In that example, line 93 sets the=
 USRP&#39;s internal sense of time to 0.0s, after which point this sense of=
 time ticks up. Any timed commands you issue to the USRP need to occur in t=
he future, relative to the USRP&#39;s sense of time. In this case, you have=
 to give a &quot;--secs&quot; value greater than 0.0=C2=A0+ the latency for=
 the stream command to be processed and sent to the radio over Ethernet (pr=
obably hundreds of microseconds).</div><div><br></div><div>As far as initia=
lization=C2=A0of timespec, I&#39;m not sure what it should initialize to by=
 default. But for the intermittent, race-condition-esque behavior you&#39;r=
e describing, it couldn&#39;t hurt to set all of those times explicitly.=C2=
=A0</div><div><br></div><div>-Sam</div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Mar 30, 2020 at 9:37 AM Carm=
ichael, Ryan &lt;<a href=3D"mailto:Ryan.Carmichael@dynetics.com" target=3D"=
_blank">Ryan.Carmichael@dynetics.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:Calibri=
,sans-serif">From:</span></b><span style=3D"font-size:11pt;font-family:Cali=
bri,sans-serif"> Sam Reiter &lt;<a href=3D"mailto:sam.reiter8@gmail.com" ta=
rget=3D"_blank">sam.reiter8@gmail.com</a>&gt;
<br>
<b>Sent:</b> Sunday, March 29, 2020 1:15 PM<br>
<b>To:</b> Carmichael, Ryan &lt;<a href=3D"mailto:Ryan.Carmichael@dynetics.=
com" target=3D"_blank">Ryan.Carmichael@dynetics.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> [EXTERNAL] Re: [USRP-users] X310 UHD 3.15 Lockups<u></u><u>=
</u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal">I would suspect that your setting of the time_spec w=
ith an uninitialized value could be a problem. rx_multi_samples sets up mul=
ti-channel RX with an initialized time_spec:<u></u><u></u></p>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><a href=3D"https://github.com/EttusResearch/uhd/blob=
/UHD-3.15.LTS/host/examples/rx_multi_samples.cpp" target=3D"_blank">https:/=
/github.com/EttusResearch/uhd/blob/UHD-3.15.LTS/host/examples/rx_multi_samp=
les.cpp</a><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Can you compile and run that example on 3.15?<u></u>=
<u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">-Sam<span style=3D"color:rgb(31,73,125)"><u></u><u><=
/u></span></p>
<div style=3D"border-top:none;border-right:none;border-left:none;border-bot=
tom:1pt solid windowtext;padding:0in 0in 1pt">
<p class=3D"MsoNormal" style=3D"border:none;padding:0in"><span style=3D"fon=
t-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)"><u></u>=C2=
=A0<u></u></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">Sam,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">Thanks for the suggestion. time_spec uniniti=
alized takes the default of zero, right?
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">If I run rx_multi_samples with --secs 0, I g=
et an error =E2=80=9CError: Receiver error ERROR_CODE_LATE_COMMAND=E2=80=9D=
, which we aren=E2=80=99t seeing in our usage (instead we just
 see it never return).<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">If I run rx_multi_samples with another value=
 (like --secs 0.1) it works fine.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">But the code I showed works 99.9% of the tim=
e. But when we run it for hours on end, it eventually locks up. I can try r=
unning rx_multi_samples with a very large
 --nsamps but that testing will take a while.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">Thanks,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">Ryan
<u></u><u></u></span></p>
</div>
</div>
</div>
<i><br>
<hr>
<p style=3D"font-size:8pt;line-height:9pt">The information contained in thi=
s message, and any attachments, may contain privileged and/or proprietary i=
nformation that is intended solely for the person or entity to which it is =
addressed.
 Moreover, it may contain export restricted technical data controlled by Ex=
port Administration Regulations (EAR) or the International Traffic in Arms =
Regulations (ITAR). Any review, retransmission, dissemination, or re-export=
 to foreign or domestic entities
 by anyone other than the intended recipient in accordance with EAR and/or =
ITAR regulations is prohibited.</p>
</i>
</div>

</blockquote></div>

--0000000000004d4b9705a213fb9a--


--===============5903673978422636404==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5903673978422636404==--

