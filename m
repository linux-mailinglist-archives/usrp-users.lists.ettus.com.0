Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EF4E214C6A
	for <lists+usrp-users@lfdr.de>; Sun,  5 Jul 2020 14:31:13 +0200 (CEST)
Received: from [::1] (port=36022 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1js3nW-0007Ba-Tr; Sun, 05 Jul 2020 08:31:06 -0400
Received: from mail-ej1-f50.google.com ([209.85.218.50]:36806)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <alex.m.humberstone@gmail.com>)
 id 1js3nT-00076Z-C7
 for usrp-users@lists.ettus.com; Sun, 05 Jul 2020 08:31:03 -0400
Received: by mail-ej1-f50.google.com with SMTP id dr13so39572246ejc.3
 for <usrp-users@lists.ettus.com>; Sun, 05 Jul 2020 05:30:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=s/6g3/huq4RkQoHYzmSJ4SgUkjCwN4Lsr0EpSAk9bCQ=;
 b=kOnVVjflx+rOthU2KASgBcufplPowvYjaX4KMjunCYbnrhNM9OyMT12AEgFTJ/MVr3
 YyUWYoCNm5cUChllV1zMKweN5a1Xe7RWNVsa/YCYmljdev9tqFHlxrmv1fMckXd+OnWz
 eq/3gjFdYm78QHTVRMu0lQ93XCGwhMAF+yD2xfBmrUQnFX5aAKTvS1DGKdLM8WD+fTfd
 GdzZCPv4+WSB4QiEiIS8fdsA0+5z8EW4RJHoOdgTyByHuw89MhxEv/evF0M9WcLE6VwH
 jFgRdyepweWPcJEi1IkUKw8tSEPbNwgzYH17bNMBRqFHrt6lYCBrzK/q9EDqNbzahgWk
 VEig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=s/6g3/huq4RkQoHYzmSJ4SgUkjCwN4Lsr0EpSAk9bCQ=;
 b=Jo8PpyxpYZ017EnfkBa74tLVpZdP/Nl4MCe4+XeFxj51g9rVeBsYjtlnyp0lzk8/Tx
 e3E6gCuk0vzlQ/upyw8rRnT9EJ9UnDhpny0LrrA4RicFEvjQ5c2Mp++oWjolFTQPN8il
 oXtsvVw01kz88oAGWzlMfgkmIQjv/Sj+mk7blWXlk6PNtellsaN/2pnh1kO8x4g0vdhs
 ziFDMHEpMqNO+rixPoV4LL/oFZVgbQn/RofWXdcDApwov+bGbb6GJK6XNGDtEtr3Hhnc
 EaNTQBOBhPt9Bl4/Jo/U0m5Z+oyZSG/dpcWQDrxrfavllTbpin2qjw8RamN3UimYLgrZ
 9/Jg==
X-Gm-Message-State: AOAM530QuFiWctax5HpztNBNsTrSQO2In/7kBd6u0WR7HOjK8anDFtzN
 DdHtPIF5esRRXvgIsAjHVCpHsoGPlcU5H+L9of0=
X-Google-Smtp-Source: ABdhPJzF0R8BQSsqmWVbncCH81ePIch6pS2N/GlyH2hRq5qQauPHr3bZj7loXvur5MxY+CQiVqHC01tSYu4A29Bt6gk=
X-Received: by 2002:a17:906:1455:: with SMTP id
 q21mr22943598ejc.139.1593952222229; 
 Sun, 05 Jul 2020 05:30:22 -0700 (PDT)
MIME-Version: 1.0
References: <SN6PR09MB3726D7D87F81583127681C3FEC980@SN6PR09MB3726.namprd09.prod.outlook.com>
 <CAE0dfYZz1vrKBZ26jyaaV3LkC+gk1mTZ2uJHdmP3-HZQ6TuV+Q@mail.gmail.com>
 <CAE0dfYadQpuFXYhkOaWbsq8+UdS8U+btPTqnP04m1e6kCrSdOw@mail.gmail.com>
 <CAN=AL9O3dsbPS=pkyH_Y63OjPaTWeyc-KROCLTo=KBYNDewQxA@mail.gmail.com>
In-Reply-To: <CAN=AL9O3dsbPS=pkyH_Y63OjPaTWeyc-KROCLTo=KBYNDewQxA@mail.gmail.com>
Date: Sun, 5 Jul 2020 07:29:46 -0500
Message-ID: <CAE0dfYZZfDG2mYMouM=DXQwbUMkjJWTgvVHEBhHotasMsA67PA@mail.gmail.com>
To: David Bengtson <david.bengtson@gmail.com>
Subject: Re: [USRP-users] 2021 IEEE Aerospace Conference
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
From: Alex Humberstone via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Alex Humberstone <alex.m.humberstone@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
 "discuss-gnuradio@gnu.org" <discuss-gnuradio@gnu.org>
Content-Type: multipart/mixed; boundary="===============1625027714930638542=="
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

--===============1625027714930638542==
Content-Type: multipart/alternative; boundary="000000000000feb8e505a9b0eb4f"

--000000000000feb8e505a9b0eb4f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you David!


On Sat, 4 Jul 2020 at 10:10, David Bengtson <david.bengtson@gmail.com>
wrote:

> 2020 Program
> https://ieee-aess.org/conference/2020-ieee-aerospace-conference-aeroconf
> 2019 program
> https://ieee-aess.org/conference/2019-ieee-aerospace-conference
> 2018 program
> https://ieee-aess.org/conference/2018-ieee-aerospace-conference
>
> Perhaps this is sufficient?
>
> On Thu, Jun 25, 2020 at 6:35 PM Alex Humberstone
> <alex.m.humberstone@gmail.com> wrote:
> >
> > Any update?
> >
> > Would like to see the program for past conferences...
> >
> >
> >
> > On Fri, 19 Jun 2020 at 22:44, Alex Humberstone <
> alex.m.humberstone@gmail.com> wrote:
> >>
> >> Eugene, the conference looks interesting. Where can we find the progra=
m
> for past years to get a feel for the conference? I didn't see this on the
> website. Thanks.
> >>
> >>
> >> On Fri, 19 Jun 2020 at 17:02, Eugene Grayver via USRP-users <
> usrp-users@lists.ettus.com> wrote:
> >>>
> >>> Hello,
> >>>
> >>>
> >>>
> >>> I am chairing the Software Defined and Cognitive Radio session at the
> upcoming IEEE Aerospace Conference (http://www.aeroconf.org).  This large
> conference will take place March 6-13, 2021 in Big Sky, Montana.  The
> conference provides a world-class technical program and provides excellen=
t
> opportunities for both networking and recreation. This is one of the few
> conferences where SDR can be put in the context of a complete system and
> can be applied to new missions and concepts of operations.
> >>>
> >>>
> >>>
> >>> Last year there were a few papers dealing with application of
> machine/deep learning to radio design.  I hope to see even more next year=
!
> >>>
> >>> Abstracts are due soon, but I can take them a bit later as well, whil=
e
> the full paper is due end of October.  This session will focus on flexibl=
e
> radio architectures, including the use of GPPs, GPUs,  and FPGAs.  Report=
s
> of existing systems and testbeds are of significant interest.  This year
> I=E2=80=99d like to introduce work related to machine learning as applied=
 to
> wireless communications.
> >>>
> >>>
> >>>
> >>> Please forward this to your colleagues working in the areas of SDR an=
d
> cognitive radio.
> >>>
> >>>
> >>> Regards,
> >>>
> >>> Eugene.
> >>>
> >>>
> >>>
> >>> _______________________________________________
> >>> USRP-users mailing list
> >>> USRP-users@lists.ettus.com
> >>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >>
> >>
> >>
> >> --
> >> Sincerely,
> >> Alex-M-Humberstone
> >> PhD Student
> >> Klipsch School of Electrical Engineering
> >> New Mexico State University
> >> Las Cruces, New Mexico
> >>
> >
> >
> > --
> > Sincerely,
> > Alex-M-Humberstone
> > PhD Student
> > Klipsch School of Electrical Engineering
> > New Mexico State University
> > Las Cruces, New Mexico
> >
>


--=20
Sincerely,
Alex-M-Humberstone
PhD Student
Klipsch School of Electrical Engineering
New Mexico State University
Las Cruces, New Mexico

--000000000000feb8e505a9b0eb4f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:monospac=
e;font-size:large">Thank you David!</div><div class=3D"gmail_default" style=
=3D"font-family:monospace;font-size:large"><br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, 4 Jul 2020 a=
t 10:10, David Bengtson &lt;<a href=3D"mailto:david.bengtson@gmail.com">dav=
id.bengtson@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex">2020 Program <a href=3D"https://ieee-aess.org/conferen=
ce/2020-ieee-aerospace-conference-aeroconf" rel=3D"noreferrer" target=3D"_b=
lank">https://ieee-aess.org/conference/2020-ieee-aerospace-conference-aeroc=
onf</a><br>
2019 program <a href=3D"https://ieee-aess.org/conference/2019-ieee-aerospac=
e-conference" rel=3D"noreferrer" target=3D"_blank">https://ieee-aess.org/co=
nference/2019-ieee-aerospace-conference</a><br>
2018 program <a href=3D"https://ieee-aess.org/conference/2018-ieee-aerospac=
e-conference" rel=3D"noreferrer" target=3D"_blank">https://ieee-aess.org/co=
nference/2018-ieee-aerospace-conference</a><br>
<br>
Perhaps this is sufficient?<br>
<br>
On Thu, Jun 25, 2020 at 6:35 PM Alex Humberstone<br>
&lt;<a href=3D"mailto:alex.m.humberstone@gmail.com" target=3D"_blank">alex.=
m.humberstone@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Any update?<br>
&gt;<br>
&gt; Would like to see the program for past conferences...<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Fri, 19 Jun 2020 at 22:44, Alex Humberstone &lt;<a href=3D"mailto:a=
lex.m.humberstone@gmail.com" target=3D"_blank">alex.m.humberstone@gmail.com=
</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Eugene, the conference looks interesting. Where can we find the pr=
ogram for past years to get a feel for the conference? I didn&#39;t see thi=
s on the website. Thanks.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; On Fri, 19 Jun 2020 at 17:02, Eugene Grayver via USRP-users &lt;<a=
 href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@li=
sts.ettus.com</a>&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Hello,<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; I am chairing the Software Defined and Cognitive Radio session=
 at the upcoming IEEE Aerospace Conference (<a href=3D"http://www.aeroconf.=
org" rel=3D"noreferrer" target=3D"_blank">http://www.aeroconf.org</a>).=C2=
=A0 This large conference will take place March 6-13, 2021 in Big Sky, Mont=
ana.=C2=A0 The conference provides a world-class technical program and prov=
ides excellent opportunities for both networking and recreation. This is on=
e of the few conferences where SDR can be put in the context of a complete =
system and can be applied to new missions and concepts of operations.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Last year there were a few papers dealing with application of =
machine/deep learning to radio design.=C2=A0 I hope to see even more next y=
ear!<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Abstracts are due soon, but I can take them a bit later as wel=
l, while the full paper is due end of October.=C2=A0 This session will focu=
s on flexible radio architectures, including the use of GPPs, GPUs,=C2=A0 a=
nd FPGAs.=C2=A0 Reports of existing systems and testbeds are of significant=
 interest.=C2=A0 This year I=E2=80=99d like to introduce work related to ma=
chine learning as applied to wireless communications.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Please forward this to your colleagues working in the areas of=
 SDR and cognitive radio.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Regards,<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Eugene.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt; USRP-users mailing list<br>
&gt;&gt;&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank=
">USRP-users@lists.ettus.com</a><br>
&gt;&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_=
lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.co=
m/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; Sincerely,<br>
&gt;&gt; Alex-M-Humberstone<br>
&gt;&gt; PhD Student<br>
&gt;&gt; Klipsch School of Electrical Engineering<br>
&gt;&gt; New Mexico State University<br>
&gt;&gt; Las Cruces, New Mexico<br>
&gt;&gt;<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; Sincerely,<br>
&gt; Alex-M-Humberstone<br>
&gt; PhD Student<br>
&gt; Klipsch School of Electrical Engineering<br>
&gt; New Mexico State University<br>
&gt; Las Cruces, New Mexico<br>
&gt;<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature"><div dir=3D"ltr"><font size=3D"4"><span style=3D"font-famil=
y:monospace">Sincerely,<br></span></font><div><font size=3D"4"><span style=
=3D"font-family:monospace">Alex-M-Humberstone</span></font></div><div><font=
 size=3D"4"><span style=3D"font-family:monospace">PhD Student</span></font>=
</div><div><font size=3D"4"><span style=3D"font-family:monospace">Klipsch S=
chool of Electrical Engineering<br></span></font></div><div><font size=3D"4=
"><span style=3D"font-family:monospace">New Mexico State University<br><spa=
n><span>Las Cruces, </span></span>New Mexico</span></font></div><div><font =
size=3D"4"><span style=3D"font-family:monospace"><br></span></font></div><d=
iv><font size=3D"4"><span style=3D"font-family:monospace"></span></font></d=
iv></div></div>

--000000000000feb8e505a9b0eb4f--


--===============1625027714930638542==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1625027714930638542==--

