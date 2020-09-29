Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F5B27D4F3
	for <lists+usrp-users@lfdr.de>; Tue, 29 Sep 2020 19:52:05 +0200 (CEST)
Received: from [::1] (port=54944 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kNJnI-000392-MF; Tue, 29 Sep 2020 13:52:04 -0400
Received: from mail-qk1-f180.google.com ([209.85.222.180]:35645)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kNJnE-0002w9-8p
 for USRP-users@lists.ettus.com; Tue, 29 Sep 2020 13:52:00 -0400
Received: by mail-qk1-f180.google.com with SMTP id q5so5212056qkc.2
 for <USRP-users@lists.ettus.com>; Tue, 29 Sep 2020 10:51:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=9wIwfKnoRtd0eta6YbQf7dFIFFMQCIFo/5yNuqDKpW4=;
 b=vJAmMAnY8eor0JwTcHQJG6uw6a4mYJA16KLkVTHde+Vlo8adk0xswN7LaQ+4N2Wpu+
 oV3cBNpDgv6iUHQOGRU1xodx7HcGASumOC5qSpcL/6NIlvC/LSVX6eYXHVmqPhS9PRQ7
 SMQfiP7c+MZSuCvPpNMyV8kZ9ET1y5P+Ytm6hvrT53ls/aHjdjInmGl6PAUkgb0q2STO
 6/vKrZ8qj3DtoPDWddKpoEv7P7/UReiLzSxUboT7g+LIdt+BSNI8zxTwX6ZJYeMsHft1
 M7RbpsiHwBVHu2JFMjLMpXDsDOPVJ09U8I7OrwusIT0aQAzAEtsxUCaDRQvjvQlgm+bz
 VQFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=9wIwfKnoRtd0eta6YbQf7dFIFFMQCIFo/5yNuqDKpW4=;
 b=h7y0LvK43j3WeNJJp5tzS6C5sN1Ds61TBNz2YyiSR/fkz/vJABCyZk5d+lIlxaLrj6
 bKN2ERxTLQb8U13+Ul8ief31RY7J+Kro2xjzvZlf+gdnsjDsmZGEwaBvhRqX39eurVZv
 jLBbviKXeDZwPRom83pDNj0ceMvuSEszxE7fOKVMrhY5nZw8CI4FaaZRBcrrPUHlAFTB
 dic1Ke4Vhv7Dbhc8Pt7DHo3OQaJIAmJMI1temriwuNWlQOcNeRU9YdYyydvLFgQGi5Ei
 akAPLN5ZJh6WCrE0RVKZ1wOfFfdC9AekR0GAgfHyYsrMgC98zIJv7MC8HHatcRIDhHh4
 ukHQ==
X-Gm-Message-State: AOAM530EGqKj6dSHBrzlk57J072937Vf72f3ExnmR2xF6f8z7m5zu63o
 V833ku95RZ4m3Ih9yqHKwyet7jtjWbF93w==
X-Google-Smtp-Source: ABdhPJx1ZG11U0yyYMJL0KyrP/XqJ1rpAE6enK/QxZchUoqhXx+KKrO8tFcpPUw1dE/GvhWYNWUcCQ==
X-Received: by 2002:a37:2d06:: with SMTP id t6mr5425788qkh.308.1601401879651; 
 Tue, 29 Sep 2020 10:51:19 -0700 (PDT)
Received: from [192.168.2.29]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.gmail.com with ESMTPSA id z2sm5391315qkg.40.2020.09.29.10.51.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 29 Sep 2020 10:51:19 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Tue, 29 Sep 2020 13:51:18 -0400
Message-Id: <1B286BD5-53D8-411C-84CC-0E0B6F2962ED@gmail.com>
References: <DM6PR12MB306787C9B650A03D7A2CAF878C320@DM6PR12MB3067.namprd12.prod.outlook.com>
Cc: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
In-Reply-To: <DM6PR12MB306787C9B650A03D7A2CAF878C320@DM6PR12MB3067.namprd12.prod.outlook.com>
To: Mark Koenig <mark.koenig@iubelttechnologies.com>
X-Mailer: iPhone Mail (17H35)
Subject: Re: [USRP-users] TWINRX Gain
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
Content-Type: multipart/mixed; boundary="===============3354509583659089466=="
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


--===============3354509583659089466==
Content-Type: multipart/alternative; boundary=Apple-Mail-EB02511C-8DA2-4117-A580-22F226985D76
Content-Transfer-Encoding: 7bit


--Apple-Mail-EB02511C-8DA2-4117-A580-22F226985D76
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

It=E2=80=99s the gain control range. Not the absolute gain. I don=E2=80=99t k=
now of the top of my head how much of that range is gain and how much is att=
enuation.=20



Sent from my iPhone

> On Sep 29, 2020, at 1:43 PM, Mark Koenig via USRP-users <usrp-users@lists.=
ettus.com> wrote:
>=20
> =EF=BB=BF
> The TwinRx daughtercard identifies as having 0-93dB gain range.  Is this t=
rue?  If I dial in 90dB am I truly getting 90dB of gain and my incoming sign=
al is amplified that much or is there some sort of offset and the gain range=
 is something different?  I believe the UBX-160 offers 0-31.5dB.
>=20
> Thanks
>=20
> Mark
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-EB02511C-8DA2-4117-A580-22F226985D76
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">It=E2=80=99s the gain control range. Not th=
e absolute gain. I don=E2=80=99t know of the top of my head how much of that=
 range is gain and how much is attenuation.&nbsp;<div><br></div><div><br><br=
><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote t=
ype=3D"cite">On Sep 29, 2020, at 1:43 PM, Mark Koenig via USRP-users &lt;usr=
p-users@lists.ettus.com&gt; wrote:<br><br></blockquote></div><blockquote typ=
e=3D"cite"><div dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-1=
">



<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
The TwinRx daughtercard identifies as having 0-93dB gain range.&nbsp; Is thi=
s true?&nbsp; If I dial in 90dB am I truly getting 90dB of gain and my incom=
ing signal is amplified that much or is there some sort of offset and the ga=
in range is something different?&nbsp; I believe
 the UBX-160 offers 0-31.5dB.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
Thanks</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
Mark</div>


<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list</span><br><span>USRP-users@lists.ettus.com</span><br><span=
>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><b=
r></div></blockquote></div></body></html>=

--Apple-Mail-EB02511C-8DA2-4117-A580-22F226985D76--


--===============3354509583659089466==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3354509583659089466==--

