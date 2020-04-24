Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B431B6BEC
	for <lists+usrp-users@lfdr.de>; Fri, 24 Apr 2020 05:26:34 +0200 (CEST)
Received: from [::1] (port=44924 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jRoz1-0008Ek-BZ; Thu, 23 Apr 2020 23:26:31 -0400
Received: from mail-ua1-f45.google.com ([209.85.222.45]:33398)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1jRoyx-00089N-Lz
 for usrp-users@lists.ettus.com; Thu, 23 Apr 2020 23:26:27 -0400
Received: by mail-ua1-f45.google.com with SMTP id v24so8082008uak.0
 for <usrp-users@lists.ettus.com>; Thu, 23 Apr 2020 20:26:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=edeNhj/5NyC0VQPhwrcwnO6ek1NLMdVXYwS2SXX+tBQ=;
 b=jPC6YS8rDjqIwAXAurQtjs5DA5IycAaqHe7Rjs7HS+XIFAeGHfbtJD9sjEYEJhukLZ
 XVrItYgSAJISLqY47Zgg1r4+E+PhsvixvEzqlIwsjQWvyvYW+aY6ypXE7McHcoAzyHgy
 M0h0ZcVsUWfFEmhtAtJYB+ZNCCBWU2HXX8NLTxQ+wj8CMdSCGdCtCednvYdes1l8EhCA
 UlXpeIEcs5pAbnLp89J4PXCcvNJH3MXHrxT6+GmdBNYISdxHdRTU6sjI6frYF7gv869m
 Z87z5hPmfvKqLMdAO0IUBbSE98/0Q/vQb+/T1g5UJ0mMlLqkwj1Cc4P+P2qPcfGBs5Wo
 ilww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=edeNhj/5NyC0VQPhwrcwnO6ek1NLMdVXYwS2SXX+tBQ=;
 b=Vf8VwRxJ7S2IAXQ/ZAIZpRYblvPoYpcnTNXZmXnpmMu0rNIgOntSziKrPgSSbEV/Ma
 S4yZyiaPAhUtAOlL52ohPG90L2oMPoh69iMJl0xZ1BMWywgE0Goe4t1RcrWWUC24hijz
 TBLkuY2o8XpuHnrViLVSqIS5w/tEMBQNZnGFj8QbLjy+LRJhA2Xf8cTUxOjMRhro3ASN
 wTAUQBCoH4c0BIijDOOQ9ArfpJdOHoAuW6ddJ7dFqkbA25Hwe8LMhimFRoKkYcWjUqpY
 7+JQz5MwU5eQh8BjFeGqXzePB2T7qS4xd+jAtCJxKuOCD3v4K/gGp8X+bDbpM6x59ZMy
 iV3A==
X-Gm-Message-State: AGi0PuZ3djubLwoA2IipS67RnqVtGQPHjqz7NMVWgc6z1OuOXQkRA32g
 Lc9VHT5dCMhcDT27RwX1k7JsT2f4N7jT8oCtNXhYh5bv
X-Google-Smtp-Source: APiQypL9tx6LMXajC7b1k4IQUz94++b03Wp3k5DyYqWPu6ZiVd3Fj42+zQk9u3iuqZUh7IGldsjXv1Ar3igo/Zx2n+w=
X-Received: by 2002:a05:6102:12:: with SMTP id
 j18mr6187846vsp.197.1587698747047; 
 Thu, 23 Apr 2020 20:25:47 -0700 (PDT)
MIME-Version: 1.0
References: <eb1fa60c44c4410a814e83a4fdf45df9@MLBXCH12.cs.myharris.net>
 <CAEXYVK4synzzXW-SOAJYXUTWyAdn5_iL_CL=Nx1YNX6+6dokAw@mail.gmail.com>
 <981b3933889d4926b73fd243d3f9f3a9@MLBXCH12.cs.myharris.net>
In-Reply-To: <981b3933889d4926b73fd243d3f9f3a9@MLBXCH12.cs.myharris.net>
Date: Thu, 23 Apr 2020 23:25:10 -0400
Message-ID: <CAL7q81uhuQtwdzJ8nP6mjKqn-GaGFt1i_BO401upQFh+264h1A@mail.gmail.com>
To: "Harris, Dan" <Dan.Harris@l3harris.com>
Subject: Re: [USRP-users] Cygwin build of E310_SG3
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
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8172731262505070621=="
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

--===============8172731262505070621==
Content-Type: multipart/alternative; boundary="000000000000d40b1c05a400eb92"

--000000000000d40b1c05a400eb92
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Dan,

Checkout UHD-3.15.LTS, which is the long term support tag for 3.15 and uses
Vivado 2018.3. Also run "make cleanall" in the usrp3/top/e31x directory to
remove any IP that may have been built with the wrong version (i.e. 2019.1)=
.

Jonathon

On Tue, Apr 21, 2020 at 7:32 AM Harris, Dan via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I followed the instructions here which suggest 2019.1:
> https://files.ettus.com/manual/md_usrp3_build_instructions.html.  I had
> actually tried 2019.2 at first and reverted to 2019.1 since all the IP wa=
s
> locked.  I could try 2018.3 but I don=E2=80=99t really understand the rul=
es around
> the locking stuff, and whether that would work.
>
>
>
> In the master pull of (https://github.com/EttusResearch/uhd.git)
> fpga/usrp3/top/e31x/setupenv.sh seems to be looking for 2019.1.  Perhaps =
I
> made a poor choice in using master?  Is there a stable branch or somethin=
g
> I should have chosen instead?
>
>
>
> I will give WSL a try =E2=80=93 I haven=E2=80=99t used it yet but it soun=
ds like it may be
> less painful than Cygwin.
>
>
>
> *From:* Brian Padalino <bpadalino@gmail.com>
> *Sent:* Monday, April 20, 2020 6:12 PM
> *To:* Harris, Dan (US) <Dan.Harris@L3Harris.com>
> *Cc:* usrp-users@lists.ettus.com
> *Subject:* [EXTERNAL] Re: [USRP-users] Cygwin build of E310_SG3
>
>
>
> On Mon, Apr 20, 2020 at 2:24 PM Harris, Dan via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>
>
> Is the windows Cygwin build of the E310_SG3 target being maintained?
>
>
>
> I have been following the build instructions and have Vivado 2019.1
> installed.  It is failing in multiple points in the generation of the IP.
> I had to correct some paths that should have been windows-ized but did no=
t
> seem to be in tools/make/viv_hls_ip_builder.mak.
>
>
>
> I can build at least one of the components (IP fifo_short_2clk), so I am
> somewhat confident that Vivado is installed correctly, and that my =E2=80=
=98source
> setupenv.sh=E2=80=99 was done properly.
>
>
>
> This seems strange.  You need to have Vivado 2018.3 installed for the
> setupenv.sh to run properly.  Try installing 2018.3 and ditching 2019.1
> first.
>
>
>
> Also, just as a point of reference, I've successfully used WSL (linux on
> windows) to install Vivado and build successfully.  Running in cygwin
> sounds like a real pain, and I fully recommend linux (native or wsl) for
> building.
>
>
>
> Brian
>
>
> CONFIDENTIALITY NOTICE: This email and any attachments are for the sole
> use of the intended recipient and may contain material that is proprietar=
y,
> confidential, privileged or otherwise legally protected or restricted und=
er
> applicable government laws. Any review, disclosure, distributing or other
> use without expressed permission of the sender is strictly prohibited. If
> you are not the intended recipient, please contact the sender and delete
> all copies without reading, printing, or saving.
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000d40b1c05a400eb92
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Dan,<div><br></div><div>Checkout UHD-3.15.LTS, which is=
 the long=C2=A0term support tag for 3.15 and uses Vivado 2018.3. Also run &=
quot;make cleanall&quot; in the usrp3/top/e31x directory to remove any IP t=
hat may have been built with the wrong version (i.e. 2019.1).</div><div><br=
></div><div>Jonathon</div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Tue, Apr 21, 2020 at 7:32 AM Harris, Dan via U=
SRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@list=
s.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_8340283768849999223WordSection1">
<p class=3D"MsoNormal">I followed the instructions here which suggest 2019.=
1:=C2=A0 <a href=3D"https://files.ettus.com/manual/md_usrp3_build_instructi=
ons.html" target=3D"_blank">
https://files.ettus.com/manual/md_usrp3_build_instructions.html</a>.=C2=A0 =
I had actually tried 2019.2 at first and reverted to 2019.1 since all the I=
P was locked.=C2=A0 I could try 2018.3 but I don=E2=80=99t really understan=
d the rules around the locking stuff, and whether
 that would work.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">In the master pull of (<span style=3D"font-size:9pt;=
font-family:&quot;Lucida Console&quot;"><a href=3D"https://github.com/Ettus=
Research/uhd.git" target=3D"_blank">https://github.com/EttusResearch/uhd.gi=
t</a></span>)=C2=A0 fpga/usrp3/top/e31x/setupenv.sh seems to be looking
 for 2019.1.=C2=A0 Perhaps I made a poor choice in using master?=C2=A0 Is t=
here a stable branch or something I should have chosen instead?<u></u><u></=
u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I will give WSL a try =E2=80=93 I haven=E2=80=99t us=
ed it yet but it sounds like it may be less painful than Cygwin.<u></u><u><=
/u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><a name=3D"m_8340283768849999223______replyseparator=
"></a><b>From:</b> Brian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com=
" target=3D"_blank">bpadalino@gmail.com</a>&gt;
<br>
<b>Sent:</b> Monday, April 20, 2020 6:12 PM<br>
<b>To:</b> Harris, Dan (US) &lt;Dan.Harris@L3Harris.com&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> [EXTERNAL] Re: [USRP-users] Cygwin build of E310_SG3<u></u>=
<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Mon, Apr 20, 2020 at 2:24 PM Harris, Dan via USRP=
-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a>&gt; wrote:<u></u><u></u></p>
</div>
<div>
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;b=
order-left:1pt solid rgb(204,204,204);padding:0in 0in 0in 6pt;margin:5pt 0i=
n 5pt 4.8pt">
<div>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">Is the windows Cygwin build of the E310_SG3 target b=
eing maintained?
<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">I have been following the build instructions and hav=
e Vivado 2019.1 installed.=C2=A0 It is failing in multiple points in the ge=
neration of the IP.=C2=A0 I had to correct some paths that should
 have been windows-ized but did not seem to be in tools/make/viv_hls_ip_bui=
lder.mak.<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">I can build at least one of the components (<span st=
yle=3D"font-size:9pt;font-family:&quot;Lucida Console&quot;">IP fifo_short_=
2clk</span>), so I am somewhat confident that Vivado is installed
 correctly, and that my =E2=80=98source setupenv.sh=E2=80=99 was done prope=
rly.<u></u><u></u></p>
</div>
</div>
</blockquote>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">This seems strange.=C2=A0 You need to have Vivado 20=
18.3 installed for the setupenv.sh to run properly.=C2=A0 Try installing 20=
18.3 and ditching 2019.1 first.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Also, just as a point of reference, I&#39;ve success=
fully=C2=A0used WSL (linux on windows) to install Vivado and build successf=
ully.=C2=A0 Running in cygwin sounds like a real pain, and I fully recommen=
d linux (native or wsl) for building.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Brian<u></u><u></u></p>
</div>
</div>
</div>
</div>
<span><span><br>=C2=A0</span>=C2=A0</span><br>
<div><span style=3D"font-family:&quot;Times New Roman&quot;"><span style=3D=
"font-size:14px">CONFIDENTIALITY NOTICE: This email and any attachments are=
 for the sole use of the intended recipient and may contain material that i=
s proprietary, confidential, privileged or otherwise legally protected or r=
estricted under applicable government laws. Any review, disclosure, distrib=
uting or other use without expressed permission of the sender is strictly p=
rohibited. If you are not the intended recipient, please contact the sender=
 and delete all copies without reading, printing, or saving.</span></span>
<div style=3D"font-size:14px;font-family:&quot;Times New Roman&quot;"><br><=
/div></div></div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000d40b1c05a400eb92--


--===============8172731262505070621==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8172731262505070621==--

