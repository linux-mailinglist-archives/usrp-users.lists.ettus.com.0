Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D9E334C4E
	for <lists+usrp-users@lfdr.de>; Thu, 11 Mar 2021 00:16:21 +0100 (CET)
Received: from [::1] (port=46052 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lK83s-0000rJ-Hi; Wed, 10 Mar 2021 18:16:16 -0500
Received: from mail-ot1-f44.google.com ([209.85.210.44]:35795)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1lK83p-0000o4-2k
 for usrp-users@lists.ettus.com; Wed, 10 Mar 2021 18:16:13 -0500
Received: by mail-ot1-f44.google.com with SMTP id j22so12329574otp.2
 for <usrp-users@lists.ettus.com>; Wed, 10 Mar 2021 15:15:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FdNLs/lZ61jcHhbgLuLA206d+TzV2vm1nTUQQx+31e0=;
 b=TF0R9wY4ell7cAuHyzdGycDxFiQp/JlSEy5NWKx6kPJ1VisLaXlonPcgEMESRyu5o4
 XrLiE5+qsRnYSUcEcsryE/EMMwBZbP5JxdCp0PqisvCSCZAXFgFWBdkhBFT+VVMOEtqb
 zbS9VE6J5E8zWTNY4DBbObHm7x/a7PunwoPAn+Ka1N0jmzBQqp6uOaoF+92jEjZjtCUu
 Yx/2RYF58991U0jH+ZHPmD8ZsRfkZvkyPW33g2PSN0UsV+NjkaLROD7Z5WTETFyWX9eP
 8G/9DYMpEdzWa8WF1A2AoyohefSgmyKswwEnGiXZkCDb/w1X2XO8TnMGhtUC+ZNFZ1js
 WWyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FdNLs/lZ61jcHhbgLuLA206d+TzV2vm1nTUQQx+31e0=;
 b=msOeUgZ8tDMpKIT0w5pDXFem3+2XPdrM0Sy2VdtL/KsbmQFzOD/EX/xg73ywLq/LTx
 svs1KSr8z5SqL5Mce2LUupuQubOWgdTKDPJ0s5Hi18yqypdBfvXQqPNhpc9CN7mO9fEY
 mBEVL21FvDt62rhB+gQJB8Dj46oEKzMUXPLGLo5xJgsHqO9knjeVOck4SV7mwtG7QgN3
 ztyjLiyupixYJFEanNMkTboKbJtLT6pzenECk9Ce2dxAp1NAaTxwDjjuOtvOUCPuNsDS
 QAB/Pv/WRTp6gWoQZMccx/jHBpyTA+SRpXr0pKflkJjT3HBE/DeRToQYLxnrdGbUqLZG
 m/GA==
X-Gm-Message-State: AOAM532e3/EmihPNzwxWiqtxs3Er1UeKtL707TSGZTcO3lNj6fmNXtJu
 UdfLNF+c0tGQvcyB4gLyM23MzYXbSdBbTIL3NTR9v30+qC4=
X-Google-Smtp-Source: ABdhPJypWe50Ev2D3pXJWocjFxxRhinxnKoAoOyp9E9XcsB2andwiSSK+JrdWFotrSQw0E0IivlpXumnSgj6iTEWdnE=
X-Received: by 2002:a9d:5503:: with SMTP id l3mr4485508oth.302.1615418131924; 
 Wed, 10 Mar 2021 15:15:31 -0800 (PST)
MIME-Version: 1.0
References: <8b669b86247f41399f2c60a491048865@gmvnsl.com>
In-Reply-To: <8b669b86247f41399f2c60a491048865@gmvnsl.com>
Date: Wed, 10 Mar 2021 18:15:21 -0500
Message-ID: <CAB__hTTx=KQV1JWQPcbac_pwdeSNy5Z7vAPcY01vaAeO3BbYbQ@mail.gmail.com>
To: Oliver Towlson <oliver.towlson@gmvnsl.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] X310 with dual TwinRX set up
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
Content-Type: multipart/mixed; boundary="===============6125489681700767497=="
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

--===============6125489681700767497==
Content-Type: multipart/alternative; boundary="000000000000eb144105bd36d7d4"

--000000000000eb144105bd36d7d4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Oliver,
I don't have any example code to provide (and I don't use gnuradio), but I
can address a couple of things:
- the first step is to get all four channels recognized (as you indicated);
perhaps using subdev spec "A:0 A:1 B:0 B:1"
- synchronizing in time is definitely possible. From gnuradio, I thought
that it was the default for multi-channel operation.  You might have to
lookup a set_start_time or similar command. check the uhd gnuradio
documentation for usrp source
<https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__source.html>.
- four channels at 100 MS/s is also achievable.  To use dual 10Gbe, you
need to specify the "second_addr" device arg as indicated here
<https://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_hw_10gige>.
Rob

On Wed, Mar 10, 2021 at 1:10 PM Oliver Towlson via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi
>
>
>
> I am trying to set up an X310 with 2 TwinRX boards such that:
>
>
>
> - each RF channel may be tuned to a different GNSS L-band frequency
>
> - all four RF channels may be synchronised in time
>
> - data streaming on all four channels at 100 MS/s (we are using dual 10G
> Ethernet for this)
>
>
>
> I=E2=80=99m pretty much a beginner when it comes to USRPs. I am using GNU=
 radio to
> configure the USRP but so far it only recognizes two input channels. We
> found the code posted here -
> http://ettus.80997.x6.nabble.com/USRP-users-Example-code-for-a-pair-of-Tw=
inRXs-td2673.html
> - useful but on closer inspection all four channels were set to the same
> frequency and it looks to be doing something different to what we want (i=
t
> looks like it was written specifically to synchronise four channels
> receiving the same signal so that you can calibrate the internal phase
> offset of the USRP)
>
>
>
> Does anyone have any example code they might be willing to share, if only
> to get us started, to get our desired set-up?
>
>
>
> Thanks
>
>
>
> Oliver T
>
> P Please consider the environment before printing this e-mail.
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000eb144105bd36d7d4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Oliver,<div>I don&#39;t have any examp=
le code to provide (and I don&#39;t use gnuradio), but I can address a coup=
le of things:</div><div>- the first step is to get all four channels recogn=
ized (as you indicated); perhaps using subdev spec &quot;A:0 A:1 B:0 B:1&qu=
ot;</div><div>- synchronizing in time is definitely possible. From gnuradio=
, I thought that it was the default for multi-channel operation.=C2=A0 You =
might have to lookup a set_start_time or similar command. check the uhd gnu=
radio documentation for <a href=3D"https://www.gnuradio.org/doc/doxygen/cla=
ssgr_1_1uhd_1_1usrp__source.html">usrp source</a>.</div><div>- four channel=
s at 100 MS/s is also achievable.=C2=A0 To use dual 10Gbe, you need to spec=
ify the &quot;second_addr&quot; device arg as indicated <a href=3D"https://=
files.ettus.com/manual/page_usrp_x3x0.html#x3x0_hw_10gige">here</a>.</div><=
/div>Rob<div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Wed, Mar 10, 2021 at 1:10 PM Oliver Towlson via USRP-users &lt;<a=
 href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_-1369260782230533991WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Verdana,sa=
ns-serif">Hi<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Verdana,sa=
ns-serif"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Verdana,sa=
ns-serif">I am trying to set up an X310 with 2 TwinRX boards such that:<u><=
/u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Verdana,sa=
ns-serif"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Verdana,sa=
ns-serif">- each RF channel may be tuned to a different GNSS L-band frequen=
cy<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Verdana,sa=
ns-serif">- all four RF channels may be synchronised in time<u></u><u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Verdana,sa=
ns-serif">- data streaming on all four channels at 100 MS/s (we are using d=
ual 10G Ethernet for this)<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Verdana,sa=
ns-serif"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Verdana,sa=
ns-serif">I=E2=80=99m pretty much a beginner when it comes to USRPs. I am u=
sing GNU radio to configure the USRP but so far it only recognizes two inpu=
t channels. We found the code posted here
 - <a href=3D"http://ettus.80997.x6.nabble.com/USRP-users-Example-code-for-=
a-pair-of-TwinRXs-td2673.html" target=3D"_blank">
http://ettus.80997.x6.nabble.com/USRP-users-Example-code-for-a-pair-of-Twin=
RXs-td2673.html</a> - useful but on closer inspection all four channels wer=
e set to the same frequency and it looks to be doing something different to=
 what we want (it looks
</span><span style=3D"font-size:10.5pt;font-family:&quot;Segoe UI&quot;,san=
s-serif">like it was written specifically to synchronise four channels rece=
iving the same signal so that you can calibrate the internal phase offset o=
f the USRP)<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Verdana,sa=
ns-serif"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Verdana,sa=
ns-serif">Does anyone have any example code they might be willing to share,=
 if only to get us started, to get our desired set-up?
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Verdana,sa=
ns-serif"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Verdana,sa=
ns-serif">Thanks<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Verdana,sa=
ns-serif"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Verdana,sa=
ns-serif">Oliver T<u></u><u></u></span></p>
</div>
<span><br>
</span><span style=3D"font-size:18pt;line-height:125%;font-family:Webdings;=
color:green">P<span></span>
<span style=3D"font-size:7pt;line-height:125%;font-family:Arial,sans-serif;=
color:green">
Please consider the environment before printing this e-mail.</span></span><=
span></span>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div></div>

--000000000000eb144105bd36d7d4--


--===============6125489681700767497==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6125489681700767497==--

