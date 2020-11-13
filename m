Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B972B20D0
	for <lists+usrp-users@lfdr.de>; Fri, 13 Nov 2020 17:49:38 +0100 (CET)
Received: from [::1] (port=40750 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kdcGT-0002f7-4B; Fri, 13 Nov 2020 11:49:33 -0500
Received: from mail-qk1-f182.google.com ([209.85.222.182]:40645)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kdcGP-0002a1-ON
 for USRP-users@lists.ettus.com; Fri, 13 Nov 2020 11:49:29 -0500
Received: by mail-qk1-f182.google.com with SMTP id y197so9346842qkb.7
 for <USRP-users@lists.ettus.com>; Fri, 13 Nov 2020 08:49:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=+SM9tEl/A4wikby2pzird9xuCLltkmuS3MhuTKFKJSQ=;
 b=iWM84ShSQycuEzbmlFCIsjcB8PJy13JJdqJiKZK4u1ukkLrPgj48j2dS9ygMA08K4F
 fcx9hYEZeiNMkzlwNSZuiux3CV/z+217pq76w2NZx1ZdXfv8BNX2erfZyqFXzQYyriAx
 O332lV1g1HF2gJzo4SVJHi4atx4eixTosQf0UXEEbI2wY4jRild3b5PMFW4eZkltYZ/i
 yv9OnKgQOlCfmQ66Z8xGWwZyirBGjC6Di8OOqkqoMqdMeesk+Pg5xCgV4fEDPbwLLoTI
 LATDC2YLhgpKyhFubNAJqn2wBj35wf4SfOr87glHZAoyLxOmlgJ/xVgKLzYOwohC3iDu
 ge9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=+SM9tEl/A4wikby2pzird9xuCLltkmuS3MhuTKFKJSQ=;
 b=c6kojfPOtPVNcassLff6LPSNosDNyngjVSov3AJHp02xi7LHlL4b7YXdahYra/jVji
 RvJ1TOaR9NnpQifpzcTqce+h6/Wkobu/brOXItLCkMq0pXuBU5KtMfsIlKSLHbR3j7fU
 QObhpp3vgpbXGctW0UOhMEKEYChcOZK2WDNqZ6HWUQdyaEC/PEFXMrJD0xLUbONiVLMw
 llwWQvhziWiSWPBvV9GxrSrVwMhV124dMhtq61kl847qp9uS7/Tw6KN8z3bL/3Rg9mJh
 X3dwDZ4qdNCfHfalrlEBIdLOM3hV1zv2NGE+IvAVbtAvNnsoN1Of4ItoF+/O44auZ/eN
 MmkA==
X-Gm-Message-State: AOAM533RnzzLqgIYpXlmlN2awZeaFKsi/BWSSuHy9vYnOJRZAygwzlU0
 C64j3rG6oFqfzou1WI0l4jmhBurolf4=
X-Google-Smtp-Source: ABdhPJzLTXS9NRSF/n2HMyCsVdb048BulObIaWHARhnrW3jexiJ1lZKyUpXq6Pms0AlT7TqaVVg3cw==
X-Received: by 2002:a37:a88f:: with SMTP id r137mr3027204qke.437.1605286125273; 
 Fri, 13 Nov 2020 08:48:45 -0800 (PST)
Received: from [192.168.2.132]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.gmail.com with ESMTPSA id h129sm7001992qkd.35.2020.11.13.08.48.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 13 Nov 2020 08:48:44 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Fri, 13 Nov 2020 11:48:43 -0500
Message-Id: <F834F091-8726-41FA-B042-156748A94CED@gmail.com>
References: <CANzM3hyagyYSkoj2aG2jPy11GHZvGPH810C26-LbukegnSpWzg@mail.gmail.com>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <CANzM3hyagyYSkoj2aG2jPy11GHZvGPH810C26-LbukegnSpWzg@mail.gmail.com>
To: Arash Jafari <arash.jafari.telecom@gmail.com>
X-Mailer: iPhone Mail (18A8395)
Subject: Re: [USRP-users] (no subject)
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
Content-Type: multipart/mixed; boundary="===============0708933053461362821=="
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


--===============0708933053461362821==
Content-Type: multipart/alternative; boundary=Apple-Mail-6DB1C35D-78F3-44D9-8C85-E20E89C057AD
Content-Transfer-Encoding: 7bit


--Apple-Mail-6DB1C35D-78F3-44D9-8C85-E20E89C057AD
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

You=E2=80=99ll need to use timed commands for tuning, in order to phase alig=
n the LOs.=20

Unfortunately there is no direct support for this in GRC. So you=E2=80=99ll h=
ave to edit the output code from GRC to change you tuning functions.=20



Sent from my iPhone

> On Nov 13, 2020, at 8:08 AM, Arash Jafari via USRP-users <usrp-users@lists=
.ettus.com> wrote:
>=20
> =EF=BB=BF
> Dear all,
>=20
> I have an issue with the X310: when recording a CW signal at 430MHz with g=
nuRadio (version3.8.2.0) the phase relation of the two channels is not const=
ant. Every time I start the recording (the same signal is applied) a differe=
nt phase is displayed. What is wrong with the setup?
> I have already tried to set the clock rate of the subdevice (2x UBX-160) t=
o 20MHz, it did not help.
> =20
> =20
> <image.png>
>=20
> <image.png>
>=20
> <image.png>
>=20
>=20
> =20
>=20
> Kind Regards
> -----------------------------------------=20
> Dipl.-Ing. Arash Jafari=20
>=20
> Phone: +43 650 844 3617
> E-mail: arash.jafari.telecom@gmail.com
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-6DB1C35D-78F3-44D9-8C85-E20E89C057AD
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">You=E2=80=99ll need to use timed commands f=
or tuning, in order to phase align the LOs.&nbsp;<div><br></div><div>Unfortu=
nately there is no direct support for this in GRC. So you=E2=80=99ll have to=
 edit the output code from GRC to change you tuning functions.&nbsp;</div><d=
iv><br></div><div><br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=
=3D"ltr"><br><blockquote type=3D"cite">On Nov 13, 2020, at 8:08 AM, Arash Ja=
fari via USRP-users &lt;usrp-users@lists.ettus.com&gt; wrote:<br><br></block=
quote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"=
ltr"><p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;=
font-family:Calibri,sans-serif"><span lang=3D"EN-GB">Dear all,</span></p><p c=
lass=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font-fami=
ly:Calibri,sans-serif"><span lang=3D"EN-GB"><br></span></p><p class=3D"MsoNo=
rmal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font-family:Calibri,sa=
ns-serif"><span style=3D"font-size:11pt">I have an
issue with the X310: when recording a CW signal at 430MHz with gnuRadio
(version3.8.2.0) the phase relation of the two channels is not constant. Eve=
ry
time I start the recording (the same signal is applied) a different phase is=
 displayed. What is wrong with the setup?</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font-=
family:Calibri,sans-serif"><span lang=3D"EN-GB">I have
already tried to set the clock rate of the subdevice (2x UBX-160) to 20MHz, i=
t
did not help.</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font-=
family:Calibri,sans-serif"><span lang=3D"EN-GB">&nbsp;</span></p><p class=3D=
"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font-family:Cali=
bri,sans-serif"><span lang=3D"EN-GB"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font-=
family:Calibri,sans-serif">&nbsp;</p><div><div>&lt;image.png&gt;</div><br></=
div><div><div><div>&lt;image.png&gt;</div><br></div></div><div><div><div>&lt=
;image.png&gt;</div><br></div></div>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font-=
family:Calibri,sans-serif"><br></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font-=
family:Calibri,sans-serif">&nbsp;</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font-=
family:Calibri,sans-serif"><img width=3D"0" height=3D"0" style=3D"margin-rig=
ht: 0px;" data-unique-identifier=3D""></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font-=
family:Calibri,sans-serif"><span lang=3D"EN-GB">Kind
Regards</span></p><div>-----------------------------------------&nbsp;<br></=
div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signa=
ture"><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"lt=
r"><span style=3D"color:rgb(0,0,0);font-family:monospace,monospace">Dipl.-In=
g. Arash Jafari</span><font face=3D"monospace, monospace" color=3D"#000000" s=
ize=3D"2">&nbsp;</font><div><br></div><font color=3D"#000000" size=3D"2"><sp=
an style=3D"font-family:monospace">Phone: +43 650 844 3617</span><br clear=3D=
"none" style=3D"font-family:monospace"></font><div><span style=3D"font-famil=
y:monospace"><font color=3D"#000000" size=3D"2">E-mail: <a href=3D"mailto:ar=
ash.jafari.telecom@gmail.com" target=3D"_blank">arash.jafari.telecom@gmail.c=
om</a></font></span></div></div></div></div></div></div></div></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list</span><br><span>USRP-users@lists.ettus.com</span><br><span=
>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><b=
r></div></blockquote></div></body></html>=

--Apple-Mail-6DB1C35D-78F3-44D9-8C85-E20E89C057AD--


--===============0708933053461362821==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0708933053461362821==--

