Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 92C2BAB593C
	for <lists+usrp-users@lfdr.de>; Tue, 13 May 2025 18:00:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9AF67385BBB
	for <lists+usrp-users@lfdr.de>; Tue, 13 May 2025 12:00:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747152046; bh=69BpVkjbBcTLTkUvxPj4IYQGNvT/GnsIhy7K5L51TME=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=JSzSLw7FA09cAaTm57WCbaUxOTmSnJDKkDxrx723tOdvIgQgc6iu1yoiOoGnIQx4P
	 IqI8LZaR7qqxY6gw0PGa9mCgR2fvyW7IQORIXQHD98Zcn/Qb+vpiaMmIqLfzkzLF8i
	 0ifeqZyZYJc/xd2PSJelVJOIh45PLw9Lah4Hq2AoHZPY4Q7wvuwjWKo1HybsQAEnJ8
	 7o2OIc9hMW7MO+iJBWRSIwrp0072GtCnr9gxc3mMiKAsqF8seDZSQ+Uy9WLZ59yKhV
	 5ceXKCzH5DCrQknPwYLmIte6zZ2yWi28xlMUsAt2HUCw1ExfAoBvbzd4x3kLizDqaT
	 ciAzvlqVKXCBA==
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	by mm2.emwd.com (Postfix) with ESMTPS id B1714385ACD
	for <usrp-users@lists.ettus.com>; Tue, 13 May 2025 12:00:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OXLZ5kVB";
	dkim-atps=neutral
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5fbee322ddaso10631945a12.0
        for <usrp-users@lists.ettus.com>; Tue, 13 May 2025 09:00:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747152007; x=1747756807; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=BSIeB2QH0n/ghqtXqdtd7g1YZE+QQJS+BXvQ1kvMeMY=;
        b=OXLZ5kVBoJd5CVQ+BDcylTXFlMfSQe5MPdSm7zzsGp87B20Oj8GB/Pmz/UaE9TrjdO
         kRc0097q4P1w8imKjiWFnQtJgnR0mwwlpNspx7vvjigYlK1U2dPJPkPcNIRpwC3+xXSy
         wj80LklhaZEtOLx2avzQfKQzezRDEs9+w+L02jbfMZTUoPEBZ0piUQgRINiM6xxrQVX+
         Fn5vPwt2g9ns2hI2/YfVEYMzMK0ur4w+xEijbSx/Yoc7uzPvngoLk64zvyMuup4htxgB
         dmgZ5T5h5avselFqgKvUOlEW6F4ItUB4jUwFfSz4QE8mIHkP8nVg7xQheF2kmkLrX38H
         vOrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747152007; x=1747756807;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BSIeB2QH0n/ghqtXqdtd7g1YZE+QQJS+BXvQ1kvMeMY=;
        b=mfW18cP2NpISTBDc2EMoHGH5E6OvDKD9lmwEG3lUu0VsvO+6ASTayuC8gXkiNp/nKA
         iymu+JScsO6Zrg4KXLpKwSqozIo2X2nZaX17uun6eJCEVO2TaMFezgBkaV2sDJm5E97S
         Ex6Xnn99snxvP+HNHmTlDyUESyld/hoIuLnTbTqIARH7Bmf2knZ4O7EOf4B9h9Ub7pb6
         djio0m+cpo9pRa0LZk8XOt+s8iEZIufmsErhA4XI96srT6pBljSO/k4ESS/ciHvoWT/C
         8t8dXFj0TcpmAYqztfgZGNy7EnnbT1Pm28u9iPvhvk1HaFAQUxin8qOvlGHNfHk+9Mkp
         o8Bg==
X-Gm-Message-State: AOJu0YyunBPTmTdyD/v650ndSmFUMUUz2eZL3iCZHBlYaSQ8GkIl2Bcv
	qO8qDxGhJKxtdNDrEYsim6JKbTsgM/bKVJTlho2vcptMxAGxu+RIHUDi7QxE4NxeA+3AAH878PI
	fr4hHZyAUwtr0etdD5ZZtXjk8N2rhuA==
X-Gm-Gg: ASbGnctHy0HQeSGiRes0ZW+rWLpO7xUzwK4I4nWlcVeVL2qw3NAVymEwD7QmnH8ACYv
	nLvGGSQ7lubAIEADcPTxMxfqDESsx3JYfoJgSCJi8dGvc0XIoiSBJI69TsXZFgXHPf8VUrJY3bx
	cyArDut3be37A6g9WOP5Wqtxt+8E/mRjdMWCBdv0rPi2k=
X-Google-Smtp-Source: AGHT+IEHyEiRZFGg8t+MSmJTM/lWS56RVsqqy3fzqymeBKIM5uyhSq4uJmxQf4bWnIkdQzga44sDNB0p+ylAt1Lugaw=
X-Received: by 2002:a17:907:7e8b:b0:ad4:f6d0:8106 with SMTP id
 a640c23a62f3a-ad4f74d0c87mr8217366b.51.1747152007241; Tue, 13 May 2025
 09:00:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3Puk1XCw+=7i_27zSWD9t9HGg+-RFajRyySLM6pvqeLBpQ@mail.gmail.com>
 <CAEXYVK6saxCjJZ5dO_2e6LK=+xndh-YVCnfW0uqG3MW6hrBNxA@mail.gmail.com> <CAA=S3PvxTQz6mQ_gskqzsdSV0f7CA5_N1Xg-df39dc3ECjPVcg@mail.gmail.com>
In-Reply-To: <CAA=S3PvxTQz6mQ_gskqzsdSV0f7CA5_N1Xg-df39dc3ECjPVcg@mail.gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Tue, 13 May 2025 11:59:55 -0400
X-Gm-Features: AX0GCFsppaEX4P6TdYwdxeZqAi9UM-b4U_RrHUP3A_qFV1HoabKad9gwQKLzDoQ
Message-ID: <CAEXYVK4rA6aKhstWZhSxb02GY_cYYLC5AudcrpzXnHiYu+Wz2w@mail.gmail.com>
To: sp <stackprogramer@gmail.com>
Message-ID-Hash: W6A2CLWO6RKQYQZ7DU74FPDXOKUTICDU
X-Message-ID-Hash: W6A2CLWO6RKQYQZ7DU74FPDXOKUTICDU
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Is it possible to set sps radio core 1mhz or lower sps without using ddc (RFNOC block)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/W6A2CLWO6RKQYQZ7DU74FPDXOKUTICDU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5857064348105268977=="

--===============5857064348105268977==
Content-Type: multipart/alternative; boundary="000000000000c2aaf106350686ae"

--000000000000c2aaf106350686ae
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, May 13, 2025 at 10:55=E2=80=AFAM sp <stackprogramer@gmail.com> wrot=
e:

> Thanks for giving useful information. Reason for i want to remove ddc in
> my FPGA image core, Really I have a USRP X300, I want to add a custom RFN=
OC
> block that it needs very much resources such a BRAM or others on FPGA USR=
P
> X300. I emphasize I don't afford to buy a new USRP x310 or X400. So I hav=
e
> to write more optimized code!
>

Understood. You can then remove the DUC or DDC from the design and
implement your own very efficient DUC or DDC in your own block. Just make
sure the interpolation or decimation rate is exactly what you need. For the
X300 it's 200 Msps you're targeting.

Good luck.

Brian

>

--000000000000c2aaf106350686ae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, May 13, 2025 at 10:55=E2=80=AFAM =
sp &lt;<a href=3D"mailto:stackprogramer@gmail.com">stackprogramer@gmail.com=
</a>&gt; wrote:</div><div class=3D"gmail_quote gmail_quote_container"><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Thanks for gi=
ving useful information. Reason for i want to remove ddc in my FPGA image c=
ore, Really I have a USRP X300, I want to add a custom RFNOC block that it =
needs very much resources such a BRAM or others on FPGA USRP X300. I emphas=
ize I don&#39;t afford to buy a new USRP x310 or X400. So I have to write m=
ore optimized code!</div></blockquote><div><br></div><div>Understood. You c=
an then remove the DUC or DDC from the design and implement your own very e=
fficient DUC or DDC in your own block. Just make sure the interpolation or =
decimation rate is exactly what you need. For the X300 it&#39;s 200 Msps yo=
u&#39;re targeting.</div><div><br></div><div>Good luck.</div><div><br></div=
><div>Brian</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div cla=
ss=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
</blockquote></div>
</blockquote></div></div>

--000000000000c2aaf106350686ae--

--===============5857064348105268977==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5857064348105268977==--
