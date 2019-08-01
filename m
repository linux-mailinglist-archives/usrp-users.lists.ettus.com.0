Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D137DF29
	for <lists+usrp-users@lfdr.de>; Thu,  1 Aug 2019 17:33:05 +0200 (CEST)
Received: from [::1] (port=42836 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1htD4f-0001gx-MA; Thu, 01 Aug 2019 11:33:01 -0400
Received: from mail-lf1-f52.google.com ([209.85.167.52]:39818)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1htD4c-0001bJ-Lp
 for usrp-users@lists.ettus.com; Thu, 01 Aug 2019 11:32:58 -0400
Received: by mail-lf1-f52.google.com with SMTP id v85so50533925lfa.6
 for <usrp-users@lists.ettus.com>; Thu, 01 Aug 2019 08:32:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GqmQJIxbhZobqWle5Hs/d4lR/LjV5vvXx80iKp/iE3Q=;
 b=eyCZi4llacfPI9rsCB0CszV5yQoR8wo1zXKGJK4qca7vD5jRMSGKZzjnBpBAAxiUr8
 SCi8wv5vQ2ZXaVX0ZTcOTPWhNyY+M1GJXkZV4bvb4SlrpTdZRtA3modgSzYKwvZJToCO
 ochSe0zcSg51Q3rWGIUTXeHt+xMV08lUEd0ErdHE073RsaizD6QN6m+wXl3uTErKCNwL
 CfsmTPzCE9LiGpR7lOu0gPXocEnrdtK9VSz2BDn3OvnkThT9gbduHNcOe/XGWnPL7Clt
 qrbq9+JCRqqqdtYJHfS7cCEHarCndSMzNq/iUdKukjKnMkX5+30q+WQd2mB0A18/gcK1
 XpuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GqmQJIxbhZobqWle5Hs/d4lR/LjV5vvXx80iKp/iE3Q=;
 b=Dc1PZZdBY53gGGh4x3DIGrb/8RlCLP94ODyzMBmf7xp5Gfw4J+EwSe52Qw8WXXgPB7
 fffKorlHUFMsBzHSoXiJg/D/rYp6dBjPkuemQwHKY+JCXfV2vIzISt9sbfts35m6uaOq
 eueLC71TwXKGeITuKOAjuOyEKYCosxxeg4ZsasGVGJyzMxhfMtfO/PNBQ6kAzJNEHlSy
 nU2CqTSrjnwq7SArj+wuAqoMG6g2rz/w1e5WCFJbIsrv5PZcth1huhKkQgZ4Y/Bg7Dyw
 0xbL72SnVIkC9lrAqdHkRtXzSMjK0rfRBCxY3SPF82bcoKcniFU66v+8zy9hJi0hsyLQ
 sejg==
X-Gm-Message-State: APjAAAXI0tIjfiZtlaIV31vTBPzCfUrnPPiu70UJARxvnMutbc/QS/Gz
 CYpm6Du0L3Z+g6JXmLnRs7vX24W+CZxqTQP3ksdgL2Ov
X-Google-Smtp-Source: APXvYqz3tC38OnaLu67xVpYbuSfjiE5ukda/RxcRlfkCVtaa5Dvv1FxQDy4d9KW/W3+/TstZ/wwMY59FwBoZUMiPd4M=
X-Received: by 2002:ac2:5e9b:: with SMTP id b27mr56859149lfq.45.1564673536334; 
 Thu, 01 Aug 2019 08:32:16 -0700 (PDT)
MIME-Version: 1.0
References: <3cbccc55-709d-89d0-a637-8e765ca87905@upc.edu>
In-Reply-To: <3cbccc55-709d-89d0-a637-8e765ca87905@upc.edu>
Date: Fri, 2 Aug 2019 00:31:40 +0900
Message-ID: <CAL7q81sgi2_5p1u6B_YjUpo4kbA1KnKkhtppyQmCyGdwsUZreg@mail.gmail.com>
To: =?UTF-8?B?QWRyacOgIEFtw6l6YWdh?= <adria.amezaga@upc.edu>
Subject: Re: [USRP-users] [X310] RFNoC block tready is deasserted
 unexpectedly
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
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8818063316249230812=="
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

--===============8818063316249230812==
Content-Type: multipart/alternative; boundary="00000000000052af34058f0ff2b8"

--00000000000052af34058f0ff2b8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Assuming you are using ce_clk, the signal generators run at 214 MHz and
generate one sample per clock cycle, so they produce samples at 214 MSPS.
The radios consume samples at 200 MSPS. The back pressure is due to the
signal generator producing samples faster than the radio can consume. This
is expected behavior.

Jonathon

On Fri, Aug 2, 2019 at 12:15 AM Adri=C3=A0 Am=C3=A9zaga via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello all,
>
> I have an application where two RFNoC signal generators transmit samples
> to two TX radios at full 200MSPS rate.
>
> I need these samples to be contiguously transmitted in time.
>
> It is my understanding that the RFNoC crossbar can handle both streams.
> However, after some tests and debugging with ChipScope I have seen that
> the AXI wrapper s_axis_data_tready  signal goes low for some time at
> some point before sample generation has ended. The moment when tready
> goes low depends on the packet size.
>
> I cannot see why the TX stream is back-pressuring, so I'm obviously
> missing something. Any clarification would be appreciated.
>
> Thanks in advance!
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000052af34058f0ff2b8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>Assuming you are using ce_clk, the =
signal generators run at 214 MHz and generate one sample per clock cycle, s=
o they produce samples at 214 MSPS. The radios consume samples at 200 MSPS.=
 The back pressure is due to the signal generator producing samples faster =
than the radio can consume. This is expected behavior.</div><div><br></div>=
<div>Jonathon</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Fri, Aug 2, 2019 at 12:15 AM Adri=C3=A0 Am=C3=A9zaga =
via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users=
@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">Hello all,<br>
<br>
I have an application where two RFNoC signal generators transmit samples <b=
r>
to two TX radios at full 200MSPS rate.<br>
<br>
I need these samples to be contiguously transmitted in time.<br>
<br>
It is my understanding that the RFNoC crossbar can handle both streams.=C2=
=A0 <br>
However, after some tests and debugging with ChipScope I have seen that <br=
>
the AXI wrapper s_axis_data_tready=C2=A0 signal goes low for some time at <=
br>
some point before sample generation has ended. The moment when tready <br>
goes low depends on the packet size.<br>
<br>
I cannot see why the TX stream is back-pressuring, so I&#39;m obviously <br=
>
missing something. Any clarification would be appreciated.<br>
<br>
Thanks in advance!<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000052af34058f0ff2b8--


--===============8818063316249230812==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8818063316249230812==--

