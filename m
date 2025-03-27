Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E3121A728BF
	for <lists+usrp-users@lfdr.de>; Thu, 27 Mar 2025 03:21:00 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C25183852E9
	for <lists+usrp-users@lfdr.de>; Wed, 26 Mar 2025 22:20:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1743042059; bh=m3jtPhw14N0aPM0cN6Iy9RJHRyjKPKAk0EdqV0Q8NDA=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=jAk0PITL+y5V1WZxU4/veN3PPsPwAe8oeFBV98WCtz6DMR3Egcv6An975c0LMqeVj
	 F29SoLPp4hl3nLCB+MG2mGHqpTnzIy+gQXbXXdpmm19RhO+PMZ+tQPyOsAMON2s6jn
	 POWzSKsHSbnbWYNnvppwEWgGnaHT+l9/G/qC+MtEScB6CRfhdoSByjGEh9PuYrUvi4
	 v12UIR9/o4/9GIJ7llWUWfD5E54Jw5YcTo2SfaiNGlytv+NY0dX6MDoO2CsC9qMLgQ
	 WoIFSybiKFkoX8g3Ko22cHhDVwMIqk+FtwtkdXRD6pg3lYpoHa8TBQYABt+x77awkZ
	 axcYTChlX8iJg==
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 84953385103
	for <usrp-users@lists.ettus.com>; Wed, 26 Mar 2025 22:20:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="MqxR8ypr";
	dkim-atps=neutral
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5e686d39ba2so832334a12.2
        for <usrp-users@lists.ettus.com>; Wed, 26 Mar 2025 19:20:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1743042015; x=1743646815; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=4DUcEEKyYkvdN3aLSUxJ3DgdzWApiYcZ6AirjX951BQ=;
        b=MqxR8yproDSV+w74PImjKL49Hh9oIumVXb38qbBgpdW2t14NZvKZXllB3Z5T31C1u4
         H+ZxiWPVLo3FVXedDEk0IApfoGMPQatW28XmCwMcsZsmfzYa+Ra0lrwAj82wCwQhOOP4
         g51EGBMzNo+Mt0cXejXQimo2lqWH+n7uDTr/TUfy2qm8QnpEl5YukXD1Y67gZSs4+xWD
         2Z8B0qOd5mY7MifH5lYv+gaR53CEAkzFXgprUCNCXzvxxi5R4xvCCiH3xmNi80b5OnmY
         uxqIjckY2AoF++3vmpjPYyXUoRjvjxeSXqwy4TtvYUp9uZLepe7n91T6Kh8XU3WlwwZC
         Cmug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743042015; x=1743646815;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4DUcEEKyYkvdN3aLSUxJ3DgdzWApiYcZ6AirjX951BQ=;
        b=m2/LAhBZ835mQxBBRpG8Mn0CO7PWTyudIfnJhh80qNhXMVoiwU/71YuOmZGrIjvogC
         t/Db6UhbA327KXfVR410d4/dim4jC7sPws9+uvfPcPb5cf8P7RdrWC8JmdOy+yCIhUt8
         UC162xAO7TaCyRNn0sKocO6cP/6s/Q7dXVxp52pUH5231lkMMjWKsJTv5PSdRipKSiaS
         amMZbMlVD+pPOLJGBS5TeZj+tAnw1duogn0Va8W9tMz3l7Ft1U06PQYSPNjYd1+hEJ8r
         zzU0SozGNXoHTM93NzMfDIF+rT6z7mv2vpmQcHlMoydgY/UufPAS41bxYo6xqy17KfxW
         JNtQ==
X-Gm-Message-State: AOJu0Yw29geVH3L1q7Z580+K3PdQjAyPOBPyaMeqPMJYcIYhr3Z3bFly
	I/VW+g6HVaTVfyHVwdxPzxa2fklizbxBsA/FrgqkvOCy8Ab04ZgaltD/QYqpRrMY9v9eSLW3bSS
	5DvwkjdgG0vqZ3zHiS+cjLkpDuusmb4xLB5ZZ7zXgma9hPxLKgA==
X-Gm-Gg: ASbGncvJBla85YdF/Y7PN6wkkXtaY2gqIx0Wb/t9eqrlFQy9nygdog1tHB00/uyy8TQ
	IXnORXUXfhWtOtZyXFXGq1l57ZLny5xmJ8IUoE41EKzXBI2Ce6ReC1ZuoMFAKwejafnUidhU5mm
	MSViXQscQlcOlil4b8bQYvBI2nvMWNMGpSxPGBddtT1oYE5caOJhqMTPp2pUQ6ksZE3fYHXg==
X-Google-Smtp-Source: AGHT+IFG1QTbCqfhzuwjIfTPK+ynyOhHCw8DVFLRRY0geHUbuggyiy0CKB3r3YhS/5ynBMx+54winaTfz/ooyaDIrgA=
X-Received: by 2002:a05:6402:270b:b0:5e5:c5f5:f4b with SMTP id
 4fb4d7f45d1cf-5ed8eb08b0dmr1564046a12.22.1743042015295; Wed, 26 Mar 2025
 19:20:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTTmZsHLPee4V5TGR5S77Z0ZwA5WhFrKJ6YYMAgFGaFBZQ@mail.gmail.com>
 <CAGNhwTNXe8xjs7hTTg=u3wVPjbjM0osV7xHCRzbDArQcoG_sxA@mail.gmail.com>
In-Reply-To: <CAGNhwTNXe8xjs7hTTg=u3wVPjbjM0osV7xHCRzbDArQcoG_sxA@mail.gmail.com>
Date: Wed, 26 Mar 2025 22:20:04 -0400
X-Gm-Features: AQ5f1JrbPF5QhdftzGa5JVH2SBM2ChsCDBiK7eKdjxIGhLOhVooq5OGCMu_TInc
Message-ID: <CAB__hTSsNOihuk1wqsyxQNRcj47y-JPtzRWUQUQaBB+U1KVoNQ@mail.gmail.com>
To: Michael Dickens <michael.dickens@ettus.com>
Message-ID-Hash: 326VT22V7AT4X7YPC7BP42VBYG5O7AVR
X-Message-ID-Hash: 326VT22V7AT4X7YPC7BP42VBYG5O7AVR
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: 100Gb NIC for X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/326VT22V7AT4X7YPC7BP42VBYG5O7AVR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============1621893497506657671=="

--===============1621893497506657671==
Content-Type: multipart/alternative; boundary="00000000000026920806314998c2"

--00000000000026920806314998c2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Michael,
Thanks for all of the information. Regarding your final paragraph, you
mentioned that the 64 Gb/s could be handled on one 100 Gb link.  However,
that seems at odds with the following statement in the UHD manual in the X4=
10
section about FPGA types
<https://files.ettus.com/manual/page_usrp_x4xx.html#x4xx_updating_fpga_type=
s>


   - CG_400: 400 MHz analog bandwidth streaming per channel between the
   X4x0 and an external host computer. The current implementation requires
   dual 100 GbE connections for 4 full-duplex channels or a single 100 GbE
   connection for 2 full-duplex channels.

Do you think that this statement in the UHD manual is a mistake?  This is
the statement that made me think that I needed two 100Gb links even though
the 4 channels at 500 MS/s is aggregate 64Gb/s.  If only one link is truly
needed, then I can feel more confident purchasing an E810.
Rob



On Wed, Mar 26, 2025 at 3:53=E2=80=AFPM Michael Dickens <michael.dickens@et=
tus.com>
wrote:

> Hey Rob! Great questions. Here's way too much information taken from
> internal notes I have on the subject, to help you process all of this :)
> {{{
> E810 QCDA2 provides 100 Gb aggregate between both ports. Dual port to USR=
P
> is not recommended since UHD doesn't "know" this limitation.
>
> E810 2QCAD2 provides 2 bifurcated 100 Gb links, so can do 200 Gb
> aggregate. I -think- one has to tell BIOS / OS about this bifurcation to
> get the NIC fully working. I don't have one to test out.
>
> There are now newer Intel E82* NICs. I don't know their capabilities.
>
> Any of the Intel E8* NICs can be configured in various ways, the most
> relevant for USRPs are:
> * 2x1x100 : 2 ports, each hosting 1 virtual link at 100 Gb
> * 100 : 1 port with a single virtual link at 100 Gb
> * 8x10 (formerly 2x4x10 : 2 ports, each hosting 4 virtual link at 10 Gb
> each
> {{{
> $ sudo ./epct64e -get -nic 1
> Ethernet Port Configuration Tool
> EPCT version: v1.42.24.04
> Copyright 2019 - 2024 Intel Corporation.
>
> Available Port Options:
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>         Port                             Quad 0           Quad 1
> Option  Option (Gbps)                    L0  L1  L2  L3   L4  L5  L6  L7
> =3D=3D=3D=3D=3D=3D=3D =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D    =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>         2x1x100                       -> 100   -   -   -  100   -   -   -
>         2x50                          ->  50   -  50   -    -   -   -   -
>         4x25                          ->  25  25  25  25    -   -   -   -
>         2x2x25                        ->  25  25   -   -   25  25   -   -
> Active  8x10                          ->  10  10  10  10   10  10  10  10
>         100                           -> 100   -   -   -    -   -   -   -
> }}}
>
> FWIW: We're had a number of customers with E810 CQDA2 issues recently. My
> current belief is that the NIC (NVM) and OS drivers do not play nicely
> together & hence updating both to the latest is needed to get everything
> working properly.
>
> Intel E8* NICs used the ICE driver, which is in active development & work=
s
> pretty well overall. ICE drivers -do not- work seamlessly with DPDK unlik=
e
> Mellanox ones. It's easy to create a script to do the driver binding & li=
nk
> stuff both down and up, but this can be very confusing for people not use=
d
> to taking down a link and rebinding the driver & then the reverse to get =
it
> back working in the system again.
>
> The Mellanox drivers & hardware use a little less CPU time than the Intel
> ones, so a little better single-core performance =E2=80=94 which helps wh=
en using
> DPDK and doing max data throughput.
>
> Yes, 500 GS/s on 4 channels (2 GS/s aggregate) is 64 Gb/s and thus well
> within the capabilities of a single 100 Gb port on either NIC ... That's
> fine for an X410. For an X440 we double that to 4 GS/s aggregate, which
> clearly requires 2x 100 Gb links. For this use-case the Mellanox NICs are
> the way to go.
> }}}
>
> On Tue, Mar 25, 2025 at 3:53=E2=80=AFPM Rob Kossler via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi,
>> I am in the process of purchasing a 100Gb NIC for use with the X410 and
>> have seen documentation and previous posts indicating that the ConnectX
>> NICs are preferred. But I did note in the DPDK knowledge base article th=
at
>> the Intel E810 could also work.  I prefer the E810 because it seems to b=
e
>> less expensive and can be configured for 4x10Gb, but I don't want to cre=
ate
>> a headache for myself.  Let me know if you have had success or issues wi=
th
>> the E810 using a 100Gb link (or two 100Gb links) to the X410.
>>
>> I am also confused about the E810 which comes in a couple of 100Gb
>> models: CQDA2 and 2CQDA2, where they both have two 100Gb QSFP28 ports, b=
ut
>> the former can only handle aggregate 100Gb whereas the latter can handle
>> aggregate 200Gb.  My confusion is "why does it matter for the X410?".  W=
ith
>> 4 channels at 500 MS/s, the aggregate bit rate is only 64Gb/s so why doe=
s
>> it matter if the E810 CQDA2 only supports aggregate 100Gb?  It seems to =
me
>> that either model supports the maximum rate of the X410.
>>
>> Thanks.
>> Rob
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--00000000000026920806314998c2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Thanks Michael,<div>Thanks for all of the=
 information. Regarding your final paragraph, you mentioned that the 64 Gb/=
s could be handled on one 100 Gb link.=C2=A0 However, that seems at odds wi=
th the following=C2=A0statement in the UHD manual in the <a href=3D"https:/=
/files.ettus.com/manual/page_usrp_x4xx.html#x4xx_updating_fpga_types">X410 =
section about FPGA types</a></div><div><blockquote style=3D"margin:0px 0px =
0px 40px;border:none;padding:0px"><div><ul style=3D"overflow:hidden;color:r=
gb(0,0,0);font-family:Roboto,sans-serif;font-size:14px"><li><code style=3D"=
display:inline-block;direction:ltr">CG_400</code>: 400 MHz analog bandwidth=
 streaming per channel between the X4x0 and an external host computer. The =
current implementation requires dual 100 GbE connections for 4 full-duplex =
channels or a single 100 GbE connection for 2 full-duplex channels.</li></u=
l></div></blockquote><div>Do you think that this statement in the UHD manua=
l is a mistake?=C2=A0 This is the statement that made me think that I neede=
d two 100Gb links even though the 4 channels at 500 MS/s is aggregate 64Gb/=
s.=C2=A0 If only one link is truly needed, then I can feel more confident p=
urchasing an E810.</div></div><div>Rob</div><div><br></div><div><br></div><=
/div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" =
class=3D"gmail_attr">On Wed, Mar 26, 2025 at 3:53=E2=80=AFPM Michael Dicken=
s &lt;<a href=3D"mailto:michael.dickens@ettus.com">michael.dickens@ettus.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr"><div>Hey Rob! Great questions. Here&#39;s way too much in=
formation taken from internal notes I have on the subject, to help you proc=
ess all of this :)</div><div>{{{</div><div><div style=3D"font-family:Aptos,=
Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-si=
ze:11pt;color:rgb(0,0,0)">E810 QCDA2 provides 100 Gb aggregate between both=
 ports. Dual port to USRP is not recommended since UHD doesn&#39;t &quot;kn=
ow&quot; this limitation.</div><div style=3D"font-family:Aptos,Aptos_Embedd=
edFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:11pt;colo=
r:rgb(0,0,0)"><br></div><div style=3D"font-family:Aptos,Aptos_EmbeddedFont,=
Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:11pt;color:rgb(0=
,0,0)">E810 2QCAD2 provides 2 bifurcated 100 Gb links, so can do 200 Gb agg=
regate. I -think- one has to tell BIOS / OS about this bifurcation to get t=
he NIC fully working. I don&#39;t have one to test out.</div><div style=3D"=
font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,=
sans-serif;font-size:11pt;color:rgb(0,0,0)"><br></div><div style=3D"font-fa=
mily:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-se=
rif;font-size:11pt;color:rgb(0,0,0)">There are now newer Intel E82* NICs. I=
 don&#39;t know their capabilities.</div><div style=3D"font-family:Aptos,Ap=
tos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size=
:11pt;color:rgb(0,0,0)"><br></div><div style=3D"font-family:Aptos,Aptos_Emb=
eddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:11pt;c=
olor:rgb(0,0,0)">Any of the Intel E8* NICs can be configured in various way=
s, the most relevant for USRPs are:</div><div style=3D"font-family:Aptos,Ap=
tos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size=
:11pt;color:rgb(0,0,0)">* 2x1x100 : 2 ports, each hosting 1 virtual link at=
 100 Gb</div><div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFon=
tService,Calibri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">* 10=
0 : 1 port with a single virtual link at 100 Gb</div><div style=3D"font-fam=
ily:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-ser=
if;font-size:11pt;color:rgb(0,0,0)">* 8x10 (formerly 2x4x10=C2=A0: 2 ports,=
 each hosting 4 virtual link at 10 Gb each</div><div style=3D"font-family:A=
ptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;fo=
nt-size:11pt;color:rgb(0,0,0)">{{{</div><div style=3D"font-family:Consolas,=
Courier,monospace;font-size:11pt;color:rgb(0,0,0)">$ sudo ./epct64e -get -n=
ic 1</div><div style=3D"font-family:Consolas,Courier,monospace;font-size:11=
pt;color:rgb(0,0,0)">Ethernet Port Configuration Tool</div><div style=3D"fo=
nt-family:Consolas,Courier,monospace;font-size:11pt;color:rgb(0,0,0)">EPCT =
version: v1.42.24.04</div><div style=3D"font-family:Consolas,Courier,monosp=
ace;font-size:11pt;color:rgb(0,0,0)">Copyright 2019 - 2024 Intel Corporatio=
n.</div><div style=3D"font-family:Consolas,Courier,monospace;font-size:11pt=
;color:rgb(0,0,0)"><br></div><div style=3D"font-family:Consolas,Courier,mon=
ospace;font-size:11pt;color:rgb(0,0,0)">Available Port Options:</div><div s=
tyle=3D"font-family:Consolas,Courier,monospace;font-size:11pt;color:rgb(0,0=
,0)">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D</div><div style=3D"font-family:Consolas,Courier,monospace;font-size:11p=
t;color:rgb(0,0,0)">=C2=A0 =C2=A0 =C2=A0 =C2=A0 Port =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 Quad 0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Quad 1 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0</div><div style=3D"font-family:Consolas,Courier,monospace;fon=
t-size:11pt;color:rgb(0,0,0)">Option =C2=A0Option (Gbps) =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0L0 =C2=A0L1 =C2=A0L2 =
=C2=A0L3 =C2=A0 L4 =C2=A0L5 =C2=A0L6 =C2=A0L7 =C2=A0</div><div style=3D"fon=
t-family:Consolas,Courier,monospace;font-size:11pt;color:rgb(0,0,0)">=3D=3D=
=3D=3D=3D=3D=3D =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D =C2=A0 =C2=A0=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div><d=
iv style=3D"font-family:Consolas,Courier,monospace;font-size:11pt;color:rgb=
(0,0,0)">=C2=A0 =C2=A0 =C2=A0 =C2=A0 2x1x100 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 -&gt; 100 =C2=A0 - =C2=A0 =
- =C2=A0 - =C2=A0100 =C2=A0 - =C2=A0 - =C2=A0 -</div><div style=3D"font-fam=
ily:Consolas,Courier,monospace;font-size:11pt;color:rgb(0,0,0)">=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 2x50 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-&gt; =C2=A050 =C2=A0 - =C2=A050 =C2=
=A0 - =C2=A0 =C2=A0- =C2=A0 - =C2=A0 - =C2=A0 -</div><div style=3D"font-fam=
ily:Consolas,Courier,monospace;font-size:11pt;color:rgb(0,0,0)">=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 4x25 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-&gt; =C2=A025 =C2=A025 =C2=A025 =C2=
=A025 =C2=A0 =C2=A0- =C2=A0 - =C2=A0 - =C2=A0 -</div><div style=3D"font-fam=
ily:Consolas,Courier,monospace;font-size:11pt;color:rgb(0,0,0)">=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 2x2x25 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-&gt; =C2=A025 =C2=A025 =C2=A0 - =C2=A0 -=
 =C2=A0 25 =C2=A025 =C2=A0 - =C2=A0 -</div><div style=3D"font-family:Consol=
as,Courier,monospace;font-size:11pt;color:rgb(0,0,0)">Active =C2=A08x10 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0-&gt; =C2=A010 =C2=A010 =C2=A010 =C2=A010 =C2=A0 10 =C2=A010 =
=C2=A010 =C2=A010</div><div style=3D"font-family:Consolas,Courier,monospace=
;font-size:11pt;color:rgb(0,0,0)">=C2=A0 =C2=A0 =C2=A0 =C2=A0 100 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 -&gt; 100 =C2=A0 - =C2=A0 - =C2=A0 - =C2=A0 =C2=A0- =C2=A0 - =C2=
=A0 - =C2=A0 -</div><div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Apto=
s_MSFontService,Calibri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0=
)">}}}</div><div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFont=
Service,Calibri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)"><br><=
/div><div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService=
,Calibri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)"><div style=
=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:sm=
all"><div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService=
,Calibri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">FWIW: We&#39=
;re had a number of customers with E810 CQDA2 issues recently. My current b=
elief is that the NIC=C2=A0(NVM) and OS drivers do not play nicely together=
 &amp; hence updating both to the latest is needed to get everything workin=
g properly.</div></div><br></div><div style=3D"font-family:Aptos,Aptos_Embe=
ddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:11pt;co=
lor:rgb(0,0,0)">Intel E8* NICs used the ICE driver, which is in active deve=
lopment &amp; works pretty well overall. ICE drivers -do not- work seamless=
ly with DPDK unlike Mellanox ones. It&#39;s easy to create a script to do t=
he driver binding &amp; link stuff both down and up, but this can be very c=
onfusing for people not used to taking down a link and rebinding the driver=
 &amp; then the reverse to get it back working in the system again.</div><d=
iv style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibr=
i,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)"><br></div><div styl=
e=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helve=
tica,sans-serif;font-size:11pt;color:rgb(0,0,0)">The Mellanox drivers &amp;=
 hardware use a little less CPU time than the Intel ones, so a little bette=
r single-core performance =E2=80=94 which helps when using DPDK and doing m=
ax data throughput.</div><div style=3D"font-family:Aptos,Aptos_EmbeddedFont=
,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:11pt;color:rgb(=
0,0,0)"><br></div><div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_=
MSFontService,Calibri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)"=
>Yes, 500 GS/s on 4 channels (2 GS/s aggregate) is 64 Gb/s and thus well wi=
thin the capabilities=C2=A0of a single 100 Gb port on either NIC ... That&#=
39;s fine for an X410. For an X440 we double that to 4 GS/s aggregate, whic=
h clearly requires 2x 100 Gb links. For this use-case the Mellanox NICs are=
 the way to go.</div><div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Apt=
os_MSFontService,Calibri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,=
0)"><span style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-ser=
if;font-size:small">}}}</span></div></div></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 25, 2025 at 3:53=E2=
=80=AFPM Rob Kossler via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.=
ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,=
<div>I am in the process of purchasing a 100Gb NIC for use with the X410 an=
d have seen documentation and previous posts indicating=C2=A0that the Conne=
ctX NICs are preferred. But I did note in the DPDK knowledge base article t=
hat the Intel E810 could also work.=C2=A0 I prefer the E810 because it seem=
s to be less expensive and can be configured for 4x10Gb, but I don&#39;t wa=
nt to create a headache for myself.=C2=A0 Let me know if you have had succe=
ss or issues with the E810 using a 100Gb link (or two 100Gb links) to the X=
410.</div><div><br></div><div>I am also confused about the E810 which comes=
 in a couple of 100Gb models: CQDA2 and 2CQDA2, where they both have two 10=
0Gb QSFP28 ports, but the former can only handle aggregate 100Gb whereas th=
e latter can handle aggregate 200Gb.=C2=A0 My confusion is &quot;why does i=
t matter for the X410?&quot;.=C2=A0 With 4 channels at 500 MS/s, the aggreg=
ate bit rate is only 64Gb/s so why does it matter if the E810 CQDA2 only su=
pports aggregate 100Gb?=C2=A0 It seems to me that either model supports the=
 maximum rate of the X410.</div><div><br></div><div>Thanks.</div><div>Rob</=
div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div></div>

--00000000000026920806314998c2--

--===============1621893497506657671==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1621893497506657671==--
