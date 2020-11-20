Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C882BC845
	for <lists+usrp-users@lfdr.de>; Sun, 22 Nov 2020 19:42:44 +0100 (CET)
Received: from [::1] (port=40130 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kguJs-0005v0-Ts; Sun, 22 Nov 2020 13:42:40 -0500
Received: from mail-io1-f54.google.com ([209.85.166.54]:37133)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <aholtzma@gmail.com>) id 1kgC3C-0002lp-3n
 for USRP-users@lists.ettus.com; Fri, 20 Nov 2020 14:26:30 -0500
Received: by mail-io1-f54.google.com with SMTP id d17so11088839ion.4
 for <USRP-users@lists.ettus.com>; Fri, 20 Nov 2020 11:26:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=kbUkONJPYLLp5eGxggtQi3vohMo7b00e/ZhU5rh+Hvg=;
 b=pe5caW9+dWrTlHGVeD3Rld9WSo69NP++502S0PFPv8Rl4kyPc3wCln8m4Nj6wRUBWS
 6S1lM6b/LMYZ4iJrxq5zuTXklC+OeUiWq3tK0RuLQWi265dm5CqAhN7b4+J6MM77wRx8
 9TbjPHnf1SVdZty17yhocbitsJhg11rmOk85p1In8uoFU65IOovexpRr/J6Ywqt2fbla
 0blCVBa40arwd4ecjqyOwny4sUeuSYSvg0SAVG9WeJwt/Fe7/gSFhh5geJgkPVC4Iu+g
 /hz1RPzoRldoyZD5zER3C2axNAR79cU1gxfBZtwPX5lKRq5IK0n7btmdkhAFwjwVBnbh
 GcqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=kbUkONJPYLLp5eGxggtQi3vohMo7b00e/ZhU5rh+Hvg=;
 b=eu5+mDDqutHrCc8XOSJhE4DCLyTFH2YlXdpNrBxZoMZzMUFefl0L8aZxXhkQ/iqZty
 fs1EWM5MkcyDBauvCTiXh0ehtlGrDED5XnBKITp6g0BXse+UteXEsW1xFzJNP5m6NFGH
 aFDENW/lJlfJGTl9wq3gKGtwDfh8cVU9WtwkMs59yuoSJ690KesdXcM+aQQCFuLVCkCo
 ylJLMzn84r6DPyTnK2uyTGU0qxDSCcp/zqHnimjn1L4lRNQvCjE03DZGhCbSHnge4Z/f
 tOIKzSKbH9uhtg+tKQ6LHCR3I6QBCz4ZEAwuTHwJlphvALyWDbwuUUHVpaY4RkrXp9g9
 Gh/g==
X-Gm-Message-State: AOAM533ndGLK4cNBbBjGbQPvV5cD9Yn8r1ZFClx7q+e06FKTIIyckju0
 fZ61TyupCE5+pQTrjxhHelXeNewL71Efcl/MQG5keB8CBN4=
X-Google-Smtp-Source: ABdhPJxMGLa2LgFYx1aw9q8NeymihVtraJQst/gHTkmsHBSSWbv9KbGUBIgSp7CL5HXiPzAU4ReNZd0nnnOdVSI4zko=
X-Received: by 2002:a5e:c707:: with SMTP id f7mr26865052iop.173.1605900349038; 
 Fri, 20 Nov 2020 11:25:49 -0800 (PST)
MIME-Version: 1.0
References: <CACfkGzVeSYTphqtSXX=UU+Jk2qTJMUynTpphmxQRZN-ijH8OXw@mail.gmail.com>
 <5FB80E9C.1090303@gmail.com>
In-Reply-To: <5FB80E9C.1090303@gmail.com>
Date: Fri, 20 Nov 2020 14:25:37 -0500
Message-ID: <CAEhVi8QPisP5yfRGjUGfowCatssi=hBQMk5WNf=uYksbsaC2Rg@mail.gmail.com>
To: USRP-users@lists.ettus.com
X-Mailman-Approved-At: Sun, 22 Nov 2020 13:42:37 -0500
Subject: Re: [USRP-users] B200 PPS signal question
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
From: Aaron Holtzman via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Aaron Holtzman <aholtzma@gmail.com>
Content-Type: multipart/mixed; boundary="===============7092828687974057392=="
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

--===============7092828687974057392==
Content-Type: multipart/alternative; boundary="000000000000d9674c05b48ecfd7"

--000000000000d9674c05b48ecfd7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On the b200mini, the 1pps actually *does* steer the internal reference.
Which is different behaviour then the rest of the entire Ettus lineup I
believe.

For details on how it works, see
uhd/fpga/usrp3/top/b2xxmini/b205_ref_pll.v. It autodetects the external
reference type and applies the appropriate dividers and gain schedule.

cheers,
Aaron


On Fri, Nov 20, 2020 at 1:45 PM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 11/20/2020 08:38 AM, =E7=BF=81=E5=81=89=E5=90=BE via USRP-users wrote:
> > Hi,
> >
> > I have a question about the PPS inputs on b200 and b200mini models.
> >
> > I want to synchronize time for two b200 units. I connected the PPS to
> > a external GPS module. The Ref port was left open(Not used). Then I
> > set the system time with set_time_next_pps command.  On another b200,
> > the configuration was the same. The problem is, after both device time
> > has been set to PPS with the same time spec. Their system time start
> > to drift away after a while. In other words, the PPS signal seems not
> > regulating the system time on a second basis.
> >
> > BTW, I have measured the PPS timing between these gps devices and it
> > was only 10ns off.
> >
> > I've read somewhere in the usrp maling list that the b200mini with
> > only PPS input can be used to regulate internal PLL clock. Does this
> > mean for every PPS edge it is adjusting the internal clock and make
> > the system time stable between two units? Can we achieve the same
> > regulation effect on b200?
> >
> > I already knew that using a GPSDO with b200 is the way to go for the
> > best synchronization result. But I didn't go that way because 1.GPSDO
> > can break my budget and 2. I only require hardware time sync on every
> > PPS edge.
> >
> > I'm grateful for any suggestions. Thanks.
> >
> The PPS input is simply used as a trigger for doing
> "set_time_next_pps()".  It DOES NOT provide any on-going clock
> synchronization--that is
>    what the 10MHz reference clock input is for.
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000d9674c05b48ecfd7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">On the b200mini, the 1pp=
s actually=C2=A0<b>does</b> steer the internal reference. Which is differen=
t behaviour then the rest of the entire Ettus lineup I believe.=C2=A0<div><=
br></div><div>For details on how it works, see uhd/fpga/usrp3/top/b2xxmini/=
b205_ref_pll.v. It autodetects=C2=A0the external reference type and applies=
 the appropriate dividers and gain schedule.</div><div><br></div><div>cheer=
s,</div><div>Aaron</div><div><br></div></div></div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Nov 20, 2020 at =
1:45 PM Marcus D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-users@lis=
ts.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width=
:1px;border-left-style:solid;border-left-color:rgb(204,204,204);padding-lef=
t:1ex">On 11/20/2020 08:38 AM, =E7=BF=81=E5=81=89=E5=90=BE via USRP-users w=
rote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; I have a question about the PPS inputs on b200 and b200mini models.<br=
>
&gt;<br>
&gt; I want to synchronize time for two b200 units. I connected the PPS to =
<br>
&gt; a external GPS module. The Ref port was left open(Not used). Then I <b=
r>
&gt; set the system time with set_time_next_pps command.=C2=A0 On another b=
200, <br>
&gt; the configuration was the same. The problem is, after both device time=
 <br>
&gt; has been set to PPS with the same time spec. Their system time start <=
br>
&gt; to drift away after a while. In other words, the PPS signal seems not =
<br>
&gt; regulating the system time on a second basis.<br>
&gt;<br>
&gt; BTW, I have measured the PPS timing between these gps devices and it <=
br>
&gt; was only 10ns off.<br>
&gt;<br>
&gt; I&#39;ve read somewhere in the usrp maling list that the b200mini with=
 <br>
&gt; only PPS input can be used to regulate internal PLL clock. Does this <=
br>
&gt; mean for every PPS edge it is adjusting the internal clock and make <b=
r>
&gt; the system time stable between two units? Can we achieve the same <br>
&gt; regulation effect on b200?<br>
&gt;<br>
&gt; I already knew that using a GPSDO with b200 is the way to go for the <=
br>
&gt; best synchronization result. But I didn&#39;t go that way because 1.GP=
SDO <br>
&gt; can break my budget and 2. I only require hardware time sync on every =
<br>
&gt; PPS edge.<br>
&gt;<br>
&gt; I&#39;m grateful for any suggestions. Thanks.<br>
&gt;<br>
The PPS input is simply used as a trigger for doing <br>
&quot;set_time_next_pps()&quot;.=C2=A0 It DOES NOT provide any on-going clo=
ck <br>
synchronization--that is<br>
=C2=A0 =C2=A0what the 10MHz reference clock input is for.<br>
<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000d9674c05b48ecfd7--


--===============7092828687974057392==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7092828687974057392==--

