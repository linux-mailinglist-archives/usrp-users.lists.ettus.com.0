Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B51B412FD06
	for <lists+usrp-users@lfdr.de>; Fri,  3 Jan 2020 20:28:44 +0100 (CET)
Received: from [::1] (port=35970 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1inScl-0005eW-Kh; Fri, 03 Jan 2020 14:28:43 -0500
Received: from mail-oi1-f177.google.com ([209.85.167.177]:43619)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1inSch-0005Sj-R5
 for usrp-users@lists.ettus.com; Fri, 03 Jan 2020 14:28:39 -0500
Received: by mail-oi1-f177.google.com with SMTP id p125so12671825oif.10
 for <usrp-users@lists.ettus.com>; Fri, 03 Jan 2020 11:28:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=m9gDyouBk3FljFZxwGmXKNKZt1iDEewH9mMxm1QBq64=;
 b=iRUN6eq339LFaGUCB8kdepnQtUcQa5TMx7OGENCoM+OjyTiJO/ZIHBFN6BeKijCEhB
 r2ge19H2ETXtNl+IkUSJNyQQ2RpuuCp8QlFNd1O8MWgQ2ohNLYNUUKpQzCty1Z5Xyd6v
 gO4qFztmFU3HjE/m40krDG0328rxQSbmIvQI4OGq/hdTg4zUr93V2qXTgiBtDD9zBrLw
 hLlGJN1cBYsoprCLzZIP+sYc3peEswRLtANbGl5JcIVxj8MawNz6XehCZIPbgX277X4m
 zNmT1qjLPpQqeA9K3OM+9+BrwdxwdiFFR6ok109B76ixsz55kb3YaD6nVfrlJcyziwU+
 9noQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=m9gDyouBk3FljFZxwGmXKNKZt1iDEewH9mMxm1QBq64=;
 b=VuIOcowV1RMPAfQRrjM2AfglFNO2o0XJzaVyfW9gI3ZObCk4wYylFPLYfvOa4x8SZ4
 VIYvvJVquLInArC2PmAFmGFHQYrrjZ2VrMPkFfCTMjPZn29fpaeyaejlwqGsq3v7H7G7
 ronneD7R0AbjCsgdZIXdZZq9XjjJy6LNlIqOvOpFXOVj9/k2ePgk2csANRqTlGO9MoQS
 +JlxE2lyXwiLHszG+bYMvlDzBWc2vH1eO7udXTFnQtGVc1Cx7O9/vT//qNvik/RQghtj
 D9DEAol+kkbsq6Oji9+puc6g2u/vjDvPH3ombkudart5RIU+MLhnuKpDD4zFnRXdO+lx
 FDyQ==
X-Gm-Message-State: APjAAAVpbsHNYxPxi7arrTKqCetOuZcvoXrGs6w/QE0MQ+K27DIqEhuE
 DDyUzk8TAilKIGQrg5+k1hjSXM6qwPXQu4rikPOzrTUM
X-Google-Smtp-Source: APXvYqzyWWk0CVcK9o5wSwOAWuwFaeaDf1iYSrw04ITNQp7bjwiurA6HFUxypWSQbzQdwo3g1NDuf/liT7moQ6ps80A=
X-Received: by 2002:a05:6808:8e5:: with SMTP id
 d5mr4305378oic.154.1578079679121; 
 Fri, 03 Jan 2020 11:27:59 -0800 (PST)
MIME-Version: 1.0
References: <MW2PR1901MB2137B5985ADB1D60955CA0E6C6230@MW2PR1901MB2137.namprd19.prod.outlook.com>
 <0986444f6acfa153422d73f3f3787ea1d04ef1de.camel@ettus.com>
In-Reply-To: <0986444f6acfa153422d73f3f3787ea1d04ef1de.camel@ettus.com>
Date: Fri, 3 Jan 2020 11:29:43 -0800
Message-ID: <CAL263ix-dVci+cuH7OyL19kd3+z84cZF_5btdN7Wu-YiSJZMFQ@mail.gmail.com>
To: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
Subject: Re: [USRP-users] IOError: [Errno 2] No such file or directory -
 uhd_image_builder_gui crashes when trying to run
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
From: Nate Temple via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nate Temple <nate.temple@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
 Jerrid Plymale <jerrid.plymale@canyon-us.com>
Content-Type: multipart/mixed; boundary="===============0481266266085931584=="
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

--===============0481266266085931584==
Content-Type: multipart/alternative; boundary="000000000000b3a437059b414e69"

--000000000000b3a437059b414e69
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

There was recently a change to the directory structure for the E300/E310s.

If you're running 3.15.0.0, this should be fixed, see the commits from ~Nov
21 here:

https://github.com/EttusResearch/fpga/commits/v3.15.0.0/usrp3

Regards,
Nate Temple

On Fri, Jan 3, 2020 at 11:17 AM Marcus M=C3=BCller via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Jerrid,
>
> could you check /home/ck/rfnoc/src/uhd-fpga/usrp3/top/e300/Makefile
> exists?
> My uhd-fpga directory has that; I think yours *should*. Which version
> of the uhd-fpga repo are you using?
>
> Best regards,
> Marcus
>
> On Fri, 2020-01-03 at 15:43 +0000, Jerrid Plymale via USRP-users wrote:
> > Hey All,
> >
> > So I recently started having issues with the uhd_image_builder_gui
> > after doing a fresh install of UHD and GNU Radio with RFNoC. Below is
> > the output of the terminal when I try to run the gui. Anyone run into
> > this issue and know how to fix it?
> >
> > Traceback (most recent call last):
> >   File "./uhd_image_builder_gui.py", line 656, in <module>
> >     main()
> >   File "./uhd_image_builder_gui.py", line 652, in main
> >     _window =3D MainWindow()
> >   File "./uhd_image_builder_gui.py", line 71, in __init__
> >     self.init_gui()
> >   File "./uhd_image_builder_gui.py", line 149, in init_gui
> >     self.populate_target('e300')
> >   File "./uhd_image_builder_gui.py", line 608, in populate_target
> >     with open(build_targets) as fil:
> > IOError: [Errno 2] No such file or directory:
> > '/home/ck/rfnoc/src/uhd-
> > fpga/usrp3/tools/scripts/../../top/e300/Makefile'
> >
> > Best Regards,
> >
> > Jerrid
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000b3a437059b414e69
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">There was recently a change to the directory structure =
for the E300/E310s.</div><div class=3D"gmail_default" style=3D"font-family:=
arial,helvetica,sans-serif"><br></div><div class=3D"gmail_default" style=3D=
"font-family:arial,helvetica,sans-serif">If you&#39;re running 3.15.0.0, th=
is should be fixed, see the commits from ~Nov 21 here:</div><div class=3D"g=
mail_default" style=3D"font-family:arial,helvetica,sans-serif"><br></div><d=
iv class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif"=
><a href=3D"https://github.com/EttusResearch/fpga/commits/v3.15.0.0/usrp3">=
https://github.com/EttusResearch/fpga/commits/v3.15.0.0/usrp3</a></div><div=
 class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif"><=
br></div><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,=
sans-serif">Regards,</div><div class=3D"gmail_default" style=3D"font-family=
:arial,helvetica,sans-serif">Nate Temple<br></div></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jan 3, 2020 at 11=
:17 AM Marcus M=C3=BCller via USRP-users &lt;<a href=3D"mailto:usrp-users@l=
ists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">Hi Jerrid, <br>
<br>
could you check /home/ck/rfnoc/src/uhd-fpga/usrp3/top/e300/Makefile<br>
exists?<br>
My uhd-fpga directory has that; I think yours *should*. Which version<br>
of the uhd-fpga repo are you using?<br>
<br>
Best regards,<br>
Marcus<br>
<br>
On Fri, 2020-01-03 at 15:43 +0000, Jerrid Plymale via USRP-users wrote:<br>
&gt; Hey All,<br>
&gt; <br>
&gt; So I recently started having issues with the uhd_image_builder_gui<br>
&gt; after doing a fresh install of UHD and GNU Radio with RFNoC. Below is<=
br>
&gt; the output of the terminal when I try to run the gui. Anyone run into<=
br>
&gt; this issue and know how to fix it?<br>
&gt; <br>
&gt; Traceback (most recent call last):<br>
&gt;=C2=A0 =C2=A0File &quot;./uhd_image_builder_gui.py&quot;, line 656, in =
&lt;module&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0main()<br>
&gt;=C2=A0 =C2=A0File &quot;./uhd_image_builder_gui.py&quot;, line 652, in =
main<br>
&gt;=C2=A0 =C2=A0 =C2=A0_window =3D MainWindow()<br>
&gt;=C2=A0 =C2=A0File &quot;./uhd_image_builder_gui.py&quot;, line 71, in _=
_init__<br>
&gt;=C2=A0 =C2=A0 =C2=A0self.init_gui()<br>
&gt;=C2=A0 =C2=A0File &quot;./uhd_image_builder_gui.py&quot;, line 149, in =
init_gui<br>
&gt;=C2=A0 =C2=A0 =C2=A0self.populate_target(&#39;e300&#39;)<br>
&gt;=C2=A0 =C2=A0File &quot;./uhd_image_builder_gui.py&quot;, line 608, in =
populate_target<br>
&gt;=C2=A0 =C2=A0 =C2=A0with open(build_targets) as fil:<br>
&gt; IOError: [Errno 2] No such file or directory:<br>
&gt; &#39;/home/ck/rfnoc/src/uhd-<br>
&gt; fpga/usrp3/tools/scripts/../../top/e300/Makefile&#39;<br>
&gt; <br>
&gt; Best Regards,<br>
&gt; <br>
&gt; Jerrid<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
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

--000000000000b3a437059b414e69--


--===============0481266266085931584==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0481266266085931584==--

