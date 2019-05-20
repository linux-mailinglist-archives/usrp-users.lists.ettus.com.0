Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CA4F24394
	for <lists+usrp-users@lfdr.de>; Tue, 21 May 2019 00:46:41 +0200 (CEST)
Received: from [::1] (port=52468 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hSr3H-0003tg-3E; Mon, 20 May 2019 18:46:39 -0400
Received: from mail-qk1-f171.google.com ([209.85.222.171]:40837)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <masdrgs@gmail.com>) id 1hSr2j-0003et-BZ
 for USRP-users@lists.ettus.com; Mon, 20 May 2019 18:46:35 -0400
Received: by mail-qk1-f171.google.com with SMTP id q197so9879924qke.7
 for <USRP-users@lists.ettus.com>; Mon, 20 May 2019 15:45:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IorEUmDScuY2Dr7X74oxLa3TJ7kYzWwkb750xQ5wa+Q=;
 b=UoEc2sNQtXoftWi3cBKqnDZQRSGlF56vyWsI6OKvq2D+W2lJeC1nXxWHDpufinDmJM
 WfM2skUD1oywdwAz7hgXqT7O93mm0ni9ICzZupAkWz7m3xT/52ZTT/vXEGrswSFLOwWn
 rxYbWePNDlI7+cw4/cw9gZTO2AUIg2H9cTpIfOQzGCJS4D8PPkWDpvDWp3i3mUdkhaqB
 0K75DDc7ER4ql8zPKRR3ns/x3q+3Qdlc8n7Sl5h4CVBJ0VduOhvWDZO2gyeS5KJZ/BMS
 aXib7SuHTya7DWChkZloyEkUBteAq/ftO8dugN7S/QjEhZGlq2peLIP8lk/CMZQ/5cvr
 vWcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IorEUmDScuY2Dr7X74oxLa3TJ7kYzWwkb750xQ5wa+Q=;
 b=mxcIDZwn3oeKAWa5BzVf/8uKfDcVedIbeaSEYZrqJbVn3s7qZKS4oTUUkkTZ4OfQeY
 OE0pFSAgxshFH+Yq2wm1wMvvMi3ZCfWflh2YOblUKaNKdxYC2XVmNN0Muj6jeqRkwDGP
 r7nST9VvGr5Osx293sENgGdXVMfQp3xy0I+Kpy87wJGLSRq6YMfVhu4R5VrWFD0NwtUy
 TBn5T2EIQgjshJ39x5xkuh5ik7BvGf20uSGMYMH3boQ9JJ0Tj/KCms37hQQIWh6xaGkK
 sV3ceHts1zEt/t+INnEsmdwpoOknwRDkUuoNRN7M/9OI3G09SJnRYfGHA2PkUZk6c2t5
 djDw==
X-Gm-Message-State: APjAAAW9pjjeQmTjJw6Oyp1c16giJbyqZcfmRJKBoQBl7/UlMhPB++RL
 W82sb7yo4mqkqzozPM5UA9rjGwQ/V6NkmQsp8KE=
X-Google-Smtp-Source: APXvYqyRDFmNjNu7g+x1+zDOYRlkDfveQ6I/ejFP4ibPoSE/mr5QQRmR58DwepmSqKBQ77V3SsU0Q+Uftctdyix/YfA=
X-Received: by 2002:a37:4d81:: with SMTP id
 a123mr43415433qkb.340.1558392324628; 
 Mon, 20 May 2019 15:45:24 -0700 (PDT)
MIME-Version: 1.0
References: <CAH2gDtmquSDVaR3yyZWW8Ri-KmXnxrREL6oPEnDWKejkiDGN9w@mail.gmail.com>
 <b1c1fd3ce159c46e19c09f914a1312315e5171e0.camel@ettus.com>
In-Reply-To: <b1c1fd3ce159c46e19c09f914a1312315e5171e0.camel@ettus.com>
Date: Mon, 20 May 2019 12:45:15 -1000
Message-ID: <CAH2gDtmfdzkjpGZP7VYBjECiFTWjfpN+23wHAQfwaSoCASfu+A@mail.gmail.com>
To: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
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
Content-Type: multipart/mixed; boundary="===============5027394139937747412=="
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

--===============5027394139937747412==
Content-Type: multipart/alternative; boundary="000000000000ee35b30589597c11"

--000000000000ee35b30589597c11
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

Thank you for your response. Unfortunately our N300s have Rev H
motherboards so version 3.12 doesn't seem to be an option for us.

Regarding our application, we have been using the E310s for our waveform
application development over the past few years and recently received two
new N300s to provide improved performance in network mode.  We are
currently working with one license for a software development tool that
restricts us to network mode only due to licensing restrictions.  One of
our project objectives is to develop portable, hardware agnostic waveform
applications so that we can conceivably use our applications on various SDR
platforms.  Therefore we'd like to have the flexibility to switch between
both the e310 and N300 for development purposes and demonstrate software
portability.  Appreciate any suggestions/feedback on alternative options
you may have that would allow us to use both SDRs from one host machine.





On Sun, May 19, 2019 at 8:34 AM Marcus M=C3=BCller <marcus.mueller@ettus.co=
m>
wrote:

> Hi!
>
> Network mode on E310 was highly undesirable (reliable rates below
> 2MS/s) and not compatible with RFNoC, and hence has been disabled in
> recent versions of UHD. I've always considered Network Mode on the E310
> to be a testing tool, not something you'd want to do for streaming, to
> be completely honest!
>
> The N300's network interfacing is fundamentally different and optimized
> for network streaming. The typical use case for the N300 would use one
> of the (up to 10Gb/s) SFP+ ports for network sample streaming, and the
> 1Gb/s RJ45 ethernet port to "talk" to the ARM host inside, for
> control.
> Versions of UHD supporting the N300 start at 3.12.0.0 (but only for
> hardware revisions up to motherboard revision G; you'll need 3.13.0.2
> for that); starting with 3.13.0.0, there is no network mode on the
> E310.
> I'll be honest and say: while this sounds like you could be using
> 3.12.0.0 to run your E310 in network mode and still use your N300
> (given it's not rev G or later), that would be a suboptimal solution
> considering the N3xx improvements that were introduced with 3.13. and
> 3.14.0.0.
>
> So, maybe you could elaborate on the application you're having for the
> E310 network mode in combination with N300? There might be an easy way
> around the obstacle you're encountering, but I don't really know what
> you're planning to do from here.
>
> Best regards,
> Marcus
>
> On Wed, 2019-05-15 at 12:53 -1000, MASDR GS via USRP-users wrote:
> > Would it be possible to run network mode on both E310 and N300 using
> > the latest UHD driver v3.14.0?
> >
> > The N300 requires v3.12.0 or greater to run host mode and I currently
> > have release-4 with a UHD version v3.9.2 on the E310. But the
> > condition to run network mode is that the UHD drivers of radio and
> > host machine must match. I couldn't find any information on how to
> > update the E310 UHD drivers directly, but I have tried creating a SDK
> > version using release-4 building UHD v3.14.0 but wasn't successful
> > running network mode with E310. Any suggestions or help would be
> > really appreciated.
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>

--000000000000ee35b30589597c11
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Marcus,</div><div><br></div><div>Thank you for you=
r response. Unfortunately our N300s have Rev H motherboards so version 3.12=
 doesn&#39;t seem to be an option for us.</div><div><br></div><div>Regardin=
g our application, we have been using the E310s for our waveform applicatio=
n development over the past few years and recently received two new N300s t=
o provide improved performance in network mode.=C2=A0 We are currently work=
ing with one license for a software development tool that restricts us to n=
etwork mode only due to licensing restrictions.=C2=A0 One of our project ob=
jectives is to develop portable, hardware agnostic waveform applications so=
 that we can conceivably use our applications on various SDR platforms.=C2=
=A0 Therefore we&#39;d like to have the flexibility to switch between both =
the e310 and N300 for development purposes and demonstrate software portabi=
lity.=C2=A0 Appreciate any suggestions/feedback on alternative options you =
may have that would allow us to use both SDRs from one host machine.=C2=A0 =
<br></div><div><br></div><div><br></div><div><br></div><div>=C2=A0 =C2=A0 <=
br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Sun, May 19, 2019 at 8:34 AM Marcus M=C3=BCller &lt;<a href=3D"=
mailto:marcus.mueller@ettus.com">marcus.mueller@ettus.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi!<br>
<br>
Network mode on E310 was highly undesirable (reliable rates below<br>
2MS/s) and not compatible with RFNoC, and hence has been disabled in<br>
recent versions of UHD. I&#39;ve always considered Network Mode on the E310=
<br>
to be a testing tool, not something you&#39;d want to do for streaming, to<=
br>
be completely honest!<br>
<br>
The N300&#39;s network interfacing is fundamentally different and optimized=
<br>
for network streaming. The typical use case for the N300 would use one<br>
of the (up to 10Gb/s) SFP+ ports for network sample streaming, and the<br>
1Gb/s RJ45 ethernet port to &quot;talk&quot; to the ARM host inside, for<br=
>
control. <br>
Versions of UHD supporting the N300 start at 3.12.0.0 (but only for<br>
hardware revisions up to motherboard revision G; you&#39;ll need 3.13.0.2<b=
r>
for that); starting with 3.13.0.0, there is no network mode on the<br>
E310.<br>
I&#39;ll be honest and say: while this sounds like you could be using<br>
3.12.0.0 to run your E310 in network mode and still use your N300<br>
(given it&#39;s not rev G or later), that would be a suboptimal solution<br=
>
considering the N3xx improvements that were introduced with 3.13. and<br>
3.14.0.0.<br>
<br>
So, maybe you could elaborate on the application you&#39;re having for the<=
br>
E310 network mode in combination with N300? There might be an easy way<br>
around the obstacle you&#39;re encountering, but I don&#39;t really know wh=
at<br>
you&#39;re planning to do from here.<br>
<br>
Best regards,<br>
Marcus<br>
<br>
On Wed, 2019-05-15 at 12:53 -1000, MASDR GS via USRP-users wrote:<br>
&gt; Would it be possible to run network mode on both E310 and N300 using<b=
r>
&gt; the latest UHD driver v3.14.0?<br>
&gt; <br>
&gt; The N300 requires v3.12.0 or greater to run host mode and I currently<=
br>
&gt; have release-4 with a UHD version v3.9.2 on the E310. But the<br>
&gt; condition to run network mode is that the UHD drivers of radio and<br>
&gt; host machine must match. I couldn&#39;t find any information on how to=
<br>
&gt; update the E310 UHD drivers directly, but I have tried creating a SDK<=
br>
&gt; version using release-4 building UHD v3.14.0 but wasn&#39;t successful=
<br>
&gt; running network mode with E310. Any suggestions or help would be<br>
&gt; really appreciated.<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
<br>
</blockquote></div>

--000000000000ee35b30589597c11--


--===============5027394139937747412==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5027394139937747412==--

