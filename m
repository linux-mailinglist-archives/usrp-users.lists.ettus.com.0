Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E0F2281F5E
	for <lists+usrp-users@lfdr.de>; Sat,  3 Oct 2020 01:50:14 +0200 (CEST)
Received: from [::1] (port=44818 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kOUoS-0005cc-IG; Fri, 02 Oct 2020 19:50:08 -0400
Received: from mail-vs1-f50.google.com ([209.85.217.50]:45264)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1kOUoO-0005Pp-Gw
 for USRP-users@lists.ettus.com; Fri, 02 Oct 2020 19:50:04 -0400
Received: by mail-vs1-f50.google.com with SMTP id a16so1385212vsp.12
 for <USRP-users@lists.ettus.com>; Fri, 02 Oct 2020 16:49:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HZAAdf5s0ZPLDWaJZ+zjlg7WOkB/zCMAUAj0NiFcr+c=;
 b=jakh/c/CKB1YEyjhu32Fgpq+RrPDan0/ulFhYWbWbPq7cTpyzZDZnPtMAdJxLqJbgz
 k1JVlozEupnfFVNKqWQbdFt5VbHzId3v/Fmk+3ntLuhcMRJNKP1QPtgkFCcWMxMEnw7h
 1YmDzserRS+yLG+Z1WKfMN1e5sz5ml8S/uIvLU8ZNdy3Qn2HSgp/VfRsQ2pNFkmiYwLZ
 qIVPaK0nNzMsbw64NdAPa9FC660Lkdzd5eaQOz/afQZ2OOrMBIsqs9+qWiP6xbF+Gd6T
 ze30b9AnDgzdMzAf+SLRMl6XIVTemx3SCnDch/e78wYfznk/h3y0xsP3qdwr/EVZ3BBm
 gMHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HZAAdf5s0ZPLDWaJZ+zjlg7WOkB/zCMAUAj0NiFcr+c=;
 b=KTUwN4uc+MrqD7QWxD0BiTPjkNXWEwSL/vmJuYD7BThdXT8jrm/ItjPdbE7/glyCq8
 tbRdSjKn49Wlxg+PW09wNpVU2sALI6TX+KNOgqfgY52lMaIcJ2i75EEG02WOE1PiVNtq
 P6rHB0iQmAG4kX+kav8L9GLNACLZ/dsXOOwUuBYIEHbbda14c3cp6vSrSl0xZa5+sQCS
 +3NqycAuO9ifZeIOz0Z9AdYg7oQU2qF6DJKZCU7FTb7xTLnMuRPnVKYRB9r0RcGF7/qz
 KjRJrqNawsQLgOH3Cm+u2cvDL/X30SQQ6xgDyHpI4ruSV0VOjAGA5obqliEtWhUizZCg
 X8yg==
X-Gm-Message-State: AOAM533Fq50HI8dG3SQGUMCcVcm5exXX1DyC5H4ZcULw6xoSzzZkHC6F
 g/xef8EGMPYtARFZdIapVt1VSDLDDibQVauIsNpVq8nK
X-Google-Smtp-Source: ABdhPJwY6JOmwiTpXUOjbf125Eau1GZX6FUAvkY3+c1Sh0GAL42I0JOPzichwmySQVOz8cW4gIrC/Xl5awgeBzO1/Sw=
X-Received: by 2002:a67:ed84:: with SMTP id d4mr2845212vsp.27.1601682563803;
 Fri, 02 Oct 2020 16:49:23 -0700 (PDT)
MIME-Version: 1.0
References: <3226c6ec-fac3-8c0f-5927-b2d5c76cbe2e@opensdr.com>
 <dfa5504f-0536-7989-4354-3cb005cdca2b@balister.org>
In-Reply-To: <dfa5504f-0536-7989-4354-3cb005cdca2b@balister.org>
Date: Fri, 2 Oct 2020 19:48:48 -0400
Message-ID: <CAL7q81t=oSq6_N4jfeJd-FQUiUw-nEmZZFgoJbx1FcZeExuMmg@mail.gmail.com>
To: Philip Balister <philip@balister.org>
Subject: Re: [USRP-users] E300 sg3 images with uhd 4.0
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
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6155233066714264335=="
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

--===============6155233066714264335==
Content-Type: multipart/alternative; boundary="00000000000042438d05b0b8c8a9"

--00000000000042438d05b0b8c8a9
Content-Type: text/plain; charset="UTF-8"

Hey Philip,

You are not the only person to report this. I'm working on getting an
answer, but it will take a bit longer.

Jonathon

On Thu, Oct 1, 2020 at 10:46 AM Philip Balister via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Ping? Anyone noticed sg3 units running slower with the uhd 4.0 image?
>
> Philip
>
> On 9/24/20 1:28 PM, Philip Balister via USRP-users wrote:
> > I booted an image from:
> >
> > https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v4.0.0.0/
> >
> > on a sg3 unit. The BogoMIPS display suggests the clocks are set to what
> > I expect for a sg1 unit though. I couldn't find any knobs in /sys or
> > /proc. I compared with the ancient release-4 image and that has the
> > number of BogoMIPS expected from that unit.
> >
> > Anyone at Ettus have any insite into how cpu clock speed is handled with
> > that image. Diffing the ps7 files didn't show many diffs in clock setup.
> > (And they looked like they came from a source besides vivado)
> >
> > Philip
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000042438d05b0b8c8a9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey Philip,<div><br></div><div>You are not the only person=
 to report this. I&#39;m working on getting an answer, but it will take a b=
it longer.</div><div><br></div><div>Jonathon</div></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct 1, 2020 at 10=
:46 AM Philip Balister via USRP-users &lt;<a href=3D"mailto:usrp-users@list=
s.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex">Ping? Anyone noticed sg3 units runni=
ng slower with the uhd 4.0 image?<br>
<br>
Philip<br>
<br>
On 9/24/20 1:28 PM, Philip Balister via USRP-users wrote:<br>
&gt; I booted an image from:<br>
&gt; <br>
&gt; <a href=3D"https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v4.0=
.0.0/" rel=3D"noreferrer" target=3D"_blank">https://files.ettus.com/binarie=
s/cache/e3xx/meta-ettus-v4.0.0.0/</a><br>
&gt; <br>
&gt; on a sg3 unit. The BogoMIPS display suggests the clocks are set to wha=
t<br>
&gt; I expect for a sg1 unit though. I couldn&#39;t find any knobs in /sys =
or<br>
&gt; /proc. I compared with the ancient release-4 image and that has the<br=
>
&gt; number of BogoMIPS expected from that unit.<br>
&gt; <br>
&gt; Anyone at Ettus have any insite into how cpu clock speed is handled wi=
th<br>
&gt; that image. Diffing the ps7 files didn&#39;t show many diffs in clock =
setup.<br>
&gt; (And they looked like they came from a source besides vivado)<br>
&gt; <br>
&gt; Philip<br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
&gt; <br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000042438d05b0b8c8a9--


--===============6155233066714264335==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6155233066714264335==--

