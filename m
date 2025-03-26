Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3647EA71FB2
	for <lists+usrp-users@lfdr.de>; Wed, 26 Mar 2025 20:54:09 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 07A73385022
	for <lists+usrp-users@lfdr.de>; Wed, 26 Mar 2025 15:54:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1743018848; bh=bLmOdI/n/Hah80agNhAg1vRYnEVQZzAuxkyTtNeexQg=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Dgu6HEDg/AuRiJQnuM9F7gkCo36zzkBBRabgwZHM+enoy92Gi88VPVr3jscYS1Rla
	 Rx5V/9GZ/N5atPI4IhHteQe8jVAp9aGi5ENCAChfxahESoaJ/4DKRRklBxkliZu0nx
	 EibvMVI9nFdyhChBDblUajkMnOFC7OEc1Y8jObFe3ZMyeYTTAaXfsF/V6lCLW8Kc32
	 UNR9vJpZv8Ra+9I9qQkk4iEqbArKvIf0lWoNuems92IsaVVxJ54qYwZDUGm/TP1Eyq
	 007F8jdrIHE1lmqTfiRYpvdFrJbrTCdji2KzAOdMMMcGDMN6YFzOUNYurrei2H8pFE
	 ONSJUIDcHLwlA==
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 97B86383EA0
	for <usrp-users@lists.ettus.com>; Wed, 26 Mar 2025 15:53:23 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="VjJpEXXA";
	dkim-atps=neutral
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-6f6c90b51c3so3080327b3.2
        for <usrp-users@lists.ettus.com>; Wed, 26 Mar 2025 12:53:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1743018803; x=1743623603; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=yJnT9R3BZxp5mwHIYLIaJkiWE3loKz1ErViC658GIiQ=;
        b=VjJpEXXA4uyRykFPq/2NjzAX3pXkVv9la4kM80J5s2aOT/4LrspGEFwStwIzkJBJw1
         wqzL8IzBbvGy/7rdkfYW+g+YuZnjxhKfkucr/jo9uJoJ3Dy2H8CDcWwTNh4+dh/J9DsS
         E4sbL+sz5JJXe/TalZ01S7DzV3RR2+md4fq/sMY8W5CTGcuEqYAVy2qyldf2KY+KBL8g
         CixQgGLOdj9FhEBJ8hNHZaKB9mIp6PWYgcCXGWbBLRjGr06uaDwLLtH7CnOEh2uJpr5M
         nu1lqbiMdSd3w09HHfwVvo1rrQaS3x4VQITbhrHmqgh4QVsMegtbc5ugeI8G0fnBNTNd
         7zAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743018803; x=1743623603;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yJnT9R3BZxp5mwHIYLIaJkiWE3loKz1ErViC658GIiQ=;
        b=tECnyp9zFbLeFqoLNAnLlzGR+TK+aXalGin1urTcIEZMOB/d9w9yyGFyZGD3DfhXqj
         wXyzOGoKpz9QhsJ4424ZSfRj/SFeraS30qmzgXKpdMy1biuSNE24WgGz7ERVoGM5eBLK
         KZv3AspdFzyKNroIh5tIro4ckoCIay8bazJCqjxTAYkSqYnTfSzj9meG3d3MsvQyOm6n
         dfyEUFHy9Hdsgn//2VAnd5lCPfuyhgO+YdmHWUmGMrOwTUqr5bokbAFpCZecXXw5+Vc1
         FAv3se2XiYv/MkR1WspV5y8v0wjJQJ+r6gXigtaJHxNBxuxySq0GUhM2FxJOPTmN8NYT
         obLA==
X-Gm-Message-State: AOJu0Yz6sQzXVjKOrgXCGUDHwsWYCKB2VNZNHzk8e4cZHQ+y4ekgtF4V
	mZps65J1EsCLHdhnrFPfyMkcBZ2g3BNlHOwA+dzO+hAXJmvqRTvlD9lwGCOnggPGMTG4lMFhGoU
	R3SuQI2PbB4I5NqUdtc3ik1D8KxmMa9ei/5WqyYDgdeOJ/RfsR4PSyQ==
X-Gm-Gg: ASbGncsIFn0GPorUPh/TGFa6cawfsVYYidDgDZss4uOh6Gl2+nTdUk6J3gv3sennI4k
	PMJjTJg7B31WHsl7rg7KmidX4OkX7pifeeACS+d0IB1JcOMDZyTzgcScxVIJRPkc2mLc5/vCLSf
	+8QdwzzwRme3tlVRwOLBUY7up49xc=
X-Google-Smtp-Source: AGHT+IGe0XQRO7C8JwThA8yqIDZsxqRvFM21hJyx3uZI6iP1O9rQ5QbwCELErc70Ijl0vcIBIcajk/lkIak09E5YppY=
X-Received: by 2002:a05:690c:6089:b0:6f9:aeee:8f1b with SMTP id
 00721157ae682-702250d9c92mr15002387b3.31.1743018802745; Wed, 26 Mar 2025
 12:53:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTTmZsHLPee4V5TGR5S77Z0ZwA5WhFrKJ6YYMAgFGaFBZQ@mail.gmail.com>
In-Reply-To: <CAB__hTTmZsHLPee4V5TGR5S77Z0ZwA5WhFrKJ6YYMAgFGaFBZQ@mail.gmail.com>
From: Michael Dickens <michael.dickens@ettus.com>
Date: Wed, 26 Mar 2025 15:53:10 -0400
X-Gm-Features: AQ5f1JqihDTVktzz6Eyv8tcciiYN-3sV-kArE951PN069BwkRj78d7sETYTzsgg
Message-ID: <CAGNhwTNXe8xjs7hTTg=u3wVPjbjM0osV7xHCRzbDArQcoG_sxA@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: LY6BTYJSU4K3XB7YGAEBNHQ2MDQDUFSB
X-Message-ID-Hash: LY6BTYJSU4K3XB7YGAEBNHQ2MDQDUFSB
X-MailFrom: michael.dickens@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: 100Gb NIC for X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LY6BTYJSU4K3XB7YGAEBNHQ2MDQDUFSB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6355273531312820328=="

--===============6355273531312820328==
Content-Type: multipart/alternative; boundary="0000000000009332530631443017"

--0000000000009332530631443017
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Rob! Great questions. Here's way too much information taken from
internal notes I have on the subject, to help you process all of this :)
{{{
E810 QCDA2 provides 100 Gb aggregate between both ports. Dual port to USRP
is not recommended since UHD doesn't "know" this limitation.

E810 2QCAD2 provides 2 bifurcated 100 Gb links, so can do 200 Gb aggregate.
I -think- one has to tell BIOS / OS about this bifurcation to get the NIC
fully working. I don't have one to test out.

There are now newer Intel E82* NICs. I don't know their capabilities.

Any of the Intel E8* NICs can be configured in various ways, the most
relevant for USRPs are:
* 2x1x100 : 2 ports, each hosting 1 virtual link at 100 Gb
* 100 : 1 port with a single virtual link at 100 Gb
* 8x10 (formerly 2x4x10 : 2 ports, each hosting 4 virtual link at 10 Gb eac=
h
{{{
$ sudo ./epct64e -get -nic 1
Ethernet Port Configuration Tool
EPCT version: v1.42.24.04
Copyright 2019 - 2024 Intel Corporation.

Available Port Options:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
        Port                             Quad 0           Quad 1
Option  Option (Gbps)                    L0  L1  L2  L3   L4  L5  L6  L7
=3D=3D=3D=3D=3D=3D=3D =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D    =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
        2x1x100                       -> 100   -   -   -  100   -   -   -
        2x50                          ->  50   -  50   -    -   -   -   -
        4x25                          ->  25  25  25  25    -   -   -   -
        2x2x25                        ->  25  25   -   -   25  25   -   -
Active  8x10                          ->  10  10  10  10   10  10  10  10
        100                           -> 100   -   -   -    -   -   -   -
}}}

FWIW: We're had a number of customers with E810 CQDA2 issues recently. My
current belief is that the NIC (NVM) and OS drivers do not play nicely
together & hence updating both to the latest is needed to get everything
working properly.

Intel E8* NICs used the ICE driver, which is in active development & works
pretty well overall. ICE drivers -do not- work seamlessly with DPDK unlike
Mellanox ones. It's easy to create a script to do the driver binding & link
stuff both down and up, but this can be very confusing for people not used
to taking down a link and rebinding the driver & then the reverse to get it
back working in the system again.

The Mellanox drivers & hardware use a little less CPU time than the Intel
ones, so a little better single-core performance =E2=80=94 which helps when=
 using
DPDK and doing max data throughput.

Yes, 500 GS/s on 4 channels (2 GS/s aggregate) is 64 Gb/s and thus well
within the capabilities of a single 100 Gb port on either NIC ... That's
fine for an X410. For an X440 we double that to 4 GS/s aggregate, which
clearly requires 2x 100 Gb links. For this use-case the Mellanox NICs are
the way to go.
}}}

On Tue, Mar 25, 2025 at 3:53=E2=80=AFPM Rob Kossler via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
> I am in the process of purchasing a 100Gb NIC for use with the X410 and
> have seen documentation and previous posts indicating that the ConnectX
> NICs are preferred. But I did note in the DPDK knowledge base article tha=
t
> the Intel E810 could also work.  I prefer the E810 because it seems to be
> less expensive and can be configured for 4x10Gb, but I don't want to crea=
te
> a headache for myself.  Let me know if you have had success or issues wit=
h
> the E810 using a 100Gb link (or two 100Gb links) to the X410.
>
> I am also confused about the E810 which comes in a couple of 100Gb models=
:
> CQDA2 and 2CQDA2, where they both have two 100Gb QSFP28 ports, but the
> former can only handle aggregate 100Gb whereas the latter can handle
> aggregate 200Gb.  My confusion is "why does it matter for the X410?".  Wi=
th
> 4 channels at 500 MS/s, the aggregate bit rate is only 64Gb/s so why does
> it matter if the E810 CQDA2 only supports aggregate 100Gb?  It seems to m=
e
> that either model supports the maximum rate of the X410.
>
> Thanks.
> Rob
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000009332530631443017
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey Rob! Great questions. Here&#39;s way too much inf=
ormation taken from internal notes I have on the subject, to help you proce=
ss all of this :)</div><div>{{{</div><div><div class=3D"elementToProof" sty=
le=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helv=
etica,sans-serif;font-size:11pt;color:rgb(0,0,0)">E810 QCDA2 provides 100 G=
b aggregate between both ports. Dual port to USRP is not recommended since =
UHD doesn&#39;t &quot;know&quot; this limitation.</div><div class=3D"elemen=
tToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService=
,Calibri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)"><br></div><d=
iv class=3D"elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFont,A=
ptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,=
0,0)">E810 2QCAD2 provides 2 bifurcated 100 Gb links, so can do 200 Gb aggr=
egate. I -think- one has to tell BIOS / OS about this bifurcation to get th=
e NIC fully working. I don&#39;t have one to test out.</div><div class=3D"e=
lementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontSe=
rvice,Calibri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)"><br></d=
iv><div class=3D"elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedF=
ont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:11pt;color:r=
gb(0,0,0)">There are now newer Intel E82* NICs. I don&#39;t know their capa=
bilities.</div><div class=3D"elementToProof" style=3D"font-family:Aptos,Apt=
os_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:=
11pt;color:rgb(0,0,0)"><br></div><div class=3D"elementToProof" style=3D"fon=
t-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,san=
s-serif;font-size:11pt;color:rgb(0,0,0)">Any of the Intel E8* NICs can be c=
onfigured in various ways, the most relevant for USRPs are:</div><div class=
=3D"elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSF=
ontService,Calibri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">* =
2x1x100 : 2 ports, each hosting 1 virtual link at 100 Gb</div><div class=3D=
"elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFont=
Service,Calibri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">* 100=
 : 1 port with a single virtual link at 100 Gb</div><div class=3D"elementTo=
Proof" style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Ca=
libri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">* 8x10 (formerl=
y 2x4x10=C2=A0: 2 ports, each hosting 4 virtual link at 10 Gb each</div><di=
v class=3D"elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFont,Ap=
tos_MSFontService,Calibri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0=
,0)">{{{</div><div class=3D"elementToProof" style=3D"font-family:Consolas,C=
ourier,monospace;font-size:11pt;color:rgb(0,0,0)">$ sudo ./epct64e -get -ni=
c 1</div><div class=3D"elementToProof" style=3D"font-family:Consolas,Courie=
r,monospace;font-size:11pt;color:rgb(0,0,0)">Ethernet Port Configuration To=
ol</div><div class=3D"elementToProof" style=3D"font-family:Consolas,Courier=
,monospace;font-size:11pt;color:rgb(0,0,0)">EPCT version: v1.42.24.04</div>=
<div class=3D"elementToProof" style=3D"font-family:Consolas,Courier,monospa=
ce;font-size:11pt;color:rgb(0,0,0)">Copyright 2019 - 2024 Intel Corporation=
.</div><div class=3D"elementToProof" style=3D"font-family:Consolas,Courier,=
monospace;font-size:11pt;color:rgb(0,0,0)"><br></div><div class=3D"elementT=
oProof" style=3D"font-family:Consolas,Courier,monospace;font-size:11pt;colo=
r:rgb(0,0,0)">Available Port Options:</div><div class=3D"elementToProof" st=
yle=3D"font-family:Consolas,Courier,monospace;font-size:11pt;color:rgb(0,0,=
0)">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D</div><div class=3D"elementToProof" style=3D"font-family:Consolas,Courie=
r,monospace;font-size:11pt;color:rgb(0,0,0)">=C2=A0 =C2=A0 =C2=A0 =C2=A0 Po=
rt =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Quad 0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Quad =
1 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</div><div class=3D"elementToProof" sty=
le=3D"font-family:Consolas,Courier,monospace;font-size:11pt;color:rgb(0,0,0=
)">Option =C2=A0Option (Gbps) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0L0 =C2=A0L1 =C2=A0L2 =C2=A0L3 =C2=A0 L4 =C2=A0L5 =
=C2=A0L6 =C2=A0L7 =C2=A0</div><div class=3D"elementToProof" style=3D"font-f=
amily:Consolas,Courier,monospace;font-size:11pt;color:rgb(0,0,0)">=3D=3D=3D=
=3D=3D=3D=3D =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D =C2=A0 =C2=A0=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div><div =
class=3D"elementToProof" style=3D"font-family:Consolas,Courier,monospace;fo=
nt-size:11pt;color:rgb(0,0,0)">=C2=A0 =C2=A0 =C2=A0 =C2=A0 2x1x100 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 -&gt;=
 100 =C2=A0 - =C2=A0 - =C2=A0 - =C2=A0100 =C2=A0 - =C2=A0 - =C2=A0 -</div><=
div class=3D"elementToProof" style=3D"font-family:Consolas,Courier,monospac=
e;font-size:11pt;color:rgb(0,0,0)">=C2=A0 =C2=A0 =C2=A0 =C2=A0 2x50 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0-&gt; =C2=A050 =C2=A0 - =C2=A050 =C2=A0 - =C2=A0 =C2=A0- =C2=A0 -=
 =C2=A0 - =C2=A0 -</div><div class=3D"elementToProof" style=3D"font-family:=
Consolas,Courier,monospace;font-size:11pt;color:rgb(0,0,0)">=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 4x25 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-&gt; =C2=A025 =C2=A025 =C2=A025 =C2=A025=
 =C2=A0 =C2=A0- =C2=A0 - =C2=A0 - =C2=A0 -</div><div class=3D"elementToProo=
f" style=3D"font-family:Consolas,Courier,monospace;font-size:11pt;color:rgb=
(0,0,0)">=C2=A0 =C2=A0 =C2=A0 =C2=A0 2x2x25 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-&gt; =C2=A025 =C2=A025=
 =C2=A0 - =C2=A0 - =C2=A0 25 =C2=A025 =C2=A0 - =C2=A0 -</div><div class=3D"=
elementToProof" style=3D"font-family:Consolas,Courier,monospace;font-size:1=
1pt;color:rgb(0,0,0)">Active =C2=A08x10 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-&gt; =C2=A010 =C2=
=A010 =C2=A010 =C2=A010 =C2=A0 10 =C2=A010 =C2=A010 =C2=A010</div><div clas=
s=3D"elementToProof" style=3D"font-family:Consolas,Courier,monospace;font-s=
ize:11pt;color:rgb(0,0,0)">=C2=A0 =C2=A0 =C2=A0 =C2=A0 100 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 -&gt; 100 =C2=A0 - =C2=A0 - =C2=A0 - =C2=A0 =C2=A0- =C2=A0 - =C2=A0 - =
=C2=A0 -</div><div class=3D"elementToProof" style=3D"font-family:Aptos,Apto=
s_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:1=
1pt;color:rgb(0,0,0)">}}}</div><div class=3D"elementToProof" style=3D"font-=
family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-=
serif;font-size:11pt;color:rgb(0,0,0)"><br></div><div class=3D"elementToPro=
of" style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calib=
ri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)"><div style=3D"colo=
r:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:small"><di=
v class=3D"elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFont,Ap=
tos_MSFontService,Calibri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0=
,0)">FWIW: We&#39;re had a number of customers with E810 CQDA2 issues recen=
tly. My current belief is that the NIC=C2=A0(NVM) and OS drivers do not pla=
y nicely together &amp; hence updating both to the latest is needed to get =
everything working properly.</div></div><br class=3D"gmail-Apple-interchang=
e-newline"></div><div class=3D"elementToProof" style=3D"font-family:Aptos,A=
ptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-siz=
e:11pt;color:rgb(0,0,0)">Intel E8* NICs used the ICE driver, which is in ac=
tive development &amp; works pretty well overall. ICE drivers -do not- work=
 seamlessly with DPDK unlike Mellanox ones. It&#39;s easy to create a scrip=
t to do the driver binding &amp; link stuff both down and up, but this can =
be very confusing for people not used to taking down a link and rebinding t=
he driver &amp; then the reverse to get it back working in the system again=
.</div><div class=3D"elementToProof" style=3D"font-family:Aptos,Aptos_Embed=
dedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:11pt;col=
or:rgb(0,0,0)"><br></div><div class=3D"elementToProof" style=3D"font-family=
:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;=
font-size:11pt;color:rgb(0,0,0)">The Mellanox drivers &amp; hardware use a =
little less CPU time than the Intel ones, so a little better single-core pe=
rformance =E2=80=94 which helps when using DPDK and doing max data throughp=
ut.</div><div class=3D"elementToProof" style=3D"font-family:Aptos,Aptos_Emb=
eddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:11pt;c=
olor:rgb(0,0,0)"><br></div><div class=3D"elementToProof" style=3D"font-fami=
ly:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-seri=
f;font-size:11pt;color:rgb(0,0,0)">Yes, 500 GS/s on 4 channels (2 GS/s aggr=
egate) is 64 Gb/s and thus well within the capabilities=C2=A0of a single 10=
0 Gb port on either NIC ... That&#39;s fine for an X410. For an X440 we dou=
ble that to 4 GS/s aggregate, which clearly requires 2x 100 Gb links. For t=
his use-case the Mellanox NICs are the way to go.</div><div class=3D"elemen=
tToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService=
,Calibri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)"><span style=
=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:sm=
all">}}}</span></div></div></div><br><div class=3D"gmail_quote gmail_quote_=
container"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 25, 2025 at 3:=
53=E2=80=AFPM Rob Kossler via USRP-users &lt;<a href=3D"mailto:usrp-users@l=
ists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,<div>I am in =
the process of purchasing a 100Gb NIC for use with the X410 and have seen d=
ocumentation and previous posts indicating=C2=A0that the ConnectX NICs are =
preferred. But I did note in the DPDK knowledge base article that the Intel=
 E810 could also work.=C2=A0 I prefer the E810 because it seems to be less =
expensive and can be configured for 4x10Gb, but I don&#39;t want to create =
a headache for myself.=C2=A0 Let me know if you have had success or issues =
with the E810 using a 100Gb link (or two 100Gb links) to the X410.</div><di=
v><br></div><div>I am also confused about the E810 which comes in a couple =
of 100Gb models: CQDA2 and 2CQDA2, where they both have two 100Gb QSFP28 po=
rts, but the former can only handle aggregate 100Gb whereas the latter can =
handle aggregate 200Gb.=C2=A0 My confusion is &quot;why does it matter for =
the X410?&quot;.=C2=A0 With 4 channels at 500 MS/s, the aggregate bit rate =
is only 64Gb/s so why does it matter if the E810 CQDA2 only supports aggreg=
ate 100Gb?=C2=A0 It seems to me that either model supports the maximum rate=
 of the X410.</div><div><br></div><div>Thanks.</div><div>Rob</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000009332530631443017--

--===============6355273531312820328==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6355273531312820328==--
