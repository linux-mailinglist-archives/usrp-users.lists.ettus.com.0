Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A64B930B443
	for <lists+usrp-users@lfdr.de>; Tue,  2 Feb 2021 01:45:45 +0100 (CET)
Received: from [::1] (port=39774 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l6jp8-0000S6-1g; Mon, 01 Feb 2021 19:45:42 -0500
Received: from mail-qv1-f51.google.com ([209.85.219.51]:40498)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1l6jp4-0000LK-5H
 for usrp-users@lists.ettus.com; Mon, 01 Feb 2021 19:45:38 -0500
Received: by mail-qv1-f51.google.com with SMTP id u20so5111921qvx.7
 for <usrp-users@lists.ettus.com>; Mon, 01 Feb 2021 16:45:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=D1Ydbi6l9z002sqexYffeIfUTEzzGNHV+o0grzVFh9Q=;
 b=Z9X4DC1LeVQ2cG/4TTaDWXyOc16FT0FxXv+LGhptveiOjSjuZjrGt9ac94KPKcKmVQ
 5oEYns3wBxaXLucD/Ee0Hk/sPAtArKMPC1J16vOJVmZiKPLZ8ggBaINmWFREnVXTbPkm
 992jnO+BhH3Sd/DfiI6YjDz10/USKeM7FLe7B7ovvptcM8pgdW/l4uRtdABPQiW7okZS
 i7gVey1ahCtQfKX1Sk7e3nVroiFkjrscjGPQtlPAEZb27qFVNQ9YotoHCVGPmo98VOZg
 QCXwHEquEd9JTwHWxqQohZo+uWTnppk8BPujlAPQS3m4OTNtOGzUMCzQS32La+Eq/IWh
 jj3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=D1Ydbi6l9z002sqexYffeIfUTEzzGNHV+o0grzVFh9Q=;
 b=EA1J4Tt+KC/uILo9VfZDJ8OsFoJjjhJ4bYQQRPwUh5jcttm8GCiJKpwK9wFbqBTZbe
 klDwIoUnfaq9OmeBMGsjF8yKqel5IyEcrvUVDxGZz0IDPRawzyH4EzW8Ka5gFyG271+/
 1ytf1vXZfhg/AtRQz4YDMU/xkcCA1ZyN/fEI6Pydrg/eq8YoMoNPFAPaAu6pbPvdTJ1h
 04UF1YYP5uXfb8pMa14Hf+LAC4sbAHKVHhdKDlnEVDd1A2EcNeLPe3GbtcxRBwZN1rpB
 r0d7fQAu26oH26WW8Y0+heysOewU8OXjQYK3mCUKmPENO3vyZPKpPKGey+LncOZ7vbcI
 tpiQ==
X-Gm-Message-State: AOAM533G9YxtDMIAYNZFR9BvNQUcp+wMmNRKHSgNWUU1GJr4gqxl/Bay
 0I4hg017HecRnHIqcEdwH+5fjK4TR0Y=
X-Google-Smtp-Source: ABdhPJxPk9FTBnnLF0eMYrg3BHrM2JfW9TvLX+qu+d3A05jjCnHkBfwLxK2D+qx8gKqlLOE//pIdig==
X-Received: by 2002:a0c:be15:: with SMTP id k21mr18269382qvg.8.1612226697425; 
 Mon, 01 Feb 2021 16:44:57 -0800 (PST)
Received: from [192.168.2.130]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.gmail.com with ESMTPSA id 9sm15553349qtr.64.2021.02.01.16.44.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 01 Feb 2021 16:44:56 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Mon, 1 Feb 2021 19:44:56 -0500
Message-Id: <24D1670E-9007-41CF-99CF-5F90B0A96D5A@gmail.com>
References: <CAB__hTQStkhRY1nLDuRrd51AGFabiCgzrJka8ky50F=bbp=pbQ@mail.gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
In-Reply-To: <CAB__hTQStkhRY1nLDuRrd51AGFabiCgzrJka8ky50F=bbp=pbQ@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
X-Mailer: iPhone Mail (18C66)
Subject: Re: [USRP-users] DPDK troubles (invalid ELF header loading dpdk
 library)
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============1018281612851044475=="
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


--===============1018281612851044475==
Content-Type: multipart/alternative; boundary=Apple-Mail-FCB70854-066B-43D1-A215-A917F120AC56
Content-Transfer-Encoding: 7bit


--Apple-Mail-FCB70854-066B-43D1-A215-A917F120AC56
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Unfortunately that=E2=80=99s one I can=E2=80=99t help with. I don=E2=80=99t h=
ave any DPDK capable machines at my disposal.=20

I vaguely recall that you have to be root for DPDK to work. Perhaps that=E2=80=
=99s the issue?

Sent from my iPhone

> On Feb 1, 2021, at 7:11 PM, Rob Kossler <rkossler@nd.edu> wrote:
>=20
> =EF=BB=BF
> I'm not convinced anything went wrong in the build of DPDK.  The build did=
n't indicate any problems.  But I wouldn't be surprised to find out that thi=
ngs aren't being installed where they are expected. =20
>=20
> In any case, I realized a mistake in my original post which accounts for t=
he discrepancy in the location of the library file mentioned in the error.  I=
 had been fooling with the uhd.conf setting for "dkdk_driver" which I had ch=
anged on one system but not the other.=20
>=20
> And most recently, I accidentally commented out this setting completely an=
d things seem to be better.  The new error is the following.  Not sure why I=
'm getting this error message.  Suggestions welcome.
>=20
> EAL: Detected 8 lcore(s)
> EAL: Detected 1 NUMA nodes
> EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
> EAL: No free hugepages reported in hugepages-1048576kB
> EAL: Probing VFIO support...
> EAL: VFIO support initialized
> [ERROR] [DPDK] No available DPDK devices (ports) found!
> EAL: FATAL: already called initialization.
> EAL: already called initialization.
>=20
>=20
>> On Mon, Feb 1, 2021 at 6:23 PM Marcus D. Leech via USRP-users <usrp-users=
@lists.ettus.com> wrote:
>> On 02/01/2021 06:15 PM, Rob Kossler via USRP-users wrote:
>>> Hi,
>>> I have 2 systems (each with host PC and N310) for which I'm having simil=
ar issues in trying to get DPDK up and running.  After going through the UHD=
 Manual DPDK instructions and DPDK app note, I am past the point at which th=
e "dpdk-devbind" seems to work fine, but I get the following error when I ru=
n benchmark_rate.
>>>=20
>>> I am running Ubuntu 20.04.LTS and installed DPDK 18.11.11 by downloading=
/building from source. I built UHD (latest 4.0) from source and it seemed ha=
ppy finding DPDK and building with DPDK support. It seems like a compatibili=
ty issue, but I can't figure it out. Any suggestions?
>>> Rob
>>>=20
>>> // *** this is the error on System 1
>>> EAL: /usr/local/lib/libdpdk.so: invalid ELF header
>>> EAL: FATAL: Cannot init plugins
>>> EAL: Cannot init plugins
>>>=20
>>> // this is the error on System 2 (nearly the same but different library)=

>>> EAL: /usr/local/share/dpdk/x86_64-native-linuxapp-gcc/lib//librte_pmd_ar=
k.a: invalid ELF header
>>> EAL: FATAL: Cannot init plugins
>>> EAL: Cannot init plugins
>>>=20
>>>=20
>> This would seem to indicate that something very horrible went wrong in th=
e build or DPDK--creating ELF headers that aren't correct for the
>>  type of hardware they're being used on.
>>=20
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-FCB70854-066B-43D1-A215-A917F120AC56
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Unfortunately that=E2=80=99s one I can=E2=80=
=99t help with. I don=E2=80=99t have any DPDK capable machines at my disposa=
l.&nbsp;<div><br></div><div>I vaguely recall that you have to be root for DP=
DK to work. Perhaps that=E2=80=99s the issue?<br><br><div dir=3D"ltr">Sent f=
rom my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Feb 1, 2=
021, at 7:11 PM, Rob Kossler &lt;rkossler@nd.edu&gt; wrote:<br><br></blockqu=
ote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"lt=
r">I'm not convinced anything went wrong in the build of DPDK.&nbsp; The bui=
ld didn't indicate any problems.&nbsp; But I wouldn't be surprised to find o=
ut that things aren't being installed where they are expected.&nbsp;&nbsp;<d=
iv><br></div><div>In any case, I realized a mistake in my original post whic=
h accounts for the discrepancy in the location of the library file mentioned=
 in the error.&nbsp; I had been fooling with the uhd.conf setting for "dkdk_=
driver" which I had changed on one system but not the other.&nbsp;</div><div=
><br></div><div>And most recently, I accidentally commented out this setting=
 completely and things seem to be better.&nbsp; The new error is the followi=
ng.&nbsp; Not sure why I'm getting this error message.&nbsp; Suggestions wel=
come.</div><div><br></div><div><font face=3D"monospace">EAL: Detected 8 lcor=
e(s)<br>EAL: Detected 1 NUMA nodes<br>EAL: Multi-process socket /var/run/dpd=
k/rte/mp_socket<br>EAL: No free hugepages reported in hugepages-1048576kB<br=
>EAL: Probing VFIO support...<br>EAL: VFIO support initialized<br><font colo=
r=3D"#ff0000">[ERROR] [DPDK] No available DPDK devices (ports) found!</font>=
<br>EAL: FATAL: already called initialization.<br>EAL: already called initia=
lization.<br></font></div><div><br></div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Feb 1, 2021 at 6:23 PM Marcu=
s D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">=
usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 02/01/2021 06:15 PM, Rob Kossler via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">Hi,<br>
        <div>I have 2 systems (each with host PC and N310) for which I'm
          having similar issues in trying to get DPDK up and running.&nbsp;
          After going through the UHD Manual DPDK instructions and DPDK
          app note, I am past the point at which the "dpdk-devbind"
          seems to work fine, but I get the following error when I run
          benchmark_rate.</div>
        <div><br>
        </div>
        <div>I am&nbsp;running&nbsp;Ubuntu 20.04.LTS and installed DPDK 18.1=
1.11
          by downloading/building from source. I built UHD (latest 4.0)
          from source and it seemed happy finding DPDK and building with
          DPDK support. It seems like a compatibility issue, but I can't
          figure it out. Any suggestions?</div>
        <div>Rob</div>
        <div><br>
        </div>
        <div><font face=3D"monospace">// *** this is the error on System 1</=
font></div>
        <div><font face=3D"monospace">EAL: /usr/local/lib/libdpdk.so:
            invalid ELF header<br>
            EAL: FATAL: Cannot init plugins<br>
            EAL: Cannot init plugins<br>
          </font></div>
        <div><font face=3D"monospace"><br>
          </font></div>
        <div><font face=3D"monospace">// this is the error on System 2
            (nearly the same but different library)</font></div>
        <div><font face=3D"monospace">EAL:
            /usr/local/share/dpdk/x86_64-native-linuxapp-gcc/lib//librte_pmd=
_ark.a:
            invalid ELF header<br>
            EAL: FATAL: Cannot init plugins<br>
            EAL: Cannot init plugins<br>
          </font></div>
        <div><br>
        </div>
      </div>
      <br>
    </blockquote>
    This would seem to indicate that something very horrible went wrong
    in the build or DPDK--creating ELF headers that aren't correct for
    the<br>
    &nbsp;type of hardware they're being used on.<br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@l=
ists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/listi=
nfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</div></blockquote></div></body></html>=

--Apple-Mail-FCB70854-066B-43D1-A215-A917F120AC56--


--===============1018281612851044475==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1018281612851044475==--

