Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD231E4B6C
	for <lists+usrp-users@lfdr.de>; Wed, 27 May 2020 19:08:23 +0200 (CEST)
Received: from [::1] (port=59464 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jdzXR-0006tS-2i; Wed, 27 May 2020 13:08:21 -0400
Received: from mail-qt1-f176.google.com ([209.85.160.176]:44876)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jdzXM-0006iQ-O7
 for USRP-users@lists.ettus.com; Wed, 27 May 2020 13:08:16 -0400
Received: by mail-qt1-f176.google.com with SMTP id c12so9912057qtq.11
 for <USRP-users@lists.ettus.com>; Wed, 27 May 2020 10:07:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=WuxICxpKgXRzyzMR7V3GZLOcchGafV5mg557hn7d1kI=;
 b=TbS6Dt7GoTWq+LzzFD9evd3RxHXSc653ujT/tYbv4E/284Kozaxdnw3FMyxqDaC0Id
 SeW0E0aFGhpAtY8zXiyNNRxq30lpCXFyySNdj+JreO2YkymwYr+vukGBWKPeWWWmAB6L
 02oqswjBdrRP70wWzwSp2IUVoUUacLJc0H0Y5CM+ZxU16aL4WV24jDq5INWSQOHOfhBJ
 We+xQR18GsMzaIhEE7ewzi/Pb9gLeMp0qcsuVpBeKGqE5mzXmrx5OdVeuxjaNHbKcG7o
 mscKZxGv/tdYIF98ue0hqcMki1DikUBdPGlEiLDezOL4iw0gIpBOA54GrQVy1UOLvk+j
 6trw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=WuxICxpKgXRzyzMR7V3GZLOcchGafV5mg557hn7d1kI=;
 b=jEmI/krt7kMF9YE/0J9MNKQeTTv0tU6y9IAeAaLWGsCdF3Da+julhGzIBoYq3yuw4W
 0P+VdDeeilhP2m5XEwAj/SBcNeehW3Be7m5dnSmvQbRNDltDJuw1m6MS2Lc9m38Y9rs5
 ciX9q29B7IzcuDWXyozetIG3KvhDYM8HPcr8SWvmSIyLwDEoLvzdfVEZv0HKYx9YNwiL
 npUFBGYpvUOlVEbI1GgCaAh4zw5rpQEuHjblPCx21qJuT3i+oQyIjVjPOCYnzdl16Nlm
 ZRRzartEnSK59K95HnbKG1yWCewxXrMklNaEgDj2S+DnUqSX/MvA6YwaHw0Ii1grRuDK
 fz5g==
X-Gm-Message-State: AOAM530+Xe35uvXlM1ZHIZhUxrnsGNEdQ3znBZ+flKe6ywbgB9TVxk6k
 eP39NOztri38Zu4Q7jHo2QM=
X-Google-Smtp-Source: ABdhPJyIecSETgD5hoCGB25jJuOIpx70Ejr13XukgeJvRTjp3Zk/4+wP1yNtSvM/CvvPozTzodnaVQ==
X-Received: by 2002:aed:2d44:: with SMTP id h62mr4800698qtd.167.1590599256122; 
 Wed, 27 May 2020 10:07:36 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-109.dsl.bell.ca.
 [174.95.14.109])
 by smtp.gmail.com with ESMTPSA id h5sm2669242qkk.108.2020.05.27.10.07.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 27 May 2020 10:07:35 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Wed, 27 May 2020 13:07:35 -0400
Message-Id: <C748A362-74E5-442B-AC2E-09AC104139DF@gmail.com>
References: <CADBWrHhNXXfDzx8gLT-d1ypATCFLznosSo4E=B9fkMRS1ThL+Q@mail.gmail.com>
In-Reply-To: <CADBWrHhNXXfDzx8gLT-d1ypATCFLznosSo4E=B9fkMRS1ThL+Q@mail.gmail.com>
To: Sam Reiter <sam.reiter8@gmail.com>
X-Mailer: iPhone Mail (17E262)
Subject: Re: [USRP-users] X310: control frontend with custom RFNoC blocks
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4605333103821972337=="
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


--===============4605333103821972337==
Content-Type: multipart/alternative; boundary=Apple-Mail-FB432EBA-C9B2-4380-ACD7-D65AF8C537F7
Content-Transfer-Encoding: 7bit


--Apple-Mail-FB432EBA-C9B2-4380-ACD7-D65AF8C537F7
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

I don=E2=80=99t know that much about RFNOC structure, but the tuning latency=
 is dominated by SPI transaction time, and the tome it takes the chips to tu=
ne to a new frequency.=20

That is much larger than the host and Ethernet side of things.=20

Doing what the host does to tune the chips (a bunch of math to set various r=
egisters) in the FPGA will consume a fair amount of real estate on the FPGA.=
=20

Sent from my iPhone

> On May 27, 2020, at 12:38 PM, Sam Reiter via USRP-users <usrp-users@lists.=
ettus.com> wrote:
>=20
> =EF=BB=BF
> David,
>=20
> Do you know ahead of time what the frequency sweeps are going to be, or do=
 you need to have your RFNoC block creating and scheduling them dynamically?=

>=20
> If you know your frequency sweep list ahead of time, a much easier techniq=
ue would be for you to send your tune requests from host to radio as timed c=
ommands. This way you can queue up hops that will execute at a precise times=
tamp in your data  stream. Depending on the length of your frequency list, y=
ou may need to expand the size of the command queue in your FPGA image, but t=
hat would be a much more manageable task than creating a block that construc=
ts and issues commands.=20
>=20
> -Sam
>=20
>> On Wed, May 27, 2020 at 7:04 AM Haberleitner David - S1810567006 via USRP=
-users <usrp-users@lists.ettus.com> wrote:
>> Hi everyone,
>>=20
>>=20
>>=20
>> for our project we would like to control frontend settings directly from t=
he hardware to perform fast frequency sweeps.
>> Is there a way to do that?
>>=20
>>=20
>>=20
>> =46rom out research it seems that the frontend chips (UBX160 in our case)=
 are controlled via a SPI register in the Radio-NoC block. But we haven't fi=
gured out how to control this register from our custom block (via the Comman=
d Interface?).
>>=20
>>=20
>>=20
>> Thanks,
>> David
>>=20
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-FB432EBA-C9B2-4380-ACD7-D65AF8C537F7
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">I don=E2=80=99t know that much about RFNOC s=
tructure, but the tuning latency is dominated by SPI transaction time, and t=
he tome it takes the chips to tune to a new frequency.&nbsp;<div><br></div><=
div>That is much larger than the host and Ethernet side of things.&nbsp;</di=
v><div><br></div><div>Doing what the host does to tune the chips (a bunch of=
 math to set various registers) in the FPGA will consume a fair amount of re=
al estate on the FPGA.&nbsp;<br><br><div dir=3D"ltr">Sent from my iPhone</di=
v><div dir=3D"ltr"><br><blockquote type=3D"cite">On May 27, 2020, at 12:38 P=
M, Sam Reiter via USRP-users &lt;usrp-users@lists.ettus.com&gt; wrote:<br><b=
r></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<di=
v dir=3D"ltr">David,<div><br></div><div>Do you know ahead of time what the f=
requency sweeps are going to be, or do you need to have your RFNoC block cre=
ating and scheduling them dynamically?</div><div><br></div><div>If you know y=
our frequency sweep list ahead of time, a much easier technique would be for=
 you to send your tune requests from host to radio as timed commands. This w=
ay you can queue up hops that will execute at a precise timestamp in your da=
ta&nbsp; stream. Depending on the length of your frequency list, you may nee=
d to expand the size of the command queue in your FPGA image, but that would=
 be a much more manageable task than creating a block that constructs and is=
sues commands.&nbsp;</div><div><br></div><div>-Sam</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 27, 2020 a=
t 7:04 AM Haberleitner David - S1810567006 via USRP-users &lt;<a href=3D"mai=
lto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr" style=3D"font-size:12pt;color:rgb(0,0,0);background-color:r=
gb(255,255,255);font-family:Calibri,Arial,Helvetica,sans-serif">
<p>Hi everyone,</p>
<p><br>
</p>
<p>for our project we would like to control frontend settings directly from t=
he hardware to perform fast frequency sweeps.<br>
Is there a way to do that?</p>
<p><br>
</p>
<p>=46rom out research it seems that the frontend chips (UBX160 in our case)=
 are controlled via a SPI register in the Radio-NoC block. But we haven't fi=
gured out how to control this register from our custom block (via the Comman=
d Interface?).</p>
<p><br>
</p>
<p>Thanks,<br>
David<br>
</p>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@l=
ists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/listi=
nfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list</span><br><span>USRP-users@lists.ettus.com</span><br><span=
>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><b=
r></div></blockquote></div></body></html>=

--Apple-Mail-FB432EBA-C9B2-4380-ACD7-D65AF8C537F7--


--===============4605333103821972337==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4605333103821972337==--

