Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EC5D41AE192
	for <lists+usrp-users@lfdr.de>; Fri, 17 Apr 2020 17:53:42 +0200 (CEST)
Received: from [::1] (port=47070 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jPTJD-00009x-KZ; Fri, 17 Apr 2020 11:53:39 -0400
Received: from mail-vs1-f49.google.com ([209.85.217.49]:33168)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1jPTJA-0008Sg-8Y
 for usrp-users@lists.ettus.com; Fri, 17 Apr 2020 11:53:36 -0400
Received: by mail-vs1-f49.google.com with SMTP id g184so1472900vsc.0
 for <usrp-users@lists.ettus.com>; Fri, 17 Apr 2020 08:53:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=B5gGcHExoV7OgHGq1VyeLUkD0ZnIu0GqWLGVCQFB5kw=;
 b=mXRz13NfHuSq02/qIhZIs0zGY4Ael77qYAl7KlQeZDuemjzhTtFW/doDNwKbvQKGKr
 1qx6sibJNjF8YKVQbxoIl0+vShLifRcuRCtL3ScNkc9uhRYmDThegsiu2OgCCsspNgls
 t7y3FP4LrPMx8/goxtpyJnBJsu5eq/6U5idNg0fE0k8RKapXCH3H6p0q5In0xhsaVhNX
 2rUOaCVTSj9RuWMhyl7i2FeNvGlvnYnrFxBHcN7CgygXyaspd6KK6DwEpMf9j2SRYWTB
 RZ4npS0oUBMXs+h6UWo9FCzycIuxB8SfDsALNQFzFjOAyYTYJuLVyu67i6u2qWkgyDf4
 EXEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=B5gGcHExoV7OgHGq1VyeLUkD0ZnIu0GqWLGVCQFB5kw=;
 b=St+x6+c3Fd7R0Tkfba/UmSTg1uRSt19s5zP4qxZsi7hG2VoT7LKRCBA46W6EwF436I
 oeiydse0WunVHsFK96qAE6oYiE3cpqBY3Y2MmjxhTPpfzYlyqH/00+13oyPb0pNhqk2b
 FmKmlU9l0uxpicxk64OHiV6MWuxhlclBd61Y4VtbOrorvsYKmyGVTl1Q2bPY5WkghdsL
 YPzQCj+WXj2p1KBF4NYrpUo1YSd3yaN64gV2pc8yPIJiTcGt2Azcd0wYveNTRsYSyoNS
 QgsH/Av1V/m449kmg5GyZKRWsMFnn0inC/Wj0oUftA2lh1PYLu3Q48SthOrOaomfhe+P
 T1jw==
X-Gm-Message-State: AGi0PuZkxDF4P8/v90xz20pocTvRbObYfjoh3l9/EPpd8cjoHv0KutbS
 WlyKao/SbTvI40URCm9qeKUlFfeaABrJZTSVCwhihrtYxWnUPSF2
X-Google-Smtp-Source: APiQypJaZVxOFEUeoe0R5yOGt1txw4Y53mcMMUPja+HhEp4YwpcTwUKW0oKzMhD/P8oAOJ8M70dPML2RoXpATgudObE=
X-Received: by 2002:a67:f50c:: with SMTP id u12mr2353860vsn.176.1587138775641; 
 Fri, 17 Apr 2020 08:52:55 -0700 (PDT)
MIME-Version: 1.0
References: <BM1PR01MB33485647B95F4EB1A185B53E88D80@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <BM1PR01MB33485647B95F4EB1A185B53E88D80@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
Date: Fri, 17 Apr 2020 11:52:19 -0400
Message-ID: <CAL7q81tGgXZQDNxq9FGViThnFkWE+3YSeLaebKrqP6OqCw1XvA@mail.gmail.com>
To: Snehasish Kar <snehasish.cse@live.com>
Subject: Re: [USRP-users] Fractional downsampling in rfnoc
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
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3543267015907553940=="
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

--===============3543267015907553940==
Content-Type: multipart/alternative; boundary="000000000000ee82da05a37e8a6e"

--000000000000ee82da05a37e8a6e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Snehasish,

Unfortunately, the standard library of blocks does not have a Fractional
Decimator. Your best bet is to try to use the one made by Synchronous Labs
a few years ago. Their code is on github here:
https://github.com/SynchronousLabs/rfnoc-SynchronousLabs. Since it was
built, RFNoC has had some changes that will need to be fixed, but I think
this is your only option versus writing one from scratch.

Jonathon

On Thu, Apr 16, 2020 at 6:35 PM Snehasish Kar via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello
>
> I am trying to use the RFNOC based M/2 channelizer from
> https://github.com/theseus-cores/theseus-cores/releases/tag/v1.1.0 . I am
> trying to divide 25 MHz spectrum into 124 subchannels each of bandwidth
> 200KHz. I am capturing the signal at 200msps and I need to decimate it to
> 25.6msps(25MHz/128 channels). Please help me in understanding how this ca=
n
> be achieved using RFNoC, is there=E2=80=99s any block already defined for
> fractional downsampling.
>
> Thanks & Regards
> Snehasish
>
> Get Outlook for iOS <https://aka.ms/o0ukef>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000ee82da05a37e8a6e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Snehasish,<div><br></div><div>Unfortunately, the sta=
ndard library of blocks does not have a Fractional Decimator. Your best bet=
 is to try to use the one made by Synchronous Labs a few years ago. Their c=
ode is on github here:=C2=A0<a href=3D"https://github.com/SynchronousLabs/r=
fnoc-SynchronousLabs">https://github.com/SynchronousLabs/rfnoc-SynchronousL=
abs</a>. Since it was built, RFNoC has had some changes that will need to b=
e fixed, but I think this is your only option versus writing one from scrat=
ch.</div><div><br></div><div>Jonathon</div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 16, 2020 at 6:35 PM =
Snehasish Kar via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.c=
om">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex">



<div>
<div dir=3D"ltr">
<div></div>
<div>
<div>Hello=C2=A0</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">I am trying to use the RFNOC based M/2 channelizer from=C2=
=A0<a href=3D"https://github.com/theseus-cores/theseus-cores/releases/tag/v=
1.1.0" target=3D"_blank">https://github.com/theseus-cores/theseus-cores/rel=
eases/tag/v1.1.0</a>=C2=A0. I am trying to divide 25 MHz spectrum
 into 124 subchannels each of bandwidth 200KHz. I am capturing the signal a=
t 200msps and I need to decimate it to 25.6msps(25MHz/128 channels).=C2=A0P=
lease help me in understanding how this can be achieved using RFNoC, is the=
re=E2=80=99s any block already defined for fractional
 downsampling.</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Thanks &amp; Regards=C2=A0</div>
<div dir=3D"ltr">Snehasish=C2=A0</div>
<div dir=3D"ltr"><br>
</div>
<div id=3D"gmail-m_-7099343062042280710ms-outlook-mobile-signature">Get <a =
href=3D"https://aka.ms/o0ukef" target=3D"_blank">
Outlook for iOS</a></div>
</div>
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

--000000000000ee82da05a37e8a6e--


--===============3543267015907553940==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3543267015907553940==--

