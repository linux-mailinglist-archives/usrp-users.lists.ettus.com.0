Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A539C18F31
	for <lists+usrp-users@lfdr.de>; Thu,  9 May 2019 19:35:13 +0200 (CEST)
Received: from [::1] (port=45430 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hOmwk-0003cy-Mk; Thu, 09 May 2019 13:35:06 -0400
Received: from mail-ot1-f54.google.com ([209.85.210.54]:42330)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <rkossler@nd.edu>) id 1hOmwC-0003QX-5D
 for usrp-users@lists.ettus.com; Thu, 09 May 2019 13:35:02 -0400
Received: by mail-ot1-f54.google.com with SMTP id f23so3042136otl.9
 for <usrp-users@lists.ettus.com>; Thu, 09 May 2019 10:34:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=t5UIecS6MH/71ZW5DcH5OJLOJtWoB1ttUkA9U4xKPPc=;
 b=JbVKHsJvzfFU6i9HTdIM2rMjhJyjEjkoHIkXMeelBhY4rvtMtoQvpYV7RZURDSuUo6
 fE0aKFem8Z5kylF4PtktbKg2rHxGvZdr4SVjmaUSSK9eC3QtwaYR2kbWRLkh+1R+EE7t
 D19cGp7zDQ6ZiA9z2PFSmxvFc8QfqKN2tRcCCpEFvDHRcmuA68v3O2ok5rYHOOqxye6s
 oEUll2jdh2RRnxvqKKAAj2Qv3WNPakAsPaQ7yZU6u7AWn5Ng5b5jFGc4l4i7oHS1yMt1
 Wg0UjZSR0hSLwIYPuK/p1fOOEgQ2yC7rkeBv43kRG+r3bFGR0637OYslMfAvLOZ6eU9H
 BMbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=t5UIecS6MH/71ZW5DcH5OJLOJtWoB1ttUkA9U4xKPPc=;
 b=UFIph14T8NLsQENzoj7QUOlsLiEd2znjxZ+jU/CM80yrOF6nzDTgchF5skcj2CwuGi
 WGK36xsNe78PT1juIGrfPghztHCyEgNslcuxCiC+7HLVeNBshDGmf7ADwB2MfF1IeTfR
 A/cnpAk+csNFbPVLrZ6ozToYdHMltiQJsbEpQ+L98gcH9TWW2RFVh5RRco9WcS/Ax8MH
 BF1OnyEGX5FcUf6Skaiyb+JYSRPrKTKExMh7FJOBCJGEme3dXW+4T6QuZbqwyHfH1oiB
 Gfqh1Rp/VgJQ64cqpk9nBD/q27Wzy8S7Y9i++UkM5tNTQbRjKSVtUDFFq5KR8Do7/DgG
 sv+A==
X-Gm-Message-State: APjAAAXensS9lXz4W3O9PY2sc2Hxw3zHgC0bAZ19YJij1uHUl4BPGUXW
 ltS22r/m6uyVuIKTJ4aLRC7h7Ga3B/Uj7S7Mzo1fvCpx2cE=
X-Google-Smtp-Source: APXvYqwKUImZAVBmR+4P/9Cl5U02IC/plp+gGwp+5lRllF0lJlPcuA3xGc7F0oJchLhMakR8kRIpuVuk/yv4+nb2b+I=
X-Received: by 2002:a9d:7858:: with SMTP id c24mr3457412otm.66.1557423231292; 
 Thu, 09 May 2019 10:33:51 -0700 (PDT)
MIME-Version: 1.0
References: <883459ac-4408-76f5-37af-c6859c16a1e6@opencode.eu>
 <5CBF2EFA.9060302@gmail.com>
 <138cfa0f-aaa2-99a7-fded-41ebf1148fa0@opencode.eu>
 <5CBF42A1.2060803@gmail.com>
 <9b42df4d-1ce9-3d0d-8171-526c534b4441@opencode.eu>
 <5CBF4788.9060009@gmail.com>
 <e00a6d17-a7da-2a32-2430-bd98c888a54c@opencode.eu>
 <16f93e08-ab6b-a729-1bec-b603c8a27988@opencode.eu>
 <9bbb117f-aff7-1a60-e3c2-362d516915d2@opencode.eu>
In-Reply-To: <9bbb117f-aff7-1a60-e3c2-362d516915d2@opencode.eu>
Date: Thu, 9 May 2019 13:33:40 -0400
Message-ID: <CAB__hTQA1Gb6ux23i1NjQ8PFu3+ug6FSdhEyO8LhTopWz5djUg@mail.gmail.com>
To: Fabian Schwartau <fabian@opencode.eu>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] USRPs time wrong by factor of two
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3247192776636360654=="
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

--===============3247192776636360654==
Content-Type: multipart/alternative; boundary="000000000000779528058877dad6"

--000000000000779528058877dad6
Content-Type: text/plain; charset="UTF-8"

Fabian,
My colleague also encountered this "factor of 2" bug and determined that it
is present starting in 3.14. It's related to the tick/sample rates in the
TwinRx Radio, and does affect timed commands as you suggest. In fact, the
issue can actually be demonstrated using Ettus's example program
"test_timed_commands", which does not run successfully for a TwinRx in 3.14
and later. He actually just submitted this issue to support@ettus.com a few
days ago and is currently waiting on a response from them.
Rob


On Thu, May 9, 2019 at 9:06 AM Fabian Schwartau via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
> is there any update regarding this issue?
>
> Am 26.04.2019 um 11:27 schrieb Fabian Schwartau via USRP-users:
> > Hi,
> >
> > is it to be expected that this will be fixed soon? Is someone at Ettus
> > working on this?
> >
> > Best regards,
> > Fabian
> >
> > Am 23.04.2019 um 19:34 schrieb Fabian Schwartau via USRP-users:
> >> OK, I just reverted the system to the old version and that works
> >> perfectly. The USRP time is incremented in full seconds like expected.
> >> So something changed somewhere in the lib/fpga image.
> >> The version I am using now is:
> >> linux; GNU C++ version 5.4.0 20160609; Boost_105800;
> >> UHD_003.010.002.HEAD-0-gbd6e21dc
> >> Hope that helps.
> >>
> >> Am 23.04.2019 um 19:12 schrieb Marcus D. Leech via USRP-users:
> >>> On 04/23/2019 01:10 PM, Fabian Schwartau via USRP-users wrote:
> >>>> Will the fpga image downloader from the old version also download
> >>>> the old fpga images? Or where can I get them?
> >>>> I don't know if I will do it. I am afraid of breaking my system
> >>>> and/or investing a lot of time with this as I am under quite a lot
> >>>> of time preasure and I am basically working on the production system
> >>>> which has to bo rolled out in a few days. If I brick it, I will get
> >>>> in trouble ;)
> >>> The uhd_images_downloader tool will always download the images that
> >>> match the library version.
> >>>
> >>>
> >>>>
> >>>> Am 23.04.2019 um 18:51 schrieb Marcus D. Leech via USRP-users:
> >>>>> On 04/23/2019 11:48 AM, Fabian Schwartau via USRP-users wrote:
> >>>>>> Hi,
> >>>>>> its the same. I found the bug because the timed commands took much
> >>>>>> longer than expected, so the USRP clock is actually running at a
> >>>>>> lower rate. However, the spectra looked ok and everything else
> >>>>>> seems to be working as usual, except there is a larger delay
> >>>>>> between the commands. So the USRP is not running at a wrong clock
> >>>>>> or something like that. That would probably cause much larger
> issues.
> >>>>>>
> >>>>>> Best regards,
> >>>>>> Fabian
> >>>>> If you revert to a previous release, does the problem go away?
> >>>>>
> >>>>>
> >>>>>>
> >>>>>>
> >>>>>> Am 23.04.2019 um 17:27 schrieb Marcus D. Leech via USRP-users:
> >>>>>>> On 04/23/2019 09:47 AM, Fabian Schwartau via USRP-users wrote:
> >>>>>>>> Hi everyone,
> >>>>>>>>
> >>>>>>>> I just found a very strage bug and would like to confirm that
> >>>>>>>> this is a bug and if someone can explain/fix this.
> >>>>>>>> I read the time from the USRP using get_time_now() and do a lot
> >>>>>>>> of stuff with it. Mainly to time commands like frequency hopping
> >>>>>>>> and starting of streams. I noticed that the time in the USRP
> >>>>>>>> seemed to run slower than expected, actually by a factor of two.
> >>>>>>>> Please find a program attached that demonstrates this effect. It
> >>>>>>>> prints the internal USRP time roughly every second (using sleep)
> >>>>>>>> but the USRP time increments only by 0.5 seconds in each step.
> >>>>>>>> What is going on?
> >>>>>>>>
> >>>>>>>> The program can be compiled using:
> >>>>>>>> g++ -std=c++14 -O2 main.cpp -luhd -lboost_system -o main
> >>>>>>>>
> >>>>>>>> I am using a single (or multiple - does not have an effect) X310
> >>>>>>>> with two TwinRX. UHD is "linux; GNU C++ version 5.5.0 20171010;
> >>>>>>>> Boost_105800; UHD_3.15.0.git-89-gf93c5227" from yesterday. FPGA
> >>>>>>>> image is also from yesterday using the download script - where
> >>>>>>>> can I find the version number? I am running an up-to-date Ubuntu
> >>>>>>>> 16.04.
> >>>>>>> Could you try the print as a get_frac_secs() and get_full_secs()
> >>>>>>> instead?   To disambiguate whether this is an actual hardware
> >>>>>>> clock management
> >>>>>>>    issue or just a formatting issue.
> >>>>>>>
> >>>>>>>
> >>>>>>>
> >>>>>>> _______________________________________________
> >>>>>>> USRP-users mailing list
> >>>>>>> USRP-users@lists.ettus.com
> >>>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >>>>>>
> >>>>>> _______________________________________________
> >>>>>> USRP-users mailing list
> >>>>>> USRP-users@lists.ettus.com
> >>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >>>>>
> >>>>>
> >>>>> _______________________________________________
> >>>>> USRP-users mailing list
> >>>>> USRP-users@lists.ettus.com
> >>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >>>>
> >>>> _______________________________________________
> >>>> USRP-users mailing list
> >>>> USRP-users@lists.ettus.com
> >>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >>>
> >>>
> >>> _______________________________________________
> >>> USRP-users mailing list
> >>> USRP-users@lists.ettus.com
> >>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >>
> >> _______________________________________________
> >> USRP-users mailing list
> >> USRP-users@lists.ettus.com
> >> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000779528058877dad6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Fabian,</div><div>My colleague also =
encountered this &quot;factor of 2&quot; bug and determined that it is pres=
ent starting in 3.14. It&#39;s related to the tick/sample rates in the Twin=
Rx Radio, and does affect timed commands as you suggest. In fact, the issue=
 can actually be demonstrated using Ettus&#39;s example program &quot;test_=
timed_commands&quot;, which does not run successfully for a TwinRx in 3.14 =
and later. He actually just submitted this issue to <a href=3D"mailto:suppo=
rt@ettus.com">support@ettus.com</a> a few days ago and is currently waiting=
 on a response from them.<br></div><div>Rob</div><div><br></div></div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Th=
u, May 9, 2019 at 9:06 AM Fabian Schwartau via USRP-users &lt;<a href=3D"ma=
ilto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
is there any update regarding this issue?<br>
<br>
Am 26.04.2019 um 11:27 schrieb Fabian Schwartau via USRP-users:<br>
&gt; Hi,<br>
&gt; <br>
&gt; is it to be expected that this will be fixed soon? Is someone at Ettus=
 <br>
&gt; working on this?<br>
&gt; <br>
&gt; Best regards,<br>
&gt; Fabian<br>
&gt; <br>
&gt; Am 23.04.2019 um 19:34 schrieb Fabian Schwartau via USRP-users:<br>
&gt;&gt; OK, I just reverted the system to the old version and that works <=
br>
&gt;&gt; perfectly. The USRP time is incremented in full seconds like expec=
ted. <br>
&gt;&gt; So something changed somewhere in the lib/fpga image.<br>
&gt;&gt; The version I am using now is:<br>
&gt;&gt; linux; GNU C++ version 5.4.0 20160609; Boost_105800; <br>
&gt;&gt; UHD_003.010.002.HEAD-0-gbd6e21dc<br>
&gt;&gt; Hope that helps.<br>
&gt;&gt;<br>
&gt;&gt; Am 23.04.2019 um 19:12 schrieb Marcus D. Leech via USRP-users:<br>
&gt;&gt;&gt; On 04/23/2019 01:10 PM, Fabian Schwartau via USRP-users wrote:=
<br>
&gt;&gt;&gt;&gt; Will the fpga image downloader from the old version also d=
ownload <br>
&gt;&gt;&gt;&gt; the old fpga images? Or where can I get them?<br>
&gt;&gt;&gt;&gt; I don&#39;t know if I will do it. I am afraid of breaking =
my system <br>
&gt;&gt;&gt;&gt; and/or investing a lot of time with this as I am under qui=
te a lot <br>
&gt;&gt;&gt;&gt; of time preasure and I am basically working on the product=
ion system <br>
&gt;&gt;&gt;&gt; which has to bo rolled out in a few days. If I brick it, I=
 will get <br>
&gt;&gt;&gt;&gt; in trouble ;)<br>
&gt;&gt;&gt; The uhd_images_downloader tool will always download the images=
 that <br>
&gt;&gt;&gt; match the library version.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Am 23.04.2019 um 18:51 schrieb Marcus D. Leech via USRP-us=
ers:<br>
&gt;&gt;&gt;&gt;&gt; On 04/23/2019 11:48 AM, Fabian Schwartau via USRP-user=
s wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt; Hi,<br>
&gt;&gt;&gt;&gt;&gt;&gt; its the same. I found the bug because the timed co=
mmands took much <br>
&gt;&gt;&gt;&gt;&gt;&gt; longer than expected, so the USRP clock is actuall=
y running at a <br>
&gt;&gt;&gt;&gt;&gt;&gt; lower rate. However, the spectra looked ok and eve=
rything else <br>
&gt;&gt;&gt;&gt;&gt;&gt; seems to be working as usual, except there is a la=
rger delay <br>
&gt;&gt;&gt;&gt;&gt;&gt; between the commands. So the USRP is not running a=
t a wrong clock <br>
&gt;&gt;&gt;&gt;&gt;&gt; or something like that. That would probably cause =
much larger issues.<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; Best regards,<br>
&gt;&gt;&gt;&gt;&gt;&gt; Fabian<br>
&gt;&gt;&gt;&gt;&gt; If you revert to a previous release, does the problem =
go away?<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; Am 23.04.2019 um 17:27 schrieb Marcus D. Leech via=
 USRP-users:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; On 04/23/2019 09:47 AM, Fabian Schwartau via U=
SRP-users wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Hi everyone,<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I just found a very strage bug and would l=
ike to confirm that <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; this is a bug and if someone can explain/f=
ix this.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I read the time from the USRP using get_ti=
me_now() and do a lot <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; of stuff with it. Mainly to time commands =
like frequency hopping <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; and starting of streams. I noticed that th=
e time in the USRP <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; seemed to run slower than expected, actual=
ly by a factor of two.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Please find a program attached that demons=
trates this effect. It <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; prints the internal USRP time roughly ever=
y second (using sleep) <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; but the USRP time increments only by 0.5 s=
econds in each step. <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; What is going on?<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; The program can be compiled using:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; g++ -std=3Dc++14 -O2 main.cpp -luhd -lboos=
t_system -o main<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I am using a single (or multiple - does no=
t have an effect) X310 <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; with two TwinRX. UHD is &quot;linux; GNU C=
++ version 5.5.0 20171010; <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Boost_105800; UHD_3.15.0.git-89-gf93c5227&=
quot; from yesterday. FPGA <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; image is also from yesterday using the dow=
nload script - where <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; can I find the version number? I am runnin=
g an up-to-date Ubuntu <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; 16.04.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; Could you try the print as a get_frac_secs() a=
nd get_full_secs() <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; instead?=C2=A0=C2=A0 To disambiguate whether t=
his is an actual hardware <br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; clock management<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; =C2=A0=C2=A0 issue or just a formatting issue.=
<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; ______________________________________________=
_<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; USRP-users mailing list<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" =
target=3D"_blank">USRP-users@lists.ettus.com</a><br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/list=
info/usrp-users_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http:=
//lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; _______________________________________________<br=
>
&gt;&gt;&gt;&gt;&gt;&gt; USRP-users mailing list<br>
&gt;&gt;&gt;&gt;&gt;&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" targ=
et=3D"_blank">USRP-users@lists.ettus.com</a><br>
&gt;&gt;&gt;&gt;&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo=
/usrp-users_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://li=
sts.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt;&gt;&gt; USRP-users mailing list<br>
&gt;&gt;&gt;&gt;&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=
=3D"_blank">USRP-users@lists.ettus.com</a><br>
&gt;&gt;&gt;&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usr=
p-users_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.=
ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt;&gt; USRP-users mailing list<br>
&gt;&gt;&gt;&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_b=
lank">USRP-users@lists.ettus.com</a><br>
&gt;&gt;&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-us=
ers_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettu=
s.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
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
&gt;&gt; _______________________________________________<br>
&gt;&gt; USRP-users mailing list<br>
&gt;&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">US=
RP-users@lists.ettus.com</a><br>
&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_list=
s.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/ma=
ilman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000779528058877dad6--


--===============3247192776636360654==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3247192776636360654==--

