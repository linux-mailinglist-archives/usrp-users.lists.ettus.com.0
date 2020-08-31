Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 20644257E2F
	for <lists+usrp-users@lfdr.de>; Mon, 31 Aug 2020 18:07:15 +0200 (CEST)
Received: from [::1] (port=34884 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kCmKu-0005m7-68; Mon, 31 Aug 2020 12:07:12 -0400
Received: from mail-oi1-f176.google.com ([209.85.167.176]:45803)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1kCmKq-0005fZ-Gt
 for usrp-users@lists.ettus.com; Mon, 31 Aug 2020 12:07:08 -0400
Received: by mail-oi1-f176.google.com with SMTP id d189so1380007oig.12
 for <usrp-users@lists.ettus.com>; Mon, 31 Aug 2020 09:06:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2PM1A9e8SS4QsdpsVW9bRrO6iiEMtpEg7p/CJegy9xY=;
 b=NyVyRMc4ZtwJ+OZapZq1p/Se/ciYNk68G61mAJ0iG/VIQ4bjxGV/MmQ6uIxFM6AIM5
 kwl0FD2qlSJpJhJKoUxd8r9nKUeYeLyg5nRQfs5nc37ranfivAax8JFLd0XUPXQs63V7
 YUyWH5vNRtNW8dCiSW6S6Arep9fIvEu/mnA+fuetozM8KtOk2hYY09U+fHdFiWdWCEuq
 +v5OUCe3ZbRB9aYFVqBCZf5sHOhA2m2fjmqUxS9NsGj1P+LVkmh/zSK7WJtqQhYZO0hM
 yXvr5RlnJ8hFCvdpLvDpQhSZ4HU465uUTgijt1BomyCQhxFVqVVPzmW4vLN/pzpCukqI
 NKOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2PM1A9e8SS4QsdpsVW9bRrO6iiEMtpEg7p/CJegy9xY=;
 b=JHjm2nWEgcWU6tR6tTRREsxk36V2H18YdgovnvbO5TxVGomN+GYvhIv3zvw4xH7yQi
 5BFsA4HJAv7Ek7gUlGwoo9+rNmyZF4AiXg6IPTpnUjEV1HhJSznFm1qOEsXyHI86M+x0
 11OCjKBZeXP9TKitJHMj6p1d7HClqkT6c2DztB53dNfVHgpf79YFhpSd8ZkvGDAyxuqj
 eJNaqpF7ILIIgsI2LaiCW9HeJP9qnjbe2J3tr6R9f1yyGY9QbGu1Bz6LsxSWHDaVPkAo
 hqPJjjBYHKbt7GnwOoIq6GnI//X+Za1daYwrMoVQnw5pwYru4dfAV0jRwOn40/BScOUT
 U5vQ==
X-Gm-Message-State: AOAM532kcC2bAJaYRI5CwAmE7fYupojWmf1K9lxQmlz94oBlRgMT9L6b
 HC1m08WXo49COz5WCDJA5TbksEwUc1CaQQ3/zk+axvJgwkOPhw==
X-Google-Smtp-Source: ABdhPJxBG+liwX21fiOMdNtJ79CKXW8153yjjhO7sJqgSrhF96W+O6u4eWgQ6tk5YgewX/WBu7kgBq+/GzuUDEhQLro=
X-Received: by 2002:a05:6808:b37:: with SMTP id
 t23mr67002oij.174.1598889987653; 
 Mon, 31 Aug 2020 09:06:27 -0700 (PDT)
MIME-Version: 1.0
References: <BN6PR2201MB1555037426D1EE0520DFCD86C84B0@BN6PR2201MB1555.namprd22.prod.outlook.com>
In-Reply-To: <BN6PR2201MB1555037426D1EE0520DFCD86C84B0@BN6PR2201MB1555.namprd22.prod.outlook.com>
Date: Mon, 31 Aug 2020 18:06:16 +0200
Message-ID: <CAHrJaSU23bUHoM6B0hoRDwDXF61vRem18fzY+eDOJmVXbNFizQ@mail.gmail.com>
To: Benjamin R Nold <bnold@purdue.edu>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] N310 10G ethernet media converters
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
From: =?utf-8?q?Marcus_M=C3=BCller_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
Content-Type: multipart/mixed; boundary="===============2485713381599863188=="
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

--===============2485713381599863188==
Content-Type: multipart/alternative; boundary="000000000000bfd52305ae2e9545"

--000000000000bfd52305ae2e9545
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear Benjamin,

I'm sorry this lay dormant for so long:
Generally, all standards-compliant 10GBase-* SFP+ transceivers are usable
with the USRP X3xx and N3xx series =E2=80=93 these ports are directly attac=
hed to
an ethernet MAC on the FPGA, and that's really not picky.
30 m sounds like like 10GBase-SR over OM3 fiber. (Coincidentally, that's
what I use to connect my X310 to my workstation in my living room. It works
well.)
The transceivers: Transceivers of the same standard should be compatible,
but since you'll buy both sides at once, you probably really don't have to
worry. The ones I use privately I've got off ebay, and even these work well=
.
If you also need to shop for Network cards: Well, I've got the Intel
X520-DA2 (which is the one sold by Ettus), but any network card should do =
=E2=80=93
a recommendation is that it's not too old, and if you want to use the DPDK
transport, that it's supported by that (most modern cards are).

Best regards,
Marcus

On Wed, Aug 5, 2020 at 8:59 PM Benjamin R Nold via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi USRP Useres,
>
> I am planning on using a N310 in a system where I need to run a 10G
> ethernet connection about 30 m outside. I am thinking a good option is to
> use an optical connection to do this. What SFP+ adapters to optical are
> compatible with the N310? Are there any pitfalls/limitations when using a
> SFP+ to optical converter? Do I need to consider anything extra when
> selecting a 10G ethernet adapter for my host PC?
>
> Thanks,
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000bfd52305ae2e9545
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Dear Benjamin, <br></div><div><br></div><div>I&#39;m =
sorry this lay dormant for so long:</div><div>Generally, all standards-comp=
liant 10GBase-* SFP+ transceivers are usable with the USRP X3xx and N3xx se=
ries =E2=80=93 these ports are directly attached to an ethernet MAC on the =
FPGA, and that&#39;s really not picky.</div><div>30 m sounds like like 10GB=
ase-SR over OM3 fiber. (Coincidentally, that&#39;s what I use to connect my=
 X310 to my workstation in my living room. It works well.)</div><div>The tr=
ansceivers: Transceivers of the same standard should be compatible, but sin=
ce you&#39;ll buy both sides at once, you probably really don&#39;t have to=
 worry. The ones I use privately I&#39;ve got off ebay, and even these work=
 well.</div><div>If you also need to shop for Network cards: Well, I&#39;ve=
 got the Intel X520-DA2 (which is the one sold by Ettus), but any network c=
ard should do =E2=80=93 a recommendation is that it&#39;s not too old, and =
if you want to use the DPDK transport, that it&#39;s supported by that (mos=
t modern cards are).</div><div><br></div><div>Best regards,</div><div>Marcu=
s<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Wed, Aug 5, 2020 at 8:59 PM Benjamin R Nold via USRP-users &l=
t;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Hi USRP Useres,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I am planning on using a N310 in a system where I need to run a 10G etherne=
t connection about 30 m outside. I am thinking a good option is to use an o=
ptical connection to do this. What SFP+ adapters to optical are compatible =
with the N310? Are there any pitfalls/limitations
 when using a SFP+ to optical converter? Do I need to consider anything ext=
ra when selecting a 10G ethernet adapter for my host PC?</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Thanks,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div>
<div id=3D"gmail-m_-1508199224320601711Signature">
<div>
<div id=3D"gmail-m_-1508199224320601711divtagdefaultwrapper" style=3D"font-=
size:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255);font-family:Ca=
libri,Arial,Helvetica,sans-serif">
<div><br>
</div>
<p style=3D"margin-top:0px;margin-bottom:0px"></p>
</div>
</div>
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

--000000000000bfd52305ae2e9545--


--===============2485713381599863188==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2485713381599863188==--

