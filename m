Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A9D628E9A2
	for <lists+usrp-users@lfdr.de>; Thu, 15 Oct 2020 03:10:36 +0200 (CEST)
Received: from [::1] (port=34830 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kSrmq-0003NY-Eg; Wed, 14 Oct 2020 21:10:32 -0400
Received: from mail-lj1-f176.google.com ([209.85.208.176]:33870)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <sam.reiter8@gmail.com>)
 id 1kSrmm-0003G7-9y
 for usrp-users@lists.ettus.com; Wed, 14 Oct 2020 21:10:28 -0400
Received: by mail-lj1-f176.google.com with SMTP id y16so1423743ljk.1
 for <usrp-users@lists.ettus.com>; Wed, 14 Oct 2020 18:10:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/N0D124c4dhR1EX6mmfoqVEv5NmukLxwTI5qUIswDRQ=;
 b=n92+UirCoJPToPaEBxcWyz6+IzppzTHmP7K0OYzNqYBtrTQl4IFfhfi5RosyLyG8e1
 AkQsD/t2LElKJMNnb5aH5vLQy2DdhiayolqL1X13uaDarfFA28x/+TSJeLGPAu0muecP
 eynZRswFbcBfyPweIbI7aL46pqCJfp65V0okD4jcQ2C4OvYHOBeEaAbHZAR/UrHCjakj
 gGGosY0dwkczddT9bWZLCZMSl67fevnlnqo255a/KDfjSx8Ko8C15PKZU407GLPKvqlV
 qp/12yf0KxgQWE442gSaQG5b+nRPxKSCpabyWLo/SGzA/RLycEZTIew97eIbPTEg0SIY
 8gHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/N0D124c4dhR1EX6mmfoqVEv5NmukLxwTI5qUIswDRQ=;
 b=bBxkXfhKL90nigXai/jn548l27fc5AspvN0amYLBjLboEu1WuSp9xL/tMkqLB6yFEp
 PWOw39E0lUZVFOn6QvkYiIHw0yQ+Ct/fn99HABKHa+watmpJjEhe7iP6LeNL8ylcCyce
 TEY4z0JlXM/feVA2rpc9AajC/JwH2q9/as2KGVh2Nj2eA8uowTNzWM/lYwsTfspNVtUR
 Os8CmOV64Pel0ilWM47yYhwKDSVBaXk4Ro6PGtaAZgaEo1tM/dqdO9/dNe2zqgg9o1Iz
 X5+yCMuPd4fWfUC14v4bF6VBb1mSHVbkrhWcaN2VfhFDUwyWHGpKoPdbqG/xamNsB8xA
 pjoQ==
X-Gm-Message-State: AOAM530GS0mvi5yqvcz10tprUDiNVbPY+mfgRPRgD5fDv4ayKNxQJH4J
 Ki1jyLmmF6AHfa5P4opZtvgBWsSzzuoZtIKRN5ahVlSXa4ZalQ==
X-Google-Smtp-Source: ABdhPJxjGq/H03D2oMWe6pBmGDXsUA54PRXsTpNI/pv4qEGGFAR2bymdcICnSBlQ1OAsBOkLe7Je565vk6W+6bETOT0=
X-Received: by 2002:a2e:b1c2:: with SMTP id e2mr274955lja.282.1602724186814;
 Wed, 14 Oct 2020 18:09:46 -0700 (PDT)
MIME-Version: 1.0
References: <9A418785-0BB4-44DA-854E-66130975896C@iubelttechnologies.com>
In-Reply-To: <9A418785-0BB4-44DA-854E-66130975896C@iubelttechnologies.com>
Date: Wed, 14 Oct 2020 20:09:35 -0500
Message-ID: <CADBWrHgHDCuSwu=esnA2DGV0rm4r9wDXD7faN9YU+4KzHM-2rA@mail.gmail.com>
To: Mark Koenig <mark.koenig@iubelttechnologies.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Details on how these charts were made
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
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter8@gmail.com>
Content-Type: multipart/mixed; boundary="===============2169887646796374319=="
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

--===============2169887646796374319==
Content-Type: multipart/alternative; boundary="000000000000d3fd4b05b1ab4d3a"

--000000000000d3fd4b05b1ab4d3a
Content-Type: text/plain; charset="UTF-8"

Mark,

While I don't have recommendations for specific test instrumentation, I'd
guess you could pretty easily characterize a RX gain vs frequency with a
(calibrated) signal generator that is addressable over SCPI. Once you've
figured out how to TX a CW at a given power level over the SCPI interface
to your generator using python or C++, you could write a script that moved
the TwinRX and sig gen from DC to 6GHz in known increments and recorded the
received signal power. From there, recreating the plot you mentioned
wouldn't be too difficult.

That being said, there appears to be a power cal utility that came out with
UHD 4.0:

https://github.com/EttusResearch/uhd/blob/master/host/utils/uhd_power_cal.py

 I haven't used it before, so I'm not sure whether or not it'd be a good
starting point for you, but it might be worth checking out!

-Sam

On Tue, Oct 13, 2020 at 6:40 AM Mark Koenig via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I am thinking of doing some RF characterization of the TwinRX
> daughterboard in the near future, and I was hoping to use the pdf as a
> guide.  Unfortunately, there is no test set up or test equipment list used
> to create specifically the Rx Gain plots vs. Frequency for a given gain
> value.  Any help would be greatly appreciated, as I may be able to locate
> the equipment in my lab.
>
>
>
>
> https://files.ettus.com/performance_data/ubx/UBX-without-UHD-corrections.pdf
>
>
>
>
>
> Thank you
>
>
>
> Mark
>
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000d3fd4b05b1ab4d3a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Mark,<div><br></div><div>While I don&#39;t have=C2=A0recom=
mendations=C2=A0for specific test instrumentation, I&#39;d guess you could =
pretty easily characterize a RX gain vs frequency with a=C2=A0 (calibrated)=
 signal generator that is addressable over SCPI. Once you&#39;ve figured ou=
t how to TX a CW at a given power level over the SCPI interface to your gen=
erator using python or C++, you could write a script that moved the TwinRX =
and sig gen from DC to 6GHz in known increments and recorded the received s=
ignal power. From there, recreating the plot you mentioned wouldn&#39;t be =
too difficult.=C2=A0</div><div><br></div><div>That being said, there appear=
s to be a power cal utility that came out with UHD 4.0:=C2=A0</div><div><br=
></div><div><a href=3D"https://github.com/EttusResearch/uhd/blob/master/hos=
t/utils/uhd_power_cal.py">https://github.com/EttusResearch/uhd/blob/master/=
host/utils/uhd_power_cal.py</a></div><div><br></div><div>=C2=A0I haven&#39;=
t used it before, so I&#39;m not sure whether or not it&#39;d be a good sta=
rting point for you, but it might be worth checking out!=C2=A0</div><div><b=
r></div><div>-Sam</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Tue, Oct 13, 2020 at 6:40 AM Mark Koenig via USRP=
-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.e=
ttus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">







<div bgcolor=3D"white" lang=3D"EN-US">
<div class=3D"gmail-m_-8625436655479403565WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">I am thinking of doin=
g some RF characterization of the TwinRX daughterboard in the near future, =
and I was hoping to use the pdf as a guide.=C2=A0 Unfortunately, there is n=
o test set up or test equipment list used
 to create specifically the Rx Gain plots vs. Frequency for a given gain va=
lue.=C2=A0 Any help would be greatly appreciated, as I may be able to locat=
e the equipment in my lab.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><a href=3D"https://fi=
les.ettus.com/performance_data/ubx/UBX-without-UHD-corrections.pdf" target=
=3D"_blank">https://files.ettus.com/performance_data/ubx/UBX-without-UHD-co=
rrections.pdf</a><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Thank you<u></u><u></=
u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Mark<u></u><u></u></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000d3fd4b05b1ab4d3a--


--===============2169887646796374319==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2169887646796374319==--

