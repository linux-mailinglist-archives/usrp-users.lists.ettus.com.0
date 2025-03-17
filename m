Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 95744A66004
	for <lists+usrp-users@lfdr.de>; Mon, 17 Mar 2025 22:03:19 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7FEDB38607F
	for <lists+usrp-users@lfdr.de>; Mon, 17 Mar 2025 17:03:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1742245398; bh=qBy3I79ovS2mKLsXppwgGM7B9Q1n+mIuBqsmh8xZF/c=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=z+AZiVFwyQ24o/lBkG9tWonfMi5rPUqYJgI46fphyZpSaVImgBTRXgPx9Ds8i49Kx
	 eE4v5Mj02Y++V9+wxadAlMglsAB+INNgkKct05um7gA7dey12pU5q72fkb3Uz3Sarf
	 eXHMSl2j9Hwq4OeS9G1mDUVMoNjE5l/ImJ2MyMzMPHIXjXrGOaD6YgMt2GMt0bQGyT
	 J0x8MvFbPE2PEzvBjTvUtDLEdJIfzVFZtLAJodWCdor73St5E3w4GCInTgRpQt+Pcz
	 lZGAMG+opNZKq9wGqadxig+IzfG2CGi7/x0rZrWdzrSViceR8uxvir2GREkjQj0Qop
	 sDb5EK46pSukg==
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	by mm2.emwd.com (Postfix) with ESMTPS id F3091385E37
	for <usrp-users@lists.ettus.com>; Mon, 17 Mar 2025 17:02:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="m02Qz2q/";
	dkim-atps=neutral
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-ac2ab99e16eso52148366b.0
        for <usrp-users@lists.ettus.com>; Mon, 17 Mar 2025 14:02:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742245351; x=1742850151; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=NMzY3pFRPAAalpG8pXs4zpcimVr0xpq2I59RQKpE02k=;
        b=m02Qz2q/eIiVyYAhBvtojYYoGfrN864XXxXsDz4Ako9yaY9YabrpfQGoFKPSeGN8yo
         iYoUW2B9WNWoLgvQWj9y3zgTGFGemg4JOtq5P5bT8aBvavcqDKJLpR3IRReZc25JgN0Z
         Y28Fyx1NnK5OnKwgQHIxI5oYbAtp33AzSB0ItuyhgCp6CNAiAhfhjsMONIiKrH4urEI8
         KJtXTvZ1MJysjH0Ej79vOZIN5pBQcEBFl7NoIg48MixS/oilD8QMMsWqu4WdggLyqkvS
         MhjXAlbbyDQqx4KYIereCi3/u33HvHZgCjlcayvEt0ZFY7aze/v7kodHMq/cQzch3QVq
         15KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742245351; x=1742850151;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NMzY3pFRPAAalpG8pXs4zpcimVr0xpq2I59RQKpE02k=;
        b=HtmbhRd18HO+gTIzqcOFVyGzCaR/azZOagvfvfLPkIOn51cHZrIjOtLwO6ZwknOM/f
         EB+QqsbihZZnoKSAaf+lcG+cAo7JWloldp+3PNydPQOVFYlNjQubkZK4jqhT6Javne2c
         iviYfvHQ1GtjaBzrYiiJZHLvfY9mWLy9yrjK1XKvEf5jLWBFdwRXJUi3xrpdD55GI8AH
         USYjez9G4IycAuVmOSd//mfHET1MqpRd7kN0QzKFvkEvK2A58HKaTmbYbplkJoWmQQDt
         hFs35Uz/erWFsyyye/RbyvCup8mWyItJbeI4nVvIE5waLu2c0D55GtLPG9rXi0yzC9C0
         GNPw==
X-Gm-Message-State: AOJu0YzOCC398ApUvQ2tsEmYNA+C/y/l9mBHJSUZ2fwvMXjEFZVyT79B
	DBAvAGap/ZYZ3MYTPtqNjWHcjaZpzo6B3zd0g4QCNygnR5Hj7X213jdT1N6q/ejN0EXaYhcaOW+
	SGSX2g2K6wBD/aSz3384uDRZ0obU=
X-Gm-Gg: ASbGncuTv9YsEVEWGOCsoAM6SBd5Wm2gqSrL4o9TqGwN/u2KTzv3sjOLOERPLmRYRX9
	gzsHuGlBeTOihCwOhG9jAqybG4zWmr9B/X4vsVceTlR6Fl6SL7ZbQG0m5Dmv4V6I1z5Uz4jLqrt
	Xx1djAP4OFhmZT5/LsWN2BL5P4VQ==
X-Google-Smtp-Source: AGHT+IFTENrBQ0ip93v4d5Ip1pHO6qAG+plQNT0m51rge8r3NEMG+mQk4U5n6XJDSztJWjK+JrxJaRsdb43LvEu/eic=
X-Received: by 2002:a17:907:84a:b0:ac3:1373:8a3d with SMTP id
 a640c23a62f3a-ac3302bae35mr1216690666b.20.1742245350596; Mon, 17 Mar 2025
 14:02:30 -0700 (PDT)
MIME-Version: 1.0
References: <CAEXYVK4u-jMUbq2zw-ckyFREnyFeZMXjyLP4GiG709HGMcYPbw@mail.gmail.com>
 <11142f61-7d6c-4466-8ed7-adbbe3fef187@gmail.com>
In-Reply-To: <11142f61-7d6c-4466-8ed7-adbbe3fef187@gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Mon, 17 Mar 2025 17:02:18 -0400
X-Gm-Features: AQ5f1JrDQN8QbGtVG6SmSd7strrQqlCAu0H7vqUabvI6LYQMlxJ9zxVcFMbam9c
Message-ID: <CAEXYVK71=Dc87i_fvj25Rf9AU5EgqzwSgf+4uvMhKZ-RYDZwsQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: ZQG2CSBXSUASPW5TTZDLXCOCWIMRXUIQ
X-Message-ID-Hash: ZQG2CSBXSUASPW5TTZDLXCOCWIMRXUIQ
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: New X440 with fsck issues
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZQG2CSBXSUASPW5TTZDLXCOCWIMRXUIQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5817360943484941986=="

--===============5817360943484941986==
Content-Type: multipart/alternative; boundary="0000000000003bec990630901be0"

--0000000000003bec990630901be0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks - this worked like a charm.

I appreciate the quick feedback.

Now to update to the latest UHD version.

Thanks,
Brian

On Mon, Mar 17, 2025 at 4:45=E2=80=AFPM Marcus D. Leech <patchvonbraun@gmai=
l.com>
wrote:

> On 17/03/2025 16:37, Brian Padalino wrote:
> > I received an X440 and it didn't respond to being ssh'd into, so I
> > looked at the console. It tells me that /dev/mmcblk0p2 fails fsck.
> >
> > Should I try loading an FS onto /dev/mmcblk0p3? What should I follow
> > to try and recover this brand new radio?
> >
> > Thanks,
> > Brian
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> This might be helpful:
>
>
> https://kb.ettus.com/USRP_X410/X440_Getting_Started_Guide#USB_Access_to_e=
MMC
>
> I don't have an X440 in my collection, so probably following the
> instructions on flashing a new FS onto the correct partition
>    is the right one.  I have no idea why it would arrive from the
> factory with a broken FS, though.
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000003bec990630901be0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks - this worked like a charm.<div><br></div><div>I ap=
preciate the quick feedback.</div><div><br></div><div>Now to update to the =
latest UHD version.</div><div><br></div><div>Thanks,</div><div>Brian</div><=
/div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" =
class=3D"gmail_attr">On Mon, Mar 17, 2025 at 4:45=E2=80=AFPM Marcus D. Leec=
h &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On =
17/03/2025 16:37, Brian Padalino wrote:<br>
&gt; I received an X440 and it didn&#39;t respond to being ssh&#39;d into, =
so I <br>
&gt; looked at the console. It tells me that /dev/mmcblk0p2 fails fsck.<br>
&gt;<br>
&gt; Should I try loading an FS onto /dev/mmcblk0p3? What should I follow <=
br>
&gt; to try and recover this brand new radio?<br>
&gt;<br>
&gt; Thanks,<br>
&gt; Brian<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
This might be helpful:<br>
<br>
<a href=3D"https://kb.ettus.com/USRP_X410/X440_Getting_Started_Guide#USB_Ac=
cess_to_eMMC" rel=3D"noreferrer" target=3D"_blank">https://kb.ettus.com/USR=
P_X410/X440_Getting_Started_Guide#USB_Access_to_eMMC</a><br>
<br>
I don&#39;t have an X440 in my collection, so probably following the <br>
instructions on flashing a new FS onto the correct partition<br>
=C2=A0=C2=A0 is the right one.=C2=A0 I have no idea why it would arrive fro=
m the <br>
factory with a broken FS, though.<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000003bec990630901be0--

--===============5817360943484941986==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5817360943484941986==--
