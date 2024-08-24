Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 51D8F95E068
	for <lists+usrp-users@lfdr.de>; Sun, 25 Aug 2024 01:42:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2DD2738534D
	for <lists+usrp-users@lfdr.de>; Sat, 24 Aug 2024 19:42:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1724542922; bh=7xGRtrXfBfYb/gWgBWq3+6Tfnlyo9nYDSH37qQzs7D0=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Ujsj7PNa73p0KHzGL93XvN0OsT1Lt9k4rEl+S4ApA06F6Y94NHtCzoX6ToVONCinc
	 gzYSiTbYmpR+CNhhk6156GMnPNkI+Rh73Hz/phRWmJ4DsLs3l2xEh3yd9vRyr++b6h
	 +p0Ql4d4V0a9GPML7RlJVbs/gKTv0Hlh2+DX2ZaUbWnVgqyd9Gf9lXr9sDBuhYwK4N
	 660D8lUB2giR4Lu5iI5byasx5QeA8kEEXDAvvjlnAaeC9d/Fze+TcPXoSVt/+6JWvQ
	 fvN1sbiMyNk3H0RJ+16vBd9CfmwhiHO/cF5TUfq3UT7ZtfQy4nl7ftyafPk32KI/z0
	 VeYrsQ0NA61dA==
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	by mm2.emwd.com (Postfix) with ESMTPS id B08AD385202
	for <usrp-users@lists.ettus.com>; Sat, 24 Aug 2024 19:41:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ourowndomain-com.20230601.gappssmtp.com header.i=@ourowndomain-com.20230601.gappssmtp.com header.b="do2t+XlS";
	dkim-atps=neutral
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2f4f24b4d7fso4241781fa.2
        for <usrp-users@lists.ettus.com>; Sat, 24 Aug 2024 16:41:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ourowndomain-com.20230601.gappssmtp.com; s=20230601; t=1724542878; x=1725147678; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iK535C6gv5M1Z6I5VUeG56ikPWmV/FMWsuY1FGccEKM=;
        b=do2t+XlSM0j2nv3SzYV4MBbg9Ei4uXKQ2mMniamAyAQ9LIvZfYK11Cr1JNOUeTUiNh
         hmuKMr1KH06vnPL89nGvienET41nun/w6VXcQnDeGXwl/I3YrzX/VbztUy2tfDmeYJ9e
         GOXDpEhpp77/beEPB9BAiwADczQVJqrYLtIVlYr/DIVIZgGy8lgUkiAShWGvUewASY4B
         V+vY2Lt1AJqAtR4ueKsdzhAvgy9wlVe5xzzRLZ1wWuw4kZeQQTT7F9bBS7sMtlZ3J9sV
         kG6TfsDLnjRdyEfngWhLab4rKbW+I0uUFa0YIAjxTXApptXKCsexGdDDj4ZtWv4i0PSO
         bOIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724542878; x=1725147678;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iK535C6gv5M1Z6I5VUeG56ikPWmV/FMWsuY1FGccEKM=;
        b=kU6cSKw5xpuTC9AsY3RmPDWLl2qQAk9+eBD3Imkf0/EyGRqeBUWpmbgtm58kHSm2RN
         yPK4I+ZeixxdL5NeRo+sech0PBVtXjoh3Q9HixzmX2+m/q1qi2ciqCfH6gE/n37bm70d
         AIqSpr+wm7e/sKbH7dZEjULi6aELV5ORfI3c4RPU+SSJXscwUd/qkfz7o2F12X6hNjJr
         yGO/LxzQ2Xsbbo5SqW4v/isviA9j788c0IE4kNt+9XRa2gS5Z+qWiNjxEA4Bz3KQ2HpN
         3wdlX/Pm4h48XXoWXdd08m2eHG9aTmercgRVgWqa4xOY98Uu0iATVKJjg1haAx36FMv2
         BILw==
X-Gm-Message-State: AOJu0YwTQqcrw5rMPhTuulexPm4kECSzEVE4u7pmfk8IAYMcVxQpiSIf
	zxIQVuQrFOnmju/lNo6nes/EEwDCDIVOllKUB+ht7YlvULQl6ubN1EJZKOCd56uh1r2YJkkVeAf
	UkE/ZRF2Tax3a/yEnDMLrrSNvO8X9ra+4ZnVOYXX5BNDr//xk0nz1
X-Google-Smtp-Source: AGHT+IGGNScoJz+kWIMR645GSOplP8YzELinY/vdYj2TRG3/Ll3Fl7yq1+MrRIcKcNevDqg97ZU/COrvfTdEIvEUuiI=
X-Received: by 2002:a05:6512:3e1b:b0:52f:c285:323d with SMTP id
 2adb3069b0e04-534387bb090mr2378736e87.5.1724542877776; Sat, 24 Aug 2024
 16:41:17 -0700 (PDT)
MIME-Version: 1.0
References: <CANsNeapbGcs-8CwFC6q4dxcRQK8erxXKu2_G27425xmQ=+V2jg@mail.gmail.com>
In-Reply-To: <CANsNeapbGcs-8CwFC6q4dxcRQK8erxXKu2_G27425xmQ=+V2jg@mail.gmail.com>
From: Rich Gopstein <rich@ourowndomain.com>
Date: Sat, 24 Aug 2024 19:43:33 -0400
Message-ID: <CANsNear1ouQAh4sp3i9Zdt_ZMYvCA6n2kT+Fe+C6z69zE3mktw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: 4MLO7M6BZZH6AW2JTL6TFAFFE723IAD5
X-Message-ID-Hash: 4MLO7M6BZZH6AW2JTL6TFAFFE723IAD5
X-MailFrom: rich@ourowndomain.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Help with building 4.7.0.0 FPGA image for E310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4MLO7M6BZZH6AW2JTL6TFAFFE723IAD5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7307559046180272288=="

--===============7307559046180272288==
Content-Type: multipart/alternative; boundary="000000000000a15b430620766d32"

--000000000000a15b430620766d32
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

With help from Marcus, I found that the following helped:

export PYTHONPATH=3D/usr/local/lib/python3.8/site-packages
export LD_LIBRARY_PATH=3D/usr/local/lib

Now I can run rfnoc_image_builder

On Sat, Aug 24, 2024 at 6:31=E2=80=AFPM Rich Gopstein <rich@ourowndomain.co=
m> wrote:

> I'm trying to build the UHD 4.7.0.0 FPGA image from source for the E310.
> I followed the instructions in
> https://files.ettus.com/manual/md_usrp3_build_instructions.html and
> successfully built and installed the UHD host, but when I try running
> rfnoc_image_builder, i get the following error:
>
>   File "./rfnoc_image_builder", line 56, in <module>
>>     from uhd.imgbuilder import image_builder
>> ModuleNotFoundError: No module named 'uhd'
>>
>
> I'm doing the build on an Ubuntu 20.04.6 LTS system.
>
> Rich
>
>

--000000000000a15b430620766d32
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>With help from Marcus, I found that the following hel=
ped:</div><div><br></div><div><div><span style=3D"font-family:monospace">ex=
port PYTHONPATH=3D/usr/local/lib/python3.8/site-packages</span></div><div><=
span style=3D"font-family:monospace">export LD_LIBRARY_PATH=3D/usr/local/li=
b</span></div><div><br></div><div>Now I can run rfnoc_image_builder<br></di=
v></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Sat, Aug 24, 2024 at 6:31=E2=80=AFPM Rich Gopstein &lt;<a href=
=3D"mailto:rich@ourowndomain.com">rich@ourowndomain.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><di=
v>I&#39;m trying to build the UHD 4.7.0.0 FPGA image from source for the E3=
10.=C2=A0 I followed the instructions in <a href=3D"https://files.ettus.com=
/manual/md_usrp3_build_instructions.html" target=3D"_blank">https://files.e=
ttus.com/manual/md_usrp3_build_instructions.html</a> and successfully built=
 and installed the UHD host, but when I try running rfnoc_image_builder, i =
get the following error:</div><div><br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">=C2=A0 File &quot;./rfnoc_image_builder&quot;, line 56,=
 in &lt;module&gt;<br>=C2=A0 =C2=A0 from uhd.imgbuilder import image_builde=
r<br>ModuleNotFoundError: No module named &#39;uhd&#39;<br></blockquote><di=
v><br></div><div>I&#39;m doing the build on an Ubuntu 20.04.6 LTS system.<b=
r></div><div><br></div><div>Rich</div><div><br></div></div>
</blockquote></div>

--000000000000a15b430620766d32--

--===============7307559046180272288==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7307559046180272288==--
