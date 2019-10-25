Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 07032E4BEC
	for <lists+usrp-users@lfdr.de>; Fri, 25 Oct 2019 15:20:26 +0200 (CEST)
Received: from [::1] (port=32934 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iNzVs-0005ug-UA; Fri, 25 Oct 2019 09:20:20 -0400
Received: from mail-qt1-f175.google.com ([209.85.160.175]:37457)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <rkossler@nd.edu>) id 1iNzVp-0005j6-8G
 for USRP-users@lists.ettus.com; Fri, 25 Oct 2019 09:20:17 -0400
Received: by mail-qt1-f175.google.com with SMTP id g50so3177600qtb.4
 for <USRP-users@lists.ettus.com>; Fri, 25 Oct 2019 06:19:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yxwZu738rnv44QoY4sgWn/9Qyj9Qa7jQxryV9adYqoY=;
 b=QWZW4GOS/fnmqSbjA4Rv9uSFAFSYjsTyU7astmbGlEPU4RhI9az1HFGm3eO3rMLtKO
 BcXoD4W5KAwsxPxUwnsCdT1GBYlJf1dxS6lKMOSCf+G8LTb6q8wo9FkPfhMjJ+Vw966+
 aCGcHnNH6ffbI36EoXcIhEq9z7ls/+hSzirLd5PBJwS0V3w6S0VkebnctYYaj3fHp1V8
 bj17heMT/Q4GzJD5y8Wp9Wu8n7GXBjZ2MfKQkuly+tgQHkxln3LdF639QEl4RkBtxVYP
 0+TA8/N6i+pEc296weVHQQWE+cPYe7JezrVWGat9Vxy13G3MSEwn6GKRp6y9CQnkGvj+
 NevQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yxwZu738rnv44QoY4sgWn/9Qyj9Qa7jQxryV9adYqoY=;
 b=o4wJtiMK5iCT1EJJNEJoyDQ1MEpCSkdyr8RNhB3T8iofNmKBR4bz4AV+iT5OS37+P8
 fl3UayxgBOIIrEgMbu2QpxSfkW0yBUy9MHEFnnD7sgF2m/1Uyu+0NMhvDLKd8e50rJcX
 n7yAMt/OvX/bRffKiizmK/TxyXQwqcnQ9xYjQx9dR3NxynlzMtvg4aOsjrfsXbMXZanl
 IS+5D+offttdsPcIKlPR9AqPxbfBiOrSOxXlRQiCF9o83GlkrHaSIcPmiZnP8lyRWTgI
 T6P32VHZKLsKWPWuOJXryNkgwRgeh2XpbYhGL7ftWObKPlhlpFqtp+0iszPNklyHGgQ1
 FKMQ==
X-Gm-Message-State: APjAAAWD24ozGEgaKowSfLvksziVyNH+NnQvJR4C7RCuFEIF9hBfty1o
 uoOMCecbBomRXRiKUH2xSLqemJezFvM3vo9EKDooOBdb
X-Google-Smtp-Source: APXvYqwj0Z6lfhJO52opSJSqf568sAzabY+QGZcyR6pfMcobAnL1XobytMZJZzENLDliwNujnY5Gn6YoJXjDy+Hhpkk=
X-Received: by 2002:ac8:2ce5:: with SMTP id 34mr2987162qtx.308.1572009576351; 
 Fri, 25 Oct 2019 06:19:36 -0700 (PDT)
MIME-Version: 1.0
References: <CA+JMMq8N1EzMBbAU_KUMn27G7ya0qOjPfv_F7F5pR-Vopda5nA@mail.gmail.com>
 <FCEC6A68-6E5D-4EA7-BD3A-E314F11F39FE@gmail.com>
 <cd4c001a4fc84e91847013eadac5e889@ll.mit.edu>
In-Reply-To: <cd4c001a4fc84e91847013eadac5e889@ll.mit.edu>
Date: Fri, 25 Oct 2019 09:19:25 -0400
Message-ID: <CAB__hTRR-iG+GRSmzBBwpdAy-fzJ7AfH_v=ASULEDx5aPtt3Jw@mail.gmail.com>
To: "Muri, Richard - 1002 - MITLL" <Richard.Muri@ll.mit.edu>
Subject: Re: [USRP-users] Controlling an X310 from embedded devices
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6301707938583578549=="
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

--===============6301707938583578549==
Content-Type: multipart/alternative; boundary="00000000000062105f0595bc00e2"

--00000000000062105f0595bc00e2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Richard,
Here is one thing I considered for a similar application (although never
implemented). How about having both an FPGA and CPU where your FPGA is
in-the-middle between your CPU and the X310. Your FPGA could blindly
forward all control packets (both directions), but then intercept the
streaming packets as appropriate.  The idea is that neither the CPU nor the
X310 would realize that there is any device in the middle.  This way, the
CPU could utilize the UHD library like normal.
Rob

On Thu, Oct 24, 2019 at 10:39 AM Muri, Richard - 1002 - MITLL via
USRP-users <usrp-users@lists.ettus.com> wrote:

> That was my concern and why I want to control it from an FPGA. My initial
> thought was I use an FPGA to fill the data buffers with DMA and then use =
an
> ARM to handle the control flow, but that doesn=E2=80=99t help me receive =
data at
> the rates the x300 series is capable of supplying. Is there a way to acce=
pt
> received packets into a DMA?
>
>
>
> Alternatively, how crazy would it be to use an ARM for the
> initialization/configuration, and then build the appropriate data and
> command packets in FPGA and send those directly to the USRP?
>
>
>
> Thanks,
>
> Richard
>
>
>
> *From:* Marcus D Leech <patchvonbraun@gmail.com>
> *Sent:* Wednesday, October 23, 2019 10:54 PM
> *To:* Nick Foster <bistromath@gmail.com>
> *Cc:* Muri, Richard - 1002 - MITLL <Richard.Muri@ll.mit.edu>;
> usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] Controlling an X310 from embedded devices
>
>
>
> I run B210 from an Odoid XU4 platform and can get up to about 12Msps out
> of it, depending on what I=E2=80=99m doing.
>
>
>
> But no way you=E2=80=99ll do the 10s of Msps that the X3xx series is capa=
ble of.
>
> Sent from my iPhone
>
>
>
> On Oct 23, 2019, at 8:35 PM, Nick Foster via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> =EF=BB=BF
>
> You should have no trouble running UHD on an ARM architecture. The Ettus
> E300 series radios are ARM devices. UHD does a huge amount of
> initialization and configuration for the X310, and in any case the X310
> doesn't use VRT in any real capacity. You won't realistically be able to
> divorce the X310 from UHD.
>
>
>
> Your biggest headache on an embedded machine will be keeping up with high
> data rates, and waiting for UHD to compile in the first place. =3D)
>
>
>
> Nick
>
>
>
> On Wed, Oct 23, 2019 at 4:59 PM Muri, Richard - 1002 - MITLL via
> USRP-users <usrp-users@lists.ettus.com> wrote:
>
> Hello,
>
>
>
> I=E2=80=99m looking into controlling an X310 from an embedded device. I w=
anted to
> probe the users list before I bury myself into a rabbit hole.
>
>
>
> Is it possible to control a USRP directly from an FPGA? I noticed that UH=
D
> use VRT as the transport protocol (
> http://files.ettus.com/manual/page_rtp.html). If I have an FPGA that
> speaks VRT over Ethernet or Aurora can I control a USRP, and are there
> examples/documentation of controlling a USRP without running an instance =
of
> UHD? In my use case I need to send timed transmit commands and data
> packets, and timed receive commands and receive data packets.
>
>
>
> In the case that running without UHD is a headache I don=E2=80=99t want t=
o brave,
> are there examples of running UHD on ARM cores?
>
>
>
> Any insight is appreciated.
>
>
>
> Thanks,
>
> Richard
>
>
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000062105f0595bc00e2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Richard,<div>Here is one thing I consider=
ed for a similar application (although never implemented). How about having=
 both an FPGA and CPU where your FPGA is in-the-middle between your CPU and=
 the X310. Your FPGA could blindly forward all control packets (both direct=
ions), but then intercept the streaming packets as appropriate.=C2=A0 The i=
dea is that neither the CPU nor the X310 would realize that there is any de=
vice in the middle.=C2=A0 This way, the CPU could utilize the UHD library l=
ike normal.</div><div>Rob</div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Thu, Oct 24, 2019 at 10:39 AM Muri, Richa=
rd - 1002 - MITLL via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ett=
us.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div lang=3D"EN-US"><div class=3D"gmail-m=
_4329683369536222100WordSection1"><p class=3D"MsoNormal"><span style=3D"fon=
t-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)">That was m=
y concern and why I want to control it from an FPGA. My initial thought was=
 I use an FPGA to fill the data buffers with DMA and then use an ARM to han=
dle the control flow, but that doesn=E2=80=99t help me receive data at the =
rates the x300 series is capable of supplying. Is there a way to accept rec=
eived packets into a DMA?<u></u><u></u></span></p><p class=3D"MsoNormal"><s=
pan style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,=
125)"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span style=3D"=
font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)">Alterna=
tively, how crazy would it be to use an ARM for the initialization/configur=
ation, and then build the appropriate data and command packets in FPGA and =
send those directly to the USRP?<u></u><u></u></span></p><p class=3D"MsoNor=
mal"><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb=
(31,73,125)"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span st=
yle=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)">=
Thanks,<u></u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-=
size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)">Richard<u></=
u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-size:11pt;fo=
nt-family:Calibri,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></sp=
an></p><div><div style=3D"border-right:none;border-bottom:none;border-left:=
none;border-top:1pt solid rgb(225,225,225);padding:3pt 0in 0in"><p class=3D=
"MsoNormal"><b><span style=3D"font-size:11pt;font-family:Calibri,sans-serif=
">From:</span></b><span style=3D"font-size:11pt;font-family:Calibri,sans-se=
rif"> Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=
=3D"_blank">patchvonbraun@gmail.com</a>&gt; <br><b>Sent:</b> Wednesday, Oct=
ober 23, 2019 10:54 PM<br><b>To:</b> Nick Foster &lt;<a href=3D"mailto:bist=
romath@gmail.com" target=3D"_blank">bistromath@gmail.com</a>&gt;<br><b>Cc:<=
/b> Muri, Richard - 1002 - MITLL &lt;<a href=3D"mailto:Richard.Muri@ll.mit.=
edu" target=3D"_blank">Richard.Muri@ll.mit.edu</a>&gt;; <a href=3D"mailto:u=
srp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>=
<br><b>Subject:</b> Re: [USRP-users] Controlling an X310 from embedded devi=
ces<u></u><u></u></span></p></div></div><p class=3D"MsoNormal"><u></u>=C2=
=A0<u></u></p><p class=3D"MsoNormal">I run B210 from an Odoid XU4 platform =
and can get up to about 12Msps out of it, depending on what I=E2=80=99m doi=
ng.=C2=A0<u></u><u></u></p><div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u>=
</p></div><div><p class=3D"MsoNormal" style=3D"margin-bottom:12pt">But no w=
ay you=E2=80=99ll do the 10s of Msps that the X3xx series is capable of.=C2=
=A0<u></u><u></u></p><div><p class=3D"MsoNormal">Sent from my iPhone<u></u>=
<u></u></p></div><div><p class=3D"MsoNormal"><br><br><u></u><u></u></p><blo=
ckquote style=3D"margin-top:5pt;margin-bottom:5pt"><p class=3D"MsoNormal" s=
tyle=3D"margin-bottom:12pt">On Oct 23, 2019, at 8:35 PM, Nick Foster via US=
RP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
">usrp-users@lists.ettus.com</a>&gt; wrote:<u></u><u></u></p></blockquote><=
/div><blockquote style=3D"margin-top:5pt;margin-bottom:5pt"><div><p class=
=3D"MsoNormal"><span style=3D"font-family:Tahoma,sans-serif">=EF=BB=BF</spa=
n><u></u><u></u></p><div><div><p class=3D"MsoNormal">You should have no tro=
uble running UHD on an ARM architecture. The Ettus E300 series radios are A=
RM devices. UHD does a huge amount of initialization and configuration for =
the X310, and in any case the X310 doesn&#39;t use VRT in any real capacity=
. You won&#39;t realistically be able to divorce the X310 from UHD.<u></u><=
u></u></p></div><div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p></div><=
div><p class=3D"MsoNormal">Your biggest headache on an embedded machine wil=
l be keeping up with high data rates, and waiting for UHD to compile in the=
 first place. =3D)<u></u><u></u></p></div><div><p class=3D"MsoNormal"><u></=
u>=C2=A0<u></u></p></div><div><p class=3D"MsoNormal">Nick<u></u><u></u></p>=
</div></div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><div><div><p cla=
ss=3D"MsoNormal">On Wed, Oct 23, 2019 at 4:59 PM Muri, Richard - 1002 - MIT=
LL via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<u></u><u></u></p></di=
v><blockquote style=3D"border-top:none;border-right:none;border-bottom:none=
;border-left:1pt solid rgb(204,204,204);padding:0in 0in 0in 6pt;margin-left=
:4.8pt;margin-right:0in"><div><div><p class=3D"MsoNormal">Hello,<u></u><u><=
/u></p><p class=3D"MsoNormal">=C2=A0<u></u><u></u></p><p class=3D"MsoNormal=
">I=E2=80=99m looking into controlling an X310 from an embedded device. I w=
anted to probe the users list before I bury myself into a rabbit hole.<u></=
u><u></u></p><p class=3D"MsoNormal">=C2=A0<u></u><u></u></p><p class=3D"Mso=
Normal">Is it possible to control a USRP directly from an FPGA? I noticed t=
hat UHD use VRT as the transport protocol (<a href=3D"http://files.ettus.co=
m/manual/page_rtp.html" target=3D"_blank">http://files.ettus.com/manual/pag=
e_rtp.html</a>). If I have an FPGA that speaks VRT over Ethernet or Aurora =
can I control a USRP, and are there examples/documentation of controlling a=
 USRP without running an instance of UHD? In my use case I need to send tim=
ed transmit commands and data packets, and timed receive commands and recei=
ve data packets. <u></u><u></u></p><p class=3D"MsoNormal">=C2=A0<u></u><u><=
/u></p><p class=3D"MsoNormal">In the case that running without UHD is a hea=
dache I don=E2=80=99t want to brave, are there examples of running UHD on A=
RM cores?<u></u><u></u></p><p class=3D"MsoNormal">=C2=A0<u></u><u></u></p><=
p class=3D"MsoNormal">Any insight is appreciated.<u></u><u></u></p><p class=
=3D"MsoNormal">=C2=A0<u></u><u></u></p><p class=3D"MsoNormal">Thanks,<u></u=
><u></u></p><p class=3D"MsoNormal">Richard<u></u><u></u></p><p class=3D"Mso=
Normal">=C2=A0<u></u><u></u></p><p class=3D"MsoNormal">=C2=A0<u></u><u></u>=
</p></div></div><p class=3D"MsoNormal">____________________________________=
___________<br>USRP-users mailing list<br><a href=3D"mailto:USRP-users@list=
s.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a><br><a href=3D=
"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target=
=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.=
com</a><u></u><u></u></p></blockquote></div><p class=3D"MsoNormal">________=
_______________________________________<br>USRP-users mailing list<br><a hr=
ef=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists=
.ettus.com</a><br><a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-u=
sers_lists.ettus.com" target=3D"_blank">http://lists.ettus.com/mailman/list=
info/usrp-users_lists.ettus.com</a><u></u><u></u></p></div></blockquote></d=
iv></div></div>_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--00000000000062105f0595bc00e2--


--===============6301707938583578549==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6301707938583578549==--

