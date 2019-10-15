Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F1EA5D8081
	for <lists+usrp-users@lfdr.de>; Tue, 15 Oct 2019 21:44:40 +0200 (CEST)
Received: from [::1] (port=59012 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iKSkI-0005eD-OU; Tue, 15 Oct 2019 15:44:38 -0400
Received: from mail-lf1-f47.google.com ([209.85.167.47]:44364)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1iKSkE-0005WM-EC
 for usrp-users@lists.ettus.com; Tue, 15 Oct 2019 15:44:34 -0400
Received: by mail-lf1-f47.google.com with SMTP id q12so15407678lfc.11
 for <usrp-users@lists.ettus.com>; Tue, 15 Oct 2019 12:44:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QQ5owb5mA1Ui7JyRLDpzFDRwhfBlFJ7o7FiF1Eies8Q=;
 b=aqTmdwXKVhSgF+PceVlZoPjDoRmvNjqAxzkcRQHZPKgbB6Qcw97httv0YcRGTaKlBb
 RUEWvw1ZpWulcmvziUlOLkS8Ef1DUC2QoTsrUJRXc38g/SEo8yuCSnk+B4eDMHkhd6n+
 U2J7f3PH0Pmcd8eu5kQHJhB53vpYcDir+BZRRr3IGNCJd9OI/KQZFUiTdKLXH7wPyLj7
 G1xFf5zym/m+pFG80b1YSPFrFs79/pebNZB/jGbs0XXWshjFto9V48XY/YPC9yq/sApB
 tsDTH04qqDPdNGIvDdhoFZ9KyFtsh6unTRKWp2Nxlr46AOubFrfgs8o95C5+1B6UyK/f
 L/7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QQ5owb5mA1Ui7JyRLDpzFDRwhfBlFJ7o7FiF1Eies8Q=;
 b=FAj6p6LI0tDZz3OhJ0Pg0bF/VH1yDkL0kAV4tGzsE1Q45f3QSF8KOjRY2Br8GcMtZ3
 dATdGPmkXdlgS/COdaEfLusuLtn62s94sw3gSLShZNZU3IyXdLbnQUrQezeLWrwOdqf7
 c1yZXYKR65YS6VpEYsKicxC5XHTq6l8KPi+fq3Je/qQQASDdd1U6xUukUbFdD3TxEAQW
 izzkw26WR3GKQjIPw679ijlOhVGOMmn5nG2L548TjPJiikHGcgYtXftyDy1bMilpwvIZ
 1oQEqETW+7Ix9xnrpSxsLZNfcSDJVBz02M2n9U8aLZYqS/WKH1Rwm893VCVTIg383YXa
 06Vw==
X-Gm-Message-State: APjAAAXyYo7UU67bPOflX1qLYL7v1xgYJxcKVUxLB2VU6KZynhnpggLV
 6z4TRBKEqu7E9M30Ljcd1At8Wf5aPiolZC68mcL9n9Io0UIYeA==
X-Google-Smtp-Source: APXvYqxYslkLBOpuSMrIysPWD93gBmlPWTjRlGGikVD7O/MSYDbPCqCmwJR1z0DnsKfQzxVcMlIQzFcK/YSY0CqW/dQ=
X-Received: by 2002:ac2:4142:: with SMTP id c2mr14760805lfi.47.1571168633084; 
 Tue, 15 Oct 2019 12:43:53 -0700 (PDT)
MIME-Version: 1.0
References: <1956590264.2783788.1569054790193.ref@mail.yahoo.com>
 <1956590264.2783788.1569054790193@mail.yahoo.com>
In-Reply-To: <1956590264.2783788.1569054790193@mail.yahoo.com>
Date: Tue, 15 Oct 2019 14:43:42 -0500
Message-ID: <CANf970Zg6W5x2GPb2XdeYDfFy3uGHNV3FWRo_1dnHGcYH3XRVA@mail.gmail.com>
To: Arun kumar Verma <arun.verma@eiwave.com>
Subject: Re: [USRP-users] X310 Temperature Range
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
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6748904339261117906=="
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

--===============6748904339261117906==
Content-Type: multipart/alternative; boundary="00000000000041f4c00594f83477"

--00000000000041f4c00594f83477
Content-Type: text/plain; charset="UTF-8"

Hey Arun,

The temperature range for the X310 and the TwinRX is noted as 23 +/- 3 C.
This is meant to convey that the device is intended for indoor lab use and
has not been thoroughly tested in extreme environments like you've
mentioned. You're also correct that you'll see device performance change
over that temperature range and I think -20C will be dipping below the
rating of some of the components. Some key components can be found here:

https://kb.ettus.com/X300/X310#Key_Component_Datasheets

Depending on what you're hoping to do, we see folks develop custom
enclosures for these types of radios with and without thermal regulation.
At the end of the day if you're subjecting this radio to those kinds of
extremes, it's up to you to put it through its paces and make sure it'll
meet your needs. I'll also note that we don't formally endorse any X310
enclosures, but one of the few IP67 OTS solutions I've found for the X310
is sold by Pixus:

http://www.pixustechnologies.com/products/enclosure-system-solutions/specialty-small-form-factor-rugged-x310-other-2/specialty-small-form-factor-rugged-x310-other/

Not sure if this does anything to extend temperature range, but it could be
a starting point in developing your own ruggedized solution to deploy. Also
if anyone else has recommendations or experience with X310 enclosure
solutions, I'd be curious to hear what you've made or worked with in the
past.

Best,

Sam

On Sat, Sep 21, 2019 at 3:33 AM Arun kumar Verma via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Users
> We would like to know whether X310 with TwinRx boards can be used for
> temperature range -20 to +55 degree. Is temperature range is limited by the
> components used in the boards or the performance is not guaranteed over
> this range.
> Are the components used are industrial grade or commercial grade?
>
> Regards,
> Arun Verma
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000041f4c00594f83477
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey Arun,</div><div><br></div><div>The temperature ra=
nge for the X310 and the TwinRX is noted as 23 +/- 3 C. This is meant to co=
nvey that the device is intended for indoor lab use and has not been thorou=
ghly tested in extreme environments like you&#39;ve mentioned. You&#39;re a=
lso correct that you&#39;ll see device performance change over that tempera=
ture range and I think -20C will be dipping below the rating of some of the=
 components. Some key components can be found here:</div><div><br></div><di=
v><a href=3D"https://kb.ettus.com/X300/X310#Key_Component_Datasheets">https=
://kb.ettus.com/X300/X310#Key_Component_Datasheets</a></div><div><br></div>=
<div>Depending on what you&#39;re hoping to do, we see folks develop custom=
 enclosures for these types of radios with and without thermal regulation. =
At the end of the day if you&#39;re subjecting this radio to those kinds of=
 extremes, it&#39;s up to you to put it through its paces and make sure it&=
#39;ll meet your needs. I&#39;ll also note that we don&#39;t formally endor=
se any X310 enclosures, but one of the few IP67 OTS solutions I&#39;ve foun=
d for the X310 is sold by Pixus: <br></div><div><br></div><div><a href=3D"h=
ttp://www.pixustechnologies.com/products/enclosure-system-solutions/special=
ty-small-form-factor-rugged-x310-other-2/specialty-small-form-factor-rugged=
-x310-other/">http://www.pixustechnologies.com/products/enclosure-system-so=
lutions/specialty-small-form-factor-rugged-x310-other-2/specialty-small-for=
m-factor-rugged-x310-other/</a></div><div><br></div><div>Not sure if this d=
oes anything to extend temperature range, but it could be a starting point =
in developing your own ruggedized solution to deploy. Also if anyone else h=
as recommendations or experience with X310 enclosure solutions, I&#39;d be =
curious to hear what you&#39;ve made or worked with in the past.<br></div><=
div><br></div><div>Best,</div><div><br></div><div><div><div dir=3D"ltr" cla=
ss=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">=
<div><div dir=3D"ltr">Sam<br></div></div></div></div></div></div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Se=
p 21, 2019 at 3:33 AM Arun kumar Verma via USRP-users &lt;<a href=3D"mailto=
:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><div><div style=3D"f=
ont-family:Helvetica Neue,Helvetica,Arial,sans-serif;font-size:16px"><div d=
ir=3D"ltr"><div><div dir=3D"ltr" style=3D"font-family:Helvetica Neue,Helvet=
ica,Arial,sans-serif">Hi Users<br></div><div dir=3D"ltr" style=3D"font-fami=
ly:Helvetica Neue,Helvetica,Arial,sans-serif">We would like to know whether=
 X310 with TwinRx boards can be used for temperature range -20 to +55 degre=
e. Is temperature range is limited by the components used in the boards or =
the performance is not guaranteed over this range.<br></div><div dir=3D"ltr=
" style=3D"font-family:Helvetica Neue,Helvetica,Arial,sans-serif">Are the c=
omponents used are industrial grade or commercial grade?<br></div><div dir=
=3D"ltr" style=3D"font-family:Helvetica Neue,Helvetica,Arial,sans-serif"><b=
r></div><div dir=3D"ltr" style=3D"font-family:Helvetica Neue,Helvetica,Aria=
l,sans-serif">Regards,</div><div dir=3D"ltr" style=3D"font-family:Helvetica=
 Neue,Helvetica,Arial,sans-serif">Arun Verma</div></div><br></div><div><br>=
</div><div><div style=3D"font-family:Helvetica,Arial,sans-serif;font-size:1=
6px"><br></div></div></div></div>__________________________________________=
_____<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000041f4c00594f83477--


--===============6748904339261117906==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6748904339261117906==--

