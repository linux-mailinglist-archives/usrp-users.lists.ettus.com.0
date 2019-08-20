Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 438C996980
	for <lists+usrp-users@lfdr.de>; Tue, 20 Aug 2019 21:33:28 +0200 (CEST)
Received: from [::1] (port=39310 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i09sk-0006Bc-8i; Tue, 20 Aug 2019 15:33:26 -0400
Received: from mail-lj1-f182.google.com ([209.85.208.182]:33630)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1i09sg-00066Y-8O
 for usrp-users@lists.ettus.com; Tue, 20 Aug 2019 15:33:22 -0400
Received: by mail-lj1-f182.google.com with SMTP id z17so6241857ljz.0
 for <usrp-users@lists.ettus.com>; Tue, 20 Aug 2019 12:33:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=VoUEee7bnIrf0CX5ionrSEkDIPDdRuH8l/3ZCIMKY+Y=;
 b=XKFakbpih0hRxjQWb8RJyAlyuC9BVxTkmcaose0ogvhQBQXjAPovVtzxBER7jC56HN
 soHBiTpV1/G5wHPLaZF+6DT1ffSaRg8CuuBJvkt6Gyt7sBRNDc0uHUUqYUWchoxs0azf
 u3DdDzvy/M5JIWNdfWzwq47MNI2nK85g5ldCOmY8895SZ0+muV5SDV4Yoz2CxXVSItTy
 2VGu74Wc4ZWEPyIvVZtTEcIzRgQnARQIFEA6F+ZYZZeQ4bXExkydGeO9BAoD+z4/eorU
 7UgHFK0h3a7goJzRZRa3sQP4MpvUyvYYFFb4T2faZvQn/OsTMWR1VcRnigRONzXfh485
 sHtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=VoUEee7bnIrf0CX5ionrSEkDIPDdRuH8l/3ZCIMKY+Y=;
 b=CbYe+5mfQV5fnSSaNbCCtR/cHraIEjEian000btDc8M9qWyhI3mZsQkoVEScy8zhuU
 eao6EPIQH/LNQQbnRWSKggbTRGPujd1U6RYmmCViaQPYzwjHOs0ZnWhPVxjFJ9jC65y3
 9tEL07zndhng+46PjFHomMRLqppITK+k1YPYWgoXsZsb4Lm80Qm8Vi03m6a+A3GdwRE8
 HrjWZ6GGnBw56uTUMPzkqQ59JIE79/eYA4uEgdzQ2KXG0eIMSIlQ3aTjpxi5MjYCjlqk
 46sOwOPBh5GrkcsUhXAfofOSi57f4lQytYsTjJqziCz7RIcE3A++P0buUDGo/mQr6U02
 8BmQ==
X-Gm-Message-State: APjAAAUn4vimEJ5ExWOSmOsA8QWXDyl0xj4D7y0Cfje6FFbZJtcEKUCq
 f/3dmT8KLEd93uS/D4ESK18UmEHzoM6t2VfoiCO1v7YF
X-Google-Smtp-Source: APXvYqzWH4PQjfrLD55+AOMrcuM7al8sBQgOL+eQ81ZFDkLByiDh/NSnGepM1N/KFADY9g4gzwMmFc2QwFUDBU+HjbI=
X-Received: by 2002:a2e:6111:: with SMTP id v17mr12489007ljb.30.1566329560929; 
 Tue, 20 Aug 2019 12:32:40 -0700 (PDT)
MIME-Version: 1.0
References: <BL0PR02MB3716F0B244D891333FE1A648AAAB0@BL0PR02MB3716.namprd02.prod.outlook.com>
 <CANf970Y4BUfLQLoXTN7qXEjoCuT4=07D1Vad7_dbYkbHj_hQvw@mail.gmail.com>
 <BL0PR02MB371652F9FB5636C7B758C7C4AAAB0@BL0PR02MB3716.namprd02.prod.outlook.com>
In-Reply-To: <BL0PR02MB371652F9FB5636C7B758C7C4AAAB0@BL0PR02MB3716.namprd02.prod.outlook.com>
Date: Tue, 20 Aug 2019 14:32:29 -0500
Message-ID: <CANf970Z3YTuvgmmPk92rezcaUK+05zZs_D-4N=BJ6q87waTnzw@mail.gmail.com>
To: "Jiang, Fengyang" <fzj28@psu.edu>, usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] A Question about Synchronization
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
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Content-Type: multipart/mixed; boundary="===============8182226266864515762=="
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

--===============8182226266864515762==
Content-Type: multipart/alternative; boundary="00000000000014ad72059091850a"

--00000000000014ad72059091850a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Let's keep the usrp-users list included on these communications -- there
are plenty of folks far more experienced than myself who may have valuable
input.

Why don't we look at this from the standpoint of your requirements. What is
your end goal with synchronizing your two devices? Do you need time
alignment of samples, phase coherence between channels, a consistent start
time between your two benchmarking programs, or something else?

Discussing your application and end goal would be helpful here as well.

-Sam

On Tue, Aug 20, 2019 at 2:18 PM Jiang, Fengyang <fzj28@psu.edu> wrote:

> Hi Sam,
>
> Thank you for your help! Indeed I'm using benchmark scripts and I think
> adding arguments will help. I'm using two seperated commands for
> transmitting and receiving, so if I use:
>
> python3 benchmark_tx_copied_from_ins.py -f 2.45G
> --args=3D"addr=3D192.168.10.3, clock_source=3Dexternal, time_source=3Dext=
ernal"
> --tx-gain=3D40 --bandwidth=3D1M
> python3 benchmark_rx_copied_from_ins.py -f 2.45G
> --args=3D"addr=3D192.168.10.2, clock_source=3Dexternal, time_source=3Dext=
ernal"
> --rx-gain=3D40 --bandwidth=3D1M
>
> will that satisfy my requirements? Thank you so much!
>
> Best regards,
> Fengyang
> ------------------------------
> *=E5=8F=91=E4=BB=B6=E4=BA=BA:* Sam Reiter <sam.reiter@ettus.com>
> *=E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4:* 2019=E5=B9=B48=E6=9C=8820=E6=97=
=A5 14:43
> *=E6=94=B6=E4=BB=B6=E4=BA=BA:* Jiang, Fengyang <fzj28@psu.edu>
> *=E4=B8=BB=E9=A2=98:* Re: [USRP-users] A Question about Synchronization
>
> How you implement this will depend on what makes the most sense for your
> application. If you're just getting started running shipping examples, yo=
u
> can add device arguments for clock_source and time_source to specify
> external time sources. For example:
>
> ./benchmark_rate --rx_rate=3D1e6 --tx_rate=3D1e6 --args
> addr0=3D192.168.10.2,addr1=3D192.168.10.3,clock_source0=3Dexternal,time_s=
ource0=3Dexternal,clock_source1=3Dexternal,time_source1=3Dexternal
>
> As you move on from shipping examples, you would want to include
>
> usrp->set_clock_source("external");
> usrp->set_time_source("external");
>
> at the appropriate place in your code to configure timing.
>
> -Sam
>
> On Tue, Aug 20, 2019 at 1:09 PM Jiang, Fengyang via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> Hi all,
>
> I'm trying to synchronize 2 USRP N210 devices using the OctoClock-G
> CDA-2990 as external 10MHz reference and PPS sources. It is said that I
> need to set up two configurations:
>
> usrp->set_clock_source("external");
> usrp->set_time_source("external");
>
> Which file in which path should I modify in order to apply these
> configurations? Thanks a lot!
>
> Best regards,
> Fengyang Jiang
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> <https://nam01.safelinks.protection.outlook.com/?url=3Dhttp%3A%2F%2Flists=
.ettus.com%2Fmailman%2Flistinfo%2Fusrp-users_lists.ettus.com&data=3D02%7C01=
%7Cfzj28%40psu.edu%7C289a9a49c5fa46b4744108d7259e57f3%7C7cf48d453ddb4389a9c=
1c115526eb52e%7C0%7C1%7C637019234325754870&sdata=3DWLHShWdleLNLl3jhiGls9YgS=
Ia2AwaJTAoImXzjZHRc%3D&reserved=3D0>
>
>

--00000000000014ad72059091850a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Let&#39;s keep the usrp-users list i=
ncluded on these communications -- there are plenty of folks far more exper=
ienced than myself who may have valuable input. <br></div><div><br></div><d=
iv>Why don&#39;t we look at this from the standpoint of your requirements.
 What is your end goal with synchronizing your two devices? Do you need=20
time alignment of samples, phase coherence between channels, a=20
consistent start time between your two benchmarking programs, or=20
something else?</div><div><br></div><div>Discussing your application and en=
d goal would be helpful here as well. <br></div><div><br></div><div><div di=
r=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div=
 dir=3D"ltr"><div><div dir=3D"ltr">-Sam</div><div dir=3D"ltr"><br></div></d=
iv></div></div></div></div><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Tue, Aug 20, 2019 at 2:18 PM Jiang, Fengyang &lt;<a hre=
f=3D"mailto:fzj28@psu.edu">fzj28@psu.edu</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Hi Sam,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Thank you for your help! Indeed I&#39;m using benchmark scripts and I think=
 adding arguments will help. I&#39;m using two seperated commands for trans=
mitting and receiving, so if I use:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
python3 benchmark_tx_copied_from_ins.py -f 2.45G --args=3D&quot;addr=3D192.=
168.10.3, clock_source=3Dexternal, time_source=3Dexternal&quot; --tx-gain=
=3D40 --bandwidth=3D1M</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;background-co=
lor:rgb(255,255,255);display:inline">python3 benchmark_rx_copied_from_ins.p=
y -f 2.45G --args=3D&quot;addr=3D192.168.10.2, clock_source=3Dexternal, tim=
e_source=3Dexternal&quot; --rx-gain=3D40
 --bandwidth=3D1M</span><br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;background-co=
lor:rgb(255,255,255);display:inline"><br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
will that satisfy my requirements? Thank you so much!</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Best regards,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Fengyang</div>
<div id=3D"gmail-m_-3474368557349792279appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-3474368557349792279divRplyFwdMsg" dir=3D"ltr"><font sty=
le=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>=E5=
=8F=91=E4=BB=B6=E4=BA=BA:</b> Sam Reiter &lt;<a href=3D"mailto:sam.reiter@e=
ttus.com" target=3D"_blank">sam.reiter@ettus.com</a>&gt;<br>
<b>=E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4:</b> 2019=E5=B9=B48=E6=9C=8820=E6=
=97=A5 14:43<br>
<b>=E6=94=B6=E4=BB=B6=E4=BA=BA:</b> Jiang, Fengyang &lt;<a href=3D"mailto:f=
zj28@psu.edu" target=3D"_blank">fzj28@psu.edu</a>&gt;<br>
<b>=E4=B8=BB=E9=A2=98:</b> Re: [USRP-users] A Question about Synchronizatio=
n</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">How you implement this will depend on what makes the most =
sense for your application. If you&#39;re just getting started running ship=
ping examples, you can add device arguments for clock_source and time_sourc=
e to specify external time sources. For
 example:
<div><br>
</div>
<div><span style=3D"font-family:monospace">./benchmark_rate --rx_rate=3D1e6=
 --tx_rate=3D1e6 --args addr0=3D192.168.10.2,addr1=3D192.168.10.3,clock_sou=
rce0=3Dexternal,time_source0=3Dexternal,clock_source1=3Dexternal,time_sourc=
e1=3Dexternal</span></div>
<div><br>
</div>
<div>As you move on from shipping examples, you would want to include</div>
<div><br>
</div>
<div>
<div style=3D"font-size:13px;line-height:1;font-family:monospace,fixed;min-=
height:13px;padding-left:53px;margin:0px">
usrp-&gt;set_clock_source(<span style=3D"color:rgb(0,32,128)">&quot;externa=
l&quot;</span>);</div>
<div style=3D"font-size:13px;line-height:1;font-family:monospace,fixed;min-=
height:13px;padding-left:53px;margin:0px">
usrp-&gt;set_time_source(<span style=3D"color:rgb(0,32,128)">&quot;external=
&quot;</span>);</div>
</div>
<div><br>
</div>
<div dir=3D"ltr">at the appropriate place in your code to configure timing.=
 <br>
</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">-Sam <br>
</div>
</div>
<br>
<div class=3D"gmail-m_-3474368557349792279x_gmail_quote">
<div dir=3D"ltr" class=3D"gmail-m_-3474368557349792279x_gmail_attr">On Tue,=
 Aug 20, 2019 at 1:09 PM Jiang, Fengyang via USRP-users &lt;<a href=3D"mail=
to:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com=
</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail-m_-3474368557349792279x_gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Hi all,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I&#39;m trying to synchronize 2 USRP N210 devices using the=C2=A0OctoClock-=
G CDA-2990 as external 10MHz reference and PPS sources. It is said that I n=
eed to set up two configurations:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<div style=3D"font-size:13px;line-height:1;font-family:monospace,fixed;min-=
height:13px;padding-left:53px;margin:0px">
usrp-&gt;set_clock_source(<span style=3D"color:rgb(0,32,128)">&quot;externa=
l&quot;</span>);</div>
<div style=3D"font-size:13px;line-height:1;font-family:monospace,fixed;min-=
height:13px;padding-left:53px;margin:0px">
usrp-&gt;set_time_source(<span style=3D"color:rgb(0,32,128)">&quot;external=
&quot;</span>);</div>
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Which file in which path should I modify in order to apply these configurat=
ions? Thanks a lot!</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Best regards,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Fengyang Jiang</div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"https://nam01.safelinks.protection.outlook.com/?url=3Dhttp%3A%2F=
%2Flists.ettus.com%2Fmailman%2Flistinfo%2Fusrp-users_lists.ettus.com&amp;da=
ta=3D02%7C01%7Cfzj28%40psu.edu%7C289a9a49c5fa46b4744108d7259e57f3%7C7cf48d4=
53ddb4389a9c1c115526eb52e%7C0%7C1%7C637019234325754870&amp;sdata=3DWLHShWdl=
eLNLl3jhiGls9YgSIa2AwaJTAoImXzjZHRc%3D&amp;reserved=3D0" rel=3D"noreferrer"=
 target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists=
.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>

</blockquote></div></div>

--00000000000014ad72059091850a--


--===============8182226266864515762==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8182226266864515762==--

