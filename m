Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 474D34E46DC
	for <lists+usrp-users@lfdr.de>; Tue, 22 Mar 2022 20:43:49 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0DB82385395
	for <lists+usrp-users@lfdr.de>; Tue, 22 Mar 2022 15:43:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="JgW35NLq";
	dkim-atps=neutral
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	by mm2.emwd.com (Postfix) with ESMTPS id CD38838532E
	for <usrp-users@lists.ettus.com>; Tue, 22 Mar 2022 15:42:53 -0400 (EDT)
Received: by mail-yb1-f174.google.com with SMTP id u103so35549962ybi.9
        for <usrp-users@lists.ettus.com>; Tue, 22 Mar 2022 12:42:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8+8XD+UFPVmPD2gZNKsd24bCmuGHRCJht/gxP1O9dV4=;
        b=JgW35NLqb/tJT6gzwTknF1C+v+J3BgD7UlV5SRngdIwV+E2PWExWZWcPHMYAbp6OzL
         2HoW6ULWUoIKUZBtU9O4lyYVX8UbHCr8K2hVV44g/6r/r2Xthg+iNn86TzcqtGa5PYLZ
         3bsm7+PNjOZkf82hRu55ImJ3AO0N8Blb3haXd1Q0Go+oWfA8FNVCBRjFm7V6Kd1AXOsd
         pe+zEX4LzOg5qosh42y0ZVBdNYfeP1InV4I/EJ0bkizlOqNlm0DSpz4K3Jq1hXZA3Eg1
         dYL4VhP4mEgSnoGEhu3XvoQ3Kj7/XYjFxtHg+26gxVivKt5ycyhXZP46ngkICK1kUeHs
         uREw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8+8XD+UFPVmPD2gZNKsd24bCmuGHRCJht/gxP1O9dV4=;
        b=VBtmQl8GfNBeEor0qxntoDi9OUQUMJADBpH27yGZ/ClFPP3mob+/oUXN+0D7enDKT1
         0gjV6jP7I7V4w4n1YEFvqWvjPReaWaHECpm459cpYlddjWETFPeo0pv43AEQQq5Qd9Vj
         VGZI2a+hUzLwqeXIljxBKpdxecKSXR7Z4VE4poZkPrgDkLKZf+grBc6ArnDg5bAHS8Jx
         2cwoi9arSJLNqt8i81241T28j0AJRfxATAsbpU1mypZNmVc+CXtpqeBp2uoj9LcJl9pp
         sUrMN6fQGtysW1cWmqsyHZJh4X9gc/O5V+v69My/cVe9/vVkZ6FiKBBMuKcSz+3gunfz
         Br3Q==
X-Gm-Message-State: AOAM5306tbVQ1OSEck4G1UZFwRumrEr4l/E2lz8Tl2soqNy4eI0rLzJ8
	wdnuN9Xda0/o6l++HsFIi1+CPijoeQzHPQYli/mKihmhYgezSTST
X-Google-Smtp-Source: ABdhPJzD89/g4ZnZym4blBmOK97H1QXEfv34GsnZd5hb9b2R1oBiWR9VDnw0wrMU15CuU5tJerNNDRenG8dfXBdSMBk=
X-Received: by 2002:a25:81c6:0:b0:629:4011:c58a with SMTP id
 n6-20020a2581c6000000b006294011c58amr29336129ybm.170.1647978173183; Tue, 22
 Mar 2022 12:42:53 -0700 (PDT)
MIME-Version: 1.0
References: <AM8P250MB010775DAB5F976813E57AE599B169@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
 <77C9127F-86E2-4BC0-9ED0-C477B0F4A586@gmail.com> <AM8P250MB0107FE3596073DF1E741B7D89B169@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
 <a71545cc-5423-7bb4-e616-a261dd065fbd@gmail.com> <CAB__hTRYBFJ_Wkucxz=XLScaVV53DE_R63caFZtSTfQYzUVpTw@mail.gmail.com>
 <CAFche=g=yhcgNfbieDmQC4CJooniGi5vc6ZU2oXSF_TqkKJF6Q@mail.gmail.com> <bd140791-6e23-6f4c-c03e-c21d9f8c6959@ant.uni-bremen.de>
In-Reply-To: <bd140791-6e23-6f4c-c03e-c21d9f8c6959@ant.uni-bremen.de>
From: Wade Fife <wade.fife@ettus.com>
Date: Tue, 22 Mar 2022 14:42:38 -0500
Message-ID: <CAFche=jVpVxz3yoLqPFpnt97cMvWtum4D40jJD0TY5ar4K4Msg@mail.gmail.com>
To: Johannes Demel <demel@ant.uni-bremen.de>
Message-ID-Hash: OUJZ3DIY4SM7OKSO5Z5YMKWECEI2VO3P
X-Message-ID-Hash: OUJZ3DIY4SM7OKSO5Z5YMKWECEI2VO3P
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [X410] Change hostname
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OUJZ3DIY4SM7OKSO5Z5YMKWECEI2VO3P/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3339473153760199665=="

--===============3339473153760199665==
Content-Type: multipart/alternative; boundary="0000000000009c4b6b05dad3d1a0"

--0000000000009c4b6b05dad3d1a0
Content-Type: text/plain; charset="UTF-8"

Hi Johannes,

The hostname instructions are currently being updated in the manual. Thanks
for the note about `/etc/systemd/network/`. I'll pass that on as well.

Wade

On Tue, Mar 22, 2022 at 6:19 AM Johannes Demel <demel@ant.uni-bremen.de>
wrote:

> Hi Wade,
>
> thanks for that hint. I tried to change the hostname on some N310s in
> the past and now I am able to.
>
> The docs should contain that in
> https://files.ettus.com/manual/page_usrp_n3xx.html
> under SSH connection. That's where I was reading about it. And I guess
> the docs need a UHD4 update there as well. They still point to config
> files in `/etc/systemd/network/`.
>
> Cheers
> Johannes
>
> On 21.03.22 23:44, Wade Fife wrote:
> > Hi all,
> >
> > You can change the hostname by creating a file /data/network/hostname
> > with the desired hostname.
> >
> > On boot, systemd runs /sbin/usrp_hostname to configure the hostname. It
> > looks for the /data/network/hostname file. If it doesn't find it, then
> > it uses a default with the serial number.
> >
> > Thanks,
> >
> > Wade
> >
> > On Mon, Mar 21, 2022 at 5:11 PM Rob Kossler <rkossler@nd.edu
> > <mailto:rkossler@nd.edu>> wrote:
> >
> >     perhaps in the file /data/network/eth0.network?
> >
> >     On Mon, Mar 21, 2022 at 10:43 AM Marcus D. Leech
> >     <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
> >
> >         On 2022-03-21 10:34, Tobias Kronauer wrote:
> >>         There is no /etc/hostname in /data....
> >>
>  ------------------------------------------------------------------------
> >>
> >         Hmmm.
> >
> >         According to:
> >
> >
> https://files.ettus.com/manual/page_usrp_e3xx.html#e31x_migration <
> https://files.ettus.com/manual/page_usrp_e3xx.html#e31x_migration>
> >
> >         You should be able to just modify /etc/hostname, but this
> >         doesn't work across reboot.  Even on my E310.
> >
> >         Clearly, *something* is reconstructing it on reboot, I just
> >         can't immediately determine exactly what.
> >
> >
> >         _______________________________________________
> >         USRP-users mailing list -- usrp-users@lists.ettus.com
> >         <mailto:usrp-users@lists.ettus.com>
> >         To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> >         <mailto:usrp-users-leave@lists.ettus.com>
> >
> >     _______________________________________________
> >     USRP-users mailing list -- usrp-users@lists.ettus.com
> >     <mailto:usrp-users@lists.ettus.com>
> >     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> >     <mailto:usrp-users-leave@lists.ettus.com>
> >
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000009c4b6b05dad3d1a0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Johannes,</div><div><br></div><div>The hostname in=
structions are currently being updated in the manual. Thanks for the note a=
bout=20
 `/etc/systemd/network/`. I&#39;ll pass that on as well.</div><div><br></di=
v><div>Wade<br>

</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Tue, Mar 22, 2022 at 6:19 AM Johannes Demel &lt;<a href=3D"mailto:=
demel@ant.uni-bremen.de">demel@ant.uni-bremen.de</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">Hi Wade,<br>
<br>
thanks for that hint. I tried to change the hostname on some N310s in <br>
the past and now I am able to.<br>
<br>
The docs should contain that in<br>
<a href=3D"https://files.ettus.com/manual/page_usrp_n3xx.html" rel=3D"noref=
errer" target=3D"_blank">https://files.ettus.com/manual/page_usrp_n3xx.html=
</a><br>
under SSH connection. That&#39;s where I was reading about it. And I guess =
<br>
the docs need a UHD4 update there as well. They still point to config <br>
files in `/etc/systemd/network/`.<br>
<br>
Cheers<br>
Johannes<br>
<br>
On 21.03.22 23:44, Wade Fife wrote:<br>
&gt; Hi all,<br>
&gt; <br>
&gt; You can change the hostname by creating a file /data/network/hostname =
<br>
&gt; with the desired hostname.<br>
&gt; <br>
&gt; On boot, systemd runs /sbin/usrp_hostname to configure the hostname. I=
t <br>
&gt; looks for the /data/network/hostname file. If it doesn&#39;t find it, =
then <br>
&gt; it uses a default with the serial number.<br>
&gt; <br>
&gt; Thanks,<br>
&gt; <br>
&gt; Wade<br>
&gt; <br>
&gt; On Mon, Mar 21, 2022 at 5:11 PM Rob Kossler &lt;<a href=3D"mailto:rkos=
sler@nd.edu" target=3D"_blank">rkossler@nd.edu</a> <br>
&gt; &lt;mailto:<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossl=
er@nd.edu</a>&gt;&gt; wrote:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0perhaps in the file /data/network/eth0.network?<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0On Mon, Mar 21, 2022 at 10:43 AM Marcus D. Leech<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"mailto:patchvonbraun@gmail.com" targ=
et=3D"_blank">patchvonbraun@gmail.com</a> &lt;mailto:<a href=3D"mailto:patc=
hvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;&gt; =
wrote:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0On 2022-03-21 10:34, Tobias Kronauer =
wrote:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0There is no /etc/hostname in /dat=
a....<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0---------------------------------=
---------------------------------------<br>
&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Hmmm.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0According to:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"https://files.ettus.com/ma=
nual/page_usrp_e3xx.html#e31x_migration" rel=3D"noreferrer" target=3D"_blan=
k">https://files.ettus.com/manual/page_usrp_e3xx.html#e31x_migration</a> &l=
t;<a href=3D"https://files.ettus.com/manual/page_usrp_e3xx.html#e31x_migrat=
ion" rel=3D"noreferrer" target=3D"_blank">https://files.ettus.com/manual/pa=
ge_usrp_e3xx.html#e31x_migration</a>&gt;<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0You should be able to just modify /et=
c/hostname, but this<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0doesn&#39;t work across reboot.=C2=A0=
 Even on my E310.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Clearly, *something* is reconstructin=
g it on reboot, I just<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0can&#39;t immediately determine exact=
ly what.<br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_____________________________________=
__________<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0USRP-users mailing list -- <a href=3D=
"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettu=
s.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:usrp-use=
rs@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0To unsubscribe send an email to <a hr=
ef=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D"_blank">usrp-users=
-leave@lists.ettus.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:usrp-use=
rs-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.co=
m</a>&gt;<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0_______________________________________________<br>
&gt;=C2=A0 =C2=A0 =C2=A0USRP-users mailing list -- <a href=3D"mailto:usrp-u=
sers@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0To unsubscribe send an email to <a href=3D"mailto:u=
srp-users-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.e=
ttus.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:usrp-users-leave@lists=
.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>&gt;<br>
&gt; <br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000009c4b6b05dad3d1a0--

--===============3339473153760199665==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3339473153760199665==--
