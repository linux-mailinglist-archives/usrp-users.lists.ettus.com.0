Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D42861F038B
	for <lists+usrp-users@lfdr.de>; Sat,  6 Jun 2020 01:37:22 +0200 (CEST)
Received: from [::1] (port=45692 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jhLto-0006oI-1s; Fri, 05 Jun 2020 19:37:20 -0400
Received: from mail-lf1-f49.google.com ([209.85.167.49]:35173)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rwmcgwier@gmail.com>) id 1jhLtj-0006hP-JH
 for usrp-users@lists.ettus.com; Fri, 05 Jun 2020 19:37:15 -0400
Received: by mail-lf1-f49.google.com with SMTP id 82so6777347lfh.2
 for <usrp-users@lists.ettus.com>; Fri, 05 Jun 2020 16:36:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jIwwuGxRiGFnIrLCElkFAw6P2a2c2GvXVEPOh1LN8QE=;
 b=Oo9uKRRdbnO7mWvSviVSTnCggRZ3JAuTtUh8gzow+q+wnM9lthm+Q7g2TK96wEAXgv
 faYJo9XdLSggdZmM/+kOl1+Ig2y5eYppr32QYU76feqjqq+hNAmm5PNF6hnpKIPDk1u5
 k775rw2xSvz/7Z18z/jox9be5y2GW+w5v+rOpvWQewm/nVejXFxTVtFMPQCJAHz30eeo
 5HkKWrdwbxkPuZkuw7cGwxSuzI6KZtKE+bBCm7OKgL+d/zpHyRoegKDV1nBbWGZIMHh1
 V6ssHdFef0SIB8tYBQ2vy1x0IMdajKYbnEX54WJb/3nTsRDzQ3fACIZJZjJv+vYoKAbc
 BdzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jIwwuGxRiGFnIrLCElkFAw6P2a2c2GvXVEPOh1LN8QE=;
 b=l5yBaL9i6sBWkBfBzd1IQPNVZ7WDLzB2kJMgNXTZn7nd57blO5fGpfBGYXXzRwPiOp
 VcFGWRGa9nniUbnV0ipzkeok6OJHLSHOhrlO6x8pbCnlVLlShg6gouTJXjVLWnH70xT8
 pJGrpAc4W3/A5YJqOWwo60sQdpVKjBZhdGY9vlKVO2jA58Bmpx/N481X/iomsqu8M/yX
 gCMOXXbkuZVODoZY8O72w2Sa1eSbp6s6uOXqQLDLjWkcMI7VGAykWTBdkgbJwExPM4Z2
 jM+GjoFlebonsTNtVVJWooueArHu6SQbrCUesAopjdyWRUzQ0MSIwbJefMJPi2n53iKz
 aeAg==
X-Gm-Message-State: AOAM532QVbBuSKe3JMIQyFhO83t7eQEqoE8cqijchgpNSJVmc9A4Wuz7
 7t23syUx8bgqD/ejyK4DQCcIsy9umZIJxzWQ6fY=
X-Google-Smtp-Source: ABdhPJx06GJf0uNXdHK0hV1kV7E3EB3lP7cZm8AGpW32QOLRs59xboebf3x/nyFEQ2aBF2yMp31BXwqxAfneygyRtqc=
X-Received: by 2002:ac2:5197:: with SMTP id u23mr6547573lfi.109.1591400194132; 
 Fri, 05 Jun 2020 16:36:34 -0700 (PDT)
MIME-Version: 1.0
References: <CAGsYvigK0JxvLpC38m-tdf6YPS1uPYaBO0wBAUYbbW+ES2c2-A@mail.gmail.com>
 <CADBWrHiABtNSRkDPXEuZ0fXpxDMgbqMpN-Y9jp58WOmWDZ_5mQ@mail.gmail.com>
 <CAGsYviiETbFZ4toeTO8Eox+kC4svHD9POv8foe7K0UdLS6Yt2A@mail.gmail.com>
 <5EC9D983.6000708@gmail.com>
In-Reply-To: <5EC9D983.6000708@gmail.com>
Date: Fri, 5 Jun 2020 18:36:21 -0500
Message-ID: <CA+K5gzcDTn=8JAEeAq-CjBDf22z4R7vf3Gj=AbD8TK5GaOF=XA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Subject: Re: [USRP-users] Rounded FFT on USRP N210
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
From: Robert McGwier via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Robert McGwier <rwmcgwier@gmail.com>
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============0938249103618492256=="
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

--===============0938249103618492256==
Content-Type: multipart/alternative; boundary="0000000000004450b805a75ebb3c"

--0000000000004450b805a75ebb3c
Content-Type: text/plain; charset="UTF-8"

And the halfband filter responses can easily be shaped to compensate for
the droop of the pure CIC.

Bob


On Sat, May 23, 2020, 9:19 PM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 05/23/2020 08:36 PM, Manav Kohli via USRP-users wrote:
> > Dear Sam,
> >
> > Your shot in the dark hit the bullseye. At 25 MHz, this problem goes
> > away entirely. Will have to work around the limitation at 20 MHz BW in
> > the future.
> >
> > Thank you very much!
> > Manav
> >
> Here's a good article on CIC filter design in both interpolators and
> decimators.
>
> https://www.dsprelated.com/showarticle/1337.php
>
> The basic issue is that all CIC filters require some compensation after
> the filter.  But FPGA real-estate being what it is, the post-compensation
>    filters in the N210/N200 are all decimate-by-two FIR filters. Which
> means they don't get switched "in circuit" for odd decimation factors.
>    A sample-rate of 20Msps with a 100Msps sample clock means decimation
> by 5, which means you're just getting the CIC decimator response
>    without the compensating decimate-by-two effect of the FIR half-band
> filter.
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000004450b805a75ebb3c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">And the halfband filter responses can easily be shaped to=
 compensate for the droop of the pure CIC.<div dir=3D"auto"><br></div><div =
dir=3D"auto">Bob</div><div dir=3D"auto"><br></div></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, May 23, 2020, 9:1=
9 PM Marcus D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.=
ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex">On 05/23/2020 08:36 PM, Manav Kohli via USRP-users wrote:=
<br>
&gt; Dear Sam,<br>
&gt;<br>
&gt; Your shot in the dark hit the bullseye. At 25 MHz, this problem goes <=
br>
&gt; away entirely. Will have to work around the limitation at 20 MHz BW in=
 <br>
&gt; the future.<br>
&gt;<br>
&gt; Thank you very much!<br>
&gt; Manav<br>
&gt;<br>
Here&#39;s a good article on CIC filter design in both interpolators and <b=
r>
decimators.<br>
<br>
<a href=3D"https://www.dsprelated.com/showarticle/1337.php" rel=3D"noreferr=
er noreferrer" target=3D"_blank">https://www.dsprelated.com/showarticle/133=
7.php</a><br>
<br>
The basic issue is that all CIC filters require some compensation after <br=
>
the filter.=C2=A0 But FPGA real-estate being what it is, the post-compensat=
ion<br>
=C2=A0 =C2=A0filters in the N210/N200 are all decimate-by-two FIR filters. =
Which <br>
means they don&#39;t get switched &quot;in circuit&quot; for odd decimation=
 factors.<br>
=C2=A0 =C2=A0A sample-rate of 20Msps with a 100Msps sample clock means deci=
mation <br>
by 5, which means you&#39;re just getting the CIC decimator response<br>
=C2=A0 =C2=A0without the compensating decimate-by-two effect of the FIR hal=
f-band <br>
filter.<br>
<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"nore=
ferrer">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000004450b805a75ebb3c--


--===============0938249103618492256==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0938249103618492256==--

