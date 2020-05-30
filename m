Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 380591E8C75
	for <lists+usrp-users@lfdr.de>; Sat, 30 May 2020 02:08:01 +0200 (CEST)
Received: from [::1] (port=36790 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jep2b-0008T7-6e; Fri, 29 May 2020 20:07:57 -0400
Received: from mail-vs1-f47.google.com ([209.85.217.47]:44002)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <michael.dickens@ettus.com>)
 id 1jep2X-0008P0-GI
 for usrp-users@lists.ettus.com; Fri, 29 May 2020 20:07:53 -0400
Received: by mail-vs1-f47.google.com with SMTP id z13so2512693vsn.10
 for <usrp-users@lists.ettus.com>; Fri, 29 May 2020 17:07:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SR2GSm6EYnd1YMj/krbqbFztCHIAEO5hPx9hydpW6zQ=;
 b=VZXljAz2bu1KmpbHKhMOiluS/R8TBjDLNkcBJ2KgWNS0P4KlOTVPW7yBNP1WbAflMw
 9x7Q7THdyh+rtgtdNRpYkq5ANMWJEkjsFa20e6Hit5Tk4NTMmEcOXdMhnpUQt5G73C4u
 NDLgnn6sep2bJXey70nwHdUVtN60O+lMwlQD3ooH+seZAkDOfAOjEM8dU/6jg71kIPBE
 YHo/14z/jiNrfVe0EADrMEunWtZVnB8lGVokzXDNyArvHx8gzL4Fo4jJfyFxVFq8glFx
 RvDQmntpkXjxJFLhF7LHFCPGcbvjaKHbzsszHqaoYjGtTA9Lkt6MsKjb+TReDIacA8wr
 hEIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SR2GSm6EYnd1YMj/krbqbFztCHIAEO5hPx9hydpW6zQ=;
 b=c0T0Lau4/BvRbtZd/nn6GnJ1KXH0rXqjO9SKupPLWGeyHdb3/oagRy5hfutAL4Yduv
 kuIiykpH1L0O3mlHmHV9GXFp9XTs9vAM8nNiWKDYRtEaG2d+28MrW9+RRoM7A++zijed
 NiWK5k2owgt91N4jCPUxYuVghfqr6YLV7eCPigjB+whxewmd4fRaeuVvO0CoMFv25edI
 whEYHjNyK6SOuSEUSELIYa8gSIrBW4nCSt4mtPK5L7Zv5TGzPkToMKmnTjR26G8sr/qB
 kSlWUgqjZyRuOGN6fGqyVYqQIicUeNp2DeqLOIxl6Ki0YGAYeuT5ZDFyd/RyLJXVd/C4
 I/RQ==
X-Gm-Message-State: AOAM531i/u7JI42TObZ80owlhZsPvTMw64nqbLEHlufrXek3hFcJd7FW
 w2wCMfifa82IC0pdZEuyaT2H09Nux2u6gK3mWSnTr4Il
X-Google-Smtp-Source: ABdhPJwGGCu8YMuL1OAia8ZRRL1/1UTDNATgdfIR//K2B5mOqLspHKQYkYy4ON0ZKu5IHy/Aq2YeRaI7/RtY1aes1JI=
X-Received: by 2002:a67:db81:: with SMTP id f1mr2267623vsk.81.1590797230771;
 Fri, 29 May 2020 17:07:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTQ=V0dNfQTPMXxh4HjGpGg754Ahg6EWstRuT2GcGDt6Zw@mail.gmail.com>
 <986c0add83a74d859bfadaeeb555830c@gtri.gatech.edu>
 <CAGNhwTNjqtBd-DdsDvGy1QzjO9Yfoix52K2Xr=53VFLSD6hWJA@mail.gmail.com>
 <576d05354bcd4a9baef484edf9619705@gtri.gatech.edu>
In-Reply-To: <576d05354bcd4a9baef484edf9619705@gtri.gatech.edu>
Date: Fri, 29 May 2020 20:07:00 -0400
Message-ID: <CAGNhwTOgJ8NMFt4BaJ=vNrzmzA+QA6UoP4xY-jXPrdgOAO5nsA@mail.gmail.com>
To: "Hodges, Jeff" <Jeff.Hodges@gtri.gatech.edu>
Subject: Re: [USRP-users] creating an rfnoc block on master branch
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
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4015438551564012754=="
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

--===============4015438551564012754==
Content-Type: multipart/alternative; boundary="000000000000d9a31705a6d25742"

--000000000000d9a31705a6d25742
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Nope. gr-ettus is, plus or minus, integrated into gr-uhd on GR master. - ML=
D
---
Michael Dickens
Ettus Research Technical Support
Email: support@ettus.com
Web: https://ettus.com/


On Fri, May 29, 2020 at 5:40 PM Hodges, Jeff <Jeff.Hodges@gtri.gatech.edu>
wrote:

> Is gr-ettus still required for rfnoc on master branch? I cannot install
> gr-ettus with uhd master and gnuradio master.
>
>
>
> When I run gnuradio-companion the rfnoc blocks are missing.
>
>
>
> Jeff
>
>
>
> *From:* Michael Dickens <michael.dickens@ettus.com>
> *Sent:* Friday, May 29, 2020 8:31 AM
> *To:* Hodges, Jeff <Jeff.Hodges@gtri.gatech.edu>
> *Cc:* usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] creating an rfnoc block on master branch
>
>
>
> Hi Jeff - The new tool is called "rfnoc_create_verilog" ... it's located
> in the UHD repo as "host/utils/rfnoc_blocktool/rfnoc_create_verilog.py". =
-
> MLD
>
> ---
>
> Michael Dickens
> Ettus Research Technical Support
> Email: support@ettus.com
> Web: https://ettus.com/
>
>
>
>
>
> On Thu, May 28, 2020 at 11:54 PM Hodges, Jeff via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> I also would like to know the answer to Rob=E2=80=99s question:
>
>
>
> Rfnocmodtool is in gr-ettus but if I try to install gr-ettus with the uhd
> master branch, I get the following error:
>
>
>
>
>
> [  5%] Building CXX object lib/CMakeFiles/gnuradio-ettus.dir/device3.cc.o
>
> In file included from /home/nvd/rfnoc/src/gr-ettus/lib/device3.cc:27:0:
>
> /home/nvd/rfnoc/src/gr-ettus/include/ettus/device3.h:30:10: fatal error:
> uhd/device3.hpp: No such file or directory
>
> #include <uhd/device3.hpp>
>
>           ^~~~~~~~~~~~~~~~~
>
> compilation terminated.
>
> lib/CMakeFiles/gnuradio-ettus.dir/build.make:72: recipe for target
> 'lib/CMakeFiles/gnuradio-ettus.dir/device3.cc.o' failed
>
> make[2]: *** [lib/CMakeFiles/gnuradio-ettus.dir/device3.cc.o] Error 1
>
> CMakeFiles/Makefile2:139: recipe for target
> 'lib/CMakeFiles/gnuradio-ettus.dir/all' failed
>
> make[1]: *** [lib/CMakeFiles/gnuradio-ettus.dir/all] Error 2
>
> Makefile:140: recipe for target 'all' failed
>
> make: *** [all] Error 2
>
>
>
>
>
> So how does rfnoc work with master branch?
>
>
>
>
>
> I have also installed UHD-3.15.LTS without PYBOMBS and there were errors
> that have been fixed in the master branch but not UHD-3.15.LTS.
>
>
>
> There are no current versions of UHD that work with RFNoC to build OOT
> without the PYBOMBS method.
>
>
>
>
>
>
>
> Jeff
>
>
>
> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> *On Behalf Of *Ro=
b
> Kossler via USRP-users
> *Sent:* Thursday, May 21, 2020 3:19 PM
> *To:* usrp-users <usrp-users@lists.ettus.com>
> *Subject:* [USRP-users] creating an rfnoc block on master branch
>
>
>
> Hi,
>
> How do I create an rfnoc block using master branch?  I am familiar with
> using rfnoc_mod_tool with UHD 3.15 and earlier.  My understanding was tha=
t
> things are different with master (and uhd 4.0) such that a different tool
> would be used and that this new tool would be part of UHD rather than par=
t
> of a gnuradio installation.  But, I don't see any such tool in my uhd
> master checkout.
>
> Rob
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>

--000000000000d9a31705a6d25742
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Nope. gr-ettus is, plus or minus, integrated into   gr-uhd=
 on GR master. - MLD<br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_=
signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div di=
r=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"=
>---</div><div dir=3D"ltr">Michael Dickens<br>Ettus Research Technical Supp=
ort<br>Email: <a href=3D"mailto:support@ettus.com" target=3D"_blank">suppor=
t@ettus.com</a><br>Web: <a href=3D"https://ettus.com/" target=3D"_blank">ht=
tps://ettus.com/</a></div></div></div></div></div></div></div></div></div><=
/div></div><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, May 29, 2020 at 5:40 PM Hodges, Jeff &lt;<a href=3D=
"mailto:Jeff.Hodges@gtri.gatech.edu">Jeff.Hodges@gtri.gatech.edu</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_-4803402208203404243WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">Is gr-ettus still required for rfnoc on mast=
er branch? I cannot install gr-ettus with uhd master and gnuradio master.<u=
></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">When I run gnuradio-companion the rfnoc bloc=
ks are missing.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">Jeff<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:Calibri=
,sans-serif">From:</span></b><span style=3D"font-size:11pt;font-family:Cali=
bri,sans-serif"> Michael Dickens &lt;<a href=3D"mailto:michael.dickens@ettu=
s.com" target=3D"_blank">michael.dickens@ettus.com</a>&gt;
<br>
<b>Sent:</b> Friday, May 29, 2020 8:31 AM<br>
<b>To:</b> Hodges, Jeff &lt;<a href=3D"mailto:Jeff.Hodges@gtri.gatech.edu" =
target=3D"_blank">Jeff.Hodges@gtri.gatech.edu</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> Re: [USRP-users] creating an rfnoc block on master branch<u=
></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:Verdana,sans-serif">Hi Je=
ff - The new tool is called &quot;rfnoc_create_verilog&quot; ... it&#39;s l=
ocated in the UHD repo as &quot;host/utils/rfnoc_blocktool/rfnoc_create_ver=
ilog.py&quot;. - MLD<u></u><u></u></span></p>
</div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal">---<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Michael Dickens<br>
Ettus Research Technical Support<br>
Email: <a href=3D"mailto:support@ettus.com" target=3D"_blank">support@ettus=
.com</a><br>
Web: <a href=3D"https://ettus.com/" target=3D"_blank">https://ettus.com/</a=
><u></u><u></u></p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Thu, May 28, 2020 at 11:54 PM Hodges, Jeff via US=
RP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
">usrp-users@lists.ettus.com</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;b=
order-left:1pt solid rgb(204,204,204);padding:0in 0in 0in 6pt;margin-left:4=
.8pt;margin-right:0in">
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">I also would like to know the answer to Rob=
=E2=80=99s question:</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">Rfnocmodtool is in gr-ettus but if I try to =
install gr-ettus with the uhd master branch, I get the
 following error:</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">[=C2=A0 5%] Building CXX object lib/CMakeFil=
es/gnuradio-ettus.dir/device3.cc.o</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">In file included from /home/nvd/rfnoc/src/gr=
-ettus/lib/device3.cc:27:0:</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">/home/nvd/rfnoc/src/gr-ettus/include/ettus/d=
evice3.h:30:10: fatal error: uhd/device3.hpp: No such file
 or directory</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">#include &lt;uhd/device3.hpp&gt;</span><u></=
u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 ^~~~~~~~~~~~~~~~~</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">compilation terminated.</span><u></u><u></u>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">lib/CMakeFiles/gnuradio-ettus.dir/build.make=
:72: recipe for target &#39;lib/CMakeFiles/gnuradio-ettus.dir/device3.cc.o&=
#39;
 failed</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">make[2]: *** [lib/CMakeFiles/gnuradio-ettus.=
dir/device3.cc.o] Error 1</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">CMakeFiles/Makefile2:139: recipe for target =
&#39;lib/CMakeFiles/gnuradio-ettus.dir/all&#39; failed</span><u></u><u></u>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">make[1]: *** [lib/CMakeFiles/gnuradio-ettus.=
dir/all] Error 2</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">Makefile:140: recipe for target &#39;all&#39=
; failed</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">make: *** [all] Error 2</span><u></u><u></u>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">So how does rfnoc work with master branch?</=
span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">I have also installed UHD-3.15.LTS without P=
YBOMBS and there were errors that have been fixed in the
 master branch but not UHD-3.15.LTS.</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">There are no current versions of UHD that wo=
rk with RFNoC to build OOT without the PYBOMBS method.</span><u></u><u></u>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">Jeff</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:Calibri=
,sans-serif">From:</span></b><span style=3D"font-size:11pt;font-family:Cali=
bri,sans-serif"> USRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.=
ettus.com" target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt;
<b>On Behalf Of </b>Rob Kossler via USRP-users<br>
<b>Sent:</b> Thursday, May 21, 2020 3:19 PM<br>
<b>To:</b> usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> [USRP-users] creating an rfnoc block on master branch</span=
><u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<div>
<p class=3D"MsoNormal">Hi,<u></u><u></u></p>
<div>
<p class=3D"MsoNormal">How do I create an rfnoc block using master branch?=
=C2=A0 I am familiar with using rfnoc_mod_tool with UHD 3.15 and earlier.=
=C2=A0 My understanding was that things are different with master
 (and uhd 4.0) such that a different tool would be used and that this new t=
ool would be part of UHD rather than part of a gnuradio installation.=C2=A0=
 But, I don&#39;t see any such tool in my uhd master checkout.<u></u><u></u=
></p>
</div>
<div>
<p class=3D"MsoNormal">Rob<u></u><u></u></p>
</div>
</div>
</div>
</div>
<p class=3D"MsoNormal">_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_li=
sts.ettus.com</a><u></u><u></u></p>
</blockquote>
</div>
</div>
</div>

</blockquote></div>

--000000000000d9a31705a6d25742--


--===============4015438551564012754==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4015438551564012754==--

