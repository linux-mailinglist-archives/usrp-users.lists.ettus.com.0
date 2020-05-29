Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D1881E7D42
	for <lists+usrp-users@lfdr.de>; Fri, 29 May 2020 14:31:29 +0200 (CEST)
Received: from [::1] (port=51108 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jeeAY-0005MQ-1R; Fri, 29 May 2020 08:31:26 -0400
Received: from mail-vk1-f180.google.com ([209.85.221.180]:37588)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <michael.dickens@ettus.com>)
 id 1jeeAT-0005I0-NB
 for usrp-users@lists.ettus.com; Fri, 29 May 2020 08:31:21 -0400
Received: by mail-vk1-f180.google.com with SMTP id q10so618292vka.4
 for <usrp-users@lists.ettus.com>; Fri, 29 May 2020 05:31:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SIT6aBRB/qQPE6SQT5fyPaVnekSCWvIG7VGtpKz5qD0=;
 b=vJwQfAe+HjGvMQGqP52HO3Z98wx4rkyFfMUo5qlvHXnVeYhlZOkVbxXFpvcYwXUKIF
 KpQ5MMOmBl1swZZstFw812wZrlfdMM0YSqdLeAdz8HFIOlOY1Linj0x/P1+yc9xL8mCY
 xtmQxJ0hFlHHS9T+G95C0i6BRAzky8eL1C8KLa53Zsp7HooZham7nSQNsCG/CwNJCMYh
 3FgpdRLQR/yKnDsYlu1akbapBRWacsrrxLnSKgpP+eZqOa4ttdJg08QdV7nziRYWClrH
 Xld0/k8607JmoNxpwCZs7bQH+jneta5e5l6551bLniMGhdrNxsURNh6N/th1+6nJ2jC3
 QmSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SIT6aBRB/qQPE6SQT5fyPaVnekSCWvIG7VGtpKz5qD0=;
 b=C0GVcJaJ9lS+MMXVtk5VMge8kvfpmXF7GmCRPCUJVXp9d/EHeFEWP2SQPzNFQ3d4D7
 AW2ppQUVXpd4OVm544242tVYZPOTbij9l31LJ5dDJHNb+NShsrJofvBPDibDjMuZoq8b
 3fsqzM8QJeKAOc1dL2Bwo7amehOktuleAX1bDmvmGqHESdUs5yJ7qhrp64fLm+j8PgWJ
 X21dUryp+CXK97D6aJaSN8tw5jjTgfXEni+U2+lLwH9FN9RSqr83XYG8dsJRMIGg6VOo
 0vDHY+BsNdfkWXODKaWAQdyB1SnK92riHffr3GuWvHu1wsV9LUb1RrVYJvNo1gcdMwGE
 Wcfg==
X-Gm-Message-State: AOAM531Xyws9bOeD1Bo/wGxlumUNmvFTeiy4eLqBjF8A3UGj4AG00fDi
 f2VhSvVOAevLNVfhqPMXS8m/8NguPnBb3yukcXOUUChp
X-Google-Smtp-Source: ABdhPJxwWn4ccrLmsZZ7ZnYfPPOrMhgnGI8u+JdNfJ4nKPy4N1mHsGK6vJ8YsGjoWJEJd16lGO/0aAO88fj55klc/94=
X-Received: by 2002:a1f:9a10:: with SMTP id c16mr5456081vke.83.1590755440995; 
 Fri, 29 May 2020 05:30:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTQ=V0dNfQTPMXxh4HjGpGg754Ahg6EWstRuT2GcGDt6Zw@mail.gmail.com>
 <986c0add83a74d859bfadaeeb555830c@gtri.gatech.edu>
In-Reply-To: <986c0add83a74d859bfadaeeb555830c@gtri.gatech.edu>
Date: Fri, 29 May 2020 08:30:30 -0400
Message-ID: <CAGNhwTNjqtBd-DdsDvGy1QzjO9Yfoix52K2Xr=53VFLSD6hWJA@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============6217738574160727412=="
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

--===============6217738574160727412==
Content-Type: multipart/alternative; boundary="000000000000fc552d05a6c89c93"

--000000000000fc552d05a6c89c93
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jeff - The new tool is called "rfnoc_create_verilog" ... it's located in
the UHD repo as "host/utils/rfnoc_blocktool/rfnoc_create_verilog.py". - MLD
---
Michael Dickens
Ettus Research Technical Support
Email: support@ettus.com
Web: https://ettus.com/


On Thu, May 28, 2020 at 11:54 PM Hodges, Jeff via USRP-users <
usrp-users@lists.ettus.com> wrote:

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
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000fc552d05a6c89c93
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">Hi Jeff - The new tool is called &quot;rfnoc_create_verilog&quo=
t; ... it&#39;s located in the UHD repo as &quot;host/utils/rfnoc_blocktool=
/rfnoc_create_verilog.py&quot;. - MLD</div><div><div dir=3D"ltr" class=3D"g=
mail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><d=
iv dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D=
"ltr">---</div><div dir=3D"ltr">Michael Dickens<br>Ettus Research Technical=
 Support<br>Email: <a href=3D"mailto:support@ettus.com" target=3D"_blank">s=
upport@ettus.com</a><br>Web: <a href=3D"https://ettus.com/" target=3D"_blan=
k">https://ettus.com/</a></div></div></div></div></div></div></div></div></=
div></div></div><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Thu, May 28, 2020 at 11:54 PM Hodges, Jeff via USRP-=
users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.et=
tus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_-2240997410294500661WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">I also would like to know the answer to Rob=
=E2=80=99s question:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">Rfnocmodtool is in gr-ettus but if I try to =
install gr-ettus with the uhd master branch, I get the following error:<u><=
/u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">[=C2=A0 5%] Building CXX object lib/CMakeFil=
es/gnuradio-ettus.dir/device3.cc.o<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">In file included from /home/nvd/rfnoc/src/gr=
-ettus/lib/device3.cc:27:0:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">/home/nvd/rfnoc/src/gr-ettus/include/ettus/d=
evice3.h:30:10: fatal error: uhd/device3.hpp: No such file or directory<u><=
/u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">#include &lt;uhd/device3.hpp&gt;<u></u><u></=
u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 ^~~~~~~~~~~~~~~~~<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">compilation terminated.<u></u><u></u></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">lib/CMakeFiles/gnuradio-ettus.dir/build.make=
:72: recipe for target &#39;lib/CMakeFiles/gnuradio-ettus.dir/device3.cc.o&=
#39; failed<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">make[2]: *** [lib/CMakeFiles/gnuradio-ettus.=
dir/device3.cc.o] Error 1<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">CMakeFiles/Makefile2:139: recipe for target =
&#39;lib/CMakeFiles/gnuradio-ettus.dir/all&#39; failed<u></u><u></u></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">make[1]: *** [lib/CMakeFiles/gnuradio-ettus.=
dir/all] Error 2<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">Makefile:140: recipe for target &#39;all&#39=
; failed<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">make: *** [all] Error 2<u></u><u></u></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">So how does rfnoc work with master branch?<u=
></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">I have also installed UHD-3.15.LTS without P=
YBOMBS and there were errors that have been fixed in the master branch but =
not UHD-3.15.LTS.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">There are no current versions of UHD that wo=
rk with RFNoC to build OOT without the PYBOMBS method.<u></u><u></u></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">Jeff<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:Calibri=
,sans-serif">From:</span></b><span style=3D"font-size:11pt;font-family:Cali=
bri,sans-serif"> USRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.=
ettus.com" target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt;
<b>On Behalf Of </b>Rob Kossler via USRP-users<br>
<b>Sent:</b> Thursday, May 21, 2020 3:19 PM<br>
<b>To:</b> usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> [USRP-users] creating an rfnoc block on master branch<u></u=
><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal">Hi,<u></u><u></u></p>
<div>
<p class=3D"MsoNormal">How do I create an rfnoc block using master branch?=
=C2=A0 I am familiar with using rfnoc_mod_tool with UHD 3.15 and earlier.=
=C2=A0 My understanding was that things are different with master (and uhd =
4.0) such that a different tool would be used and
 that this new tool would be part of UHD rather than part of a gnuradio ins=
tallation.=C2=A0 But, I don&#39;t see any such tool in my uhd master checko=
ut.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Rob<u></u><u></u></p>
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

--000000000000fc552d05a6c89c93--


--===============6217738574160727412==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6217738574160727412==--

