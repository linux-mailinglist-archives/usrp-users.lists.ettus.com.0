Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B1EF22CFB02
	for <lists+usrp-users@lfdr.de>; Sat,  5 Dec 2020 11:37:40 +0100 (CET)
Received: from [::1] (port=44134 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1klUwa-0002qI-Up; Sat, 05 Dec 2020 05:37:36 -0500
Received: from mail-qt1-f175.google.com ([209.85.160.175]:39672)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <cuervonicolas@gmail.com>)
 id 1klUwX-0002ks-09
 for usrp-users@lists.ettus.com; Sat, 05 Dec 2020 05:37:33 -0500
Received: by mail-qt1-f175.google.com with SMTP id a6so3494073qtw.6
 for <usrp-users@lists.ettus.com>; Sat, 05 Dec 2020 02:37:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=Q3U075bCjJ/C5YATyoVvvhcNtyGpIQbjkFCQH59YaJY=;
 b=PqSyGQGOjvVhrCPSE30/GOzKcHIyCPiLL6WRAwXFzHWrjZrD3YyZH956G9+vQczCwm
 W1dK1zGbRz09FVewSuKQhPd4IIrPO5OqCCHRLHkOIw0nn4IaQAvJ/W828aVV6MMTGUCG
 BuwgQVa0PRlt8T3bGLUfBltaj+RwwuU3bL8ywmbsv76wZlHMn36dNXltCVr+FqkZxZH8
 PgTrlRCFGlvSdUHwInocI+/45tOoQa7FcAg0iD1x6sZtQ28GkYlz7NwpjqGa5IWaTI1E
 t0vvYY0bWxxgxtIrY9T5JVRbYDc+oWexAx7ajUz5FSHBZRYKUoUrqHQehHTNtlDdrATM
 RqbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=Q3U075bCjJ/C5YATyoVvvhcNtyGpIQbjkFCQH59YaJY=;
 b=agxzfmkE2nhR+RiHL/qiElPqm4PddXh0uTy3IKu6KadRXXhGXXEZQ0eu0E6KutERsg
 /hs+nvhQ895LGPyM1u3FXH+1jNt0jTBibf5pBbyGVx1XFOiLEWFMwpfMucys6cjhhMHa
 At4sn8quqxm9lDTURcNcDEPPgw2kjN1YWjXV0fKnYIb6SSzJwri3My0WzFJ5Pp5p4tEv
 SLLwSsVQFmSMO5lk3NEG5P51iaR/iyPI96d0Yv9c63CDz0E9kknZCU6AyRyQ2ziSAcBE
 bPPqHwpU/Ste3OfUd1V3N7F39HIAvHujmBMSTM28B2IlIAhl7ixakDi7IHjAoUK0pWP4
 e5Lg==
X-Gm-Message-State: AOAM5317yFxZ3h+4j8KtgZnMU2Yh/6cJNhifEyfYzdMwzN94goghRLz8
 FN0iiehe8eMr1EaVgsWNPWLbB0vAqZOWRnjVXZE=
X-Google-Smtp-Source: ABdhPJys4mmzE8XeC8liqkUlfa2piGZEHn0ncFjtF/+Rm05d8JcTFPTVcNNQiSTk1xFwnzdRi83Uv1AAKtgWzlIJPIM=
X-Received: by 2002:ac8:5514:: with SMTP id j20mr15021119qtq.387.1607164612231; 
 Sat, 05 Dec 2020 02:36:52 -0800 (PST)
MIME-Version: 1.0
Date: Sat, 5 Dec 2020 11:36:41 +0100
Message-ID: <CAG-BkhbghmchaScEHdUcexJ1q8z816SRF7VbPcMtU1fF3K+Orw@mail.gmail.com>
To: fosdem@lists.fosdem.org, discuss-gnuradio <discuss-gnuradio@gnu.org>, 
 "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
 osmocom-sdr@lists.osmocom.org
Subject: [USRP-users] FOSDEM 2021: Free Software Radio Devroom CfP
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
From: Nicolas Cuervo Benavides via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nicolas Cuervo Benavides <cuervonicolas@gmail.com>
Content-Type: multipart/mixed; boundary="===============5468203628036926992=="
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

--===============5468203628036926992==
Content-Type: multipart/alternative; boundary="000000000000cec5fb05b5b52be0"

--000000000000cec5fb05b5b52be0
Content-Type: text/plain; charset="UTF-8"

Dear friends and fans of software-defined radio and free/open-source radio
topics in general,

FOSDEM 2021 (the free and open-source developer's meeting usually in
Brussels, Europe but **this time virtually**) will again feature a track on
Software Defined Radio and any other radio-related topics in the Free
Software Radio devroom. Therefore, we invite developers and users from the
free software radio community to join us for this track and present your
talks or demos.

Given the current circumstances and the virtual nature of this event in
2021, we are asking the presenters to pre-record the talks, which will then
be gathered by us and streamed during the event. Presenters are also asked
to be present online during their timeslot for live Q&A.

Software Radio has become an important tool to allow anyone to access the
EM spectrum. Using free software radio libraries and applications and cheap
hardware, anyone can now start hacking on wireless communications, remote
sensing, radar, fun hacks of all sorts, or other applications. At FOSDEM,
we hope to network all these projects, and improve collaboration, bring new
ideas forward and get more people involved.

The track's website resides at the link below. The final schedule will be
available through Pentabarf and the official FOSDEM website. Notice that
the reference time will be Brussels local time (CET).

https://fosdem.org/2021/schedule/track/free_software_radio/

Additional Information will be also available at:
https://wiki.gnuradio.org/index.php/FOSDEM_2021

** Submit your presentations
To suggest a talk, go to https://penta.fosdem.org/submission/FOSDEM21 and
follow the instructions (you need an account, but can use your account from
last year if you have one. Please do NOT create a new account if you
already have one). You need to create an 'Event'; make sure it's in the
Free Software Radio track! Your submission should have the following
information:

* Your contact Email
* A descriptive title and subtitle of your talk
* A short abstract
* Links related to the project
* [Optional] A longer description of the content of your talk.

Lengths aren't fixed, but give a realistic estimate, and please don't
exceed 30 minutes unless you have something special planned (in that case,
contact one of us). We will typically go for 30-minute slots -- shorter
talks, unless they're really short, usually tend to screw up the schedule
too much.

You aren't limited to slide presentations, of course. Be creative. However,
FOSDEM is an open-source conference, therefore we ask you to stay clear of
marketing presentations and present something relevant to free/open
software. We like nitty-gritty technical stuff.

Topics discussed in this devroom include:
* SDR Frameworks + Tools
* Cellular/telecoms software
* Free/Open SDR hardware
* Wireless security
* Random fun wireless hacks
* SDR in education
* Satellite/spacecraft communication
* Ham radio related topics

** Important Dates
* Submission deadline: 26 December 2020
* Announcement of selected talks: 31 December 2020
* Conference dates 6 & 7 February 2021 online
* Free software radio devroom date: Sunday 7 February 2021 online

In the last years we were always full to the brim with presentations, so if
you want to present, please make sure to submit your abstracts soon!

** Following steps for accepted talks
When your talk is accepted, you will be contacted by a deputy who will help
you with the pre-recording of your talk. Together you will make sure that
the content has the required quality and is stream-ready. When complete,
the recording will be located into the streaming system, and Bob's your
uncle.

Don't forget that you **must** be available during the allocated timeslot
of your talk for live Q&A.

** Steering Committee
The track committee consists of:

* Phil Balister - "Crofton"
* Derek Kozel - "dkozel"
* Nicolas Cuervo - "primercuervo"
* Martin Braun - "mbr0wn"

Hope to hear from you soon! And please forward this announcement.

- Nicolas

--000000000000cec5fb05b5b52be0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Dear friends and fans of software-defined radio and f=
ree/open-source radio topics in general,<br>=C2=A0<br>FOSDEM 2021 (the free=
 and open-source developer&#39;s meeting usually in Brussels, Europe but **=
this time virtually**) will again feature a track on Software Defined Radio=
 and any other radio-related topics in the Free Software Radio devroom. The=
refore, we invite developers and users from the free software radio communi=
ty to join us for this track and present your talks or demos.<br>=C2=A0<br>=
Given the current circumstances and the virtual nature of this event in 202=
1, we are asking the presenters to pre-record the talks, which will then be=
 gathered by us and streamed during the event. Presenters are also asked to=
 be present online during their timeslot for live Q&amp;A. <br>=C2=A0<br>So=
ftware Radio has become an important tool to allow anyone to access the EM =
spectrum. Using free software radio libraries and applications and cheap ha=
rdware, anyone can now start hacking on wireless communications, remote sen=
sing, radar, fun hacks of all sorts, or other applications. At FOSDEM, we h=
ope to network all these projects, and improve collaboration, bring new ide=
as forward and get more people involved.<br>=C2=A0<br>The track&#39;s websi=
te resides at the link below. The final schedule will be available through =
Pentabarf and the official FOSDEM website. Notice that the reference time w=
ill be Brussels local time (CET).<br>=C2=A0<br><a href=3D"https://fosdem.or=
g/2021/schedule/track/free_software_radio/">https://fosdem.org/2021/schedul=
e/track/free_software_radio/</a><br>=C2=A0<br>Additional Information will b=
e also available at: <br><a href=3D"https://wiki.gnuradio.org/index.php/FOS=
DEM_2021">https://wiki.gnuradio.org/index.php/FOSDEM_2021<br></a>=C2=A0<br>=
** Submit your presentations<br>To suggest a talk, go to <a href=3D"https:/=
/penta.fosdem.org/submission/FOSDEM21">https://penta.fosdem.org/submission/=
FOSDEM21</a> and follow the instructions (you need an account, but can use =
your account from last year if you have one. Please do NOT create a new acc=
ount if you already have one). You need to create an &#39;Event&#39;; make =
sure it&#39;s in the Free Software Radio track! Your submission should have=
 the following information:<br>=C2=A0<br>* Your contact Email<br>* A descri=
ptive title and subtitle of your talk<br>* A short abstract<br>* Links rela=
ted to the project<br>* [Optional] A longer description of the content of y=
our talk. <br>=C2=A0<br>Lengths aren&#39;t fixed, but give a realistic esti=
mate, and please don&#39;t exceed 30 minutes unless you have something spec=
ial planned (in that case, contact one of us).=C2=A0We will typically go fo=
r 30-minute slots -- shorter talks, unless they&#39;re really short, usuall=
y tend to screw up the schedule too much.<br>=C2=A0<br>You aren&#39;t limit=
ed to slide presentations, of course. Be creative. However, FOSDEM is an op=
en-source conference, therefore we ask you to stay clear of marketing prese=
ntations and present something relevant to free/open software. We like nitt=
y-gritty technical stuff.<br>=C2=A0<br>Topics discussed in this devroom inc=
lude:<br>* SDR Frameworks + Tools<br>* Cellular/telecoms software<br>* Free=
/Open SDR hardware<br>* Wireless security<br>* Random fun wireless hacks<br=
>* SDR in education<br>* Satellite/spacecraft communication<br>* Ham radio =
related topics<br>=C2=A0<br>** Important Dates<br>* Submission deadline: 26=
 December 2020<br>* Announcement of selected talks: 31 December 2020<br>* C=
onference dates 6 &amp; 7 February 2021 online<br>* Free software radio dev=
room date: Sunday 7 February 2021 online<br>=C2=A0<br>In the last years we =
were always full to the brim with presentations, so if you want to present,=
 please make sure to submit your abstracts soon!<br>=C2=A0<br>** Following =
steps for accepted talks<br>When your talk is accepted, you will be contact=
ed by a deputy who will help you with the pre-recording of your talk. Toget=
her you will make sure that the content has the required quality and is str=
eam-ready. When complete, the recording will be located into the streaming =
system, and Bob&#39;s your uncle. <br>=C2=A0<br>Don&#39;t forget that you *=
*must** be available during the allocated timeslot of your talk for live Q&=
amp;A.<br>=C2=A0<br>** Steering Committee<br>The track committee consists o=
f:<br>=C2=A0<br>* Phil Balister - &quot;Crofton&quot;<br>* Derek Kozel - &q=
uot;dkozel&quot;<br>* Nicolas Cuervo - &quot;primercuervo&quot;<br>* Martin=
 Braun - &quot;mbr0wn&quot; =C2=A0<br>=C2=A0<br>Hope to hear from you soon!=
 And please forward this announcement.<br><div><br></div><div><span style=
=3D"color:rgb(37,37,37);font-family:sans-serif">- Nicolas</span></div></div=
></div>

--000000000000cec5fb05b5b52be0--


--===============5468203628036926992==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5468203628036926992==--

