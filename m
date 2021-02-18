Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A808331EBE9
	for <lists+usrp-users@lfdr.de>; Thu, 18 Feb 2021 16:58:49 +0100 (CET)
Received: from [::1] (port=44760 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lClhJ-0006hc-Ta; Thu, 18 Feb 2021 10:58:33 -0500
Received: from mail-ot1-f49.google.com ([209.85.210.49]:35354)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1lClhG-0006Zx-1u
 for usrp-users@lists.ettus.com; Thu, 18 Feb 2021 10:58:30 -0500
Received: by mail-ot1-f49.google.com with SMTP id 80so2294037oty.2
 for <usrp-users@lists.ettus.com>; Thu, 18 Feb 2021 07:58:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=CV7EOnOXzqNlYp0zw8+lweN3vlqVXI0e/2JlgTHespI=;
 b=Ueux+eyydiGzUIne9YKU+7y2SKXr2pH8N6SzPYXt3R8N7MSyub23ueNkB4vGfABvv+
 080I/WnLuvBex14v/XH0uaTPVMOrlBkSuhU0eeCqDhqB6Eb7SjO5OWOgfWqB25dpz3Mt
 GgQLs92cqPdQPfaGlFqQcdL1lM6cMOE8V2N2hzYQ+2tLmOV8PMehTKQAWA2S21vxMdhl
 bUpdyZups7AWTg70NWtdpTEyknjcNqvV6aQ+Wi/0lnSNxJiuG8cP4YuCkw2ScFOuKgyU
 Wv5aVUPlHqqKB8iteXHSDvUhABz0EhOzqlrVTeY/I0fiJe8OaH9wp52PAxb84mI9j0Gn
 1fPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=CV7EOnOXzqNlYp0zw8+lweN3vlqVXI0e/2JlgTHespI=;
 b=bAF/VuQWA9T88auENqUkMdDXRK+1vDy1dAl3RK0A0c+FcAH6ZkSUmZ5ryG/8SLXmK/
 YKVHZ0Efb7hu29d6vXnZrb2oLvgub8kOWU4RMZSSjlsIAskzsnKnYkeYrF7W6N3pP2MB
 iVY4b+I9+4SpcyJ/8Mf3Bkx6bUjHOw6/EE7e1SOqjkIwrGBS1apw/foqTlTpv5rnIftm
 kD0xBlH2uUqcpiaY+LLETazFt+n6jKTCvG9nWyaBzKGES/6Yew9F6q9FQ2p8vmS5xiY0
 0KJQ98OdjT3XEiUAIM/QAMqFS2WgxOkl/+bRKgOo/N1Ae7rsZ5PZ60I5YzTpQ6Vv8A8E
 ZMTA==
X-Gm-Message-State: AOAM532Ndb/jjBozt3tyBVGQJeC9lk9eEF+J7Ei8Uoq+3iwLg0mcftpA
 rXIFrVmrlBp7sBlD+f5DfwJbr34rLp4BFSi+boZKuyeLCoE=
X-Google-Smtp-Source: ABdhPJyUvgTPtifLfTo5NE2Zvp6RkjNo6cbqlA+QBm8oy84naLi2BeJ/ZaqwywncDH53mlmJmyhW4x1Lsk55QgriKAw=
X-Received: by 2002:a9d:5503:: with SMTP id l3mr3333535oth.302.1613663868985; 
 Thu, 18 Feb 2021 07:57:48 -0800 (PST)
MIME-Version: 1.0
References: <LNXP123MB3724BAB625FE639AF1D8FEBCCA869@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
 <20210217172935.joprwj3f6rwdu3jo@barbe>
 <CAB__hTSncBC=XS1YvCoE1jip2kY607aWC2hrFUOYcPCq4V6+iA@mail.gmail.com>
 <20210218090858.serfuy4u67rmor6c@barbe>
In-Reply-To: <20210218090858.serfuy4u67rmor6c@barbe>
Date: Thu, 18 Feb 2021 10:57:38 -0500
Message-ID: <CAB__hTRwpakb-Vu+Q98vp9MGUW9NgggV=-AmK+4OWc0rw6zTNg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] OTT Gain Block stopping samples flowing from RFNoC
 Digital Down Converter
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============4138060452752151671=="
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

--===============4138060452752151671==
Content-Type: multipart/alternative; boundary="000000000000b2d31b05bb9e6507"

--000000000000b2d31b05bb9e6507
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi C=C3=A9dric,
Following our previous discussion on the topic of building the controllers
in-tree or out-of-tree, I was able to successfully build my controllers
out-of-tree and they seem to work fine (with my custom application). One
negative for building OOT is that the Ettus uhd_usrp_probe example does not
know about your OOT library and so it does not recognize your OOT blocks.
Also, I don't know how it would work with gnuradio.
Rob

On Thu, Feb 18, 2021 at 4:09 AM C=C3=A9dric Hannotier via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Rob,
>
> On 17/02/21 13:38, Rob Kossler wrote:
> > Could this be another case of the "issue_stream_cmd" never making it fr=
om
> > the streamer to the Rx radio?  C=C3=A9dric, didn't we find that if you =
don't
> > have a custom block controller, the stream cmd does not propagate as
> expect
> > to the Radio and thus you get a recv() timeout?
>
> Yes, that my thought as well.
>
> Information about the bug and known workarounds can be found there:
> https://github.com/EttusResearch/uhd/issues/406
>
> and the mail thread is here:
>
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2021-January/=
063522.html
>
> TLDR, your custom controller (cpp|hpp) must be compiled in-tree with UHD,
> not OOT.
>
> Regards
> --
>
> C=C3=A9dric Hannotier
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000b2d31b05bb9e6507
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"></div>Hi C=C3=A9dric,<div>Following=C2=A0=
our previous discussion on the topic of building the controllers in-tree or=
 out-of-tree, I was able to successfully build my controllers out-of-tree a=
nd they seem to work fine (with my custom application). One negative for bu=
ilding OOT is that the Ettus uhd_usrp_probe example does not know about you=
r OOT library and so it does not recognize your OOT blocks.=C2=A0 Also, I d=
on&#39;t know how it would work with gnuradio.</div><div>Rob</div><div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Fe=
b 18, 2021 at 4:09 AM C=C3=A9dric Hannotier via USRP-users &lt;<a href=3D"m=
ailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">Hi Rob,<br>
<br>
On 17/02/21 13:38, Rob Kossler wrote:<br>
&gt; Could this be another case of the &quot;issue_stream_cmd&quot; never m=
aking it from<br>
&gt; the streamer to the Rx radio?=C2=A0 C=C3=A9dric, didn&#39;t we find th=
at if you don&#39;t<br>
&gt; have a custom block controller, the stream cmd does not propagate as e=
xpect<br>
&gt; to the Radio and thus you get a recv() timeout?<br>
<br>
Yes, that my thought as well.<br>
<br>
Information about the bug and known workarounds can be found there:<br>
<a href=3D"https://github.com/EttusResearch/uhd/issues/406" rel=3D"noreferr=
er" target=3D"_blank">https://github.com/EttusResearch/uhd/issues/406</a><b=
r>
<br>
and the mail thread is here:<br>
<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2021=
-January/063522.html" rel=3D"noreferrer" target=3D"_blank">http://lists.ett=
us.com/pipermail/usrp-users_lists.ettus.com/2021-January/063522.html</a><br=
>
<br>
TLDR, your custom controller (cpp|hpp) must be compiled in-tree with UHD, n=
ot OOT.<br>
<br>
Regards<br>
-- <br>
<br>
C=C3=A9dric Hannotier<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div></div>

--000000000000b2d31b05bb9e6507--


--===============4138060452752151671==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4138060452752151671==--

