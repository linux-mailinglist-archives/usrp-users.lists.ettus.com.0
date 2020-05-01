Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C325A1C1BAD
	for <lists+usrp-users@lfdr.de>; Fri,  1 May 2020 19:29:11 +0200 (CEST)
Received: from [::1] (port=59004 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jUZTK-00048c-T5; Fri, 01 May 2020 13:29:10 -0400
Received: from mail-ot1-f51.google.com ([209.85.210.51]:45025)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <bpadalino@gmail.com>) id 1jUZTF-0003fE-PK
 for usrp-users@lists.ettus.com; Fri, 01 May 2020 13:29:05 -0400
Received: by mail-ot1-f51.google.com with SMTP id j4so3093489otr.11
 for <usrp-users@lists.ettus.com>; Fri, 01 May 2020 10:28:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AfI8ov2ulqQ/52X9CmOJFgWSaT5JsbUV3KItjj7bu30=;
 b=EPyacP4ivC5nGyAVx0RcLA05wuWdM0HAmpbB/kQpWBKXP9anfprwhLatGq7FTxPfnk
 NqUTcrrL/8HaOgrFB+goXWzEOkz0VGFNg5TmNbVuTtfr5/JQmt0hbIS614tDs6LRoreM
 FCX1okAMmS4y77Qi7y17PZG1Up6Lk8WowzuD8FBQKBFvjrPnAISaNauIecdT+j+AAK7R
 5+EKsXf3r9bIh7iVOQOXhcVBXPCFkz3Lvrdc8Pz9XpRqb/RwnFWOSQfS8+9Xfj8DtMFW
 x3MMhRFyIC1t6u+VxEA0YredEphHxhv8H9GCeffTrQjlEJfYZZCySks6+Jx3WfDFp7LI
 S8fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AfI8ov2ulqQ/52X9CmOJFgWSaT5JsbUV3KItjj7bu30=;
 b=jd4WRBNuyBZMnKPSdLdSx0t42F1n6lshtGWlOnDTPcWL80U8ESBhobT813GO7Aovdk
 RuaNeO4NK6N3Mk7ji92z30Q4fHdCw5pOHu+8JcFDgjGKJq4nZDlW1YxjEhXqPJ6nSvrI
 3eNeXMbIo/F3nXGkypdbkw5XQE+7h6toke4lf7pzNiux0zYyo0nzsu/Hlvbi3W19mD8M
 DNUiW1GJVcR3tVbnKxeq7KLvpLxFs+K69mH+H5mY1sDGIwzuKrxSEdVF5rqj37HMZ033
 dw0+fZwQltJCMc8415KkOOyGYv9QDAglCDGVN2LwqjIboGRJ0q8/CKETKcy2zd167y3a
 Q9TA==
X-Gm-Message-State: AGi0PuYJh9zd4OxkwTvGLGw2UueGCGA94hVjnDpY1qTrQO2y17xsCqa1
 WNmz0pJdVK8o0Oq6WB5mFGIknyAa7CJtvTfV+PALcyIu
X-Google-Smtp-Source: APiQypLgCtxSLuWNngZbWkAdYv232BELgb/NnvT+hdnb1rvYSPbGyLOFxwdC/f9zQX0lFX78ZvlNGmYV5MVH7wB1uhI=
X-Received: by 2002:a9d:12b6:: with SMTP id g51mr4636910otg.187.1588354105007; 
 Fri, 01 May 2020 10:28:25 -0700 (PDT)
MIME-Version: 1.0
References: <BY5PR19MB339879DA30F3129CB923F7F4C6AB0@BY5PR19MB3398.namprd19.prod.outlook.com>
In-Reply-To: <BY5PR19MB339879DA30F3129CB923F7F4C6AB0@BY5PR19MB3398.namprd19.prod.outlook.com>
Date: Fri, 1 May 2020 13:28:12 -0400
Message-ID: <CAEXYVK6gX7EtOQYwCJw3YUEF-O3E3-Ug8KF+Eg9hHFAmrRMpXw@mail.gmail.com>
To: Jerrid Plymale <jerrid.plymale@canyon-us.com>
Subject: Re: [USRP-users] Setting up an X310 as a signal generator
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
From: Brian Padalino via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Brian Padalino <bpadalino@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9180675418302273979=="
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

--===============9180675418302273979==
Content-Type: multipart/alternative; boundary="00000000000034e10805a4998217"

--00000000000034e10805a4998217
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 1, 2020 at 1:23 PM Jerrid Plymale via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello All,
>
>
>
> So I have been trying to set up a USRP X310 as a signal generator for
> about a week now, and I=E2=80=99m having some issues. Currently I am usin=
g
> gnuradio-companion to develop the functionality. I have three sets of
> signal sources that are of float type, creating the I and Q values that g=
et
> passed to a float to complex block. The output of the three float to
> complex blocks go to an add block, which then outputs to a USRP sink.
> Currently, the first problem is with underruns, I=E2=80=99m not getting a=
 lot of
> them however I am getting breaks in the signal when I pass it to a second
> USRP X310. What would be the best approach to make sure my signal is comi=
ng
> in strong to the second USRP? I am also having issues with increasing the
> power of the signal when it is received, is this mainly controlled by the
> gain value on the USRP source in gnuradio? What can I do to get my incomi=
ng
> signal to have more power?
>

You can try placing a DRAM FIFO in your transmit flow graph as the first
thing.  That should ensure some tens of milliseconds worth of buffering for
your signals and allow for some host jitter without underruns.

Do you have an external spectrum analyzer or something that can tell you
the power output of the first radio?

The receivers should be able to be saturated by your transmitter, so
there's definitely a gain issue somewhere.

Brian

--00000000000034e10805a4998217
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Fri, May 1, 2020 at 1:23 PM Jerrid Ply=
male via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-=
users@lists.ettus.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_5468952369285201437WordSection1">
<p class=3D"MsoNormal">Hello All,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">So I have been trying to set up a USRP X310 as a sig=
nal generator for about a week now, and I=E2=80=99m having some issues. Cur=
rently I am using gnuradio-companion to develop the functionality. I have t=
hree sets of signal sources that are of float
 type, creating the I and Q values that get passed to a float to complex bl=
ock. The output of the three float to complex blocks go to an add block, wh=
ich then outputs to a USRP sink. Currently, the first problem is with under=
runs, I=E2=80=99m not getting a lot of them
 however I am getting breaks in the signal when I pass it to a second USRP =
X310. What would be the best approach to make sure my signal is coming in s=
trong to the second USRP? I am also having issues with increasing the power=
 of the signal when it is received,
 is this mainly controlled by the gain value on the USRP source in gnuradio=
? What can I do to get my incoming signal to have more power?</p></div></di=
v></blockquote><div><br></div><div>You can try placing a DRAM FIFO in your =
transmit flow graph as the first thing.=C2=A0 That should ensure some tens =
of milliseconds worth of buffering for your signals and allow for some host=
 jitter without underruns.</div><div><br></div><div>Do you have an external=
 spectrum analyzer or something that can tell you the power output of the f=
irst radio?</div><div><br></div><div>The receivers should be able to be sat=
urated by your transmitter, so there&#39;s definitely a gain issue somewher=
e.</div><div><br></div><div>Brian</div></div></div>

--00000000000034e10805a4998217--


--===============9180675418302273979==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9180675418302273979==--

