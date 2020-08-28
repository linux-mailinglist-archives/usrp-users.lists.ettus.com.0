Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F01EB255B25
	for <lists+usrp-users@lfdr.de>; Fri, 28 Aug 2020 15:20:26 +0200 (CEST)
Received: from [::1] (port=42442 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kBeIj-0002LX-R4; Fri, 28 Aug 2020 09:20:17 -0400
Received: from mail-lj1-f178.google.com ([209.85.208.178]:36517)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <peter.langer41@googlemail.com>)
 id 1kBeIf-0002Dk-JV
 for usrp-users@lists.ettus.com; Fri, 28 Aug 2020 09:20:13 -0400
Received: by mail-lj1-f178.google.com with SMTP id t23so1282317ljc.3
 for <usrp-users@lists.ettus.com>; Fri, 28 Aug 2020 06:19:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=AnQOZXIBjsauwdqqLFVAoWAgpOSeQb2h/OqwE027MaM=;
 b=MJG/q2C+H9mb2CgrzmJDtTqOfpteb7Mg+hsKn/v8zOBjkUccs8NbFc6v8g4WAu6JQ1
 PViDPdxU3DKm0SKTQtX/LKpndwx02ol36bUA+oxi3w9hHy6LHl1kBcavqDkxNINVFXtX
 CAlsgvI99GF1oWqpB0cxMCr5igOIhOeGiZorGK+Uo/bvOWaabwo4U0MtfvCykeJrJDev
 o7lFiDc0rVkZ5qZcRsNYbDWKwSrGoURxBqjDb0ywwY11lqrftS+tAD+/rkx40IBuneT3
 aidS6el6T7fwy6WgCoY1m08u2rM6TtuuRNzrxAjUlAoK0bM6remzwlNCOcanvGRAHGc/
 yPbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=AnQOZXIBjsauwdqqLFVAoWAgpOSeQb2h/OqwE027MaM=;
 b=CjA6G9aZ48xGVOtjga0LzxYvVrkViJ6TzGL1l+JqOIyC1gexzy6XvqS/EkcHgEb1X5
 6Oql+BPWEq56U8N3ROCHN9qy9t6ICfcbQ6lM8mvC07S65iv42/z0RnbkPN1CS+irn+6L
 rkVrxCkyrt4/3GON9vAvNJAdGwqQtjayF0QTTCLM5tN7JZ1MkujrubRBDuWBKn2gavAR
 bRCI9QubhVGBh03nzU8H0nzF+/m+bq35oi26r6XZdr9v7UYnorrfRCcGpxbMkiT2C+eE
 qtiEIl6351zmoSuQwwauKGr42D/feHBt57XiUFxRXnwEFETlwQwGxh5odXu6l4MVtwA9
 l18w==
X-Gm-Message-State: AOAM532bO5+MtdsKMBBRrJAA09UKoE9e+EMQL6rrhpadDOuZtXi7KHm8
 9ngHB22ohpCVFJL+Ka2SHb1KYsz7DjgW1ggDj2WXNEou
X-Google-Smtp-Source: ABdhPJwa9Hu+5LaigD05ueDG7iJ0CNX0hIxV2gZiR/s1FylYIowvZthytJht5aGrdVUR4nMQ4fU3nCMhWpPbefgVmqo=
X-Received: by 2002:a2e:6c07:: with SMTP id h7mr833874ljc.287.1598620772039;
 Fri, 28 Aug 2020 06:19:32 -0700 (PDT)
MIME-Version: 1.0
References: <CALpvgREVsUy5rDPUpLq-VoTO8-j1uPFe+cPpeQckdW3Ptb4TGQ@mail.gmail.com>
 <CALpvgRGY2Q5qOPvmAFDR8M58HrrumRsEew3kPiBVsi+XMAL5nw@mail.gmail.com>
In-Reply-To: <CALpvgRGY2Q5qOPvmAFDR8M58HrrumRsEew3kPiBVsi+XMAL5nw@mail.gmail.com>
Date: Fri, 28 Aug 2020 15:19:20 +0200
Message-ID: <CALpvgRFysNhA5kAM5-k5aMtUO-tWP4Ar4jgHNGaeAWFEe=jtbQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Sporadic N310 kernel panics when under load
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
From: Peter Langer via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Peter Langer <peter.langer41@googlemail.com>
Content-Type: multipart/mixed; boundary="===============6899702338258472354=="
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

--===============6899702338258472354==
Content-Type: multipart/alternative; boundary="0000000000003f7fe305adefe756"

--0000000000003f7fe305adefe756
Content-Type: text/plain; charset="UTF-8"

Am Fr., 28. Aug. 2020 um 13:30 Uhr schrieb Peter Langer <
peter.langer41@googlemail.com>:

>
> >>There were some people on the Xilinx forums that had a similar problem
> with kernel panics >>because their uboot device tree
> configuration specified this:
>
> >>memory@0{
> >>                  device_type = "memory";
> >>                   reg = <0x0 0x40000000>
> >>}
>

Sorry that was a wrong clue, i thought reg meant it's measured in 4 byte
words.

I'm currently running a test with avahi-daemon disabled (1-day 21 hrs
running now).
Thumbs pressed.

Peter

--0000000000003f7fe305adefe756
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">Am Fr., 28. Aug. 2020 um 13:30=C2=A0U=
hr schrieb Peter Langer &lt;<a href=3D"mailto:peter.langer41@googlemail.com=
">peter.langer41@googlemail.com</a>&gt;:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div dir=3D"ltr"><div><br></div><div>&gt;&gt;There=
 were some people on the Xilinx forums that had a similar problem with kern=
el panics &gt;&gt;because their uboot device tree configuration=C2=A0specif=
ied this:</div><div><br></div><div>&gt;&gt;memory@0{ <br>&gt;&gt;=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 device_type =3D &quot;=
memory&quot;;<br>&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0reg =3D &lt;0x0 0x40000000&gt;<br>&gt;&gt;}<br></div></=
div></blockquote><div>=C2=A0</div><div>Sorry that was a wrong clue, i thoug=
ht reg meant it&#39;s measured in 4 byte words.</div><div><br></div><div>I&=
#39;m currently running a test with avahi-daemon disabled (1-day 21 hrs run=
ning now).=C2=A0</div><div>Thumbs pressed.</div><div><br></div><div>Peter=
=C2=A0</div></div></div>

--0000000000003f7fe305adefe756--


--===============6899702338258472354==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6899702338258472354==--

