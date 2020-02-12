Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CBDB115AA90
	for <lists+usrp-users@lfdr.de>; Wed, 12 Feb 2020 14:59:07 +0100 (CET)
Received: from [::1] (port=42552 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j1sXc-0005Y8-I6; Wed, 12 Feb 2020 08:59:00 -0500
Received: from mail-ot1-f48.google.com ([209.85.210.48]:39015)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <neel.pandeya@ettus.com>)
 id 1j1sXY-0005Tu-JU
 for usrp-users@lists.ettus.com; Wed, 12 Feb 2020 08:58:56 -0500
Received: by mail-ot1-f48.google.com with SMTP id 77so1966922oty.6
 for <usrp-users@lists.ettus.com>; Wed, 12 Feb 2020 05:58:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=g2YH6ctJtyxprOoREpxzdNxNXSuWYvfw1Sn5KtR+2rc=;
 b=uwLqV6AFpEBd/2LfupvlzR7w54lR35wVyUh1LkC14/9+Rwb+DB0XNioIo73jlK7RjM
 Jj38DcmNPgxeJGPCbMp+tSMJgETnVoQrRHNHgeybWDb8ePk76teFm2++4GtHpF34uezM
 A41dIKuTiDMOjNujV4cuqt+jWHLf7LVlPT08ZW00iFzni9MpUoPuN7AMgtXX2iFlSJTv
 DBDAnwFQi5vOxeCkcwdff314XcEo5Uyn1TzTklya57asqBLhtdDWq/8aQi2WZoKjhU/M
 uV5+djI3K5ivnxxtTIiymtfEJsbuQBpB+sSqwn7ZCfcrFqsv8A29QQMNO6JSmcGJqDBm
 edIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=g2YH6ctJtyxprOoREpxzdNxNXSuWYvfw1Sn5KtR+2rc=;
 b=tMIaI1QOD0vTK8tvDjpmgulmCnIGJiW25bEPch80XQfrS9Xkhi3rgO0XjVMo9DaKY5
 3t7efXrwP0eF6hlVd1TMgaeUVH22y/I3YqryEb1YxuZjYFYbV4Rz2GRLJpKxQA1ZUs7+
 HQLzmxOdJktuZOE1vZSuC1vXGoilT4+qHIh8DgEK5PaXNJhTUBzT1eYeMrmTDpKBwIVi
 E9a8c8dYA/+tWL234vPFbrOpl9Dx9FhSEZ+E5OQ2ytFloq8lPiPdH8/d9BA9yHKETBQS
 26iOWayW135RtXngr2svce7c9O4oCgsdbkx5+Aq855TNYg+us5RkFBrNO452hPDCBY3u
 0Q+Q==
X-Gm-Message-State: APjAAAXRzbHXAtcpjglhvcGnOM5534aPGFeCLnMMFq0sE5YaTPxA601P
 hXf4BkDyXkGWc95qKfyF0mNW7hL0c1CKiSt90R5lw39S
X-Google-Smtp-Source: APXvYqzcS251Wb3lCjMq0U8X5ml7be94WZ/y56OGTo2A1Ia7oQA6beekvgB0mc3NGGl9bb1rVm6tu0SngrBInWF3TME=
X-Received: by 2002:a9d:6301:: with SMTP id q1mr9062074otk.299.1581515895737; 
 Wed, 12 Feb 2020 05:58:15 -0800 (PST)
MIME-Version: 1.0
References: <CAEnX9dE3FAPR362qf0c_SbuaU2OzgrLggLC3nXr43hacn6gCjA@mail.gmail.com>
In-Reply-To: <CAEnX9dE3FAPR362qf0c_SbuaU2OzgrLggLC3nXr43hacn6gCjA@mail.gmail.com>
Date: Wed, 12 Feb 2020 07:57:39 -0600
Message-ID: <CACaXmv8BLfR4XAGfXVWq0Ac0aZuoW-XB-wmAt=i4PkwmYZvrFQ@mail.gmail.com>
To: Joe crossen <jmcrossen80@gmail.com>
Subject: Re: [USRP-users] RedhawkSDR and E312
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
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
Content-Type: multipart/mixed; boundary="===============8654975831995215221=="
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

--===============8654975831995215221==
Content-Type: multipart/alternative; boundary="0000000000002c21ed059e615dd3"

--0000000000002c21ed059e615dd3
Content-Type: text/plain; charset="UTF-8"

Hello Joe:

We do not use Redhawk here, and we do not provide direct support for it.

We're mostly focused on programming the USRP from UHD/C++ and GNU Radio.

Is there any mailing list or forum for the Redhawk community?

I would like to help as much as I can.  I know that other people have
successfully used Redhawk before with USRP devices.  Let me ask around, and
I'll get back to you privately.

--Neel Pandeya



On Sun, 9 Feb 2020 at 18:30, Joe crossen via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi all,
>
> I have an E312 and have managed to successfully receive RF and visualize
> in the Redhawk IDE.
> i.e.,
> Launched domain on the IDE.
> Launched device manager on the USRP (using nodeBooter command) - which
> appears in the IDE domain.
> Once connected, I am able to plot the device outputs from the IDE.
>
> However I am unable to get the USRP to transmit a waveform created in the
> IDE.
> I can't figure out how to connect the waveform to the transmission port...
> Has anyone been able to achieve this?
>
> Thank you,
> Joe
>
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000002c21ed059e615dd3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">Hello Joe:</div><div class=3D"gmail_default" style=3D"font-fami=
ly:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font=
-family:verdana,sans-serif">We do not use Redhawk here, and we do not provi=
de direct support for it.</div><div class=3D"gmail_default" style=3D"font-f=
amily:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"f=
ont-family:verdana,sans-serif">We&#39;re mostly focused on programming the =
USRP from UHD/C++ and GNU Radio.</div><div class=3D"gmail_default" style=3D=
"font-family:verdana,sans-serif"><br></div><div class=3D"gmail_default" sty=
le=3D"font-family:verdana,sans-serif">Is there any mailing list or forum fo=
r the Redhawk community?</div><div class=3D"gmail_default" style=3D"font-fa=
mily:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"fo=
nt-family:verdana,sans-serif">I would like to help as much as I can.=C2=A0 =
I know that other people have successfully used Redhawk before with USRP de=
vices.=C2=A0 Let me ask around, and I&#39;ll get back to you privately.<br>=
</div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"=
><br></div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-s=
erif">--Neel Pandeya</div><div class=3D"gmail_default" style=3D"font-family=
:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-f=
amily:verdana,sans-serif"><br></div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Sun, 9 Feb 2020 at 18:30, Joe crosse=
n via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-use=
rs@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>I =
have an E312 and have managed to successfully receive RF and visualize in t=
he Redhawk IDE.</div><div>i.e.,=C2=A0</div><div>Launched domain on the IDE.=
</div><div>Launched device manager on the USRP (using nodeBooter command) -=
 which appears in the IDE domain.</div><div></div><div>Once connected, I am=
 able to plot the device outputs from the IDE.</div><div><br></div><div>How=
ever I am unable to get the USRP to transmit a waveform created in the IDE.=
 <br></div><div>I can&#39;t figure out how to connect the waveform to the t=
ransmission port... <br></div><div></div><div>Has anyone been able to achie=
ve this? <br></div><div><br></div><div>Thank you,</div><div>Joe<br></div><d=
iv><br></div><div><br></div><div><br></div><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000002c21ed059e615dd3--


--===============8654975831995215221==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8654975831995215221==--

