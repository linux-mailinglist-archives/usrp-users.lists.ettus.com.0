Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 81FDC33493D
	for <lists+usrp-users@lfdr.de>; Wed, 10 Mar 2021 21:59:31 +0100 (CET)
Received: from [::1] (port=45014 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lK5vU-0007Su-3n; Wed, 10 Mar 2021 15:59:28 -0500
Received: from mail-qt1-f178.google.com ([209.85.160.178]:37225)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1lK5vQ-0007Le-S2
 for USRP-users@lists.ettus.com; Wed, 10 Mar 2021 15:59:24 -0500
Received: by mail-qt1-f178.google.com with SMTP id v3so14188427qtw.4
 for <USRP-users@lists.ettus.com>; Wed, 10 Mar 2021 12:59:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=yIw6/TiS6BVeQsyGGu0W6c6C0q2Qsxdc70Ks/kqImeA=;
 b=ge9ZGaBVNZl2uBStkMtkB+fgI/sTukYKh8tkMdXPhNhpbloHoKZONglgUqgAq2cMva
 rElrXRS1JHHe6DgJDCh3rGr8SsgPH+1teRe7bXrtBpvNyUeRKeE3bQvW2D1xx1Wl0ruP
 VygHNNsYV2WsmWbaHIS5h1yD5ny9+0N7QrziYmKWir7ooVRxafY1p/DuDAb8RwKb+zig
 hKQhgT9R2SjmY4sRImWHZGHvpCB7p4Tf9wo2b7QRaMKwpc18FCeH3mfP6H7n24yyaLQl
 thjB5XAHDv4B85lI+AGGM/laDGM03lB0I8GYZs12AJMkaTLsU9INVc2s/0t1IFd/bntU
 HFIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=yIw6/TiS6BVeQsyGGu0W6c6C0q2Qsxdc70Ks/kqImeA=;
 b=S+Axi+ZXguXThHVsBILpNx8gtWPHBI+xbcAnR0E916aEy0Fb0ZiKrprg+0tp+BrzyO
 bD+Th86uutdVa+IG/gD+7pZ3UquwI3KFJGxwxVIUbm6vntxbblRHx3O3Nn/hxuVruiVG
 g5DGsllfLDGSS2vyend4BJw0AS5zKrJvXrQJy5K6XIM4BCm7hw3GwSywFqsQENHrv/RV
 AsXpBll5GxVigki0H/8UndpNT4nJcs4z+AFgWVAtOsOfwRi+Z5+Kv8DCNmT0Z/73A5RL
 3U7rJZhEZHpVQkL6XDx/oxaI0fqYzp7dt9tBCJAwJKJLfJxEnzFBONNBLrXndOrTLrQF
 lksA==
X-Gm-Message-State: AOAM530mY9gqI1daRYN2Yt7kl79wiQ6WUXc/yv3d6sSuaWmmxAN59pHM
 9KvUUE7EEiO+NNwAzumOKlI=
X-Google-Smtp-Source: ABdhPJyZTvZ41nAGFc1Wr8SvoB96Jg2s2WTbfeD7Y8A/H7UjcnwUMUOW5/gZwKzd2lgzjS7+4ndjPA==
X-Received: by 2002:ac8:7384:: with SMTP id t4mr4434746qtp.364.1615409924299; 
 Wed, 10 Mar 2021 12:58:44 -0800 (PST)
Received: from [192.168.2.130]
 (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
 by smtp.gmail.com with ESMTPSA id m90sm317101qte.44.2021.03.10.12.58.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 10 Mar 2021 12:58:43 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Wed, 10 Mar 2021 15:58:43 -0500
Message-Id: <60B8D9C9-ECAB-4009-9D10-5D3B5CDF2FE3@gmail.com>
References: <CADj+HFVQ=V6H2WhGr6C_TQB+igv=mifiUjs59DtF3r901S1dAg@mail.gmail.com>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <CADj+HFVQ=V6H2WhGr6C_TQB+igv=mifiUjs59DtF3r901S1dAg@mail.gmail.com>
To: SungWon Chung <lucky.cimon@gmail.com>
X-Mailer: iPhone Mail (18D52)
Subject: Re: [USRP-users] X300/X310: how to control an external TX/RX switch
 for 60GHz mm-wave transceiver?
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
Content-Type: multipart/mixed; boundary="===============1552677620911203494=="
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


--===============1552677620911203494==
Content-Type: multipart/alternative; boundary=Apple-Mail-9D7DBBDD-E83F-471B-83FD-01426D24C040
Content-Transfer-Encoding: 7bit


--Apple-Mail-9D7DBBDD-E83F-471B-83FD-01426D24C040
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

You=E2=80=99ll need to familiarize yourself with this

https://files.ettus.com/manual/page_gpio_api.html

You should be able to tie a GPIO pin to the ATR state machine in the FPGA to=
 drive a GPIO output signal.=20



Sent from my iPhone

> On Mar 10, 2021, at 2:23 PM, SungWon Chung via USRP-users <usrp-users@list=
s.ettus.com> wrote:
>=20
> =EF=BB=BF
> Hello,
>=20
> I'm working to use X300/X310 as a front-end of a custom built 60GHz mm-wav=
e transceiver, which needs a digital signal for its TX/RX switch to share a h=
orn antenna.
>=20
> What do you think is the best solution? =20
>=20
> Any methods are welcome as long as it's a robust solution. Your thoughts w=
ill be much appreciated.
>=20
> Thanks,
> sungwon
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-9D7DBBDD-E83F-471B-83FD-01426D24C040
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">You=E2=80=99ll need to familiarize yourself=
 with this<div><br></div><div><a href=3D"https://files.ettus.com/manual/page=
_gpio_api.html">https://files.ettus.com/manual/page_gpio_api.html</a></div><=
div><br></div><div>You should be able to tie a GPIO pin to the ATR state mac=
hine in the FPGA to drive a GPIO output signal.&nbsp;<br><div><br></div><div=
><br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blo=
ckquote type=3D"cite">On Mar 10, 2021, at 2:23 PM, SungWon Chung via USRP-us=
ers &lt;usrp-users@lists.ettus.com&gt; wrote:<br><br></blockquote></div><blo=
ckquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"auto">Hello,<div=
 dir=3D"auto"><br></div><div dir=3D"auto">I'm working to use X300/X310 as a f=
ront-end of a custom built 60GHz mm-wave transceiver, which needs a digital s=
ignal for its TX/RX switch to share a horn antenna.</div><div dir=3D"auto"><=
br></div><div dir=3D"auto">What do you think is the best solution?&nbsp;&nbs=
p;</div><div dir=3D"auto"><br></div><div dir=3D"auto">Any methods are welcom=
e as long as it's a robust solution. Your thoughts will be much appreciated.=
</div><div dir=3D"auto"><br></div><div dir=3D"auto">Thanks,</div><div dir=3D=
"auto">sungwon</div></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list</span><br><span>USRP-users@lists.ettus.com</span><br><span=
>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><b=
r></div></blockquote></div></div></body></html>=

--Apple-Mail-9D7DBBDD-E83F-471B-83FD-01426D24C040--


--===============1552677620911203494==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1552677620911203494==--

