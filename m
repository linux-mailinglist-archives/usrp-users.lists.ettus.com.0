Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 88AF1907E01
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jun 2024 23:19:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3B6A538589B
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jun 2024 17:19:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1718313571; bh=fhcj/n3HiY+HwGgOHs5iNrH5+zS6MYdTBgkawyI+/Zs=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=auRCtJ/jfUADEIc7CWzk0QPr6JUO2+XidiWQrg9xegt5tyO+mTGx5HUYlfHIKwe8g
	 Be1R+PQQwQzprcm6eZpelT+UsoSVTIbR/PpVLlO6K5Rw1VqNUpLmAr/+Z5/ab/lGXF
	 yfpeQPd7ZpfZ+QmwGZnzm/93zebpqMqP96wB2I2B1TegS7prMnYLVrAsbFCCZsu4Wl
	 L/FC4KEId9/Esob0KOfRMmU9aRqnOVA6csrkCgbTD8V6mObHawWj4ao5DUZR18H+8u
	 VyrNaJ/g4z8ZfuI7Ksdj3jTMJHcAbv0pQq2yLpE5/9yuaAB+yqy2Sio8c4VbprGXoC
	 n8gS+TIYSphag==
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 7CAB238582E
	for <usrp-users@lists.ettus.com>; Thu, 13 Jun 2024 17:16:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="JVR3qakq";
	dkim-atps=neutral
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-6e3741519d7so1071733a12.2
        for <usrp-users@lists.ettus.com>; Thu, 13 Jun 2024 14:16:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718313403; x=1718918203; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2waftMh1tIc8gVM2v2WZ3GkziJC9Pimh2o89F5LQvH0=;
        b=JVR3qakqdqCk2fZS1iCtlIrRq0mZEfgou6ZbCqNPuj9YXXcxzg822w4DADyrt6cpUB
         +CWdLr7mgGcZEIwDSUTRQ8atGFaBh9ymfJjt8fZx7TVkc48cEX9+Im2f1tnSoMGTG4+o
         2oAf/YOwkt7STX0OvXu37WCtp6iM0V16iH9ziuol8p6kuSUIq8ds5aJQHAXRELbU8UCE
         9GdqCEtsxVVAwgsV6bn8F6XuuKRygJULib7M28DxbyW6G1/mg+jpz2j3+Z3/aM1VyFVW
         dXo9AzEU5ofvUtKApNJpvroER2bdcMGzNjMT5TNWat7trRQj/ovEGjD37JTLlp8ZDE7L
         +y0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718313403; x=1718918203;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2waftMh1tIc8gVM2v2WZ3GkziJC9Pimh2o89F5LQvH0=;
        b=gwodDNmB/9zKQaEq7X3JI4hpNmQ4XsVTmMkrDycvCgWW2mUTh+uR+Ecnhrbx3QI6cS
         ExMkGyOoPjz+hwie7jLNT5zJVfyy0lAUqnIYlO1LoIFF6KodhZ5wxPFi7PVwCpyK/5BE
         oPNvdu/ucmJ6F+kVvX+eEfdBRkrved0Q9LEEataWxGKMSEG7d1zbM5shdoc7uiP4Xscd
         stDX7+yAIDztKO4LfTdk8K5F90rxDAlfRbV7Z/MPsKX9WcyXF4E4NgsNmakfP4CBP2+K
         T8np+bpjE585+dkHotoLpYsfPGjhZJfmtuJRqiWSMX81hJZLOBzlMffqTistSH6Yp/pS
         QOtg==
X-Gm-Message-State: AOJu0Yxmfuf0kAWDWlcu/7InXr6vGkDqwuIWp5LWVXkXMjcwe56ICCSf
	Tbid3YjIi78CrlvEGsC+F1VXUxGx7SWOiepypCT7zZP6jpWGitT3p77JDpDnViFb0tcXg+WmSWN
	GjdPJi+fO7liWR3G6L2UR878GQlv5l+qg
X-Google-Smtp-Source: AGHT+IGH8i6bOLWoX27o1eocXNS0iO//aYk6PfKnsOuO4krrEFZTzqVLuFi4xCScCRarC5thyrnUzVj5Z7d417tMsHc=
X-Received: by 2002:a17:90a:1150:b0:2c2:cefc:abea with SMTP id
 98e67ed59e1d1-2c4dbb43d8fmr1009876a91.32.1718313403181; Thu, 13 Jun 2024
 14:16:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAFPzw1=hsoXJe7hH_0C5OweSZJGf-Ht3VZGuzqT_wqdh1cUVpg@mail.gmail.com>
 <4d6afc01-37e3-437c-895c-9b8e07010b20@gmail.com>
In-Reply-To: <4d6afc01-37e3-437c-895c-9b8e07010b20@gmail.com>
From: Anabel Almodovar <anabel.almodovar@gmail.com>
Date: Thu, 13 Jun 2024 23:16:29 +0200
Message-ID: <CAFPzw1=1ZBBRimj_UfM-HyFOXqMQJMmwaQQPHr0e9mBx21d57A@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: SBX3VKF5XVNICNOSOJITIAYTBXSWOY7S
X-Message-ID-Hash: SBX3VKF5XVNICNOSOJITIAYTBXSWOY7S
X-MailFrom: anabel.almodovar@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: IOError: x300 fw poke32 persist with large adquisition times
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SBX3VKF5XVNICNOSOJITIAYTBXSWOY7S/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2634675882337822007=="

--===============2634675882337822007==
Content-Type: multipart/alternative; boundary="000000000000027395061acc0435"

--000000000000027395061acc0435
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear Marcus,

>
> * Is this happening on BOTH USRPs?*
>

 Yes, it happens with both USRP randomly.

>
> * Have you followed this guide here for performance tuning?*
>
> https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks
>

Yes, I have followed your advice. The only thing I haven't dared to touch
is the grub.

>
>
> * I have an X310 with two TwinRX, on Ubuntu 22.04, UHD 4.1, and I can
> stream literally for *days* without any issue   at all.*
>

Well, That is my goal but I don=C2=B4t know how.

>
> * How are you connected to your X310s?   If you only run one at a time, d=
o
> you see this failure?*
>
> They are connected via dual 10GB ethernet ports and each port is connecte=
d
to a different network card to ensure there are no limitations. I get the
same behavior with a single USRP.

I have tried to apply the configuration indicated in this example:

https://github.com/EttusResearch/refarch-multich/blob/dev/config/sysctrl_co=
nfig.sh

But the same thing keeps happening.

Regards,
Anabel

> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000027395061acc0435
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Dear Marcus,</div><div class=3D"gmail_quo=
te"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div><br><blockquote =
type=3D"cite"><pre></pre>
    </blockquote><i>
    Is this happening on BOTH USRPs?</i><br></div></blockquote><div><br></d=
iv><div>=C2=A0Yes, it happens with both USRP randomly.</div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div>
    <br><i>
    Have you followed this guide here for performance tuning?</i><br>
    <br>
    <a href=3D"https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_T=
ricks" target=3D"_blank">https://kb.ettus.com/USRP_Host_Performance_Tuning_=
Tips_and_Tricks</a></div></blockquote><div><br></div><div>Yes, I have follo=
wed your advice. The only thing I haven&#39;t dared to touch is the grub. =
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div><br><i>
    I have an X310 with two TwinRX, on Ubuntu 22.04, UHD 4.1, and I can
    stream literally for *days* without any issue<br>
    =C2=A0 at all.</i><br></div></blockquote><div><br></div><div>Well, That=
 is my goal but I don=C2=B4t know how.=C2=A0</div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div>
    <br><i>
    How are you connected to your X310s?=C2=A0=C2=A0 If you only run one at=
 a
    time, do you see this failure?</i><br><br></div></blockquote><div>They =
are connected via dual 10GB ethernet ports and each port is connected to a =
different network card to ensure there are no limitations.=C2=A0I get the s=
ame behavior with a single USRP.=C2=A0</div><div><br></div><div>I have trie=
d to apply the configuration indicated in this example: <br><br><a href=3D"=
https://github.com/EttusResearch/refarch-multich/blob/dev/config/sysctrl_co=
nfig.sh">https://github.com/EttusResearch/refarch-multich/blob/dev/config/s=
ysctrl_config.sh</a><br><br>But the same thing keeps happening.<br></div><d=
iv><br></div><div>Regards,</div><div>Anabel</div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000027395061acc0435--

--===============2634675882337822007==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2634675882337822007==--
