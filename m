Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B1AAA182BE
	for <lists+usrp-users@lfdr.de>; Thu,  9 May 2019 01:38:35 +0200 (CEST)
Received: from [::1] (port=41170 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hOW8w-0004Tu-P0; Wed, 08 May 2019 19:38:34 -0400
Received: from mail-oi1-f174.google.com ([209.85.167.174]:40806)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <bpadalino@gmail.com>) id 1hOW8N-0004LM-Ua
 for usrp-users@lists.ettus.com; Wed, 08 May 2019 19:38:29 -0400
Received: by mail-oi1-f174.google.com with SMTP id r136so492885oie.7
 for <usrp-users@lists.ettus.com>; Wed, 08 May 2019 16:37:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6DcHjyX+2hMl/E6IPLIV5M35YPMvBs2DMBbsADR85mU=;
 b=NyHmyHqYgcyAhnXpuqoSFCWdCNaMHnQDcBTCanfwVrOYoGRY3V1heQ9/+7RrQ71SkS
 AmXslVD0Gj9KTXv6rZbrn0w4LPeCOz6v+Y1Hnf8rtKAiB14PYqd8N/VJ3z8m77z6X9Zc
 BSQz/LxnBtxsHlwunh5bg4rpqMaTIwHa4eeFW98NOMalDIIVRGM/hyikJdYgw9AthFWf
 ttS1LZX/PJA3taI6qM9U4tOcFm3DnTT1+faKtmu2d8x/tvIboj/glUJwYxhx0Q8mo8Lk
 oRRQkPjydI/b7R35G2sz/HCAy+xqZio+DVr2D0QuSZTnk3kq2s2BaAEebimppcZTfRHE
 3lCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6DcHjyX+2hMl/E6IPLIV5M35YPMvBs2DMBbsADR85mU=;
 b=PRwR/kW0tiHS5QYCxXYZxEaTOCbW0jwtUU7WRTHZHj1aBFZdaayeGr8dWpe2H8dt4I
 ktOE8sH1mgjOOikpBysBGTGfyJxiQc5nbnz2XZW/hEt9GsnNlDPKhE4TpJBjDfdwmhGa
 2hRXppEPOsWw5N+C9bubP+iblJ9CCxq30jKL4gr2F2MuXac97egibPBMgIsdSBKPR0KA
 r2dgqUHMnPXAl0yZvjDaRmuZo01fw7x2raH9yC/QiHo9Z8vzFCtsRdc4jW3WJaadv0Vm
 CfOvfdjObsUmREBNIBYpnwt6Qv0YtzbBx/EoIfWNoSgYUqNl2NA6KGkqCcu2Ke/KAkRs
 1Ryw==
X-Gm-Message-State: APjAAAWrQCtG6AuxX5TRHVviv9z0mQZ4t/Lv7SxLDnLzbWmmk/rRFALk
 87csQFrSkBdj+FhDSE+kzAsqRk3oF5sO6vZbH88=
X-Google-Smtp-Source: APXvYqzR92Vao8bwDQRA6EHA2t/y281kRMFh5xZFQdnnXDP8PVBNdzHtzObFxJJmC5AU6ORbz5NkA11XEuxQxK0AYEg=
X-Received: by 2002:a54:410b:: with SMTP id l11mr255500oic.161.1557358639229; 
 Wed, 08 May 2019 16:37:19 -0700 (PDT)
MIME-Version: 1.0
References: <003201d505f5$b2dfb770$189f2650$@sysware.com>
In-Reply-To: <003201d505f5$b2dfb770$189f2650$@sysware.com>
Date: Wed, 8 May 2019 19:37:07 -0400
Message-ID: <CAEXYVK4np9o7NAPctbMuoMaJX3xVwgvThf99jQpP1_1g1xMywQ@mail.gmail.com>
To: Michael Deacon <michaeld@sysware.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] Relationship between IQ values,
 gain and noise on B205mini transmitter
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
From: Brian Padalino via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Brian Padalino <bpadalino@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6324135502467250278=="
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

--===============6324135502467250278==
Content-Type: multipart/alternative; boundary="0000000000007ab154058868d0b9"

--0000000000007ab154058868d0b9
Content-Type: text/plain; charset="UTF-8"

On Wed, May 8, 2019 at 7:28 PM Michael Deacon via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello,
>
>
>
> I have a simple transmitter consisting of a file source connected to a
> USRP sink (attached image radio.png). The file contains interleaved
> floating point IQ representing a few seconds of LTE. The IQ amplitude
> values are normalized between +1.0 and -1.0. The sink is configured to
> 60db, 7.5MHz sample rate, 385MHz center frequency and 5MHz bandwidth. The
> output looks exactly like the original on a spectrum analyzer (see attached
> good.jpg). If I turn up the gain on the sink or increase the amplitude of
> the IQ data I get what looks to be noise on either side of the signal
> spectrum (see attached bad.jpg). Any idea what is going on here?
>

Your bad.jpg picture has the spectrum analyzer saying OLVD.  Try changing
your reference level of the spectrum analyzer to be higher so you don't
saturate the input of the spectrum analyzer.

Tell us if that fixes it for you.

Brian

--0000000000007ab154058868d0b9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, May 8, 2019 at 7:28 PM Michael De=
acon via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-=
users@lists.ettus.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div lang=3D"EN-US"><div cl=
ass=3D"gmail-m_1508808049101484069WordSection1"><p class=3D"MsoNormal">Hell=
o,<u></u><u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p class=
=3D"MsoNormal">I have a simple transmitter consisting of a file source conn=
ected to a USRP sink (attached image radio.png). The file contains interlea=
ved floating point IQ representing a few seconds of LTE. The IQ amplitude v=
alues are normalized between +1.0 and -1.0. The sink is configured to 60db,=
 7.5MHz sample rate, 385MHz center frequency and 5MHz bandwidth. The output=
 looks exactly like the original on a spectrum analyzer (see attached good.=
jpg). If I turn up the gain on the sink or increase the amplitude of the IQ=
 data I get what looks to be noise on either side of the signal spectrum (s=
ee attached bad.jpg). Any idea what is going on here?</p></div></div></bloc=
kquote><div><br></div><div>Your bad.jpg picture has the spectrum analyzer s=
aying OLVD.=C2=A0 Try changing your reference level of the spectrum analyze=
r to be higher so you don&#39;t saturate the input of the spectrum analyzer=
.</div><div><br></div><div>Tell us if that fixes it for you.</div><div><br>=
</div><div>Brian</div></div></div>

--0000000000007ab154058868d0b9--


--===============6324135502467250278==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6324135502467250278==--

