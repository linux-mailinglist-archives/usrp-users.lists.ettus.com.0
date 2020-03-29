Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A508196F26
	for <lists+usrp-users@lfdr.de>; Sun, 29 Mar 2020 20:15:51 +0200 (CEST)
Received: from [::1] (port=53068 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jIcTJ-0007z7-Jz; Sun, 29 Mar 2020 14:15:45 -0400
Received: from mail-yb1-f170.google.com ([209.85.219.170]:36410)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <sam.reiter8@gmail.com>)
 id 1jIcTF-0007pl-59
 for usrp-users@lists.ettus.com; Sun, 29 Mar 2020 14:15:41 -0400
Received: by mail-yb1-f170.google.com with SMTP id i4so7762740ybl.3
 for <usrp-users@lists.ettus.com>; Sun, 29 Mar 2020 11:15:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zQp0AvyEAUqZYUb3Yh9BwwQgS9WQrwTWlfJ+Yzrd5Uo=;
 b=fsaJGCaFurTWSTa2pXFjaZYiquJzaieq6HAYLBfUkUbTEfY7YngBdqIh8W0euNy5yJ
 Q5sA2Pk5bHUxm3pL0IXq8kVzTxNVMwqgsj4XS+aM/XkDK0jY5hc74/3A9MLStaqL6U9+
 fe9GHHiGqRMSRoQtD6GzLtdBE2+loFFdsqpvbibBJtNFgJ/DLqpmnuVdUi92CFAzwr16
 2cHBiCkkJYKR2gFnOYnmjVMGqBzATmgNSxd9sA5wYCv0vwGVfDNmOoJdWLecsY6QMoAS
 hvURGoaqFaX+G7KGcTYigRkuKWa3UKaTt2I33XjlX86hP00mT9wOu0Gj/E25yJH0EakX
 P8AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zQp0AvyEAUqZYUb3Yh9BwwQgS9WQrwTWlfJ+Yzrd5Uo=;
 b=gO8SKtHEVqjzMMhRqgLzhR9FR+yiCcvQggms86OdG7eKwo4gd6JLVd/6Uhqc+HDYCC
 2cnxfZOSw3LFE8osG9VW/B1BEJF2Hv6jdrDQBtwHG/Z61HsMO2GScjvugqJomPL5lmvT
 zZfQBvr9CQFaajWmmgo2BRXnIg3FFBZBB/8PR9XLLA2h+4TqGtYpNMWXSrR/DU2huSO/
 e36ZXT37iawMBYmdhSA5TDYKkch9p5oNgaDrurtVtb7gFCQnWxxzxLd3aod18ZH/xogQ
 /087g3n8UiixNwHeHlvvNGU3325qhjxXTIfOJFg1JcY8M5U6wmT4VhvOo+rLaI5e8aUI
 5BGg==
X-Gm-Message-State: ANhLgQ3j8K64VJt3BkarfTaY9xuGO8ILnwEZnY/tTn6IYsEezMd9b5cu
 cy4chzP2RSCf4M5Ls/oMCnw462QecAaqQV8FkNw=
X-Google-Smtp-Source: ADFU+vs2qJ+VywOQNwLhWv12IW/mkUJUeIpgoKdl0HkGr7laE7zXvNF3FRa7fKR9DugGuJpmu72KAvPPHiq/k2Jrl7I=
X-Received: by 2002:a25:bb4c:: with SMTP id b12mr13589681ybk.391.1585505700371; 
 Sun, 29 Mar 2020 11:15:00 -0700 (PDT)
MIME-Version: 1.0
References: <10F7328F6AD1354BA6DD787687B66B9001A3050C58@Maui.in.dynetics.com>
In-Reply-To: <10F7328F6AD1354BA6DD787687B66B9001A3050C58@Maui.in.dynetics.com>
Date: Sun, 29 Mar 2020 13:14:57 -0500
Message-ID: <CADBWrHjTYBLN3=3_oyq6UeE9RBF-U9ypiDcyiCPXhAHjQnLOwA@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============5707336089321040018=="
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

--===============5707336089321040018==
Content-Type: multipart/alternative; boundary="0000000000000f600f05a2025019"

--0000000000000f600f05a2025019
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I would suspect that your setting of the time_spec with an uninitialized
value could be a problem. rx_multi_samples sets up multi-channel RX with an
initialized time_spec:

https://github.com/EttusResearch/uhd/blob/UHD-3.15.LTS/host/examples/rx_mul=
ti_samples.cpp

Can you compile and run that example on 3.15?

-Sam

On Fri, Mar 27, 2020 at 4:33 PM Carmichael, Ryan via USRP-users <
usrp-users@lists.ettus.com> wrote:

> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> *On Behalf Of *Ma=
rcus
> D. Leech via USRP-users
> *Sent:* Friday, March 27, 2020 4:27 PM
> *To:* usrp-users@lists.ettus.com
> *Subject:* [EXTERNAL] Re: [USRP-users] X310 UHD 3.15 Lockups
>
>
>
> On 03/27/2020 04:15 PM, Carmichael, Ryan via USRP-users wrote:
>
> I recently updated from 3.11.1 to 3.15LTS to try to resolve a receive
> lockup problem, however it still appears to be happening (albeit seemingl=
y
> less frequently).
>
>
>
> Essentially, stream->recv() gets into a state where it never returns, eve=
n
> though we are using the default timeout (0.1). Verified via debugger that
> recv() itself is just hanging.
>
>
>
> We essentially have a function A that roughly looks like the code below
> (I=E2=80=99m not leaving much out). We call this function A over and over=
 quite
> frequently. Are there any red flags here?
>
>
>
> A() {
>
>     uhd::stream_cmd_t
> rxStreamCmd(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE);
>
>     rxStreamCmd.stream_now =3D true;
>
>     rxStreamCmd.time_spec =3D uhd::time_spec_t();
>
>     rxStreamCmd.num_samps =3D nSamples_a;
>
>
>
>     rxStream ->issue_stream_cmd(rxStreamCmd);
>
>
>
>     numReceived =3D 0;
>
>     uhd::rx_metadata_t metaData
>
>
>
>     while (numReceived < nSamples_a) {
>
>         .
>
>         .
>
>         // calculate numLeftToRead
>
>         .
>
>         .
>
>         uint samplesReceived =3D rxStream->recv(buffer, numLeftToRead,
> metaData);
>
>         .
>
>         .
>
>         // calculate numReceived
>
>     }
>
> }
>
>
>
> This =E2=80=9Clockup=E2=80=9D typically does not require the radio to be =
restarted, just
> my application.
>
>
> * ------------------------------ *
>
>
>
> Windows or Linux?   Native or VM?
>
> My gut says this is an IP/Network stack issue.
>
>
> * ------------------------------ *
>
>
>
> Native, RHEL 7 - Linux localhost.localdomain 3.10.0-1062.1.1.el7.x86_64 #=
1
> SMP Tue Aug 13 18:39:59 UTC 2019 x86_64 x86_64 x86_64 GNU/Linux
>
> 10 GB NICs. MTUs set to 9000.
>
> 0b:00.0 Ethernet controller: Intel Corporation 82599ES 10-Gigabit SFI/SFP=
+
> Network Connection (rev 01)
>
> 0b:00.1 Ethernet controller: Intel Corporation 82599ES 10-Gigabit SFI/SFP=
+
> Network Connection (rev 01)
>
> 0d:00.0 Ethernet controller: Intel Corporation 82599ES 10-Gigabit SFI/SFP=
+
> Network Connection (rev 01)
>
> 0d:00.1 Ethernet controller: Intel Corporation 82599ES 10-Gigabit SFI/SFP=
+
> Network Connection (rev 01)
>
>
>
>
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
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000000f600f05a2025019
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I would suspect that your setting of the time_spec with an=
 uninitialized value could be a problem. rx_multi_samples sets up multi-cha=
nnel RX with an initialized time_spec:<div><br></div><div><a href=3D"https:=
//github.com/EttusResearch/uhd/blob/UHD-3.15.LTS/host/examples/rx_multi_sam=
ples.cpp">https://github.com/EttusResearch/uhd/blob/UHD-3.15.LTS/host/examp=
les/rx_multi_samples.cpp</a><br></div><div><br></div><div>Can you compile a=
nd run that example on 3.15?</div><div><br></div><div>-Sam</div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Mar=
 27, 2020 at 4:33 PM Carmichael, Ryan via USRP-users &lt;<a href=3D"mailto:=
usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex">





<div bgcolor=3D"white" lang=3D"EN-US">
<div class=3D"gmail-m_-1513188838538630577WordSection1">
<p class=3D"MsoNormal"><b><span style=3D"color:windowtext">From:</span></b>=
<span style=3D"color:windowtext"> USRP-users &lt;<a href=3D"mailto:usrp-use=
rs-bounces@lists.ettus.com" target=3D"_blank">usrp-users-bounces@lists.ettu=
s.com</a>&gt;
<b>On Behalf Of </b>Marcus D. Leech via USRP-users<br>
<b>Sent:</b> Friday, March 27, 2020 4:27 PM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> [EXTERNAL] Re: [USRP-users] X310 UHD 3.15 Lockups<u></u><u>=
</u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt">On 03/27/2020 04:15 PM,=
 Carmichael, Ryan via USRP-users wrote:<span style=3D"font-size:12pt"><u></=
u><u></u></span></p>
</div>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<p class=3D"MsoNormal">I recently updated from 3.11.1 to 3.15LTS to try to =
resolve a receive lockup problem, however it still appears to be happening =
(albeit seemingly less frequently).
<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">Essentially, stream-&gt;recv() gets into a state whe=
re it never returns, even though we are using the default timeout (0.1). Ve=
rified via debugger that recv() itself is just hanging.<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">We essentially have a function A that roughly looks =
like the code below (I=E2=80=99m not leaving much out). We call this functi=
on A over and over quite frequently. Are there any red flags here?<u></u><u=
></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">A() {<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0 =C2=A0=C2=A0uhd::stream_cmd_t rxStreamCmd(uhd=
::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE);<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 rxStreamCmd.stream_now =3D true;<=
u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 rxStreamCmd.time_spec =3D uhd::ti=
me_spec_t();<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 rxStreamCmd.num_samps =3D nSample=
s_a;<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 rxStream -&gt;issue_stream_cmd(rx=
StreamCmd);<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 numReceived =3D 0;<u></u><u></u><=
/p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 uhd::rx_metadata_t metaData<u></u=
><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 while (numReceived &lt; nSamples_=
a) {<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .<u></u><=
u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .<u></u><=
u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 // calcul=
ate numLeftToRead<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .<u></u><=
u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .<u></u><=
u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 uint samp=
lesReceived =3D rxStream-&gt;recv(buffer, numLeftToRead, metaData);<u></u><=
u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .<u></u><=
u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .<u></u><=
u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 // calcul=
ate numReceived<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 }<u></u><u></u></p>
<p class=3D"MsoNormal">}<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">This =E2=80=9Clockup=E2=80=9D typically does not req=
uire the radio to be restarted, just my application.
<u></u><u></u></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:12pt;font-family:&quot;T=
imes New Roman&quot;,serif"><u></u>=C2=A0<u></u></span></i></p>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><i><s=
pan style=3D"font-size:12pt;font-family:&quot;Times New Roman&quot;,serif">
<hr size=3D"2" width=3D"100%" align=3D"center">
</span></i></div>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt;font-family:&quot;Time=
s New Roman&quot;,serif"><u></u>=C2=A0<u></u></span></p>
</blockquote>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt;font-family:&quot;Time=
s New Roman&quot;,serif">Windows or Linux?=C2=A0=C2=A0 Native or VM?<br>
<br>
My gut says this is an IP/Network stack issue.<br>
<br>
<br>
<i><u></u><u></u></i></span></p>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><i><s=
pan style=3D"font-size:12pt;font-family:&quot;Times New Roman&quot;,serif">
<hr size=3D"2" width=3D"100%" align=3D"center">
</span></i></div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"color:rg=
b(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"color:rg=
b(31,73,125)">Native, RHEL 7 - Linux localhost.localdomain 3.10.0-1062.1.1.=
el7.x86_64 #1 SMP Tue Aug 13 18:39:59 UTC 2019 x86_64 x86_64 x86_64 GNU/Lin=
ux<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"color:rg=
b(31,73,125)">10 GB NICs. MTUs set to 9000.<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"color:rg=
b(31,73,125)">0b:00.0 Ethernet controller: Intel Corporation 82599ES 10-Gig=
abit SFI/SFP+ Network Connection (rev 01)<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"color:rg=
b(31,73,125)">0b:00.1 Ethernet controller: Intel Corporation 82599ES 10-Gig=
abit SFI/SFP+ Network Connection (rev 01)<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"color:rg=
b(31,73,125)">0d:00.0 Ethernet controller: Intel Corporation 82599ES 10-Gig=
abit SFI/SFP+ Network Connection (rev 01)<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"color:rg=
b(31,73,125)">0d:00.1 Ethernet controller: Intel Corporation 82599ES 10-Gig=
abit SFI/SFP+ Network Connection (rev 01)<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"color:rg=
b(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"color:rg=
b(31,73,125)"><u></u>=C2=A0<u></u></span></p>
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

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000000f600f05a2025019--


--===============5707336089321040018==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5707336089321040018==--

