Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 48936A78ACD
	for <lists+usrp-users@lfdr.de>; Wed,  2 Apr 2025 11:13:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 790443859C8
	for <lists+usrp-users@lfdr.de>; Wed,  2 Apr 2025 05:13:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1743585217; bh=Iw83xQ2/bWEg5UOjImjDdLo4YFAB87aNDRZEZAlV/Mw=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=qNuT245H8KjwVDTF2roesXtHBVKwmlqBHNOYvScUI1hmNZAxZ9GzFukj5ORoWnPYp
	 qI1SYE9qosTkZTiMH8yZgqL9QfNFX8OSk6IdDPbHeH8PDGA7Y6fKMxNGQ3glWN+e1w
	 Qmp8gq1kjyLmPA5PSb8f2Ek4mN8KItHodF4UPzMjZaY2MMtLJtaVvPGbq2bDifwAxr
	 3LX1rth6tdb1Is7k06XEct7ywpm/sPFC3IU55w2TRYahHChegGPaDJDfJ3B7g3b2I6
	 Vi38aHg2mUd1V2rFuA0wbwvLz4jn3gwzR80wdBQhrRWHzFmORhoPI31AhRI5IKpnY7
	 KSZWIsV7zKwrw==
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 5033F385631
	for <usrp-users@lists.ettus.com>; Wed,  2 Apr 2025 05:13:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="L6Y1oS1d";
	dkim-atps=neutral
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-5e6c18e2c7dso11831617a12.3
        for <usrp-users@lists.ettus.com>; Wed, 02 Apr 2025 02:13:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1743585204; x=1744190004; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=meYRm+wB3haQwGXQsks2lmZgnQ8S9FU8/x1UQIj1ltE=;
        b=L6Y1oS1dIyEYRLl5URSKb0RBVXmCf+w4xolxXiywDfeXh18+QiT7PJ53r5sqvIskaK
         Q5BDwi/IGHJHq9bRQsJDXGjHFMK0lAED7DWCSPkPng1ltqcM6Zce6ab8Z45tEAmsaYOp
         xfKIaPcDi0E0W2GjgbDCecVFXKqL6EYQ+m4w3gMZDXkUT92YGiSOyTcVLVhgQ9ZhtZdH
         ZK1aUKL3i4KeOXbIe1roWd4NsoNNOFKyHp+/4ofR6zlZvMEwi2H2p01RyabsA6emjg5A
         I41b7W+jExMQ3ZdR4D6ThI6+lWc407hlrh/IeyJHkTSrQ/MjZDq0bWMAzurU6HZZlyDK
         yvSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743585204; x=1744190004;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=meYRm+wB3haQwGXQsks2lmZgnQ8S9FU8/x1UQIj1ltE=;
        b=a8Sp0u/y2SzfccWobyhrSE21sDdKlWKRMFywGziM4EfZ4bdFp1VdK57vihsqJ9Xyfi
         qw1+ZRhkOkHxQs9420tojNonhdYqFkB9L7HxPOvcdVOtlU7TpmFr9kqcmagI1SJ1Dr57
         42Akaai+4BcaMi7zsL3xGuv7fTAMobPJxrV6caY6pgbJ/Uwmd1TPN+ZBKrORNekQVAaj
         940Ti20ezSbuX3jbVug29nR3Wa1PjeiNZ0CvydTNYo3xpQaPCtnKJ6BVJ+0SFPzn0Z6x
         LkACx6TBGdHZFRIdkKZLqw/bl/G2bFWtuT+41MQILZLpfQvHiRgZtzU9Lss08FpIXLGw
         q3Ig==
X-Gm-Message-State: AOJu0YxYfzUX2oy3skHCG7bCX/HoCw6E2XOq5LWhx4W4ggEtXwZh9adC
	AD3CkrVU1V7yxoy6Ir2Ee0azv6GQ8OHKPXQluj92eKG6Ms3ImYN8EwKjSZ9aL17t9X9rMZ263as
	LXFAtcmInkEzKAM6NM66l3fK5ZXJ6I7CVRLCgdkxtY9IHe1wxJLo=
X-Gm-Gg: ASbGnctQJ78XknjpZVKx+jMBd49Y4FN93JET2q/KtcGXjLEYoQoXnZAtxf6AN/q4+e8
	lXP8Ev6+rSaopb66p0bYEt12l/aaOJAWf0uYKsq4hjQy+SPSUMH6dlj6M2X0kxqStQUxzGm61ef
	ldAsBz+5SQtK2dqdnZxCzEp5PFOx1FKqUtS4B63EmdyipmKA6X/uIG6KwZgQ==
X-Google-Smtp-Source: AGHT+IFInCcIMbl+ck8WU/gOr+eCe93WXDBYq/hFrbpvdpy9wRufR1QmZJEf1j3ZU1NFdeddlEbnEqu9BH40T1l0KGw=
X-Received: by 2002:a05:6402:51d2:b0:5e7:84eb:6e13 with SMTP id
 4fb4d7f45d1cf-5f04eaceb66mr1592389a12.14.1743585203469; Wed, 02 Apr 2025
 02:13:23 -0700 (PDT)
MIME-Version: 1.0
References: <63f702f8ef9743189a819b78da43b349@vastech.co.za>
In-Reply-To: <63f702f8ef9743189a819b78da43b349@vastech.co.za>
From: Martin Braun <martin.braun@ettus.com>
Date: Wed, 2 Apr 2025 11:13:12 +0200
X-Gm-Features: AQ5f1JrdirYtbymWp2TbrcJCm_6sgTyd7WJLAx23Vv4RBBdx-QyIwdlmLTOTWNI
Message-ID: <CAFOi1A7sD6E+ZGJsxOSm4Tzvg8ouTrS8WJ0tfqf6=GUpiLZVdA@mail.gmail.com>
To: Kevin Williams <kevin.williams@vastech.co.za>
Message-ID-Hash: TIPHXI2KVQEMVEQEVDF664AUMVYJT624
X-Message-ID-Hash: TIPHXI2KVQEMVEQEVDF664AUMVYJT624
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: connecting the ce clock to a custom rfnoc block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TIPHXI2KVQEMVEQEVDF664AUMVYJT624/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1435268797459371376=="

--===============1435268797459371376==
Content-Type: multipart/alternative; boundary="000000000000b0596f0631c81003"

--000000000000b0596f0631c81003
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

What you're doing is correct. Is it possible there's an old version of the
YAML file that is being picked up? You can increase the log level of the
image builder, it will tell you which files it's sourcing.

--M

On Wed, Apr 2, 2025 at 10:31=E2=80=AFAM Kevin Williams <kevin.williams@vast=
ech.co.za>
wrote:

> Hi,
>
> I am trying to make use of the CE clock in a custom RFNoC block on an N30=
0.
>
> The way I understand it is to add it to the clock definitions in the bloc=
k
> yaml file:
>
> clocks:
>   - name: rfnoc_chdr
>     freq: "[]"
>   - name: rfnoc_ctrl
>     freq: "[]"
>   - name: ce
>     freq: "[]"
>
> and then just connect it in the image yaml file:
>
> clk_domains:
>   - { srcblk: _device_, srcport: radio,     dstblk: radio0,     dstport:
> radio    }
>   - { srcblk: _device_, srcport: ce,        dstblk: polconv0,   dstport: =
ce
> }
>
> Running make I get the error: "Invalid clock domain connection: _device_:=
ce
> =E2=86=92 polconv0:ce (ce is not a clock input)"
>
> I can't find another place to define that clock input for my block?
>
> Kind regards, Kevin
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000b0596f0631c81003
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>What you&#39;re doing is correct. Is it possible ther=
e&#39;s an old version of the YAML file that is being picked up? You can in=
crease the log level of the image builder, it will tell you which files it&=
#39;s sourcing.</div><div><br></div><div>--M</div></div><br><div class=3D"g=
mail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On =
Wed, Apr 2, 2025 at 10:31=E2=80=AFAM Kevin Williams &lt;<a href=3D"mailto:k=
evin.williams@vastech.co.za">kevin.williams@vastech.co.za</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
I am trying to make use of the CE clock in a custom RFNoC block on an N300.=
<br>
<br>
The way I understand it is to add it to the clock definitions in the block<=
br>
yaml file:<br>
<br>
clocks:<br>
=C2=A0 - name: rfnoc_chdr<br>
=C2=A0 =C2=A0 freq: &quot;[]&quot;<br>
=C2=A0 - name: rfnoc_ctrl<br>
=C2=A0 =C2=A0 freq: &quot;[]&quot;<br>
=C2=A0 - name: ce<br>
=C2=A0 =C2=A0 freq: &quot;[]&quot;<br>
<br>
and then just connect it in the image yaml file:<br>
<br>
clk_domains:<br>
=C2=A0 - { srcblk: _device_, srcport: radio,=C2=A0 =C2=A0 =C2=A0dstblk: rad=
io0,=C2=A0 =C2=A0 =C2=A0dstport:<br>
radio=C2=A0 =C2=A0 }<br>
=C2=A0 - { srcblk: _device_, srcport: ce,=C2=A0 =C2=A0 =C2=A0 =C2=A0 dstblk=
: polconv0,=C2=A0 =C2=A0dstport: ce<br>
}<br>
<br>
Running make I get the error: &quot;Invalid clock domain connection: _devic=
e_:ce<br>
=E2=86=92 polconv0:ce (ce is not a clock input)&quot;<br>
<br>
I can&#39;t find another place to define that clock input for my block?<br>
<br>
Kind regards, Kevin<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000b0596f0631c81003--

--===============1435268797459371376==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1435268797459371376==--
