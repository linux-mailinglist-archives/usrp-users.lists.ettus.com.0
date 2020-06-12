Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A4CA41F7E42
	for <lists+usrp-users@lfdr.de>; Fri, 12 Jun 2020 22:55:19 +0200 (CEST)
Received: from [::1] (port=41668 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jjqho-0003KC-OM; Fri, 12 Jun 2020 16:55:16 -0400
Received: from mail-ed1-f48.google.com ([209.85.208.48]:44822)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jeremy.vezinet@gmail.com>)
 id 1jjqhk-0003BX-V5
 for usrp-users@lists.ettus.com; Fri, 12 Jun 2020 16:55:13 -0400
Received: by mail-ed1-f48.google.com with SMTP id s28so5291968edw.11
 for <usrp-users@lists.ettus.com>; Fri, 12 Jun 2020 13:54:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=n7azKUHUuvYCdyWZZZZLcYJdmBgik1CsQJBeVDV0Kjg=;
 b=m2XzFKKat3akQwOiL6Lwu4sxFLKmAFK1jpWt0v66KTa1H2AtU56JtrS8FvwG3cGD4o
 qDo3XuVMU+RhEB2uJX04z8xvhl3shRd5x0ZI74jXeN56cTjOxKCYvypljVHv4XFLcTvz
 6xX/PGJSOBhlkIojCZcb1G3BVuaj3WEXlAqMqzglmqg/MjzGy8FPogjy7pLaC+PlMyWt
 G29RR1jwO29siWoOWd1ZEpASwV0f+IKXV25zDDa4ehOARFPpPGd8m1TZ0bWLlUSvuucV
 BQk2ALLciLWqCeU7lyKvsa9YUBBllQtAhVnXqxIPlMvLqzXQxi0P/mKkwfJRora5oz4k
 kREA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=n7azKUHUuvYCdyWZZZZLcYJdmBgik1CsQJBeVDV0Kjg=;
 b=g7jQuiTL1aC2vAWsScolGyQ7pZnpy7sK+2Cq0HnCwd6xPFxR4t8e/RDD028Y/rn5mp
 /F1QA8z594i5hrgNZ+50FdUMSrWB3RfEZCrGK+YvKS0JvQEk+FuU6h+v8PogFIikf5Ra
 DwYblFgMgKu5MKANeR0B4dFizhPlXTTrmWT3VbgId/CG0AsLLXLERy5bkP8XVPbuyV65
 V1NK7mj48dO2imTIycleH3BJM+MIp/+IKq+YGfpvWArlhbXHrdFm6eF0Y7ujfT3TVtUI
 jG40r33mOmi95tDsgrlaCo8IRIlf0rooOX+T7qbn1FssJdtQVzB4T+OwY56zBZc/NUbZ
 JZgw==
X-Gm-Message-State: AOAM533HkVlH3BJeanMGGcPiJRtK3mqaDKfoaixoohCtbJDqR+VTtZoO
 sPsp6bUI6BZ8IEhYOUBS3j/ZqhakODQtxhpfluD9dtE6YiU=
X-Google-Smtp-Source: ABdhPJyy9V0ckR2gNkG68GYD8tvI1uXTMyZQaFNPEQP2Gbp5BUyFOKrEn09C9uJ07RfvvZ861fnT7zOCwtoylkPLkIQ=
X-Received: by 2002:a05:6402:3044:: with SMTP id
 bu4mr13493237edb.69.1591995271604; 
 Fri, 12 Jun 2020 13:54:31 -0700 (PDT)
MIME-Version: 1.0
References: <CANka2Pwqgc=sk6mutxNwbO2fzUQe4k4W_A5_DFzaWWY5prxYug@mail.gmail.com>
 <10F7328F6AD1354BA6DD787687B66B9001A97A4064@Maui.in.dynetics.com>
In-Reply-To: <10F7328F6AD1354BA6DD787687B66B9001A97A4064@Maui.in.dynetics.com>
Date: Fri, 12 Jun 2020 22:54:20 +0200
Message-ID: <CANka2PzU+jktLa6QQMv_j_Sf=pS4+1OgMZaMc4OYG+7+BfDONQ@mail.gmail.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] DPDK support not built in with X310
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
From: =?utf-8?q?J=C3=A9r=C3=A9my_Vezinet_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?B?SsOpcsOpbXkgVmV6aW5ldA==?= <jeremy.vezinet@gmail.com>
Content-Type: multipart/mixed; boundary="===============4302393469469097201=="
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

--===============4302393469469097201==
Content-Type: multipart/alternative; boundary="000000000000a5f17505a7e948bb"

--000000000000a5f17505a7e948bb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Ryan,

Thanks for that.

So, I tried to build UHD manually and now when I generate the MakeFile,
DPDK support is detected.
But when I try to build UHD, I got an error when linking shared library
libuhd.so:

/usr/bin/ld: //usr/local/lib/librte_eal.a(eal_thread.o): relocation
R_X86_64_TPOFF32 against `per_lcore__thread_id.8433' can not be used when
making a shared object; recompile with -fPIC
/usr/bin/ld: //usr/local/lib/librte_eal.a(eal_vfio.o): relocation
R_X86_64_TPOFF32 against `per_lcore__thread_id.6718' can not be used when
making a shared object; recompile with -fPIC
/usr/bin/ld: //usr/local/lib/librte_eal.a(eal_interrupts.o): relocation
R_X86_64_TPOFF32 against `per_lcore__epfd' can not be used when making a
shared object; recompile with -fPIC
/usr/bin/ld: //usr/local/lib/librte_eal.a(eal_common_log.o): relocation
R_X86_64_TPOFF32 against `per_lcore_log_cur_msg' can not be used when
making a shared object; recompile with -fPIC
/usr/bin/ld: //usr/local/lib/librte_eal.a(eal_common_errno.o): relocation
R_X86_64_TPOFF32 against `per_lcore_retval.3874' can not be used when
making a shared object; recompile with -fPIC
/usr/bin/ld: //usr/local/lib/librte_eal.a(eal_debug.o): relocation
R_X86_64_PC32 against symbol `rte_dump_stack' can not be used when making a
shared object; recompile with -fPIC
/usr/bin/ld: final link failed: Bad value
collect2: error: ld returned 1 exit status
lib/CMakeFiles/uhd.dir/build.make:7976: recipe for target
'lib/libuhd.so.4.0.0' failed
make[2]: *** [lib/libuhd.so.4.0.0] Error 1
CMakeFiles/Makefile2:123: recipe for target 'lib/CMakeFiles/uhd.dir/all'
failed
make[1]: *** [lib/CMakeFiles/uhd.dir/all] Error 2
Makefile:162: recipe for target 'all' failed
make: *** [all] Error 2

I've read somewhere it's because librte_eal is not compiled as a shared
library. But I changed when CONFIG_RTE_BUILD_SHARED_LIB=3Dn building dpdk.

Did you go through this issue too ?

Le ven. 12 juin 2020 =C3=A0 19:37, Carmichael, Ryan <Ryan.Carmichael@dyneti=
cs.com>
a =C3=A9crit :

> Jeremy,
>
>
>
> I went through this recently and I believe you need to build UHD manually=
,
> assuming you are using pre-built UHD binaries. If you=E2=80=99ve installe=
d it, DPDK
> support should be detected when you build the UHD driver (the output of
> cmake should indicate if it finds it or not).
>
>
>
> -          Ryan
>
>
>
>
>
> I recently bought a X310 usrp and a 82599ES 10-Gigabit SFI/SFP+ Network
> Interface Card (the one recommended on the Ettus Website).
>
> I first set my connections and a benchmark test shows a lot of dropped
> samples and some overflows.
> So i decided to try using dpdk to improve my setup.
> I have UHD 3.14.1.1 and I installed dpdk with my apt package manager (dpd=
k
> version 17.11.9).
> I followed this guide
> https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD and when I run the
> benchmark with use_dpdk argument, I got the following:
> [WARNING] [DPDK] Detected use_dpdk argument, but DPDK support not built i=
n.
>
> I really don't understand what's wrong. I tried so many things. I tried
> with dpdk 18 and went back to 17 because it didn't solve anything.
>
> Could anyone help me with that please ?
>
> Jeremy
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

--000000000000a5f17505a7e948bb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Ryan,<div><br></div><div>Thanks for that.</div><div><br=
></div><div>So, I tried to build UHD manually and now when I generate the M=
akeFile, DPDK support is detected.<br>But when I try to build UHD, I got an=
 error when linking shared library libuhd.so:<br><br>/usr/bin/ld: //usr/loc=
al/lib/librte_eal.a(eal_thread.o): relocation R_X86_64_TPOFF32 against `per=
_lcore__thread_id.8433&#39; can not be used when making a shared object; re=
compile with -fPIC<br>/usr/bin/ld: //usr/local/lib/librte_eal.a(eal_vfio.o)=
: relocation R_X86_64_TPOFF32 against `per_lcore__thread_id.6718&#39; can n=
ot be used when making a shared object; recompile with -fPIC<br>/usr/bin/ld=
: //usr/local/lib/librte_eal.a(eal_interrupts.o): relocation R_X86_64_TPOFF=
32 against `per_lcore__epfd&#39; can not be used when making a shared objec=
t; recompile with -fPIC<br>/usr/bin/ld: //usr/local/lib/librte_eal.a(eal_co=
mmon_log.o): relocation R_X86_64_TPOFF32 against `per_lcore_log_cur_msg&#39=
; can not be used when making a shared object; recompile with -fPIC<br>/usr=
/bin/ld: //usr/local/lib/librte_eal.a(eal_common_errno.o): relocation R_X86=
_64_TPOFF32 against `per_lcore_retval.3874&#39; can not be used when making=
 a shared object; recompile with -fPIC<br>/usr/bin/ld: //usr/local/lib/libr=
te_eal.a(eal_debug.o): relocation R_X86_64_PC32 against symbol `rte_dump_st=
ack&#39; can not be used when making a shared object; recompile with -fPIC<=
br>/usr/bin/ld: final link failed: Bad value<br>collect2: error: ld returne=
d 1 exit status<br>lib/CMakeFiles/uhd.dir/build.make:7976: recipe for targe=
t &#39;lib/libuhd.so.4.0.0&#39; failed<br>make[2]: *** [lib/libuhd.so.4.0.0=
] Error 1<br>CMakeFiles/Makefile2:123: recipe for target &#39;lib/CMakeFile=
s/uhd.dir/all&#39; failed<br>make[1]: *** [lib/CMakeFiles/uhd.dir/all] Erro=
r 2<br>Makefile:162: recipe for target &#39;all&#39; failed<br>make: *** [a=
ll] Error 2<br><br>I&#39;ve read somewhere it&#39;s because librte_eal is n=
ot compiled as a shared library. But I changed when=C2=A0<span style=3D"bac=
kground-color:rgb(251,252,253);color:rgb(0,0,0);font-family:monospace,fixed=
;font-size:14.7px">CONFIG_RTE_BUILD_SHARED_LIB=3Dn</span>=C2=A0building dpd=
k.<br><br>Did you go through this issue too ?</div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0ven. 12 juin 202=
0 =C3=A0=C2=A019:37, Carmichael, Ryan &lt;<a href=3D"mailto:Ryan.Carmichael=
@dynetics.com">Ryan.Carmichael@dynetics.com</a>&gt; a =C3=A9crit=C2=A0:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_-3701924409997081759WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">Jeremy,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">I went through this recently and I believe y=
ou need to build UHD manually, assuming you are using pre-built UHD binarie=
s. If you=E2=80=99ve installed it, DPDK support
 should be detected when you build the UHD driver (the output of cmake shou=
ld indicate if it finds it or not).<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"gmail-m_-3701924409997081759MsoListParagraph"><u></u><span styl=
e=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)"><s=
pan>-<span style=3D"font:7pt &quot;Times New Roman&quot;">=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span></span><u></u><span style=3D"font-size:11pt;font-family:Calib=
ri,sans-serif;color:rgb(31,73,125)">Ryan<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p><span style=3D"font-size:10pt">I recently bought a X310 usrp and a 82599=
ES 10-Gigabit SFI/SFP+ Network Interface Card (the one recommended on the E=
ttus Website).<br>
<br>
I first set my connections and a benchmark test shows a lot of dropped samp=
les and some overflows.<br>
So i decided to try using dpdk to improve my setup.<br>
I have UHD 3.14.1.1 and I installed dpdk with my apt package manager (dpdk =
version 17.11.9).<br>
I followed this guide <a href=3D"https://kb.ettus.com/Getting_Started_with_=
DPDK_and_UHD" target=3D"_blank">
https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD</a> and when I run t=
he benchmark with use_dpdk argument, I got the following:<br>
</span><code><span style=3D"font-size:10pt">[WARNING] [DPDK] Detected use_d=
pdk argument, but DPDK support not built in.</span></code><u></u><u></u></p=
>
<p><span style=3D"font-size:10pt">I really don&#39;t understand what&#39;s =
wrong. I tried so many things. I tried with dpdk 18 and went back to 17 bec=
ause it didn&#39;t solve anything.<br>
<br>
Could anyone help me with that please ?<br>
<br>
Jeremy</span><u></u><u></u></p>
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

--000000000000a5f17505a7e948bb--


--===============4302393469469097201==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4302393469469097201==--

