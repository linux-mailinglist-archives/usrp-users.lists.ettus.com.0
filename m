Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 80C271A3ED9
	for <lists+usrp-users@lfdr.de>; Fri, 10 Apr 2020 05:45:19 +0200 (CEST)
Received: from [::1] (port=53478 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jMkbU-0005SX-0g; Thu, 09 Apr 2020 23:45:16 -0400
Received: from mail-yb1-f171.google.com ([209.85.219.171]:37962)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <sam.reiter8@gmail.com>)
 id 1jMkbQ-0005Lu-NG
 for usrp-users@lists.ettus.com; Thu, 09 Apr 2020 23:45:12 -0400
Received: by mail-yb1-f171.google.com with SMTP id 204so568124ybw.5
 for <usrp-users@lists.ettus.com>; Thu, 09 Apr 2020 20:44:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hqI10gp/7NTF0adH+Bu9/i1W89BxAwRD62NKgR4pmxw=;
 b=hrQDdMtMaq1e5vWFPyaH/YLNkKOnAuqTOSivO2HXrQdLgJ9hKzBZmMlmMIiSJVLta3
 06bu3BVCOdw6q0/g1N0bxBtemmsVUnHwSaPiH57dSW3C5NFyofwzTUzneBO7j91kKCQ4
 sGHPB+a2ARnRzkCC9Q3YmBvzdpGt6C1yY7vWneewEn2Xmjb89hfqoMHW/7n9hExVV1/h
 r7en/n2/ZrIS4H5sejWWhxNt2d6kF1TKm8ZCorC5xdy7UZlAWp6X57JgFORw6ZoFALPw
 +rEzhJmhCqyaorkiVT8u9Xm3H+q4zPWjlJEhZem1t/dmUta+mCUUd98TQGLtGlpvtJ5t
 ZBjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hqI10gp/7NTF0adH+Bu9/i1W89BxAwRD62NKgR4pmxw=;
 b=SkRjHlsWLzVotsQByxLn/jT5Rj/Ttig1THmsv0H5Fy0TI4qINNj2cV9szR0sDCB6fK
 WntcC8Eey/VfKN0vEysifG9qTokt2noMTP4uH5lJSwDHGfU80OWu4ofxq1GrUINjGVtr
 XbpIQIC40DewB0tTxs3zMu+ewOWXun1gGKjNNbIu71MO7Ic1zsKdaPH+eCFC4uqi1hq4
 NaXvTB/aoV0dsFvta91ni3UAOjmPthfkF094Xwvov2GpaCNRoK8xTR783br6Q8o64+S+
 4h81uO2l0zxuCSazqmpH/X87x84R3JU9RAAOmHlt6Ip++A7xewWXvNuGHv8hMyIldvTd
 ztsQ==
X-Gm-Message-State: AGi0PuYOI+rRgLURJWQwIBh3PbalJKp5vcPz6iBe68glW5KLGL+PT/W3
 pVFMcNjnsAg8s2j+2gHvy9eK2o//58MOQ1oxcss=
X-Google-Smtp-Source: APiQypIIMqM9L7BNbZDuS2TapnCBHVpfPb1brTvwWysKJUDSASIFpNhe7ylJ7xwgBvfbIv7SbU4S5V/gNadchvUAjpE=
X-Received: by 2002:a25:a0ca:: with SMTP id i10mr4483492ybm.281.1586490272071; 
 Thu, 09 Apr 2020 20:44:32 -0700 (PDT)
MIME-Version: 1.0
References: <5e8e46e6.1c69fb81.5b237.1285SMTPIN_ADDED_MISSING@mx.google.com>
In-Reply-To: <5e8e46e6.1c69fb81.5b237.1285SMTPIN_ADDED_MISSING@mx.google.com>
Date: Thu, 9 Apr 2020 22:44:21 -0500
Message-ID: <CADBWrHhf5==32f2jTq8_2TNMOE1W8aucdiuSWOiRgEYGj_avMg@mail.gmail.com>
To: "Tillson, Bob (US)" <robert.tillson@baesystems.com>
Subject: Re: [USRP-users] UBX 10-500 MHz Question
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
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter8@gmail.com>
Cc: "usrp-users \(usrp-users@lists.ettus.com\)" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3789887265605340323=="
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

--===============3789887265605340323==
Content-Type: multipart/alternative; boundary="0000000000001b45d005a2e78df2"

--0000000000001b45d005a2e78df2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Bob,

The 84MHz bandwidth constraint is because of the analog bandpass filter [1]
on the UBX's RX signal path [2]. I'd guess that UHD will yell at you if you
feed in an invalid bandwidth, but I've never tried it. If I remember
correctly, you can sample at rates that aren't an even division of the MCR,
you'll just end up using a CIC filter that causes rolloff in your spectrum
[3].

- Sam

[1] https://www.mouser.com/datasheet/2/412/55916-1504717.pdf
[2] https://files.ettus.com/schematics/ubx/UBX-160_revE.pdf
[3]
https://witestlab.poly.edu/blog/why-does-my-received-spectrum-droop-at-the-=
edges/

On Wed, Apr 8, 2020 at 4:49 PM Tillson, Bob (US) via USRP-users <
usrp-users@lists.ettus.com> wrote:

> so with the UBX-160 on an X310, there is the following caveat:
>
>
>
> * The UBX 160 transmitter path has 160 MHz of bandwidth throughout the
> full frequency range of the device; the receiver path has 84 MHz of
> bandwidth for center frequencies from 10 MHz to 500 MHz.
>
>
>
> I guess my question is how does this manifest itself?
>
>
>
> If I ask for 100 MHz of BW, do I get 84 or does it fail?
>
>
>
> How would I get 84 given the requirement of sample rate be an even diviso=
r
> of 200 MHz clock?
>
>
>
> If I wanted 100 in that range, would there be any way to get it from a
> single channel in that band?  Most other cards don=E2=80=99t seem to have=
 the BW in
> that range.
>
>
>
> Thanks,
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000001b45d005a2e78df2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Bob,<div><br></div><div>The 84MHz bandwidth constraint is =
because of the analog bandpass filter [1] on the UBX&#39;s RX signal path [=
2]. I&#39;d guess that UHD will yell at you if you feed in an invalid bandw=
idth, but I&#39;ve never tried it. If I remember correctly, you can sample =
at rates that aren&#39;t an even division of the MCR, you&#39;ll just end u=
p using a CIC filter that causes rolloff in your spectrum [3].</div><div><b=
r></div><div>- Sam</div><div><br></div><div>[1]=C2=A0<a href=3D"https://www=
.mouser.com/datasheet/2/412/55916-1504717.pdf">https://www.mouser.com/datas=
heet/2/412/55916-1504717.pdf</a></div><div>[2]=C2=A0<a href=3D"https://file=
s.ettus.com/schematics/ubx/UBX-160_revE.pdf">https://files.ettus.com/schema=
tics/ubx/UBX-160_revE.pdf</a></div><div>[3]=C2=A0<a href=3D"https://witestl=
ab.poly.edu/blog/why-does-my-received-spectrum-droop-at-the-edges/">https:/=
/witestlab.poly.edu/blog/why-does-my-received-spectrum-droop-at-the-edges/<=
/a></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Wed, Apr 8, 2020 at 4:49 PM Tillson, Bob (US) via USRP-users &l=
t;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_3732333573865423194WordSection1">
<p class=3D"MsoNormal">so with the UBX-160 on an X310, there is the followi=
ng caveat:<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:13.5pt;font-family:Arial,sa=
ns-serif;color:rgb(51,51,51)">* The UBX 160 transmitter path has 160 MHz of=
 bandwidth throughout the full frequency range of the device; the receiver =
path has 84 MHz of bandwidth for center
 frequencies from 10 MHz to 500 MHz.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I guess my question is how does this manifest itself=
?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">If I ask for 100 MHz of BW, do I get 84 or does it f=
ail?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">How would I get 84 given the requirement of sample r=
ate be an even divisor of 200 MHz clock?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">If I wanted 100 in that range, would there be any wa=
y to get it from a single channel in that band?=C2=A0 Most other cards don=
=E2=80=99t seem to have the BW in that range.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thanks,<u></u><u></u></p>
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

--0000000000001b45d005a2e78df2--


--===============3789887265605340323==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3789887265605340323==--

