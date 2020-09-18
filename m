Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D88E126FCAE
	for <lists+usrp-users@lfdr.de>; Fri, 18 Sep 2020 14:38:47 +0200 (CEST)
Received: from [::1] (port=42962 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kJFf4-00067D-Dq; Fri, 18 Sep 2020 08:38:46 -0400
Received: from mail-il1-f178.google.com ([209.85.166.178]:44913)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <emoges@uncc.edu>) id 1kJFf0-00060D-0o
 for usrp-users@lists.ettus.com; Fri, 18 Sep 2020 08:38:42 -0400
Received: by mail-il1-f178.google.com with SMTP id y8so5719249ilm.11
 for <usrp-users@lists.ettus.com>; Fri, 18 Sep 2020 05:38:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uncc.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=l8tLlPaZYzr94hXDX044S0Y3yfNl6mvw9OvovBlLQTA=;
 b=j1sg1Dhdd2UK9XP+VsaSnZx6MgyOLlnVKLtZU5Ah8rQ3aqiL4NfCeDBA0wEP2VpehJ
 VtyDGU5hDgkdXuJO13JJV2jzAUWYFd45RM5GMZUySve5GZIRGFGzRW56JNgw0L2J0P0H
 4XSVhR5fqX39UX1kL95iGr0znrF5gu3dt7fvY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=l8tLlPaZYzr94hXDX044S0Y3yfNl6mvw9OvovBlLQTA=;
 b=I/Fyf64IbWFn7HNanTFMhpib/7sE1G/5euFOJt57xwNXF0IBwe+t8L0lfhoS14R4Od
 g2+4rjJ05aYfX4vBf8M4YLyhzRAIeeMpLmxzFbYZvt8OKM1a2x00ZK5Nc3GrWbJwF2oh
 UiBLjoplrvDYUjmaddopohneCpTByENHMTvm7KVye5DYqphJrcSJyuwNCrD4yeWUYD3G
 khVDeGef/bpNywqI8aKxBxb5QC2sBt1jwy40/EQjNLOVjlMA0GkJy8pJ3qZMAcxve2CV
 jRnqllV6OUSDxUHMsW2u9pQQ+lz9Exrw8IjYhL1LB7XPcVBwN5J9ZLjQW2YTe2PA0Xtw
 jerQ==
X-Gm-Message-State: AOAM532fFhGVaygUf7MnlhIqriIL/SmSplYhr2gszmIZRgb/vVEZY+aa
 hQ+Nv/BB516M/h/YtAIrWtIJJpCH2+yrMHwk/N8C6dyRd/4=
X-Google-Smtp-Source: ABdhPJyzrn1k2q2ysZKz5viavoOJPw2Kd4Tr01leT1m06mkjY+eQHUWQnSCylwigdLyeFUoiPx0nh5Hn3BLSUpq1/I8=
X-Received: by 2002:a92:9f4d:: with SMTP id u74mr28420339ili.134.1600432680874; 
 Fri, 18 Sep 2020 05:38:00 -0700 (PDT)
MIME-Version: 1.0
References: <CANwgjNqgEkGnmd2qwD8TO_DunCuLeOttDUmkJc+DYB=eOqG2kQ@mail.gmail.com>
In-Reply-To: <CANwgjNqgEkGnmd2qwD8TO_DunCuLeOttDUmkJc+DYB=eOqG2kQ@mail.gmail.com>
Date: Fri, 18 Sep 2020 08:37:48 -0400
Message-ID: <CANwgjNrw7CiMcc3uH5wVFDz6xEneDYSQvv5RqKWFVE2HHgOLJg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Setting the tx central frequency on n310
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
From: Ephraim Moges via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ephraim Moges <emoges@uncc.edu>
Content-Type: multipart/mixed; boundary="===============1171109393230545962=="
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

--===============1171109393230545962==
Content-Type: multipart/alternative; boundary="0000000000006e5fcd05af95c5f0"

--0000000000006e5fcd05af95c5f0
Content-Type: text/plain; charset="UTF-8"

I figured it out. I just needed to read the manual and do some tests on how
to send the command.

Sincerely,

Ephraim Moges

On Fri, Sep 18, 2020, 7:46 AM Ephraim Moges <emoges@uncc.edu> wrote:

> Good Morning,
>
> I am trying to set the n310 Rx central frequency for any of the channels
> and was not getting it to working using the multiusrp set_tx_freq() as I
> need a tune request. I am not sure how to create a tune request or if this
> is the correct steps.
>
> Sincerely,
>
> Moges
>

--0000000000006e5fcd05af95c5f0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I figured it out. I just needed to read the manual and do=
 some tests on how to send the command.<br><br><div data-smartmail=3D"gmail=
_signature">Sincerely,<br><br>Ephraim Moges</div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Sep 18, 2020, 7:46=
 AM Ephraim Moges &lt;<a href=3D"mailto:emoges@uncc.edu">emoges@uncc.edu</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"auto">Good=
 Morning,<div dir=3D"auto"><br></div><div dir=3D"auto">I am trying to set t=
he n310 Rx central frequency for any of the channels and was not getting it=
 to working using the multiusrp set_tx_freq() as I need a tune request. I a=
m not sure how to create a tune request or if this is the correct steps.<br=
><br><div data-smartmail=3D"gmail_signature" dir=3D"auto">Sincerely,<br><br=
>Moges</div></div></div>
</blockquote></div>

--0000000000006e5fcd05af95c5f0--


--===============1171109393230545962==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1171109393230545962==--

