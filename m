Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CBFC7A5DEB8
	for <lists+usrp-users@lfdr.de>; Wed, 12 Mar 2025 15:17:54 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6E2763862A3
	for <lists+usrp-users@lfdr.de>; Wed, 12 Mar 2025 10:17:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1741789073; bh=aK8FDi+mqvdc2rwscPjr8fVhfjxy+llBE9/j/Harenw=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=OC7KU8VfvsfRqp01ExPDgIQ+S89dCgwBLV/edD3aECcR4CSfZ0sgtCsLDkjW0ydSe
	 qrFlYRjjuE9fOXBbRGPUxLvLZACaTKdKspYCVtOQKg2b5FAO/uDI8x2ObNOz7up/B6
	 I7d4XOYwLBGVYHyPhVb4xwkLZdT1Nm8v9CZn1UrUmPm03746TYOa4W/+8LlOKSxIKk
	 f3f92EowoU6Ovf14vSPRnV24977sPuUIOmMdT5CuBKZNtZq4eDaoe6GAHPhEZknb37
	 68IwryufjIHdkzuXttGEvxxbSTgRYY3P8BqgUInfci2zVCz1IO70q+aWDkIYQ62wrm
	 zJC0sW/x+FXWg==
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 6AAA7386176
	for <usrp-users@lists.ettus.com>; Wed, 12 Mar 2025 10:16:51 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="IfqyVzxK";
	dkim-atps=neutral
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5e5b56fc863so9962454a12.3
        for <usrp-users@lists.ettus.com>; Wed, 12 Mar 2025 07:16:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1741789010; x=1742393810; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=A75VCjQED8A+IRF+Frk/+DogSE1oo3TtkiVfQVdt/7E=;
        b=IfqyVzxKtMBcbDw1aXqE1+igdWLu20Bb+IZ/qN3GneGS2gPPsDM9DHGn7167NWS3HI
         FtYf4ApdxhMdccbg5H2RobV9pMNR+7WmqDkWgNQSfGIrxppKcQYAUsWAe8Vik/SK/tB3
         oPRbGABZ1JazId20gPUpdFS5hrKq22ldUmx40/uEHxms69SO1VCwgu2sO4GRCMGCQ0Kj
         gAyWzoyfbtpdz01XX56IAauHlLKOgD2XMvb35OoAJHcTM2kJkbMcdPqaXgKA6tiPC8vD
         1JYHUY/jxYJa+ZdiErH0huH54a6ewdMPHolhGHIy8eTCVTgmVkpWfQxItSA/ncVo4QkM
         1N4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741789010; x=1742393810;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A75VCjQED8A+IRF+Frk/+DogSE1oo3TtkiVfQVdt/7E=;
        b=tsId9XN22E57wEStvLM9F36k2Woyl/PAOfyhKQOPWMRRzm7vJo9rdS6hORUCdhf1K4
         xrUPKiHf47/L2E/PN3VTGOTEcUL+DldBsNxPZfQKZoObwpFV31JOzmPUvHvc1Kip54zh
         8rjv3k7GpEUxNXhfPp3Kl/gue59GA5zYJV9K6VFwkot6AP9brhRr5lbDua6l205C2jr+
         FA2Piqs4YfaXQQjdzG/vnB/P0AnHxn2+VFtE+RE/sK0i9XS/Dft1Hv67AXXBFgzTbFr7
         6FEOCE7zSVowd1lxLR2RovrxvvL4WJeYbO+Ma1i8Rl0/sLOZhv4ZnnefT/Tgptx9lcCo
         qtgw==
X-Gm-Message-State: AOJu0YxJPbqUMAmHiTkXp2kHrj2f+EVRZxn792aZ6i/9ZhGBc6vDy71/
	oNKjVicf76ge2Fdnnakc0zQMTRcfwT4gvS1X/Ro0qZeOcZRMqnjPaI2lv9405R+iN/b4v0gGDKy
	2W28CyMK0xJCosPKxYRXeqh5mMOPEurHhtwBu
X-Gm-Gg: ASbGncsjLIZ3fMC2smyo8Yd/FlD2Qua5uchXln2HggXM95xURhoe7TL6b+Q5jSF2yLG
	nODRJ5lIj331qbuJnqpeuagpbz6auxfCbpmBNnPMVpRnFZHFkt7f4Y41YrlxU3XjnHTW8KnbKsZ
	GLQl9HSProc5YS9YT2OX9kMicWvg==
X-Google-Smtp-Source: AGHT+IHTHd7hH40nXFKN9/1sShnUEJ0GrZqZAf2PkGqFzMtTpE5kTd6GQseAXgymoIh1kMRaS2921L0DNmeOqNydcDU=
X-Received: by 2002:a05:6402:40cf:b0:5e7:b00b:2052 with SMTP id
 4fb4d7f45d1cf-5e7b00b218fmr4665651a12.22.1741789008658; Wed, 12 Mar 2025
 07:16:48 -0700 (PDT)
MIME-Version: 1.0
References: <6snyoUouKAXb8Ac5K7FSxsa7azxfkpPgiYdMS4ttPU@lists.ettus.com>
In-Reply-To: <6snyoUouKAXb8Ac5K7FSxsa7azxfkpPgiYdMS4ttPU@lists.ettus.com>
Date: Wed, 12 Mar 2025 10:16:36 -0400
X-Gm-Features: AQ5f1Jp55u2hbWpenwZ0GBOU6RgZBIiKav_hFVS58chKjEErJq-7xMn3UfvWKMU
Message-ID: <CAB__hTRvbupNFNKVn_z3-=N32aPLh0OmGP8A4vz9wMu7SBGUUg@mail.gmail.com>
To: carmixdev@gmail.com
Message-ID-Hash: NV54VNZF6WNUTY2RYUCW75FPDH5AJTK4
X-Message-ID-Hash: NV54VNZF6WNUTY2RYUCW75FPDH5AJTK4
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 transmit multi streams on single radio channel
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NV54VNZF6WNUTY2RYUCW75FPDH5AJTK4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============3387032935028576240=="

--===============3387032935028576240==
Content-Type: multipart/alternative; boundary="00000000000022a6d0063025dbbe"

--00000000000022a6d0063025dbbe
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi John,
I think you will need to build your own RFNoC image, but you could probably
do it with stock blocks such that you don't need to develop a new block.
If you built a 4-channel DUC with each input tied to an SEP (as you
suggested) and each output tied to inputs of AddSub blocks. You would need
3 such addsub blocks - two to handle the 4 outputs of the DUC and then one
additional to add the 2 AddSub blocks and send the result to the radio.
The AddSub blocks would automatically synchronize the streams.

Just as a caution, in my experience when combining multiple streams (as
done with the AddSub block), the graph can get blocked if the streams don't
always have the same number of samples. For example, let's say you start
transmitting on all four streams but then you later stop them sequentially
such that the total trailing number of samples on each stream is unequal.
Then, these samples will be left in the queue waiting at the AddSub for the
next transmit and thus cause the subsequent transmit to be misaligned.
Rob

On Wed, Mar 12, 2025 at 3:33=E2=80=AFAM <carmixdev@gmail.com> wrote:

> Hi, I=E2=80=99m developing a solution on X310+UBX160 SDR, the solution is=
 the one
> depicted in the picture:
>
> I have 4 streams at 2MHz bandwidth each, but they are spaced each other o=
f
> 35 MHz around F0 so that the total frequency span is around 140MHz. Now I
> have to transmit these signals on a single X310 channel and 140MHz is wel=
l
> inside the 160MHz bandwidth. However I would like to save network bandwid=
th
> and computing power and transmit to the radio just the four streams @ 2MH=
z,
> for a total bandwidth of 8MHz. What is the best solution according to you=
?
> I=E2=80=99m thinking of using RFNoC, using for example 4 SEP and merging/=
shifting
> the signals inside the Radio, is it the correct path? Can I combine
> existing RFNoCs to obtain such a result or should I have to develop it on
> my own?
>
> Thank you in advance for your support,
>
> John
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000022a6d0063025dbbe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi John,<div>I think you will need to build your own RFNoC=
 image, but you could probably do it with stock blocks such that you don&#3=
9;t need to develop a new block.=C2=A0 If you built a 4-channel DUC with ea=
ch input tied to an SEP (as you suggested) and each output tied to inputs o=
f AddSub blocks. You would need 3 such addsub blocks - two to handle the 4 =
outputs of the DUC and then one additional to add the 2 AddSub blocks and s=
end the result to the radio.=C2=A0 The AddSub blocks would automatically sy=
nchronize the streams.</div><div><br></div><div>Just as a caution, in my ex=
perience when combining multiple streams (as done with the AddSub block), t=
he graph can get blocked if the streams don&#39;t always have the same numb=
er of samples. For example, let&#39;s say you start transmitting on all fou=
r streams but then you later stop them sequentially such that the total tra=
iling number of samples on each stream is unequal.=C2=A0 Then, these sample=
s will be left in the queue waiting at the AddSub for the next transmit and=
 thus cause the subsequent transmit to be misaligned.</div><div>Rob</div></=
div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Wed, Mar 12, 2025 at 3:33=E2=80=AFAM &lt;<a href=3D"=
mailto:carmixdev@gmail.com">carmixdev@gmail.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><p>Hi, I=E2=80=99m developin=
g a solution on X310+UBX160 SDR, the solution is the one depicted in the pi=
cture:</p><p>I have 4 streams at 2MHz bandwidth each, but they are spaced e=
ach other of 35 MHz around F0 so that the total frequency span is around 14=
0MHz. Now I have to transmit these signals on a single X310 channel and 140=
MHz is well inside the 160MHz bandwidth. However I would like to save netwo=
rk bandwidth and computing power and transmit to the radio just the four st=
reams @ 2MHz, for a total bandwidth of 8MHz. What is the best solution acco=
rding to you?  I=E2=80=99m thinking of using RFNoC, using for example 4 SEP=
 and merging/shifting the signals inside the Radio, is it the correct path?=
 Can I combine existing RFNoCs to obtain such a result or should I have to =
develop it on my own?</p><p>Thank you in advance for your support,</p><p>Jo=
hn</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000022a6d0063025dbbe--

--===============3387032935028576240==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3387032935028576240==--
