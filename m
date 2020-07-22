Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 23784229FBF
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jul 2020 21:01:50 +0200 (CEST)
Received: from [::1] (port=53720 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jyJzu-0000M1-CS; Wed, 22 Jul 2020 15:01:46 -0400
Received: from mail-oi1-f171.google.com ([209.85.167.171]:37261)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1jyJzq-0000DO-BS
 for usrp-users@lists.ettus.com; Wed, 22 Jul 2020 15:01:42 -0400
Received: by mail-oi1-f171.google.com with SMTP id 12so2814216oir.4
 for <usrp-users@lists.ettus.com>; Wed, 22 Jul 2020 12:01:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lXZ4VyqohsNnfnpPo+ltMgG5/Fis2aqgjIGY+bWKvcE=;
 b=PQcQV8FeiC92nwPJE5nyUmBVeQ48sXXfrr+O9fzTQMwZEFNntd3tsSw7h2Ad0IHRdo
 F3qPeT7hUrIiIecGADkWUlgCtwlE3vW5E1UYWhQVMDB8mGhARJlM3ItUdETv/SLe22ZM
 vU+eYsRBpGYGomMMquitfpEOt4KJFEasaeaT157vBW3lb3yOM0iDvfwSudc2vDpeg/oA
 xEUjV9PAq1MMVpgEChdm1/4cLmXce6d0MSke6P27EDxiAUna0DbrmPpRuUHr1roktpty
 KoqLXQfGDpEkHBLs5DrTcHdICUhraxHa74s5CtGm1UoI2CjTIZJXVVNLmFCVT8FDfgkX
 x8Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lXZ4VyqohsNnfnpPo+ltMgG5/Fis2aqgjIGY+bWKvcE=;
 b=dUGWQXLefaYdI/DMn1afNSN3U8gPJhxPUzMbiIbbJmDxwzajVPZOA7x5CX9L0bGyUs
 Y90q3z9tUjpnPPNDUDky1HgO4+SBUTsqzq7CXefDN0bZqVGw09JqPkC/5oQPqtL01+ti
 BG0Sy5eEVUkwCmqVsPt6SvhEPQG5Aey9G02qka8AhaDDg01gETvMJM+AYVddncWlSiY1
 4WcumnWZZbfZjHubeiSz1vJGQNu5SU9yVELdq4ZoqzQ78zLjoqXKT4h59lWsP8lZ0PeX
 klPlSNWu++c1lcVlIZJdEGgrhP9w2KVX6BiTM25s2tFzmJV9dDiNWf9iRfseSk5aprt4
 l9Yg==
X-Gm-Message-State: AOAM530IjrD1Rdxgnv5cgYiZNihhVpJnm8cg9IQs6bDpgS0ZzioBu6B3
 gviWABUFY8y/t4d2vmHzbHwPIxcr/IfQAy+MT8KTpw==
X-Google-Smtp-Source: ABdhPJzd1Sq69LD7+8x5epJnQdi+bXLttltJWcy7N9aI8f0rMM7+j81sRG6uVH4apWT+5nnHrCfxrDTQmCn2EHqIv5A=
X-Received: by 2002:aca:2405:: with SMTP id n5mr906737oic.124.1595444461006;
 Wed, 22 Jul 2020 12:01:01 -0700 (PDT)
MIME-Version: 1.0
References: <10F7328F6AD1354BA6DD787687B66B9001A97A9F6D@Maui.in.dynetics.com>
 <5F1713D5.5020101@gmail.com>
In-Reply-To: <5F1713D5.5020101@gmail.com>
Date: Wed, 22 Jul 2020 15:00:50 -0400
Message-ID: <CAB__hTRLLu59u2gZfQmw8yi09+uXYWy+nq5rxVJ4LArBope4kA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] X310 with DPDK
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
Content-Type: multipart/mixed; boundary="===============3293449555519440914=="
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

--===============3293449555519440914==
Content-Type: multipart/alternative; boundary="0000000000005bbc4f05ab0c5c2d"

--0000000000005bbc4f05ab0c5c2d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I have used DPDK with the X310.  I don't recall specifically, but I'm
pretty sure you either...
a) don't specify mgmt_addr, or
b) specify it the same as addr


On Tue, Jul 21, 2020 at 12:12 PM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 07/21/2020 10:53 AM, Carmichael, Ryan via USRP-users wrote:
>
> On the DPDK page (https://files.ettus.com/manual/page_dpdk.html) the
> following statement is made:
>
>
>
> =E2=80=9CDevice discovery via DPDK is not currently implemented, so the d=
evice
> args mgmt_addr, addr, and second_addr (if applicable) must all be
> specified at runtime. There is no mechanism for MPM's TCP/IP control
> traffic to flow over a link that is occupied by DPDK, so mgmt_addr must
> point to a link that is not used for CHDR, such as N310's RJ45 port.=E2=
=80=9D
>
>
>
> I=E2=80=99ve been using the X310 without DPDK with dual 10Gb SPI/SFP+ con=
nections
> (192.168.30.2, 192.168.40.2). Once I start DPDK, ifconfig no longer shows
> the NICs at all, which I assume is what it is supposed to be doing. My
> question is, what is the =E2=80=98mgmt_addr=E2=80=99 ? I=E2=80=99ve never=
 used it before when using
> the X310. And how do I make sure the mgmt_addr isn=E2=80=99t using a CHDR=
 link? The
> X310 only has two RJ45s, right =E2=80=93 and they=E2=80=99re both being u=
sed by DPDK.
>
>
>
> Thanks,
>
> -          Ryan
>
>
>
>
>
>
>
>
>
>
>
>
> *Ignore my last. Yes, the X310 has only the two ports.   I was suffering
> from cognitive pollution between the N310 and X310. So, this is an
> excellent point.   I don't use DPDK myself, since my hosts don't have the
> right NICs, and it's really only justified for very high   sample rates.
> Also, X310 is not an MPM device, so the comments about MPM traffic aren't
> relevant to X310 as far as I know. *
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000005bbc4f05ab0c5c2d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have used DPDK with the X310.=C2=A0 I don&#39;t recall s=
pecifically, but I&#39;m pretty sure you either...<div>a) don&#39;t specify=
 mgmt_addr, or</div><div>b) specify it the same as addr</div><div><br></div=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Tue, Jul 21, 2020 at 12:12 PM Marcus D. Leech via USRP-users &lt;<a hre=
f=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 07/21/2020 10:53 AM, Carmichael,
      Ryan via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
     =20
     =20
      <div>
        <p class=3D"MsoNormal">On the DPDK page (<a href=3D"https://files.e=
ttus.com/manual/page_dpdk.html" target=3D"_blank">https://files.ettus.com/m=
anual/page_dpdk.html</a>)
          the following statement is made:<u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:=
Arial,sans-serif;color:black;background:white">=E2=80=9CDevice
            discovery via DPDK is not currently implemented, so the
            device args=C2=A0</span><code><span style=3D"font-size:10.5pt;c=
olor:black;background:white">mgmt_addr</span></code><span style=3D"font-siz=
e:10.5pt;font-family:Arial,sans-serif;color:black;background:white">,=C2=A0=
</span><code><span style=3D"font-size:10.5pt;color:black;background:white">=
addr</span></code><span style=3D"font-size:10.5pt;font-family:Arial,sans-se=
rif;color:black;background:white">,
            and=C2=A0</span><code><span style=3D"font-size:10.5pt;color:bla=
ck;background:white">second_addr</span></code><span style=3D"font-size:10.5=
pt;font-family:Arial,sans-serif;color:black;background:white">=C2=A0(if
            applicable) must all be specified at runtime. There is no
            mechanism for MPM&#39;s TCP/IP control traffic to flow over a
            link that is occupied by DPDK, so mgmt_addr must point to a
            link that is not used for CHDR, such as N310&#39;s RJ45 port.=
=E2=80=9D<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:=
Arial,sans-serif;color:black;background:white"><u></u>=C2=A0<u></u></span><=
/p>
        <p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:=
Arial,sans-serif;color:black;background:white">I=E2=80=99ve
            been using the X310 without DPDK with dual 10Gb SPI/SFP+
            connections (192.168.30.2, 192.168.40.2). Once I start DPDK,
            ifconfig no longer shows the NICs at all, which I assume is
            what it is supposed to be doing. My question is, what is the
            =E2=80=98mgmt_addr=E2=80=99 ? I=E2=80=99ve never used it before=
 when using the X310.
            And how do I make sure the mgmt_addr isn=E2=80=99t using a CHDR
            link? The X310 only has two RJ45s, right =E2=80=93 and they=E2=
=80=99re both
            being used by DPDK.</span><u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal">Thanks,<u></u><u></u></p>
        <p><span>-<span>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0
            </span></span>Ryan<u></u><u></u></p>
      </div>
      <i></i><br>
    </blockquote>
    <i>Ignore my last.<br>
      <br>
      Yes, the X310 has only the two ports.=C2=A0=C2=A0 I was suffering fro=
m
      cognitive pollution between the N310 and X310.<br>
      <br>
      So, this is an excellent point.=C2=A0=C2=A0 I don&#39;t use DPDK myse=
lf, since
      my hosts don&#39;t have the right NICs, and it&#39;s really only just=
ified
      for very high<br>
      =C2=A0 sample rates.<br>
      <br>
      Also, X310 is not an MPM device, so the comments about MPM traffic
      aren&#39;t relevant to X310 as far as I know.<br>
      <br>
      <br>
      <br>
    </i>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000005bbc4f05ab0c5c2d--


--===============3293449555519440914==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3293449555519440914==--

