Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E7A52DF857
	for <lists+usrp-users@lfdr.de>; Mon, 21 Dec 2020 05:45:07 +0100 (CET)
Received: from [::1] (port=39482 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1krD4A-0007lU-Do; Sun, 20 Dec 2020 23:45:02 -0500
Received: from mail-qk1-f179.google.com ([209.85.222.179]:34999)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <cuervonicolas@gmail.com>)
 id 1krD47-0007g7-DO
 for usrp-users@lists.ettus.com; Sun, 20 Dec 2020 23:44:59 -0500
Received: by mail-qk1-f179.google.com with SMTP id n142so7899543qkn.2
 for <usrp-users@lists.ettus.com>; Sun, 20 Dec 2020 20:44:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=bsVeES2bsd4JxwlQwLWqhGcKiJI7wlBQxIJTZp0l4u4=;
 b=lKLM79tkjXYFItxHnCGbLdGmhysqd4OAobZp+9fhvwlfOOOGfKbb3i9qqChnA6HlN6
 kFCLWVXh0wIYfuYp1SEmpuJfnjsTmeLuco1D7snebcMfq/1QGKvYmi0Df0PawVIfSe/5
 33KBCIiw232X8u42dA34mXVDk4HzYrUWQjkfBm2Nyj/UTrUxWEyPwwPBvQEt2OcsNwIz
 vZcrzFY27vq4lc+SgJKejxQUgw+2eE5nl0ibtxWYnkVl61pqHXdHi9CzBrmU1gPxptfo
 jSWU3hrsinRVo49kB6M/kirFM8C0L76hWf5KYhw+wLAvDfOtQn2gGXdYHTaYZZhIiHyq
 vjbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=bsVeES2bsd4JxwlQwLWqhGcKiJI7wlBQxIJTZp0l4u4=;
 b=Jmmr88c6NCe+8olgyfhszyZJiclypKVffVje6e3eCLpB00JS6fl+6p+XElaQA3glVu
 5Um80tYZUHvJ5HJrtVwGxrD7CL5ohJ4IZ5369YfYsmaFBoPoQHAf8zu0LDAi9VlcctF8
 JHhU+jbWX6Mj8Z+hCN0nH7dWITdItKB9bJ1anoYfXQnTLZvKTIYTyAZcD05bS5iVEu7c
 8WaJ1VYFyM+DYYhhoNcHJabOwgTKSUd6jc5fJ48IyaOH3kVS1NrSrG8T6j92LllDL/hq
 1qG8V/4IlTH3HXZFmsJED75SbUrt9u4qlaMkGzznSpr4UlxvI/ESpv2wC2wOUXLyy7v5
 Zr8w==
X-Gm-Message-State: AOAM530yciToTgdXyH/SUSvhvyxdhBG+x4edWQ2R0Zii8wabKe+5GOv5
 fPvVpuRVK0cZvjC0NT06s/XUybjVBhzdib7O515HH/iwav8=
X-Google-Smtp-Source: ABdhPJxIsLgpiDNQZzyvs8JgUrQ6qZFY6rcsFdzKW9RR9w2JPqRn0v5k3MkhcOOMaXahij2rsPM+87p7g3IdaOBadYU=
X-Received: by 2002:a05:620a:7fb:: with SMTP id
 k27mr16145069qkk.485.1608525858637; 
 Sun, 20 Dec 2020 20:44:18 -0800 (PST)
MIME-Version: 1.0
References: <CAG-BkhbghmchaScEHdUcexJ1q8z816SRF7VbPcMtU1fF3K+Orw@mail.gmail.com>
In-Reply-To: <CAG-BkhbghmchaScEHdUcexJ1q8z816SRF7VbPcMtU1fF3K+Orw@mail.gmail.com>
Date: Mon, 21 Dec 2020 05:44:07 +0100
Message-ID: <CAG-BkhaY6BqosFDS7zbC=7pcF9hx8ozhrb-WTVJLD_SjzA4bxA@mail.gmail.com>
To: discuss-gnuradio <discuss-gnuradio@gnu.org>, 
 "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
 osmocom-sdr@lists.osmocom.org
Subject: Re: [USRP-users] FOSDEM 2021: Free Software Radio Devroom CfP
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
Content-Type: multipart/mixed; boundary="===============7057581891549700728=="
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

--===============7057581891549700728==
Content-Type: multipart/alternative; boundary="0000000000006a8d0e05b6f21c99"

--0000000000006a8d0e05b6f21c99
Content-Type: text/plain; charset="UTF-8"

Dear friends and fans of software-defined radio,



the Free Software Radio DevRoom track at next year's FOSDEM still has some
slots left! We already have
some submissions and we are in the process of ranking those, but we will
gladly
add YOUR presentation to the list!



If you have anything related to the field of free software radio, please

head to:



https://penta.fosdem.org/submission/FOSDEM21



and submit your short abstract! We're looking very much forward to your
submission.



For the committee,



Nicolas

On Sat, Dec 5, 2020 at 11:36 AM Nicolas Cuervo Benavides <
cuervonicolas@gmail.com> wrote:

> Dear friends and fans of software-defined radio and free/open-source radio
> topics in general,
>
> FOSDEM 2021 (the free and open-source developer's meeting usually in
> Brussels, Europe but **this time virtually**) will again feature a track on
> Software Defined Radio and any other radio-related topics in the Free
> Software Radio devroom. Therefore, we invite developers and users from the
> free software radio community to join us for this track and present your
> talks or demos.
>
> Given the current circumstances and the virtual nature of this event in
> 2021, we are asking the presenters to pre-record the talks, which will then
> be gathered by us and streamed during the event. Presenters are also asked
> to be present online during their timeslot for live Q&A.
>
> Software Radio has become an important tool to allow anyone to access the
> EM spectrum. Using free software radio libraries and applications and cheap
> hardware, anyone can now start hacking on wireless communications, remote
> sensing, radar, fun hacks of all sorts, or other applications. At FOSDEM,
> we hope to network all these projects, and improve collaboration, bring new
> ideas forward and get more people involved.
>
> The track's website resides at the link below. The final schedule will be
> available through Pentabarf and the official FOSDEM website. Notice that
> the reference time will be Brussels local time (CET).
>
> https://fosdem.org/2021/schedule/track/free_software_radio/
>
> Additional Information will be also available at:
> https://wiki.gnuradio.org/index.php/FOSDEM_2021
>
> ** Submit your presentations
> To suggest a talk, go to https://penta.fosdem.org/submission/FOSDEM21 and
> follow the instructions (you need an account, but can use your account from
> last year if you have one. Please do NOT create a new account if you
> already have one). You need to create an 'Event'; make sure it's in the
> Free Software Radio track! Your submission should have the following
> information:
>
> * Your contact Email
> * A descriptive title and subtitle of your talk
> * A short abstract
> * Links related to the project
> * [Optional] A longer description of the content of your talk.
>
> Lengths aren't fixed, but give a realistic estimate, and please don't
> exceed 30 minutes unless you have something special planned (in that case,
> contact one of us). We will typically go for 30-minute slots -- shorter
> talks, unless they're really short, usually tend to screw up the schedule
> too much.
>
> You aren't limited to slide presentations, of course. Be creative.
> However, FOSDEM is an open-source conference, therefore we ask you to stay
> clear of marketing presentations and present something relevant to
> free/open software. We like nitty-gritty technical stuff.
>
> Topics discussed in this devroom include:
> * SDR Frameworks + Tools
> * Cellular/telecoms software
> * Free/Open SDR hardware
> * Wireless security
> * Random fun wireless hacks
> * SDR in education
> * Satellite/spacecraft communication
> * Ham radio related topics
>
> ** Important Dates
> * Submission deadline: 26 December 2020
> * Announcement of selected talks: 31 December 2020
> * Conference dates 6 & 7 February 2021 online
> * Free software radio devroom date: Sunday 7 February 2021 online
>
> In the last years we were always full to the brim with presentations, so
> if you want to present, please make sure to submit your abstracts soon!
>
> ** Following steps for accepted talks
> When your talk is accepted, you will be contacted by a deputy who will
> help you with the pre-recording of your talk. Together you will make sure
> that the content has the required quality and is stream-ready. When
> complete, the recording will be located into the streaming system, and
> Bob's your uncle.
>
> Don't forget that you **must** be available during the allocated timeslot
> of your talk for live Q&A.
>
> ** Steering Committee
> The track committee consists of:
>
> * Phil Balister - "Crofton"
> * Derek Kozel - "dkozel"
> * Nicolas Cuervo - "primercuervo"
> * Martin Braun - "mbr0wn"
>
> Hope to hear from you soon! And please forward this announcement.
>
> - Nicolas
>

--0000000000006a8d0e05b6f21c99
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear friends and fans of software-defined radio, =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0<br>the Free Software Radio DevRoom track at next year&=
#39;s FOSDEM still has some slots left! We already have =C2=A0<br>some subm=
issions and we are in the process of ranking those, but we will gladly<br>a=
dd YOUR presentation to the list! =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>If you have anything related to the f=
ield of free software radio, please =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0<br>head to: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br><a href=3D"https://penta.fosdem.org/s=
ubmission/FOSDEM21">https://penta.fosdem.org/submission/FOSDEM21</a>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0<br>and submit your short abstract! We&#39;re lo=
oking very much forward to your <br>submission. =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>For the committee, =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>Nicolas=C2=
=A0<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Sat, Dec 5, 2020 at 11:36 AM Nicolas Cuervo Benavides &lt;<a href=
=3D"mailto:cuervonicolas@gmail.com">cuervonicolas@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
><div>Dear friends and fans of software-defined radio and free/open-source =
radio topics in general,<br>=C2=A0<br>FOSDEM 2021 (the free and open-source=
 developer&#39;s meeting usually in Brussels, Europe but **this time virtua=
lly**) will again feature a track on Software Defined Radio and any other r=
adio-related topics in the Free Software Radio devroom. Therefore, we invit=
e developers and users from the free software radio community to join us fo=
r this track and present your talks or demos.<br>=C2=A0<br>Given the curren=
t circumstances and the virtual nature of this event in 2021, we are asking=
 the presenters to pre-record the talks, which will then be gathered by us =
and streamed during the event. Presenters are also asked to be present onli=
ne during their timeslot for live Q&amp;A. <br>=C2=A0<br>Software Radio has=
 become an important tool to allow anyone to access the EM spectrum. Using =
free software radio libraries and applications and cheap hardware, anyone c=
an now start hacking on wireless communications, remote sensing, radar, fun=
 hacks of all sorts, or other applications. At FOSDEM, we hope to network a=
ll these projects, and improve collaboration, bring new ideas forward and g=
et more people involved.<br>=C2=A0<br>The track&#39;s website resides at th=
e link below. The final schedule will be available through Pentabarf and th=
e official FOSDEM website. Notice that the reference time will be Brussels =
local time (CET).<br>=C2=A0<br><a href=3D"https://fosdem.org/2021/schedule/=
track/free_software_radio/" target=3D"_blank">https://fosdem.org/2021/sched=
ule/track/free_software_radio/</a><br>=C2=A0<br>Additional Information will=
 be also available at: <br><a href=3D"https://wiki.gnuradio.org/index.php/F=
OSDEM_2021" target=3D"_blank">https://wiki.gnuradio.org/index.php/FOSDEM_20=
21<br></a>=C2=A0<br>** Submit your presentations<br>To suggest a talk, go t=
o <a href=3D"https://penta.fosdem.org/submission/FOSDEM21" target=3D"_blank=
">https://penta.fosdem.org/submission/FOSDEM21</a> and follow the instructi=
ons (you need an account, but can use your account from last year if you ha=
ve one. Please do NOT create a new account if you already have one). You ne=
ed to create an &#39;Event&#39;; make sure it&#39;s in the Free Software Ra=
dio track! Your submission should have the following information:<br>=C2=A0=
<br>* Your contact Email<br>* A descriptive title and subtitle of your talk=
<br>* A short abstract<br>* Links related to the project<br>* [Optional] A =
longer description of the content of your talk. <br>=C2=A0<br>Lengths aren&=
#39;t fixed, but give a realistic estimate, and please don&#39;t exceed 30 =
minutes unless you have something special planned (in that case, contact on=
e of us).=C2=A0We will typically go for 30-minute slots -- shorter talks, u=
nless they&#39;re really short, usually tend to screw up the schedule too m=
uch.<br>=C2=A0<br>You aren&#39;t limited to slide presentations, of course.=
 Be creative. However, FOSDEM is an open-source conference, therefore we as=
k you to stay clear of marketing presentations and present something releva=
nt to free/open software. We like nitty-gritty technical stuff.<br>=C2=A0<b=
r>Topics discussed in this devroom include:<br>* SDR Frameworks + Tools<br>=
* Cellular/telecoms software<br>* Free/Open SDR hardware<br>* Wireless secu=
rity<br>* Random fun wireless hacks<br>* SDR in education<br>* Satellite/sp=
acecraft communication<br>* Ham radio related topics<br>=C2=A0<br>** Import=
ant Dates<br>* Submission deadline: 26 December 2020<br>* Announcement of s=
elected talks: 31 December 2020<br>* Conference dates 6 &amp; 7 February 20=
21 online<br>* Free software radio devroom date: Sunday 7 February 2021 onl=
ine<br>=C2=A0<br>In the last years we were always full to the brim with pre=
sentations, so if you want to present, please make sure to submit your abst=
racts soon!<br>=C2=A0<br>** Following steps for accepted talks<br>When your=
 talk is accepted, you will be contacted by a deputy who will help you with=
 the pre-recording of your talk. Together you will make sure that the conte=
nt has the required quality and is stream-ready. When complete, the recordi=
ng will be located into the streaming system, and Bob&#39;s your uncle. <br=
>=C2=A0<br>Don&#39;t forget that you **must** be available during the alloc=
ated timeslot of your talk for live Q&amp;A.<br>=C2=A0<br>** Steering Commi=
ttee<br>The track committee consists of:<br>=C2=A0<br>* Phil Balister - &qu=
ot;Crofton&quot;<br>* Derek Kozel - &quot;dkozel&quot;<br>* Nicolas Cuervo =
- &quot;primercuervo&quot;<br>* Martin Braun - &quot;mbr0wn&quot; =C2=A0<br=
>=C2=A0<br>Hope to hear from you soon! And please forward this announcement=
.<br><div><br></div><div><span style=3D"color:rgb(37,37,37);font-family:san=
s-serif">- Nicolas</span></div></div></div>
</blockquote></div>

--0000000000006a8d0e05b6f21c99--


--===============7057581891549700728==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7057581891549700728==--

