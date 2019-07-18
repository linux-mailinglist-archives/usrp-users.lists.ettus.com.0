Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D966D12F
	for <lists+usrp-users@lfdr.de>; Thu, 18 Jul 2019 17:32:52 +0200 (CEST)
Received: from [::1] (port=35556 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ho8Og-0005jf-QJ; Thu, 18 Jul 2019 11:32:42 -0400
Received: from mail-qk1-f178.google.com ([209.85.222.178]:40614)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1ho8Od-0005ea-PP
 for usrp-users@lists.ettus.com; Thu, 18 Jul 2019 11:32:39 -0400
Received: by mail-qk1-f178.google.com with SMTP id s145so20782949qke.7
 for <usrp-users@lists.ettus.com>; Thu, 18 Jul 2019 08:32:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=R0pl4xcmjeiHVO4BImtmqWqtG5e/YlgCMVCxR6LzyvA=;
 b=P+UA+OHnvVXL1/PgzWvtbAf6fExhaHkfc1O7PhjhOyYNBPMeBGZS9hsgl5XDOjsZDK
 +t1RlNJQjwrCRTspHotwbAkmWK0DnQRZtEL9wXtpZowQxqMrRfhZbmUqN9A6LRPz134l
 sEQcJ7PJc2uVVyCdE2IXzxdJtAidC/F28P5KEIqgyRvEfy/PiKQFVG78HA3HDNxa5e+7
 Gcyc1Y9f+HcCjMkCtdiVADoob+SWvDUnDzHX5T3r0PSWgavTxzxqKUXPHft8uGukrnIn
 uP+rgOFIRBG4cfDCQWRuB7BJCkk0B/DWfkjuqk/ykU7nnJfOPYirOflDwq5OD8AsLkTQ
 JyqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=R0pl4xcmjeiHVO4BImtmqWqtG5e/YlgCMVCxR6LzyvA=;
 b=ozY6CDEBn81F+8LoWwdQnZJfOL1Lq47+m3+Q/xuByeq9jjsnQZk47kAGIyhgoB7HMx
 2MYSAyBjo6W6leQfgBY4Imf/NJ7EYpqLZ9ZfPh1CavnG7ZZR+fTANen0YQrH68hpFhKE
 7uuYCPlpXD9kBbF24QS6qGX58MAt0NxfSDAaOtZO5RvLpfzSiMOAloxmL2F3gYIpRvo8
 r78jJcxB2vFpJwtPY3eqLL1DglJhw3rUJdW2yXN1bis/Sf01jyUgojAfD/vO/M1x97lM
 BFfORTZamVKtpUijuabiMFeyOCiKxyypWYLjwAhy3kSxU26YKE3NCplj1ZF3QQ30oAo+
 sElA==
X-Gm-Message-State: APjAAAWdC7noSeTY7bq0MejX6K9n33j1nr51tq/TNaIt46jg9HL8tmBJ
 AtD0lVTddmuLGOetF8+KTkenkdxf
X-Google-Smtp-Source: APXvYqy8r9DFobXkQnl1wLqJD/qqF2sV/ZkqRXuO7QxQf8O9aNZrufISzDck9Me+FWZsbA9rb9H/Zw==
X-Received: by 2002:a05:620a:127c:: with SMTP id
 b28mr7403688qkl.299.1563463919142; 
 Thu, 18 Jul 2019 08:31:59 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.gmail.com with ESMTPSA id 195sm13318009qke.90.2019.07.18.08.31.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 18 Jul 2019 08:31:58 -0700 (PDT)
Mime-Version: 1.0 (1.0)
X-Mailer: iPhone Mail (16F203)
In-Reply-To: <CAE6G029K0GMuCpkX5zs2g_mhYfbZgGDr7VYsyU92QBhTyAbT8w@mail.gmail.com>
Date: Thu, 18 Jul 2019 11:31:58 -0400
Message-Id: <BD30910C-6FC5-4431-8B71-118948793E6B@gmail.com>
References: <CAE6G029K0GMuCpkX5zs2g_mhYfbZgGDr7VYsyU92QBhTyAbT8w@mail.gmail.com>
To: Sammy Welschen <sammywelschen@gmail.com>
Subject: Re: [USRP-users] Phase coherency for low RX frequencies
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============0400855481070782415=="
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


--===============0400855481070782415==
Content-Type: multipart/alternative;
	boundary=Apple-Mail-804403E8-7BBA-4576-AF44-9EE91D77C699
Content-Transfer-Encoding: 7bit


--Apple-Mail-804403E8-7BBA-4576-AF44-9EE91D77C699
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

This is correct as far as I know. Although I don=E2=80=99t have an N320 in m=
y lab, it uses an up conversion scheme for lower frequencies. That scheme do=
es not participate in the LO sharing.=20

Sent from my iPhone

> On Jul 18, 2019, at 11:17 AM, Sammy Welschen via USRP-users <usrp-users@li=
sts.ettus.com> wrote:
>=20
> I have to acquire phase coherent data on multiple channels using USRP N310=
/320 devices.
>=20
> Am I correct in assuming that for frequencies below 450 MHz, there is no w=
ay to remove random phase differences between channels due to the additional=
 frequency shift involved (shown for example in the block diagram  http://ww=
w.ettus.com/wp-content/uploads/2019/03/N320BlockDiagram.png)? As I understan=
d it, by using the same LO signal for all channels I could remove the differ=
ences for frequencies above 450 MHz, but this is of no use for frequencies b=
elow 450 MHz due to this the additional stage.
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-804403E8-7BBA-4576-AF44-9EE91D77C699
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">This is correct as far as I know. Although I=
 don=E2=80=99t have an N320 in my lab, it uses an up conversion scheme for l=
ower frequencies. That scheme does not participate in the LO sharing.&nbsp;<=
br><br><div id=3D"AppleMailSignature" dir=3D"ltr">Sent from my iPhone</div><=
div dir=3D"ltr"><br>On Jul 18, 2019, at 11:17 AM, Sammy Welschen via USRP-us=
ers &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus=
.com</a>&gt; wrote:<br><br></div><blockquote type=3D"cite"><div dir=3D"ltr">=
<div dir=3D"ltr"><div>I have to acquire phase coherent data on multiple chan=
nels using USRP N310/320 devices.</div><div><br></div>Am I correct in assumi=
ng that for frequencies below 450 MHz, there is no way to remove random phas=
e differences between channels due to the additional frequency shift involve=
d (shown for example in the block diagram&nbsp;

<a href=3D"http://www.ettus.com/wp-content/uploads/2019/03/N320BlockDiagram.=
png">http://www.ettus.com/wp-content/uploads/2019/03/N320BlockDiagram.png</a=
>)? As I understand it, by using the same LO signal for all channels I could=
 remove the differences for frequencies above 450 MHz, but this is of no use=
 for frequencies below 450 MHz due to this the additional stage.</div>
</div></blockquote><blockquote type=3D"cite"><div dir=3D"ltr"><span>________=
_______________________________________</span><br><span>USRP-users mailing l=
ist</span><br><span><a href=3D"mailto:USRP-users@lists.ettus.com">USRP-users=
@lists.ettus.com</a></span><br><span><a href=3D"http://lists.ettus.com/mailm=
an/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listi=
nfo/usrp-users_lists.ettus.com</a></span><br></div></blockquote></body></htm=
l>=

--Apple-Mail-804403E8-7BBA-4576-AF44-9EE91D77C699--


--===============0400855481070782415==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0400855481070782415==--

