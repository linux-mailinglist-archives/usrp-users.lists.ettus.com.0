Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B8FD12D497
	for <lists+usrp-users@lfdr.de>; Mon, 30 Dec 2019 21:54:46 +0100 (CET)
Received: from [::1] (port=55048 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1im23m-0002Re-2c; Mon, 30 Dec 2019 15:54:42 -0500
Received: from mail-lj1-f179.google.com ([209.85.208.179]:40747)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1im23i-0002KP-69
 for usrp-users@lists.ettus.com; Mon, 30 Dec 2019 15:54:38 -0500
Received: by mail-lj1-f179.google.com with SMTP id u1so34506795ljk.7
 for <usrp-users@lists.ettus.com>; Mon, 30 Dec 2019 12:54:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=deE7PWl6XNzbGLB0CrsRR4njlNf98wEsL1XeHdH8ZC8=;
 b=VxcsT7z1ZBkAgPSU80tdVx98Ff/zpeWqpnqDT4jqSGLNPDurKXPUf/4bmx3TR51dv7
 HAhcRIWa2e8CJzqKl9ryeHVi9LVzUB+D41SPlwmekhXYdm3yyINE6g7bHyOjTcwd8Vl5
 1ApC1c+tuFPobvR8lJawGx5l4Sx5047iSyIvtFxyqunr40ib6tRqHPA1dm/S557pw0c0
 d2zRSpF3b8Mp/iYvB5SJ52g2BRgMSbNq0rBI10KzDXzkbvX3kVcwFwOvIuEpurGyI3OW
 SkY4symKPT6DUnXUKkrWHgOp6yTzMwPAfKXmj41cJipXUsPIGD0O8IKpMUKSCvkAEZKD
 M3Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=deE7PWl6XNzbGLB0CrsRR4njlNf98wEsL1XeHdH8ZC8=;
 b=s5B0z0401IgVdgB1qLGuDKY6tHmqrmOKv6ySN8H6na90XKuVld3n8UoF0Kq9jCkKNw
 ztbIRqrb+zBfPzDGwdKOvVLcqQgw9386fDSApoYT2TBI/77chtUlouR9Yih1O3Vyf1bQ
 CBzXQ9Ylz5nN+94L0OZnN9QKleJ9rSSHKHUAZesznHt6ObwgiJ7jgyUkXJkASrq5ETn9
 5BT4TCME/rUlKUVj1z5CsteGi95pxra3FlH0QZ+mnPqFBdF6qreculogojLIreAuTPYc
 lY5+txBUsywN0T/CoKBN5qZLDpfQ6DsPK5j1NLJN6C22Pr0/3zaB+wrdGCSxrj53N9BL
 g4Tg==
X-Gm-Message-State: APjAAAUkkM0/2Ck0S3uTq4vqnMq4bYZ88pZmybvVQw6nRV5LGI2Kqlse
 gs7EZRiLSUOU5a/yM9zfeQYIJi48ALMfZ9hemHXOmvpl
X-Google-Smtp-Source: APXvYqxDcTYCk3gRitd0MV/VKt4Qxe+tIY4G3bPxCSAXz151fs1I12mGC3YNvsB4oau1BicLci5sJgunf9o7JiH70yA=
X-Received: by 2002:a2e:9691:: with SMTP id q17mr39344810lji.91.1577739236242; 
 Mon, 30 Dec 2019 12:53:56 -0800 (PST)
MIME-Version: 1.0
References: <037c01d5aeef$b73a84a0$25af8de0$@iit.demokritos.gr>
 <CANf970Ztj8XHeLzcOZ0NVbXFACnXriJY4mqWuouTQsYpKnWVmw@mail.gmail.com>
 <000001d5b74d$a27c7d50$e77577f0$@iit.demokritos.gr>
In-Reply-To: <000001d5b74d$a27c7d50$e77577f0$@iit.demokritos.gr>
Date: Mon, 30 Dec 2019 14:53:45 -0600
Message-ID: <CANf970Y5Cj_aY71dLnsPNNtXtmcKXz32UgDUw2hAC1rAiUDQ=w@mail.gmail.com>
To: Akis Kourtis <akis.kourtis@iit.demokritos.gr>
Subject: Re: [USRP-users] DPDK build with N310
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
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2800858699116488903=="
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

--===============2800858699116488903==
Content-Type: multipart/related; boundary="000000000000b9efe3059af20a02"

--000000000000b9efe3059af20a02
Content-Type: multipart/alternative; boundary="000000000000b9efe2059af20a01"

--000000000000b9efe2059af20a01
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Akis,

With UHD 3.14.1 you need to run DPDK 17.11

http://files.ettus.com/manual_archive/v3.14.1.0/html/page_dpdk.html

Best,

Sam Reiter
Ettus Research


On Fri, Dec 20, 2019 at 9:53 AM Akis Kourtis <akis.kourtis@iit.demokritos.g=
r>
wrote:

> Hello Sam,
>
>
>
> We are using the DPDK 19.11, and UHD 3.14.1.
>
> The hardware setup is N310(SFP1)<->(ethernet-to-thunderbolt)<->Laptop
> (with thunderbolt).
>
> The problem with the config file is, that we could not find the config
> file anywhere neither on the root or the user folder.
>
> We have created one, and added the DPDK one (from the site). But I
> seriously believe that it is not seen/used.
>
> As the error
>
> No CHDR interfaces found!
>
> Is related to the no IP DPDK interfaces (presumably).
>
>
>
> Thank you for your support!
>
>
>
> *Akis Kourtis*
>
> M.Sc, Ph.D
>
> Research Associate
>
> Media Networks Laboratory
>
> Institute of Information & Telecommunications
>
> National Centre for Scientific Research =E2=80=9CDEMOKRITOS=E2=80=9D
>
>
>
> akis.kourtis@ iit.demokritos.gr
>
> +306948386769
>
> [image: engl LOGOTYPO XORIS ETHNOSIMO ME DIEYTHINSI_3]
>
>
>
> *From:* Sam Reiter <sam.reiter@ettus.com>
> *Sent:* Wednesday, December 18, 2019 9:22 PM
> *To:* Akis Kourtis <akis.kourtis@iit.demokritos.gr>
> *Cc:* usrp-users <usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] DPDK build with N310
>
>
>
> Hey Akis,
>
>
>
> What version of DPDK are you using? What version of UHD do you have on th=
e
> host? I'm not sure that mode of failure is something I'd chalk up to the
> DPDK install.
>
>
>
> Could you give some detail on your config file, DPDK install version(s),
> and hardware setup as well?
>
>
>
> Best,
>
>
>
> Sam Reiter
>
> Ettus Research
>
>
>
>
>
> On Mon, Dec 9, 2019 at 6:21 PM Akis Kourtis via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> Hello all,
>
>
>
> I am trying to build the oai-5g-gNB. I have managed to build the DPDK wit=
h
> uhd successfully, however when I run the probe command I receive the
> following error.
>
>
>
> EAL: Starting I/O threads!
>
> [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
> UHD_3.14.1.HEAD-0-g0347a6d8
>
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=3D10.30.0.218,type=3Dn3xx,product=3Dn310,serial=3D3177E48,claim=
ed=3DFalse,addr=3D192.168.20.2,second_addr=3D192.168.20.2,use_dpdk=3D1
>
> [ERROR] [MPMD] No viable transport path found!
>
> [ERROR] [MPMD] Failure during block enumeration: RuntimeError: No viable
> transport path found!
>
> [INFO] [MPM.PeriphManager] init() called with device args
> `time_source=3Dinternal,clock_source=3Dinternal,second_addr=3D192.168.20.=
2,mgmt_addr=3D10.30.0.218,product=3Dn310,use_dpdk=3D1'.
>
> [WARNING] [MPM.PeriphManager.UDP] Number of detected CHDR devices is
> inconsistent. Dropped from 1 to 0.
>
> [INFO] [MPM.PeriphManager.UDP] No CHDR interfaces found!
>
> Error: RuntimeError: Failed to run enumerate_rfnoc_blocks()
>
>
>
> My guess from reading back posts from the forum, is that the proper DPDK
> file is not read.
>
> I can see a /etc/conf/uhd.conf file, but no /root/.uhd/uhd.conf file.
>
> Am I in the right direction, and if so, how do I enable the user conf fil=
e?
>
>
>
> If not, is there a direction I should head towards?
>
>
>
> Thank you,
>
>
>
> Akis
>
>
>
> *Akis Kourtis*
>
> M.Sc, Ph.D
>
> Research Associate
>
> Media Networks Laboratory
>
> Institute of Information & Telecommunications
>
> National Centre for Scientific Research =E2=80=9CDEMOKRITOS=E2=80=9D
>
>
>
> akis.kourtis@ iit.demokritos.gr
>
> +306948386769
>
> [image: engl LOGOTYPO XORIS ETHNOSIMO ME DIEYTHINSI_3]
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>

--000000000000b9efe2059af20a01
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Akis,</div><div><br></div><div>With UHD 3.14.1 you ne=
ed to run DPDK 17.11 <br></div><div><br></div><div><a href=3D"http://files.=
ettus.com/manual_archive/v3.14.1.0/html/page_dpdk.html">http://files.ettus.=
com/manual_archive/v3.14.1.0/html/page_dpdk.html</a></div><div><br></div><d=
iv>Best,</div><div><br></div><div><div><div dir=3D"ltr" class=3D"gmail_sign=
ature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D=
"ltr">Sam Reiter <br><div>Ettus Research<br></div></div></div></div></div><=
/div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Dec 20, 2019 at 9:53 AM Akis Kourtis &lt;<a href=3D=
"mailto:akis.kourtis@iit.demokritos.gr">akis.kourtis@iit.demokritos.gr</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div =
lang=3D"EN-US"><div class=3D"gmail-m_-2579902974387297553WordSection1"><p c=
lass=3D"MsoNormal">Hello Sam,<u></u><u></u></p><p class=3D"MsoNormal"><u></=
u>=C2=A0<u></u></p><p class=3D"MsoNormal">We are using the DPDK 19.11, and =
UHD 3.14.1. <u></u><u></u></p><p class=3D"MsoNormal">The hardware setup is =
N310(SFP1)&lt;-&gt;(ethernet-to-thunderbolt)&lt;-&gt;Laptop (with thunderbo=
lt).<u></u><u></u></p><p class=3D"MsoNormal">The problem with the config fi=
le is, that we could not find the config file anywhere neither on the root =
or the user folder.<u></u><u></u></p><p class=3D"MsoNormal">We have created=
 one, and added the DPDK one (from the site). But I seriously believe that =
it is not seen/used.<u></u><u></u></p><p class=3D"MsoNormal">As the error <=
u></u><u></u></p><p class=3D"MsoNormal">No CHDR interfaces found!<u></u><u>=
</u></p><p class=3D"MsoNormal">Is related to the no IP DPDK interfaces (pre=
sumably).<u></u><u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><=
p class=3D"MsoNormal">Thank you for your support!<u></u><u></u></p><p class=
=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal"><b><span styl=
e=3D"font-size:10pt;font-family:&quot;Bookman Old Style&quot;,serif" lang=
=3D"EN-GB">Akis Kourtis<u></u><u></u></span></b></p><p class=3D"MsoNormal">=
<span style=3D"font-size:9pt;font-family:&quot;Bookman Old Style&quot;,seri=
f" lang=3D"EN-GB">M.Sc, Ph.D<u></u><u></u></span></p><p class=3D"MsoNormal"=
><span style=3D"font-size:9pt;font-family:&quot;Bookman Old Style&quot;,ser=
if;color:rgb(166,166,166)" lang=3D"EN-GB">Research Associate <u></u><u></u>=
</span></p><p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:=
&quot;Bookman Old Style&quot;,serif;color:rgb(166,166,166)" lang=3D"EN-GB">=
Media Networks Laboratory</span><span style=3D"font-size:9pt;font-family:&q=
uot;Bookman Old Style&quot;,serif;color:rgb(174,170,170)" lang=3D"EN-GB"><u=
></u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-size:9pt;=
font-family:&quot;Bookman Old Style&quot;,serif;color:rgb(174,170,170)" lan=
g=3D"EN-GB">Institute</span><span style=3D"font-size:9pt;font-family:&quot;=
Bookman Old Style&quot;,serif;color:rgb(166,166,166)" lang=3D"EN-GB"> of In=
formation &amp; Telecommunications<u></u><u></u></span></p><p class=3D"MsoN=
ormal"><span style=3D"font-size:9pt;font-family:&quot;Bookman Old Style&quo=
t;,serif;color:rgb(166,166,166)" lang=3D"EN-GB">National Centre for Scienti=
fic Research =E2=80=9CDEMOKRITOS=E2=80=9D<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span style=3D"font-size:3pt;font-family:&quot;Bookman Old S=
tyle&quot;,serif;color:rgb(166,166,166)" lang=3D"EN-GB"><u></u>=C2=A0<u></u=
></span></p><p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family=
:&quot;Bookman Old Style&quot;,serif;color:rgb(166,166,166)" lang=3D"EN-GB"=
>akis.kourtis@ <a href=3D"http://iit.demokritos.gr" target=3D"_blank">iit.d=
emokritos.gr</a><u></u><u></u></span></p><p class=3D"MsoNormal"><span style=
=3D"font-size:9pt;font-family:&quot;Bookman Old Style&quot;,serif;color:rgb=
(166,166,166)" lang=3D"EN-GB">+306948386769<u></u><u></u></span></p><p clas=
s=3D"MsoNormal"><span style=3D"font-size:10pt;color:rgb(31,73,125)" lang=3D=
"EL"><img style=3D"width: 6in; height: 1.0833in;" id=3D"gmail-m_-2579902974=
387297553=CE=95=CE=B9=CE=BA=CF=8C=CE=BD=CE=B1_x0020_1" src=3D"cid:16f589478=
8b4ce8e91" alt=3D"engl LOGOTYPO XORIS ETHNOSIMO ME DIEYTHINSI_3" width=3D"5=
76" height=3D"104"></span><span lang=3D"EN-GB"><u></u><u></u></span></p><p =
class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal"><b>From:=
</b> Sam Reiter &lt;<a href=3D"mailto:sam.reiter@ettus.com" target=3D"_blan=
k">sam.reiter@ettus.com</a>&gt; <br><b>Sent:</b> Wednesday, December 18, 20=
19 9:22 PM<br><b>To:</b> Akis Kourtis &lt;<a href=3D"mailto:akis.kourtis@ii=
t.demokritos.gr" target=3D"_blank">akis.kourtis@iit.demokritos.gr</a>&gt;<b=
r><b>Cc:</b> usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" t=
arget=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br><b>Subject:</b> Re: =
[USRP-users] DPDK build with N310<u></u><u></u></p><p class=3D"MsoNormal"><=
u></u>=C2=A0<u></u></p><div><p class=3D"MsoNormal">Hey Akis,<u></u><u></u><=
/p><div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p></div><div><p class=
=3D"MsoNormal">What version of DPDK are you using? What version of UHD do y=
ou have on the host? I&#39;m not sure that mode of failure is something I&#=
39;d chalk up to the DPDK install.=C2=A0<u></u><u></u></p></div><div><p cla=
ss=3D"MsoNormal"><u></u>=C2=A0<u></u></p></div><div><p class=3D"MsoNormal">=
Could you give some detail on your=C2=A0config file, DPDK install version(s=
), and hardware setup as well?<u></u><u></u></p></div><div><p class=3D"MsoN=
ormal"><u></u>=C2=A0<u></u></p></div><div><p class=3D"MsoNormal">Best,<u></=
u><u></u></p></div><div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><div=
><div><div><div><div><div><p class=3D"MsoNormal">Sam Reiter=C2=A0<u></u><u>=
</u></p><div><p class=3D"MsoNormal">Ettus Research<u></u><u></u></p></div><=
/div></div></div></div></div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p=
></div></div></div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><div><div=
><p class=3D"MsoNormal">On Mon, Dec 9, 2019 at 6:21 PM Akis Kourtis via USR=
P-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"=
>usrp-users@lists.ettus.com</a>&gt; wrote:<u></u><u></u></p></div><blockquo=
te style=3D"border-color:currentcolor currentcolor currentcolor rgb(204,204=
,204);border-style:none none none solid;border-width:medium medium medium 1=
pt;padding:0in 0in 0in 6pt;margin-left:4.8pt;margin-right:0in"><div><div><p=
 class=3D"MsoNormal">Hello all,<u></u><u></u></p><p class=3D"MsoNormal">=C2=
=A0<u></u><u></u></p><p class=3D"MsoNormal">I am trying to build the oai-5g=
-gNB. I have managed to build the DPDK with uhd successfully, however when =
I run the probe command I receive the following error.<u></u><u></u></p><p =
class=3D"MsoNormal">=C2=A0<u></u><u></u></p><p class=3D"MsoNormal">EAL: Sta=
rting I/O threads!<u></u><u></u></p><p class=3D"MsoNormal">[INFO] [UHD] lin=
ux; GNU C++ version 7.4.0; Boost_106501; UHD_3.14.1.HEAD-0-g0347a6d8<u></u>=
<u></u></p><p class=3D"MsoNormal">[INFO] [MPMD] Initializing 1 device(s) in=
 parallel with args: mgmt_addr=3D10.30.0.218,type=3Dn3xx,product=3Dn310,ser=
ial=3D3177E48,claimed=3DFalse,addr=3D192.168.20.2,second_addr=3D192.168.20.=
2,use_dpdk=3D1<u></u><u></u></p><p class=3D"MsoNormal">[ERROR] [MPMD] No vi=
able transport path found!<u></u><u></u></p><p class=3D"MsoNormal">[ERROR] =
[MPMD] Failure during block enumeration: RuntimeError: No viable transport =
path found!<u></u><u></u></p><p class=3D"MsoNormal">[INFO] [MPM.PeriphManag=
er] init() called with device args `time_source=3Dinternal,clock_source=3Di=
nternal,second_addr=3D192.168.20.2,mgmt_addr=3D10.30.0.218,product=3Dn310,u=
se_dpdk=3D1&#39;.<u></u><u></u></p><p class=3D"MsoNormal">[WARNING] [MPM.Pe=
riphManager.UDP] Number of detected CHDR devices is inconsistent. Dropped f=
rom 1 to 0.<u></u><u></u></p><p class=3D"MsoNormal">[INFO] [MPM.PeriphManag=
er.UDP] No CHDR interfaces found!<u></u><u></u></p><p class=3D"MsoNormal">E=
rror: RuntimeError: Failed to run enumerate_rfnoc_blocks()<u></u><u></u></p=
><p class=3D"MsoNormal">=C2=A0<u></u><u></u></p><p class=3D"MsoNormal">My g=
uess from reading back posts from the forum, is that the proper DPDK file i=
s not read.<u></u><u></u></p><p class=3D"MsoNormal">I can see a /etc/conf/u=
hd.conf file, but no /root/.uhd/uhd.conf file.<u></u><u></u></p><p class=3D=
"MsoNormal">Am I in the right direction, and if so, how do I enable the use=
r conf file?<u></u><u></u></p><p class=3D"MsoNormal">=C2=A0<u></u><u></u></=
p><p class=3D"MsoNormal">If not, is there a direction I should head towards=
?<u></u><u></u></p><p class=3D"MsoNormal">=C2=A0<u></u><u></u></p><p class=
=3D"MsoNormal">Thank you,<u></u><u></u></p><p class=3D"MsoNormal">=C2=A0<u>=
</u><u></u></p><p class=3D"MsoNormal">Akis<u></u><u></u></p><p class=3D"Mso=
Normal">=C2=A0<u></u><u></u></p><p class=3D"MsoNormal"><b><span style=3D"fo=
nt-size:10pt;font-family:&quot;Bookman Old Style&quot;,serif" lang=3D"EN-GB=
">Akis Kourtis</span></b><u></u><u></u></p><p class=3D"MsoNormal"><span sty=
le=3D"font-size:9pt;font-family:&quot;Bookman Old Style&quot;,serif" lang=
=3D"EN-GB">M.Sc, Ph.D</span><u></u><u></u></p><p class=3D"MsoNormal"><span =
style=3D"font-size:9pt;font-family:&quot;Bookman Old Style&quot;,serif;colo=
r:rgb(166,166,166)" lang=3D"EN-GB">Research Associate </span><u></u><u></u>=
</p><p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;B=
ookman Old Style&quot;,serif;color:rgb(166,166,166)" lang=3D"EN-GB">Media N=
etworks Laboratory</span><u></u><u></u></p><p class=3D"MsoNormal"><span sty=
le=3D"font-size:9pt;font-family:&quot;Bookman Old Style&quot;,serif;color:r=
gb(174,170,170)" lang=3D"EN-GB">Institute</span><span style=3D"font-size:9p=
t;font-family:&quot;Bookman Old Style&quot;,serif;color:rgb(166,166,166)" l=
ang=3D"EN-GB"> of Information &amp; Telecommunications</span><u></u><u></u>=
</p><p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:&quot;B=
ookman Old Style&quot;,serif;color:rgb(166,166,166)" lang=3D"EN-GB">Nationa=
l Centre for Scientific Research =E2=80=9CDEMOKRITOS=E2=80=9D</span><u></u>=
<u></u></p><p class=3D"MsoNormal"><span style=3D"font-size:3pt;font-family:=
&quot;Bookman Old Style&quot;,serif;color:rgb(166,166,166)" lang=3D"EN-GB">=
=C2=A0</span><u></u><u></u></p><p class=3D"MsoNormal"><span style=3D"font-s=
ize:9pt;font-family:&quot;Bookman Old Style&quot;,serif;color:rgb(166,166,1=
66)" lang=3D"EN-GB">akis.kourtis@ <a href=3D"http://iit.demokritos.gr" targ=
et=3D"_blank">iit.demokritos.gr</a></span><u></u><u></u></p><p class=3D"Mso=
Normal"><span style=3D"font-size:9pt;font-family:&quot;Bookman Old Style&qu=
ot;,serif;color:rgb(166,166,166)" lang=3D"EN-GB">+306948386769</span><u></u=
><u></u></p><p class=3D"MsoNormal"><span style=3D"font-size:10pt;color:rgb(=
31,73,125)" lang=3D"EL"><img style=3D"width: 6in; height: 1.0833in;" id=3D"=
gmail-m_-2579902974387297553gmail-m_766158547667184598=CE=95=CE=B9=CE=BA=CF=
=8C=CE=BD=CE=B1_x0020_1" src=3D"cid:16f5894788b4ce8e91" alt=3D"engl LOGOTYP=
O XORIS ETHNOSIMO ME DIEYTHINSI_3" width=3D"576" height=3D"104" border=3D"0=
"></span><u></u><u></u></p><p class=3D"MsoNormal">=C2=A0<u></u><u></u></p><=
/div></div><p class=3D"MsoNormal">_________________________________________=
______<br>USRP-users mailing list<br><a href=3D"mailto:USRP-users@lists.ett=
us.com" target=3D"_blank">USRP-users@lists.ettus.com</a><br><a href=3D"http=
://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target=3D"_=
blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</=
a><u></u><u></u></p></blockquote></div></div></div></blockquote></div>

--000000000000b9efe2059af20a01--
--000000000000b9efe3059af20a02
Content-Type: image/jpeg; name="image001.jpg"
Content-Disposition: inline; filename="image001.jpg"
Content-Transfer-Encoding: base64
Content-ID: <16f5894788b4ce8e91>
X-Attachment-Id: 16f5894788b4ce8e91

/9j/4AAQSkZJRgABAQEAYABgAAD/2wBDAAoHBwkHBgoJCAkLCwoMDxkQDw4ODx4WFxIZJCAmJSMg
IyIoLTkwKCo2KyIjMkQyNjs9QEBAJjBGS0U+Sjk/QD3/2wBDAQsLCw8NDx0QEB09KSMpPT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT3/wAARCABoAkADASIA
AhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQA
AAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3
ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWm
p6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEA
AwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSEx
BhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElK
U1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3
uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwDuNQ+J
Oi6bqFxZzrdebA5R9sWRkenNV/8Aha2gA/dvP+/P/wBevPtaszqHxEu7Res1/s/AkZ/SqvinTbbT
dWZtPO7T518y3I9MkFfwINd8cPTdk92crqz1PS/+FraB/dvP+/P/ANetfw94v07xNNPHYCcNCoZv
MTbwa8hs9ECJrEd/Hie1sRcRhX6ElcE468Gum+ELqupaluIBMSY9+TUVKNNQbj0HCpJySZ6tRms6
TXLNJWiEmZFGWBH3fqOtNGsBrYyxQSSnYZFwpAI9yen41xnSalFZem67DfrEGilt5Zc7Y5Rgtjrj
1rUoAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACi
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
--000000000000b9efe3059af20a02--


--===============2800858699116488903==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2800858699116488903==--

