Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5B96F5F04
	for <lists+usrp-users@lfdr.de>; Wed,  3 May 2023 21:17:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BA0AA3848D9
	for <lists+usrp-users@lfdr.de>; Wed,  3 May 2023 15:17:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683141463; bh=h4uUj4bJfHbJUxtaLQGIipjL+CukYFZx6DBXm7ieC4Y=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=YzAC/Cy8nNwHS7KEvlth/479r+ZCCSl2NLNDXGGb7qniAvMeIt8FVt7R1uiwfPexN
	 GaC6LeVdHaIzTUMwgHlppv8+t4iOXaW7QXWYs4a6dFwUtaRHKQ11LGOYQ7xTxuHBxm
	 Lv2PYZydDbxfKUAzIpsPBbcn7PQEfSyUwDFSZdmJr2vc4tfSZP92AsK15qSYs6xaPN
	 vydXdB9pJawKrZO1KPj+8T00fRqrFb+VGAfLwVUaSH4JNcGvHFwH12eVYbDJFF26pN
	 mhzfU6SvVjTbXeoDtBISrriw1DVPoUTZcLONboF3Bkjnujr+i/q1yicSHmWegIXO2I
	 NjcmEyY7TIJYA==
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 8FAD43848A6
	for <usrp-users@lists.ettus.com>; Wed,  3 May 2023 15:17:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="PNANaCCj";
	dkim-atps=neutral
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-50bd37ca954so10116283a12.0
        for <usrp-users@lists.ettus.com>; Wed, 03 May 2023 12:17:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683141441; x=1685733441;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2XCQ6kkRgkpl/Z4uKIsjQSQWSJ0Ds3pGwJ4R0g2hovA=;
        b=PNANaCCjUSmZuyGWZJ6b+Gx+eRiycf9BOvhbDNYAcMcelSBkmSQobJ8ltcg3FJ23aT
         QZIigA6RjG1wBU5Cyquy9uOfKoQZ4l4UyAwh+gn3nfTF1+tGsEspx+fTrWW61aXp3ZCb
         UdpBcgRYDcF52mgKCmycWK90NPn1k+X/FEaK9HRDYA3Af1a5EqA2mYOxVCMACMnaT2wZ
         4vmUHPz2241zfz2h8CfICiVMCJkVHNxOhKSxu8WJdiv1w1sP5LsSSUoH2FzlW7ILrq5C
         1ftLDcq3Bq8YYm4OaW6GDYJTpSUmi2g3KR22Kg2WO68X03s2fmVCXOqehlXPicYScvQ8
         Ycwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683141441; x=1685733441;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2XCQ6kkRgkpl/Z4uKIsjQSQWSJ0Ds3pGwJ4R0g2hovA=;
        b=L+xYZGa0DmqF3z3DKh6BHuAm+ZaJWi6s/cw1HCIUfreiGsvMyLE7W5jg+Q7V+Ob2x5
         XxNTM3zvc3MFNz/LfGmnX4T1oLvVw8pbkicBbtr8zxeU9LHBAianUHvGZ3wgsF7sKEUo
         F1dd15Fz4bZ0HSM+dCKPzxRY3p+fB/suA5icq6ejk91kETnlhz9InlqeDZ0taWPaKfNG
         KyZhmUjLOCTgDf4Vy4QomxC/kkNmbGJ5MbAuxU41xOlTXm/XVdUemOMTP3iZdyIp2kLr
         o/gS/ZIpMquVn1CH1aEYes8FhIC/Bdp34XB/jOUUZhRCEr3Rh1TeuO3dC+Tz9yDvZV+q
         fpjA==
X-Gm-Message-State: AC+VfDzGClFRkYa7t83cm5swCupBxlT3uVY1REh5cAtk9k/p+t4EpCtI
	beaK57M6NZMZD0gGamPHNsQ1o4P4A0M+66M0nbnoZ8WW
X-Google-Smtp-Source: ACHHUZ7ImJPG8jruNLh9j5KevTCGBMmQfyoyvEPwoMT0yPjHJ9mycm+mSLhHXfSJw3dDukkmDOBCTT/+o0uAo+twKks=
X-Received: by 2002:a17:907:c07:b0:960:6263:138f with SMTP id
 ga7-20020a1709070c0700b009606263138fmr3495155ejc.27.1683141440974; Wed, 03
 May 2023 12:17:20 -0700 (PDT)
MIME-Version: 1.0
References: <ZUkgZQkbRM4geBWDbiZS4mn4v8kvIwtnpDYlCs0Oo@lists.ettus.com>
In-Reply-To: <ZUkgZQkbRM4geBWDbiZS4mn4v8kvIwtnpDYlCs0Oo@lists.ettus.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Wed, 3 May 2023 15:17:10 -0400
Message-ID: <CAEXYVK5Y4O_KD+uSro0afsbXcO24cz5iWz5itgEzNq3pUUmXpw@mail.gmail.com>
To: jmaloyan@umass.edu
Message-ID-Hash: 5HN42FRRNFX67N4LJYNEHSJGKTHZBEZV
X-Message-ID-Hash: 5HN42FRRNFX67N4LJYNEHSJGKTHZBEZV
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC Block Not found
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5HN42FRRNFX67N4LJYNEHSJGKTHZBEZV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5525182129693678346=="

--===============5525182129693678346==
Content-Type: multipart/alternative; boundary="000000000000b2324705facee781"

--000000000000b2324705facee781
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, May 3, 2023 at 2:07=E2=80=AFPM <jmaloyan@umass.edu> wrote:

> Hello,
>
>
> I currently have a custom RFNOC module. When I try to initialize my block
> however, I am unable to find it. I get an error that seems to match up wi=
th
> the block id I set on my module, but it still seems that it cannot be
> found. This is the error that is shown=E2=80=A6
>
> [WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID 0xde30,
> 0xffff
>
> To test if my block was working properly, I used a NOC_ID used for the
> prepackaged modules and it worked fine, but I would however like to use a
> seperate NOC_ID for my own modules. I set the NOC ID in my yml file and
> block_control.cpp file to 0xde30 as per the RFNOC 4.0 Introduction guide.
>

What is the output of uhd_usrp_probe?  Do you see your block listed there?

Brian

--000000000000b2324705facee781
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, May 3, 2023 at 2:07=E2=80=AFPM &l=
t;<a href=3D"mailto:jmaloyan@umass.edu">jmaloyan@umass.edu</a>&gt; wrote:<b=
r></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><p>Hello,</p><p><br>I currently have a custom RFNOC module. When=
 I try to initialize my block however, I am unable to find it. I get an err=
or that seems to match up with the block id I set on my module, but it stil=
l seems that it cannot be found. This is the error that is shown=E2=80=A6</=
p><p><code>[WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-I=
D 0xde30, 0xffff</code></p><p>To test if my block was working properly, I u=
sed a NOC_ID used for the prepackaged modules and it worked fine, but I wou=
ld however like to use a seperate NOC_ID for my own modules. I set the NOC =
ID in my yml file and block_control.cpp file to 0xde30 as per the RFNOC 4.0=
 Introduction guide.</p></blockquote><div><br></div><div>What=C2=A0is the o=
utput of uhd_usrp_probe?=C2=A0 Do you see your block listed there?</div><di=
v><br></div><div>Brian</div></div></div>

--000000000000b2324705facee781--

--===============5525182129693678346==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5525182129693678346==--
