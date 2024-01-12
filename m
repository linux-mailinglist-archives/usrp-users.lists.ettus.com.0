Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E6B882BE26
	for <lists+usrp-users@lfdr.de>; Fri, 12 Jan 2024 11:11:22 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 678F6384DE1
	for <lists+usrp-users@lfdr.de>; Fri, 12 Jan 2024 05:11:21 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1705054281; bh=5qo5Yl87gzGr5zWDJo8/YGhDQROnGpHsHSbV0RscYI4=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=cIX/rQByZ8GcMasyPJHRdlxJf5NW545eM/mEWHxx5xXeyMsu70r/JsRAYYYRWoPPf
	 hfv3dBIFY3a74Ic7lsT8mYvJJpyiNQwURBU7DmN7I3Y1l2UNQB5kZoGzQ+CZLOkd+u
	 X+YIcZzwNE1lcNjb4gFahNJsJuaK9dV1Syru1a5hUVODoJXP56guBO56JOmrT9ZWkq
	 Rk+jjmdFkDdQVQijcN0jNir/AblaHAPO9mIx/agIvYZZoQReHLwxudunP6xdgwk5Qb
	 pQSOXAWhz3UuFWwaNp/h50BQU2RnYXub+RLSfBIiQyiCbS7s9kgTyMKJiF/+NuFkBV
	 ixh83lZsxXC6A==
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	by mm2.emwd.com (Postfix) with ESMTPS id C182E384DCE
	for <usrp-users@lists.ettus.com>; Fri, 12 Jan 2024 05:10:44 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="lDM4Utde";
	dkim-atps=neutral
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a28e31563ebso664243166b.2
        for <usrp-users@lists.ettus.com>; Fri, 12 Jan 2024 02:10:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705054243; x=1705659043; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tCOzt/BN7Wzdg9zl5w9Auj91UHnd8vHiFMXLx0RA2FE=;
        b=lDM4Utden4XKvXPlC6I4CrlXnSxEGJgTbV3lz27vGA/XjjEab3D66IdyunPsZF6S7o
         tC8eukjJh+tD491IVc3+K5sgAwC+fLAgVV1yWUZYVPIz1mPd+tdl1mjBnBRtVo+Y4BhR
         BXgNFxehvueM1hqF28rjNMKmXgfGIEErQJAqJt+eOMS9XlD4twCBkPzLDwPUQhsAsM+Z
         NZ2whiCucB+b8IvD0Ohf1Sc/P6SChxVAH2yWHCqD9zWX+5ZeKumXcUQeqKKRYOzfS/3f
         m+/LXi+dBh/7BY0hcP9OevO8rOsB/nWNJnT36SuyVQfkkdFZHSBy/AKxHx3i9JFCdCMR
         jkOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705054243; x=1705659043;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tCOzt/BN7Wzdg9zl5w9Auj91UHnd8vHiFMXLx0RA2FE=;
        b=Xsr7nU8xnCuT7iusPsTHNzk/IXgWTIU6DfVHkgr8sqRxZgyZO10n3TjA+OpIRMrw8i
         L8QCuSJfn8eYTa/3siJvBozCxlM1vJ/4CA3u7Or3ceMEvEeBl3iD8oepiqBVh1ia1gT7
         KHi0YzA7YRTM4l3s+KLW7/ptcVMQtxTdBeJSGA1wuWkt77STY+n6odDmm0KH+yHx4dcO
         WCjoewAuV1/Kd9Q65dB9OJJF937Hdw9WB7jx9G70JTOih8ojZHq5y+bdgl8PkK1rryQb
         +7jLO6+AMK1OQzrvoT7icnod8zaToHMyw/XJ/0m481HTDETZ+tODvG0uVC1lWkLywVGy
         j+vg==
X-Gm-Message-State: AOJu0Yyyr6X6kThIrAj4kn5u3xZYUkJyKjUFYsp5D2HR12r0Y+NtZ5oB
	S0rVf6eygD1LRLYVPinV8aZe9FGPyb66TJ0eIiw=
X-Google-Smtp-Source: AGHT+IEUsrYp/bh0Mux1xxXE8iGi67LWOIjqT4vvzTQknsB9qyyM06DGtcSJfEw1p5XTAQWoR0yfkVvIbi6JvlSKqM8=
X-Received: by 2002:a17:906:718d:b0:a2b:61dd:1687 with SMTP id
 h13-20020a170906718d00b00a2b61dd1687mr521905ejk.116.1705054243414; Fri, 12
 Jan 2024 02:10:43 -0800 (PST)
MIME-Version: 1.0
References: <CAArU_bE6h0B5C2xu5ArFc3LOswYFBdRst4aJYX_euCoNQyckhw@mail.gmail.com>
In-Reply-To: <CAArU_bE6h0B5C2xu5ArFc3LOswYFBdRst4aJYX_euCoNQyckhw@mail.gmail.com>
From: Muhammad Hassan <engr.muhd.hassan@gmail.com>
Date: Fri, 12 Jan 2024 10:10:32 +0000
Message-ID: <CACDPEcO68iPRfpoD3U=ULm5VCRR0gCTmOQjgUJcxkXb4z92oDw@mail.gmail.com>
To: Alin Stoica <alinstoica1234567@gmail.com>
Message-ID-Hash: QK6NJCSMRBO6AR2TFMMDBCC73WHEX2C5
X-Message-ID-Hash: QK6NJCSMRBO6AR2TFMMDBCC73WHEX2C5
X-MailFrom: engr.muhd.hassan@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP E310 capabilities
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QK6NJCSMRBO6AR2TFMMDBCC73WHEX2C5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8377417766474982861=="

--===============8377417766474982861==
Content-Type: multipart/alternative; boundary="00000000000080651d060ebce003"

--00000000000080651d060ebce003
Content-Type: text/plain; charset="UTF-8"

Hi Alin,

I have USRP E313 and am also struggling with this sampling rate issue; if I
set the sampling rate beyond 2MS/s in GNU radio, I get an underrun issue.
To solve this issue I have been advised to use the RFNoC replay block.



On Fri, 12 Jan 2024 at 09:38, Alin Stoica <alinstoica1234567@gmail.com>
wrote:

> Hello,
> I have a question about my USRP E310 capabilities.
> How many mega samples per second can tx and rx support (i.e. msps) As far
> as I know the architecture has changed since UHD version 4.0 and there are
> a lot of drops to 4 msps when running benchmark. the UHD 3.15 versions
> support a bit more msps though, somewhere around 6-7, more msps leads to
> underruns from what I have noticed. If I use UHD 3.09 could I get more mega
> samples per second?
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000080651d060ebce003
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi=C2=A0Alin,<div><br></div><div>I have USRP E313 and am a=
lso struggling=C2=A0with this sampling rate issue; if I set the sampling ra=
te beyond 2MS/s in GNU radio, I get an underrun issue. To solve this issue =
I have been advised to use the RFNoC replay block.=C2=A0</div><div><br></di=
v><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Fri, 12 Jan 2024 at 09:38, Alin Stoica &lt;<a href=3D"m=
ailto:alinstoica1234567@gmail.com">alinstoica1234567@gmail.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"a=
uto">Hello,<div dir=3D"auto">I have a question about my USRP E310 capabilit=
ies.</div><div dir=3D"auto">How many mega samples per second can tx and rx =
support (i.e. msps) As far as I know the architecture has changed since UHD=
 version 4.0 and there are a lot of drops to 4 msps when running benchmark.=
 the UHD 3.15 versions support a bit more msps though, somewhere around 6-7=
, more msps leads to underruns from what I have noticed. If I use UHD 3.09 =
could I get more mega samples per second?</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000080651d060ebce003--

--===============8377417766474982861==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8377417766474982861==--
