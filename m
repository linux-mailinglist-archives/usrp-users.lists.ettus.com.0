Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D6AB02EAF6
	for <lists+usrp-users@lfdr.de>; Thu, 30 May 2019 05:06:41 +0200 (CEST)
Received: from [::1] (port=55426 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hWBOp-0007eT-Oe; Wed, 29 May 2019 23:06:39 -0400
Received: from mail-qt1-f173.google.com ([209.85.160.173]:36238)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <masdrgs@gmail.com>) id 1hWBOl-0007Wm-Sc
 for USRP-users@lists.ettus.com; Wed, 29 May 2019 23:06:35 -0400
Received: by mail-qt1-f173.google.com with SMTP id u12so5277920qth.3
 for <USRP-users@lists.ettus.com>; Wed, 29 May 2019 20:06:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=V7aO1cuWJT7zjyYi4/sUD1FA7Eynxf9nSBJHl79T220=;
 b=s/2+6v3KogCfSnUwZ9uybx/h0WlHcJiy6bTi6cHDdIB7WqlcdlAc7wWzYbm/TPgWFC
 Dn7JDR7Gm/oyaGty4NSwKK7aROMseAknZA4Wtojgfsxh5ky7yyUikW6w9IQZidSC0hA1
 Dr83sXwc6XhPlPcKs6F9hTsJojITmY5gKp7HyVCtNNSIj+grSvzbl8xdOnxnqytjt1gh
 3ly0Hxt9luHjMUGh3alXky3xOcSCgHN0DuxrGY8oZaJF68iWmYLKI5fnWpZ+3NnAMbOU
 Js58nGpljSodEus18JkSs2Ktp5yCy1yL0ZaLhHia01L1xLGBSBaQhcb/qPR3TAjfxrav
 BjVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=V7aO1cuWJT7zjyYi4/sUD1FA7Eynxf9nSBJHl79T220=;
 b=YvpQ8O3aI0UOIxA3xO6gdXZ/AcS8Ox1KLvoupPMuF0NvaB9znMZmuHbQAqorrMWL0Z
 yMLmytvzc1zrSpXFJycfYvcMLgyUGJeFfF41/YYYyWRObQr3qVvf2aFq9d+uiqqgJN8Z
 pLHna2Zuuw2W4UudAML6DTjjf4vjlteilWnEYibn+vFgv/iiO9659NhfTNX6OauJMyYB
 jVDgqbFbLkufRhm8jiWwQ9Tu7+auKvFDcvEaudjJsS6cTD3v99EDdKXjIbDm5KMhyC9S
 pXEvea8j9zcF2VRK0sdSrLq8nhK8llp7NCgNkciFM0EfK2qWoVGf+gmo2tjqxu84LeN/
 puoA==
X-Gm-Message-State: APjAAAWQu5Vc5gadDQzY3cP6HVLb39PYrOMMOHKdv1kIBlWJYCUU+LSC
 +uJn+XdiDhu6VOY3snlwBEOdptHKF+TP+xa6HBSl6bMt
X-Google-Smtp-Source: APXvYqwGX9TBPZgUNQB8wCWPUBNaE3nK0j7ZzEM4/KH0SygemIH7WX0k8sNV1oSjZogJDpwbnO52ix3DWARSCKzE1HM=
X-Received: by 2002:aed:3bcf:: with SMTP id s15mr1262768qte.105.1559185555171; 
 Wed, 29 May 2019 20:05:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAH2gDtmquSDVaR3yyZWW8Ri-KmXnxrREL6oPEnDWKejkiDGN9w@mail.gmail.com>
 <b1c1fd3ce159c46e19c09f914a1312315e5171e0.camel@ettus.com>
 <CAH2gDtmfdzkjpGZP7VYBjECiFTWjfpN+23wHAQfwaSoCASfu+A@mail.gmail.com>
 <40288cfce222e4cc01de551dbe26236b4bcb66d1.camel@ettus.com>
In-Reply-To: <40288cfce222e4cc01de551dbe26236b4bcb66d1.camel@ettus.com>
Date: Wed, 29 May 2019 17:05:43 -1000
Message-ID: <CAH2gDt=8N9gS7eUPYda0xY3ejhW-BO4Zc-wvPSgE3R94UuytXA@mail.gmail.com>
To: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
Subject: Re: [USRP-users] Running network mode on E310 and N300
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
From: MASDR GS via USRP-users <usrp-users@lists.ettus.com>
Reply-To: MASDR GS <masdrgs@gmail.com>
Cc: USRP-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============5570729109711241376=="
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

--===============5570729109711241376==
Content-Type: multipart/alternative; boundary="00000000000027ad7d058a122d23"

--00000000000027ad7d058a122d23
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you! I used the ettus reference below to create two libraries, one
for each USRP.
https://kb.ettus.com/Building_and_Installing_UHD_and_GNU_Radio_to_a_Custom_=
Prefix

On Tue, May 21, 2019 at 11:20 AM Marcus M=C3=BCller <marcus.mueller@ettus.c=
om>
wrote:

> Hm, if you have to provide a uniform interface, but need to use
> different versions of UHD underneath: What about simply building two
> identical libraries that use the two necessary versions of UHD, and
> only runtime-link (plugin-style) either shared object at run time,
> depending on which USRP you need to talk to?
>
> Best regards,
> Marcus
> On Mon, 2019-05-20 at 12:45 -1000, MASDR GS wrote:
> > Hi Marcus,
> >
> > Thank you for your response. Unfortunately our N300s have Rev H
> > motherboards so version 3.12 doesn't seem to be an option for us.
> >
> > Regarding our application, we have been using the E310s for our
> > waveform application development over the past few years and recently
> > received two new N300s to provide improved performance in network
> > mode.  We are currently working with one license for a software
> > development tool that restricts us to network mode only due to
> > licensing restrictions.  One of our project objectives is to develop
> > portable, hardware agnostic waveform applications so that we can
> > conceivably use our applications on various SDR platforms.  Therefore
> > we'd like to have the flexibility to switch between both the e310 and
> > N300 for development purposes and demonstrate software portability.
> > Appreciate any suggestions/feedback on alternative options you may
> > have that would allow us to use both SDRs from one host machine.
> >
> >
> >
> >
> >
> > On Sun, May 19, 2019 at 8:34 AM Marcus M=C3=BCller <
> > marcus.mueller@ettus.com> wrote:
> > > Hi!
> > >
> > > Network mode on E310 was highly undesirable (reliable rates below
> > > 2MS/s) and not compatible with RFNoC, and hence has been disabled
> > > in
> > > recent versions of UHD. I've always considered Network Mode on the
> > > E310
> > > to be a testing tool, not something you'd want to do for streaming,
> > > to
> > > be completely honest!
> > >
> > > The N300's network interfacing is fundamentally different and
> > > optimized
> > > for network streaming. The typical use case for the N300 would use
> > > one
> > > of the (up to 10Gb/s) SFP+ ports for network sample streaming, and
> > > the
> > > 1Gb/s RJ45 ethernet port to "talk" to the ARM host inside, for
> > > control.
> > > Versions of UHD supporting the N300 start at 3.12.0.0 (but only for
> > > hardware revisions up to motherboard revision G; you'll need
> > > 3.13.0.2
> > > for that); starting with 3.13.0.0, there is no network mode on the
> > > E310.
> > > I'll be honest and say: while this sounds like you could be using
> > > 3.12.0.0 to run your E310 in network mode and still use your N300
> > > (given it's not rev G or later), that would be a suboptimal
> > > solution
> > > considering the N3xx improvements that were introduced with 3.13.
> > > and
> > > 3.14.0.0.
> > >
> > > So, maybe you could elaborate on the application you're having for
> > > the
> > > E310 network mode in combination with N300? There might be an easy
> > > way
> > > around the obstacle you're encountering, but I don't really know
> > > what
> > > you're planning to do from here.
> > >
> > > Best regards,
> > > Marcus
> > >
> > > On Wed, 2019-05-15 at 12:53 -1000, MASDR GS via USRP-users wrote:
> > > > Would it be possible to run network mode on both E310 and N300
> > > using
> > > > the latest UHD driver v3.14.0?
> > > >
> > > > The N300 requires v3.12.0 or greater to run host mode and I
> > > currently
> > > > have release-4 with a UHD version v3.9.2 on the E310. But the
> > > > condition to run network mode is that the UHD drivers of radio
> > > and
> > > > host machine must match. I couldn't find any information on how
> > > to
> > > > update the E310 UHD drivers directly, but I have tried creating a
> > > SDK
> > > > version using release-4 building UHD v3.14.0 but wasn't
> > > successful
> > > > running network mode with E310. Any suggestions or help would be
> > > > really appreciated.
> > > > _______________________________________________
> > > > USRP-users mailing list
> > > > USRP-users@lists.ettus.com
> > > >
> > > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> > >
>
>

--00000000000027ad7d058a122d23
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you! I used the ettus reference below to create two =
libraries, one for each USRP.<div><a href=3D"https://kb.ettus.com/Building_=
and_Installing_UHD_and_GNU_Radio_to_a_Custom_Prefix">https://kb.ettus.com/B=
uilding_and_Installing_UHD_and_GNU_Radio_to_a_Custom_Prefix</a><br></div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Tue, May 21, 2019 at 11:20 AM Marcus M=C3=BCller &lt;<a href=3D"mailto:mar=
cus.mueller@ettus.com">marcus.mueller@ettus.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex">Hm, if you have to provide a=
 uniform interface, but need to use<br>
different versions of UHD underneath: What about simply building two<br>
identical libraries that use the two necessary versions of UHD, and<br>
only runtime-link (plugin-style) either shared object at run time,<br>
depending on which USRP you need to talk to?<br>
<br>
Best regards,<br>
Marcus<br>
On Mon, 2019-05-20 at 12:45 -1000, MASDR GS wrote:<br>
&gt; Hi Marcus,<br>
&gt; <br>
&gt; Thank you for your response. Unfortunately our N300s have Rev H<br>
&gt; motherboards so version 3.12 doesn&#39;t seem to be an option for us.<=
br>
&gt; <br>
&gt; Regarding our application, we have been using the E310s for our<br>
&gt; waveform application development over the past few years and recently<=
br>
&gt; received two new N300s to provide improved performance in network<br>
&gt; mode.=C2=A0 We are currently working with one license for a software<b=
r>
&gt; development tool that restricts us to network mode only due to<br>
&gt; licensing restrictions.=C2=A0 One of our project objectives is to deve=
lop<br>
&gt; portable, hardware agnostic waveform applications so that we can<br>
&gt; conceivably use our applications on various SDR platforms.=C2=A0 There=
fore<br>
&gt; we&#39;d like to have the flexibility to switch between both the e310 =
and<br>
&gt; N300 for development purposes and demonstrate software portability. <b=
r>
&gt; Appreciate any suggestions/feedback on alternative options you may<br>
&gt; have that would allow us to use both SDRs from one host machine.=C2=A0=
 <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0<br>
&gt; <br>
&gt; On Sun, May 19, 2019 at 8:34 AM Marcus M=C3=BCller &lt;<br>
&gt; <a href=3D"mailto:marcus.mueller@ettus.com" target=3D"_blank">marcus.m=
ueller@ettus.com</a>&gt; wrote:<br>
&gt; &gt; Hi!<br>
&gt; &gt; <br>
&gt; &gt; Network mode on E310 was highly undesirable (reliable rates below=
<br>
&gt; &gt; 2MS/s) and not compatible with RFNoC, and hence has been disabled=
<br>
&gt; &gt; in<br>
&gt; &gt; recent versions of UHD. I&#39;ve always considered Network Mode o=
n the<br>
&gt; &gt; E310<br>
&gt; &gt; to be a testing tool, not something you&#39;d want to do for stre=
aming,<br>
&gt; &gt; to<br>
&gt; &gt; be completely honest!<br>
&gt; &gt; <br>
&gt; &gt; The N300&#39;s network interfacing is fundamentally different and=
<br>
&gt; &gt; optimized<br>
&gt; &gt; for network streaming. The typical use case for the N300 would us=
e<br>
&gt; &gt; one<br>
&gt; &gt; of the (up to 10Gb/s) SFP+ ports for network sample streaming, an=
d<br>
&gt; &gt; the<br>
&gt; &gt; 1Gb/s RJ45 ethernet port to &quot;talk&quot; to the ARM host insi=
de, for<br>
&gt; &gt; control. <br>
&gt; &gt; Versions of UHD supporting the N300 start at 3.12.0.0 (but only f=
or<br>
&gt; &gt; hardware revisions up to motherboard revision G; you&#39;ll need<=
br>
&gt; &gt; 3.13.0.2<br>
&gt; &gt; for that); starting with 3.13.0.0, there is no network mode on th=
e<br>
&gt; &gt; E310.<br>
&gt; &gt; I&#39;ll be honest and say: while this sounds like you could be u=
sing<br>
&gt; &gt; 3.12.0.0 to run your E310 in network mode and still use your N300=
<br>
&gt; &gt; (given it&#39;s not rev G or later), that would be a suboptimal<b=
r>
&gt; &gt; solution<br>
&gt; &gt; considering the N3xx improvements that were introduced with 3.13.=
<br>
&gt; &gt; and<br>
&gt; &gt; 3.14.0.0.<br>
&gt; &gt; <br>
&gt; &gt; So, maybe you could elaborate on the application you&#39;re havin=
g for<br>
&gt; &gt; the<br>
&gt; &gt; E310 network mode in combination with N300? There might be an eas=
y<br>
&gt; &gt; way<br>
&gt; &gt; around the obstacle you&#39;re encountering, but I don&#39;t real=
ly know<br>
&gt; &gt; what<br>
&gt; &gt; you&#39;re planning to do from here.<br>
&gt; &gt; <br>
&gt; &gt; Best regards,<br>
&gt; &gt; Marcus<br>
&gt; &gt; <br>
&gt; &gt; On Wed, 2019-05-15 at 12:53 -1000, MASDR GS via USRP-users wrote:=
<br>
&gt; &gt; &gt; Would it be possible to run network mode on both E310 and N3=
00<br>
&gt; &gt; using<br>
&gt; &gt; &gt; the latest UHD driver v3.14.0?<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; The N300 requires v3.12.0 or greater to run host mode and I<=
br>
&gt; &gt; currently<br>
&gt; &gt; &gt; have release-4 with a UHD version v3.9.2 on the E310. But th=
e<br>
&gt; &gt; &gt; condition to run network mode is that the UHD drivers of rad=
io<br>
&gt; &gt; and<br>
&gt; &gt; &gt; host machine must match. I couldn&#39;t find any information=
 on how<br>
&gt; &gt; to<br>
&gt; &gt; &gt; update the E310 UHD drivers directly, but I have tried creat=
ing a<br>
&gt; &gt; SDK<br>
&gt; &gt; &gt; version using release-4 building UHD v3.14.0 but wasn&#39;t<=
br>
&gt; &gt; successful<br>
&gt; &gt; &gt; running network mode with E310. Any suggestions or help woul=
d be<br>
&gt; &gt; &gt; really appreciated.<br>
&gt; &gt; &gt; _______________________________________________<br>
&gt; &gt; &gt; USRP-users mailing list<br>
&gt; &gt; &gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_bla=
nk">USRP-users@lists.ettus.com</a><br>
&gt; &gt; &gt; <br>
&gt; &gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lis=
ts.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/m=
ailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt; &gt; <br>
<br>
</blockquote></div>

--00000000000027ad7d058a122d23--


--===============5570729109711241376==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5570729109711241376==--

