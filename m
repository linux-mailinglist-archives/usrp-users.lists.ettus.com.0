Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4687A94A71
	for <lists+usrp-users@lfdr.de>; Mon, 19 Aug 2019 18:35:32 +0200 (CEST)
Received: from [::1] (port=34636 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hzkcz-0003AC-BY; Mon, 19 Aug 2019 12:35:29 -0400
Received: from mail-ot1-f46.google.com ([209.85.210.46]:36885)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <neel.pandeya@ettus.com>)
 id 1hzkcv-000342-WA
 for usrp-users@lists.ettus.com; Mon, 19 Aug 2019 12:35:26 -0400
Received: by mail-ot1-f46.google.com with SMTP id f17so2244121otq.4
 for <usrp-users@lists.ettus.com>; Mon, 19 Aug 2019 09:35:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7KVT8jMwRpHIXe/jpUCU0hqHI04lwrPlizxH1S6oTlk=;
 b=U0HyKAqyVgeZ+b+5F3522f+XQjLjlzxGntIx6zLgCMjsAq8TtRPH7FIKe47bzqxyhA
 KkUyX9hMvUcFIH+1GnNVh+EOWSPK1XLAQ/wBSCxHSa6v5Zj/WR6rjcNRTm7zi8bdJD7m
 KGjIXi1hPc2dJfkoWB2ggKZNRZMypmC9pceCvZFsvuBl1fmdExx5if0BuBSfb/EMX9eR
 3FcRqnw0O9NkmbTCVZNejsUZi+H17p0Yrzq/v1yHR/J/0eJU7SvWzTM9m1tfjlvAmMTD
 0Nzj6mR2pcxB2dF5dzTM1MSj4HLJFCHh5IhAlbs4Ls4enIYjrRCb11wLdhvFSwverfnk
 4VlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7KVT8jMwRpHIXe/jpUCU0hqHI04lwrPlizxH1S6oTlk=;
 b=ABcRUTnAGcGMun1BMsYWWJKrJPM63B3/+GTpokQQKP4CQmG/JmwBRzl+l6snHID+yA
 FhB12vDEXlddp9Nb0TTQ3Pndb9cwtCQhvm7S1sSoBL7dy1sOrRslX/NQoziE7morl804
 UvSaEwOsrd+1cpM/HFYtcp67AcXMyyHiqo69QiwbpmnqiT5gJ/wBw+5cpeqANPPG2vIc
 qW0pCKfDNEOZhpvRKZCsKy3I3dtM+W7815bLMaK1uRCBV9c0kk7KD8aoIAgqqQPaknV/
 gj4nN4SXtHgYNytZ/QP9TSiymOpi/settcG9h3V8dqoFQCnLUd+EAa2kRNIambZk5jjX
 dydw==
X-Gm-Message-State: APjAAAV6X8l5N1Orv5RSDfcYjGqa7Xwe7ne88R5a6cK0PK74mmbh0Yfv
 SFfZVN+9BYJP4f3h2vTpFyLF6VCSZGsmM7qrk/ppKkUX97w=
X-Google-Smtp-Source: APXvYqwhLODG2QlWBokh2ySuZDwgPs403RZoC7Med4xlF9He29gUB7ZfH4gEdEapivpw3eSiIfnLRHQozUghpZuFLJ4=
X-Received: by 2002:a05:6830:144d:: with SMTP id
 w13mr19547938otp.85.1566232485159; 
 Mon, 19 Aug 2019 09:34:45 -0700 (PDT)
MIME-Version: 1.0
References: <9d637be0-b80a-33cb-492d-0197e3ba6f5a@3db-labs.com>
 <5D576746.1010008@gmail.com>
 <e74ba0af-5c65-9b46-d3d7-360ab9d9dda5@3db-labs.com>
In-Reply-To: <e74ba0af-5c65-9b46-d3d7-360ab9d9dda5@3db-labs.com>
Date: Mon, 19 Aug 2019 11:34:28 -0500
Message-ID: <CACaXmv-XwDKP8ok_325K_hahwWUAuesQJddD8-CkoNrJY7GqfQ@mail.gmail.com>
To: Jason Roehm <jasonr@3db-labs.com>
Subject: Re: [USRP-users] Incorrect RX time_spec values with X300, TwinRX,
 and v3.14.1.0
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
From: Neel Pandeya via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Neel Pandeya <neel.pandeya@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5547167950863636196=="
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

--===============5547167950863636196==
Content-Type: multipart/alternative; boundary="000000000000e9f76e05907aea91"

--000000000000e9f76e05907aea91
Content-Type: text/plain; charset="UTF-8"

Hello Jason:

I also would have expected UHD 3.14.1.0 to have resolved this issue.

Would you be able to send me a stand-alone program that I can use to
reproduce this problem?

Also, I'm curious, do you have a GPSDO installed in your X300?

--Neel Pandeya



On Sun, 18 Aug 2019 at 13:19, Jason Roehm via USRP-users <
usrp-users@lists.ettus.com> wrote:

>
> On 8/16/19 10:32 PM, Marcus D. Leech via USRP-users wrote:
> > On 08/16/2019 04:54 PM, Jason Roehm via USRP-users wrote:
> >> I have a software application that interfaces to an X300 with a
> >> TwinRX daughterboard installed. We recently upgraded our UHD version
> >> to v3.14.1.0 in our application. Since then, we've observed that the
> >> time_spec values on consecutive blocks of data received from the unit
> >> (i.e. from two sequential calls to rx_streamer::recv()) are not
> >> consistent with one another. The timecodes reported by the unit seem
> >> to be moving forward at twice real time.
> >>
> >> As an example, assume that I have the X300 configured for a sample
> >> rate of 100 MSPS, and that I'm getting 1000 samples per call to
> >> recv() (these are just round numbers to simplify the discussion). I'm
> >> seeing metadata from consecutive recv() calls that look like this:
> >>
> >> Block 1:
> >> - time_spec.get_whole_secs(): 0
> >> - time_spec.get_frac_secs(): 0
> >> - 1000 samples @ 100 MHz = 10 usec of data
> >>
> >> Block 2:
> >> - time_spec.get_whole_secs(): 0
> >> - time_spec.get_frac_secs(): 0.000020 (where I would have expected
> >> 0.000010 instead)
> >> - 1000 samples @ 100 MHz = 10 usec of data
> >>
> >> ... and so on.
> >>
> >> If you watch the stream of timestamps received from the device, it
> >> looks like time is passing at twice the appropriate rate. I noticed
> >> this recent commit that seemed could be related:
> >>
> >>
> https://github.com/EttusResearch/uhd/commit/5f75f73f25016958ab32710bb0cbd5ce4481041b
> >>
> >>
> >> If I revert that commit, then the timekeeping on the TwinRX channel
> >> works properly again. However, that isn't a fix that I can work with;
> >> I also use this hardware in a configuration where the X300 has a
> >> TwinRX and LFRX daughterboard installed simultaneously. Without the
> >> above commit, then I am unable to stream data from the LFRX; the
> >> rx_streamer never returns any data for that channel. I previously
> >> reported that problem
> >> (
> http://ettus.80997.x6.nabble.com/USRP-users-X300-with-TwinRX-and-LFRX-under-UHD-v3-14-td12749.html)
>
> >> and never got an answer, but the above commit silently fixed it in
> >> v3.14.1.0.
> >>
> >> How can I get correct timekeeping with the X300/TwinRX, while
> >> maintaining my ability to stream from a TwinRX and LFRX simultaneously?
> >>
> >> Jason
> >>
> >>
> > I THINK this is fixed in commit:
> >
> > f712d477b97e2ee7cca56d5afcf199f00959eb85
> >
> That commit is already included in v3.14.1.0 (and this code was later
> amended by commit 4eb12b031f9cad3df3e294db466bd26dee6b78e1, see
>
> https://github.com/EttusResearch/uhd/commit/4eb12b031f9cad3df3e294db466bd26dee6b78e1).
>
> So, I don't think that is a fix for this problem.
>
> Jason
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000e9f76e05907aea91
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-family:verdana,sans-serif">Hello Jason:</div><div class=3D"gmail_default"=
 style=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gmail_def=
ault" style=3D"font-family:verdana,sans-serif">I also would have expected U=
HD 3.14.1.0 to have resolved this issue.</div><div class=3D"gmail_default" =
style=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gmail_defa=
ult" style=3D"font-family:verdana,sans-serif">Would you be able to send me =
a stand-alone program that I can use to reproduce this problem?<br></div><d=
iv class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br></d=
iv><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif">Al=
so, I&#39;m curious, do you have a GPSDO installed in your X300?<br></div><=
div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br></=
div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif">-=
-Neel Pandeya</div><div class=3D"gmail_default" style=3D"font-family:verdan=
a,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:v=
erdana,sans-serif"><br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Sun, 18 Aug 2019 at 13:19, Jason Roehm via=
 USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@li=
sts.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><br>
On 8/16/19 10:32 PM, Marcus D. Leech via USRP-users wrote:<br>
&gt; On 08/16/2019 04:54 PM, Jason Roehm via USRP-users wrote:<br>
&gt;&gt; I have a software application that interfaces to an X300 with a <b=
r>
&gt;&gt; TwinRX daughterboard installed. We recently upgraded our UHD versi=
on <br>
&gt;&gt; to v3.14.1.0 in our application. Since then, we&#39;ve observed th=
at the <br>
&gt;&gt; time_spec values on consecutive blocks of data received from the u=
nit <br>
&gt;&gt; (i.e. from two sequential calls to rx_streamer::recv()) are not <b=
r>
&gt;&gt; consistent with one another. The timecodes reported by the unit se=
em <br>
&gt;&gt; to be moving forward at twice real time.<br>
&gt;&gt;<br>
&gt;&gt; As an example, assume that I have the X300 configured for a sample=
 <br>
&gt;&gt; rate of 100 MSPS, and that I&#39;m getting 1000 samples per call t=
o <br>
&gt;&gt; recv() (these are just round numbers to simplify the discussion). =
I&#39;m <br>
&gt;&gt; seeing metadata from consecutive recv() calls that look like this:=
<br>
&gt;&gt;<br>
&gt;&gt; Block 1:<br>
&gt;&gt; - time_spec.get_whole_secs(): 0<br>
&gt;&gt; - time_spec.get_frac_secs(): 0<br>
&gt;&gt; - 1000 samples @ 100 MHz =3D 10 usec of data<br>
&gt;&gt;<br>
&gt;&gt; Block 2:<br>
&gt;&gt; - time_spec.get_whole_secs(): 0<br>
&gt;&gt; - time_spec.get_frac_secs(): 0.000020 (where I would have expected=
 <br>
&gt;&gt; 0.000010 instead)<br>
&gt;&gt; - 1000 samples @ 100 MHz =3D 10 usec of data<br>
&gt;&gt;<br>
&gt;&gt; ... and so on.<br>
&gt;&gt;<br>
&gt;&gt; If you watch the stream of timestamps received from the device, it=
 <br>
&gt;&gt; looks like time is passing at twice the appropriate rate. I notice=
d <br>
&gt;&gt; this recent commit that seemed could be related:<br>
&gt;&gt;<br>
&gt;&gt; <a href=3D"https://github.com/EttusResearch/uhd/commit/5f75f73f250=
16958ab32710bb0cbd5ce4481041b" rel=3D"noreferrer" target=3D"_blank">https:/=
/github.com/EttusResearch/uhd/commit/5f75f73f25016958ab32710bb0cbd5ce448104=
1b</a> <br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; If I revert that commit, then the timekeeping on the TwinRX channe=
l <br>
&gt;&gt; works properly again. However, that isn&#39;t a fix that I can wor=
k with; <br>
&gt;&gt; I also use this hardware in a configuration where the X300 has a <=
br>
&gt;&gt; TwinRX and LFRX daughterboard installed simultaneously. Without th=
e <br>
&gt;&gt; above commit, then I am unable to stream data from the LFRX; the <=
br>
&gt;&gt; rx_streamer never returns any data for that channel. I previously =
<br>
&gt;&gt; reported that problem <br>
&gt;&gt; (<a href=3D"http://ettus.80997.x6.nabble.com/USRP-users-X300-with-=
TwinRX-and-LFRX-under-UHD-v3-14-td12749.html" rel=3D"noreferrer" target=3D"=
_blank">http://ettus.80997.x6.nabble.com/USRP-users-X300-with-TwinRX-and-LF=
RX-under-UHD-v3-14-td12749.html</a>) <br>
&gt;&gt; and never got an answer, but the above commit silently fixed it in=
 <br>
&gt;&gt; v3.14.1.0.<br>
&gt;&gt;<br>
&gt;&gt; How can I get correct timekeeping with the X300/TwinRX, while <br>
&gt;&gt; maintaining my ability to stream from a TwinRX and LFRX simultaneo=
usly?<br>
&gt;&gt;<br>
&gt;&gt; Jason<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt; I THINK this is fixed in commit:<br>
&gt;<br>
&gt; f712d477b97e2ee7cca56d5afcf199f00959eb85<br>
&gt;<br>
That commit is already included in v3.14.1.0 (and this code was later <br>
amended by commit 4eb12b031f9cad3df3e294db466bd26dee6b78e1, see <br>
<a href=3D"https://github.com/EttusResearch/uhd/commit/4eb12b031f9cad3df3e2=
94db466bd26dee6b78e1" rel=3D"noreferrer" target=3D"_blank">https://github.c=
om/EttusResearch/uhd/commit/4eb12b031f9cad3df3e294db466bd26dee6b78e1</a>). =
<br>
So, I don&#39;t think that is a fix for this problem.<br>
<br>
Jason<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000e9f76e05907aea91--


--===============5547167950863636196==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5547167950863636196==--

