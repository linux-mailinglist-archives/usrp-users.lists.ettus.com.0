Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D1CB52E8DBE
	for <lists+usrp-users@lfdr.de>; Sun,  3 Jan 2021 19:24:00 +0100 (CET)
Received: from [::1] (port=58966 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kw82m-0002sZ-ND; Sun, 03 Jan 2021 13:23:56 -0500
Received: from postman.dtnt.info ([62.219.91.51]:35728)
 by mm2.emwd.com with esmtp (Exim 4.93)
 (envelope-from <ofer@navigicom.com>) id 1kw82h-0002nZ-WB
 for usrp-users@lists.ettus.com; Sun, 03 Jan 2021 13:23:52 -0500
Received: from o.dtnt.email (o.dtnt.email [62.219.91.154])
 by postman.dtnt.info (Postfix) with ESMTPS id E3A3B454B7
 for <usrp-users@lists.ettus.com>; Sun,  3 Jan 2021 20:22:32 +0200 (IST)
Received: from o.dtnt.email (o.dtnt.email [127.0.0.1])
 by o.dtnt.email (Postfix) with ESMTP id A491B9F992
 for <usrp-users@lists.ettus.com>; Sun,  3 Jan 2021 20:22:32 +0200 (IST)
X-Virus-Scanned: Debian amavisd-new at o.dtnt.email
Received: from o.dtnt.email ([127.0.0.1])
 by o.dtnt.email (o.dtnt.email [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id Hnz1VTEVoYb1 for <usrp-users@lists.ettus.com>;
 Sun,  3 Jan 2021 20:22:31 +0200 (IST)
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com
 [209.85.167.171])
 by o.dtnt.email (Postfix) with ESMTPSA id 259489F91F
 for <usrp-users@lists.ettus.com>; Sun,  3 Jan 2021 20:22:30 +0200 (IST)
Received: by mail-oi1-f171.google.com with SMTP id 9so29647349oiq.3
 for <usrp-users@lists.ettus.com>; Sun, 03 Jan 2021 10:22:30 -0800 (PST)
X-Gm-Message-State: AOAM532n7D9dgmoqeB/K/iOiv2so+ZVZ96Sq9OELruKAr1acG+IoR8xe
 xpjJK6M3+OYpjg06ciNp4hHU6j1QU1ekRlnUlxo=
X-Google-Smtp-Source: ABdhPJz8OUHozj3bcH35aOR5MRiXOovWnLTWNhfzgn+cJKBqyyKDL8ZleyOdLf125nhDjvDwUsrltQJIvxkM5XF1BY4=
X-Received: by 2002:aca:498e:: with SMTP id
 w136mr15924906oia.147.1609698148857; 
 Sun, 03 Jan 2021 10:22:28 -0800 (PST)
MIME-Version: 1.0
References: <mailman.26.1609693202.24404.usrp-users_lists.ettus.com@lists.ettus.com>
In-Reply-To: <mailman.26.1609693202.24404.usrp-users_lists.ettus.com@lists.ettus.com>
Date: Sun, 3 Jan 2021 20:22:17 +0200
X-Gmail-Original-Message-ID: <CACDReSyX4EEtLfu2uViVwFTU_J=XhP4=_TM_MT1fwBihi5LEqw@mail.gmail.com>
Message-ID: <CACDReSyX4EEtLfu2uViVwFTU_J=XhP4=_TM_MT1fwBihi5LEqw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
X-DTNT-MailScanner-Information: Please contact the ISP for more information
X-DTNT-MailScanner-ID: E3A3B454B7.A71BB
X-DTNT-MailScanner: Found to be clean
X-DTNT-MailScanner-From: ofer@navigicom.com
X-Spam-Status: No
Subject: Re: [USRP-users] Hacking E310 units for synchronization
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
From: Ofer Saferman via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ofer Saferman <ofer@navigicom.com>
Content-Type: multipart/mixed; boundary="===============1299105587256623410=="
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

--===============1299105587256623410==
Content-Type: multipart/alternative; boundary="0000000000005bbd2d05b8030eb5"

--0000000000005bbd2d05b8030eb5
Content-Type: text/plain; charset="UTF-8"

Hello Marcus,

Thank you for your reply.

Is there support today in software for direct register writes to the AD9361
device for the E310?
If there is, I think I can use SYNC and a modified firmware to implement
Multi-chip synchronization.

Regards,
Ofer Saferman

On Sun, Jan 3, 2021 at 7:00 PM <usrp-users-request@lists.ettus.com> wrote:

> ---------- Forwarded message ----------
> From: "Marcus D. Leech" <patchvonbraun@gmail.com>
> To: usrp-users@lists.ettus.com
> Cc:
> Bcc:
> Date: Sat, 02 Jan 2021 15:18:06 -0500
> Subject: Re: [USRP-users] Hacking E310 units for synchronization
> On 01/02/2021 02:44 AM, Ofer Saferman via USRP-users wrote:
> > Hello,
> >
> > I must say that I am a bit frustrated.
> > When I purchased multiple E310 units it was with the hope I will be
> > able to synchronize them mainly based on:
> >
> https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_Devices,
>
> > it shows the E310 as MIMO capable and having a reference clock input.
> > Of course, now I know that not to be true. At least the reference
> > clock part. It seems that the MIMO part might be incorrect as well.
> >
> > If I hack the clock and patch an external clock connector to be used
> > instead of the internal TCXO will I be able, using existing UHD
> > software and firmware, to synchronize multiple E310 units?
> >
> > I will be able to provide a common clock to multiple units and I will
> > be able to provide a 1-PPS signal through the SYNC pins of multiple
> > units that is generated from the same common clock.
> > I need these E310 to transmit and have their base-band samples
> > perfectly time aligned.
> >
> > How is multi-chip synchronization of the AD9361 devices being done by
> > UHD? By using the SYNC pin and setting
> > usrp->set_time_source("external")? Is it enough? Do I need to handle
> > it on my own? How?
> >
> > I figured the internal TCXO frequency of E310 is 40 MHz. Can I provide
> > an external clock of different frequency? Maybe 10 MHz? Or does it
> > require a major change in software or firmware?
> >
> > Does anybody have a different idea how to get E310 units synchronized
> > at sample level without voiding the warranty and hacking an external
> > clock?
> >
> > Please help.
> >
> > Regards,
> > Ofer Saferman
> >
> >
> The E310 was never designed for multi-unit MIMO, although it does 2x2
> MIMO just fine, and there are plenty of folks using it for that,
>    including stacks for various wireless protocols.  The AD9361
> inherently supports 2x2 MIMO due to the shared LO architecture between
>    the two TX and two RX channels.
>
> The AD9361 SYNC_IN pin does get tied to the Zynq FPGA, but the UHD
> code-base doesn't use it.    I'll note that for most telecom-type
>    MIMO implementations, zero-phase-offset is NOT a requirement, just
> ongoing phase coherence.
>
> Similarly the B2xx series does 2x2 MIMO just fine, but it was never
> designed for multi-unit MIMO, although due to the clocking architecture,
>    the B2xx could likely (no guarantees) be made to do a multi-unit MIMO
> implementation.
>
> The SYNC input connector on the E310 is designed to:
>
>    (A) Provide a higher longer-term quality than the on-board clock.
>    (B) Allow for TDM synchronization on system deployments where that is
> important.
>
> Due to the high residual phase-noise of the DPLL implementation on the
> SYNC input on the E310, it cannot be used to produce a working
>    multi-unit MIMO (or any other kind of phase-coherent) application.
>

-- 
This message has been scanned for viruses and
dangerous content by MailScanner, and is
believed to be clean.


--0000000000005bbd2d05b8030eb5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hello Marcus,</div><div dir=3D"ltr"><br><=
/div><div>Thank you for your reply.</div><div><br></div><div>Is there suppo=
rt today in software for direct register writes to the AD9361 device for th=
e E310?</div><div>If there is, I think I can use SYNC and a modified firmwa=
re to implement Multi-chip synchronization.<br></div><div><br></div><div>Re=
gards,</div><div>Ofer Saferman<br></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Sun, Jan 3, 2021 at 7:00 PM &lt;<a hre=
f=3D"mailto:usrp-users-request@lists.ettus.com">usrp-users-request@lists.et=
tus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">---------- Forwarded message ----------<br>From:=C2=A0&quot;Marcus D=
. Leech&quot; &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_bla=
nk">patchvonbraun@gmail.com</a>&gt;<br>To:=C2=A0<a href=3D"mailto:usrp-user=
s@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>Cc:=
=C2=A0<br>Bcc:=C2=A0<br>Date:=C2=A0Sat, 02 Jan 2021 15:18:06 -0500<br>Subje=
ct:=C2=A0Re: [USRP-users] Hacking E310 units for synchronization<br>On 01/0=
2/2021 02:44 AM, Ofer Saferman via USRP-users wrote:<br>
&gt; Hello,<br>
&gt;<br>
&gt; I must say that I am a bit frustrated.<br>
&gt; When I purchased multiple E310 units it was with the hope I will be <b=
r>
&gt; able to synchronize them mainly based on: <br>
&gt; <a href=3D"https://kb.ettus.com/Synchronization_and_MIMO_Capability_wi=
th_USRP_Devices" rel=3D"noreferrer" target=3D"_blank">https://kb.ettus.com/=
Synchronization_and_MIMO_Capability_with_USRP_Devices</a>, <br>
&gt; it shows the E310 as MIMO capable and having a reference clock input.<=
br>
&gt; Of course, now I know that not to be true. At least the reference <br>
&gt; clock part. It seems that the MIMO part might be incorrect as well.<br>
&gt;<br>
&gt; If I hack the clock and patch an external clock connector to be used <=
br>
&gt; instead of the internal TCXO will I be able, using existing UHD <br>
&gt; software and firmware, to synchronize multiple E310 units?<br>
&gt;<br>
&gt; I will be able to provide a common clock to multiple units and I will =
<br>
&gt; be able to provide a 1-PPS signal through the SYNC pins of multiple <b=
r>
&gt; units that is generated from the same common clock.<br>
&gt; I need these E310 to transmit and have their base-band samples <br>
&gt; perfectly time aligned.<br>
&gt;<br>
&gt; How is multi-chip synchronization of the AD9361 devices being done by =
<br>
&gt; UHD? By using the SYNC pin and setting <br>
&gt; usrp-&gt;set_time_source(&quot;external&quot;)? Is it enough? Do I nee=
d to handle <br>
&gt; it on my own? How?<br>
&gt;<br>
&gt; I figured the internal TCXO frequency of E310 is 40 MHz. Can I provide=
 <br>
&gt; an external clock of different frequency? Maybe 10 MHz? Or does it <br>
&gt; require a major change in software or firmware?<br>
&gt;<br>
&gt; Does anybody have a different idea how to get E310 units synchronized =
<br>
&gt; at sample level without voiding the warranty and hacking an external <=
br>
&gt; clock?<br>
&gt;<br>
&gt; Please help.<br>
&gt;<br>
&gt; Regards,<br>
&gt; Ofer Saferman<br>
&gt;<br>
&gt;<br>
The E310 was never designed for multi-unit MIMO, although it does 2x2 <br>
MIMO just fine, and there are plenty of folks using it for that,<br>
=C2=A0 =C2=A0including stacks for various wireless protocols.=C2=A0 The AD9=
361 <br>
inherently supports 2x2 MIMO due to the shared LO architecture between<br>
=C2=A0 =C2=A0the two TX and two RX channels.<br>
<br>
The AD9361 SYNC_IN pin does get tied to the Zynq FPGA, but the UHD <br>
code-base doesn&#39;t use it.=C2=A0 =C2=A0 I&#39;ll note that for most tele=
com-type<br>
=C2=A0 =C2=A0MIMO implementations, zero-phase-offset is NOT a requirement, =
just <br>
ongoing phase coherence.<br>
<br>
Similarly the B2xx series does 2x2 MIMO just fine, but it was never <br>
designed for multi-unit MIMO, although due to the clocking architecture,<br>
=C2=A0 =C2=A0the B2xx could likely (no guarantees) be made to do a multi-un=
it MIMO <br>
implementation.<br>
<br>
The SYNC input connector on the E310 is designed to:<br>
<br>
=C2=A0 =C2=A0(A) Provide a higher longer-term quality than the on-board clo=
ck.<br>
=C2=A0 =C2=A0(B) Allow for TDM synchronization on system deployments where =
that is <br>
important.<br>
<br>
Due to the high residual phase-noise of the DPLL implementation on the <br>
SYNC input on the E310, it cannot be used to produce a working<br>
=C2=A0 =C2=A0multi-unit MIMO (or any other kind of phase-coherent) applicat=
ion.<br>
</blockquote><div>=C2=A0</div></div></div>
<br />--=20
<br />This message has been scanned for viruses and
<br />dangerous content by
<a href=3D"http://www.mailscanner.info/"><b>MailScanner</b></a>, and is
<br />believed to be clean.


--0000000000005bbd2d05b8030eb5--


--===============1299105587256623410==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1299105587256623410==--

