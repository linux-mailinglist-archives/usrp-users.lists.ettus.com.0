Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D702CF5D0
	for <lists+usrp-users@lfdr.de>; Fri,  4 Dec 2020 21:47:53 +0100 (CET)
Received: from [::1] (port=38588 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1klHzZ-0002Qz-D8; Fri, 04 Dec 2020 15:47:49 -0500
Received: from mail-oi1-f169.google.com ([209.85.167.169]:40486)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1klHzV-0002Ky-3H
 for usrp-users@lists.ettus.com; Fri, 04 Dec 2020 15:47:45 -0500
Received: by mail-oi1-f169.google.com with SMTP id p126so7633123oif.7
 for <usrp-users@lists.ettus.com>; Fri, 04 Dec 2020 12:47:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=r1ytMYCQHTmHws+BAvNKZ5si+RJfwqs/iIwhhZ4ikAg=;
 b=LPI5YZJJcNdblaBB6Avz6xUsetfrv5CqNErd9nHjwpNdMV/LeGKqV9/qvMqo+Sozeu
 VMFW9wv0jI1BhdT0VczyObfvZoKIW2xndUHwSstDmqXesaFBDQ3XQT/Ly/A4B6Eq0u4y
 W+RIPvJ7vTS3S2OkoujYJln1QWecX5W4w0k4MnilIzF1tLoIMAS3wET+XJ6ccERPxgWo
 EdCR90+eZvQDZgtxkkrLRxy6q6ygCqTl5gqgCKTVESFxE09sKgMJosc6sbgBJB39wys2
 H/iGSsWVgIG4sdETbe31HRBPWQYIG9QN1bhMYhYzgNg3A2sLah7gzaRe9w8omeaJiDI9
 ivTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=r1ytMYCQHTmHws+BAvNKZ5si+RJfwqs/iIwhhZ4ikAg=;
 b=WO+xcgRJjGyfzGs5o+Jns8HWw3lW30+zifHKfk28xR77B1hkq2NhCTxzieZCE9/Wm/
 kLTXsktxzX23xD/ZhnlweL8aFaRkul4UeH/OtNEiC5P51qGPzu7p1/Qg6KtAazXKd4+D
 HAgxHplwrc8bQR1OHxACaafpwqzQSNDQqGuI8eGBxQKTtNhWLX58kVgtBWl8dd0UYdfm
 Kx0K3+VLZLKg0LNe+Mb+lTKYIaduO9bTFqYAgzN2823pIQrnSpVOhXk7Aq3Okx1C8sTS
 JvUG2h5WCdMGAUvMYbnh17hAkfz3vsUzrRNS2Caeqp1fdwMrC2lV+eIXtPqvGvKctIzJ
 7YCg==
X-Gm-Message-State: AOAM531gkKizyywveJ8hpYA9FEVjbckTxDoZ285nwBSLLrCQsbKKLe9c
 4DbI3KWxeTJTJIABF/XXz3oj9IpgG+vOfxrIT0PQ3+mnXLc=
X-Google-Smtp-Source: ABdhPJyCKYBAqjbIW+1eB5E1Nj8Zsb1w1rj6iCD0WxE/B0fQ9wcoUsWtsZMEGIJ0Q6nYLBCvcdnzt8ZwwUNpC4EWT2k=
X-Received: by 2002:aca:5ec2:: with SMTP id s185mr4475704oib.33.1607114824223; 
 Fri, 04 Dec 2020 12:47:04 -0800 (PST)
MIME-Version: 1.0
References: <CACDReSxO=0GoV5V07cjZt2N=BTGOifrs758xHS+snj7bQTXzGQ@mail.gmail.com>
In-Reply-To: <CACDReSxO=0GoV5V07cjZt2N=BTGOifrs758xHS+snj7bQTXzGQ@mail.gmail.com>
Date: Fri, 4 Dec 2020 15:46:53 -0500
Message-ID: <CAB__hTSMYb6R7hQXg7Cju1ocFjMmkZ8EDGs24diez2Bndb-wBQ@mail.gmail.com>
To: Ofer Saferman <ofer@navigicom.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Using GPS disciplining on E310
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
Content-Type: multipart/mixed; boundary="===============8434075988650869183=="
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

--===============8434075988650869183==
Content-Type: multipart/alternative; boundary="000000000000365ca105b5a994f1"

--000000000000365ca105b5a994f1
Content-Type: text/plain; charset="UTF-8"

Hi Ofer,
Here is my understanding
- The E310 can sync to a PPS signal (either external input or obtained from
GPS).  From this PPS, the E310 derives the 10MHz ref signal and uses that
as ref for LO signal.  So, there will be lots of phase variation between
the LOs in all of your E310 devices even though they will all be trying to
stay in sync with a 1 pulse-per-second signal.
- Regarding your time synchronization question, there are examples of
setting the E310 clock (using set_time_next_pps, I think) to match the GPS
clock.  Thus, all of your E310s could have the same time.  But, how do you
plan to control all of your E310s when you want the transmit to turn on?
Will you have an SSH session to each of them?
Rob

On Fri, Dec 4, 2020 at 2:28 PM Ofer Saferman via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello,
> I would like to synchronize several E310 devices.
> It is my understanding that the only way to do that is by connecting a GPS
> antenna and performing disciplining to a derived 1-PPS signal.
> I have a few questions to help me better understand how to make it work:
> 1. Does GPS disciplining achieve frequency lock between devices or phase
> lock?
> 2. How to start transmitting at the exact moment on all synchronized
> devices? Can the unit clock be synchronized to GPS clock? and then just
> start the transmission with some delay from unit clock on all devices? Can
> someone share the relevant C commands to perform the time synchronization
> to GPS clock or point to a relevant code example?
>
> Thanks,
> Ofer Saferman
>
>
> --
> This message has been scanned for viruses and
> dangerous content by *MailScanner* <http://www.mailscanner.info/>, and is
> believed to be clean. _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000365ca105b5a994f1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Ofer,<div>Here is my understanding</di=
v><div>- The E310 can sync to a PPS signal (either external input or obtain=
ed from GPS).=C2=A0 From this PPS, the E310 derives the 10MHz ref signal an=
d uses that as ref for LO signal.=C2=A0 So, there will be lots of phase var=
iation between the LOs in all of your E310 devices even though they will al=
l be trying to stay in sync with a 1 pulse-per-second signal.</div><div>- R=
egarding your time synchronization question, there are examples of setting =
the E310 clock (using set_time_next_pps, I think) to match the GPS clock.=
=C2=A0 Thus, all of your E310s could have the same time.=C2=A0 But, how do =
you plan to control all of your E310s when you want the transmit to turn on=
?=C2=A0 Will you have an SSH session to each of them?=C2=A0</div><div>Rob</=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Fri, Dec 4, 2020 at 2:28 PM Ofer Saferman via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div>Hello,</div><div>I would like to synchronize several E310 dev=
ices.</div><div>It is my understanding that the only way to do that is by c=
onnecting a GPS antenna and performing disciplining to a derived 1-PPS sign=
al.</div><div>I have a few questions to help me better understand how to ma=
ke it work:</div><div>1. Does GPS disciplining achieve frequency lock betwe=
en devices or phase lock?</div><div>2. How to start transmitting at the exa=
ct moment on all synchronized devices? Can the unit clock be synchronized t=
o GPS clock? and then just start the transmission with some delay from unit=
 clock on all devices? Can someone share the relevant C commands to perform=
 the time synchronization to GPS clock or point to a relevant code example?=
</div><div><br></div><div>Thanks,</div><div>Ofer Saferman<br></div><div><br=
></div></div>
<br>--=20
<br>This message has been scanned for viruses and
<br>dangerous content by
<a href=3D"http://www.mailscanner.info/" target=3D"_blank"><b>MailScanner</=
b></a>, and is
<br>believed to be clean.

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000365ca105b5a994f1--


--===============8434075988650869183==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8434075988650869183==--

