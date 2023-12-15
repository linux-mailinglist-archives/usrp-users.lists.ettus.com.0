Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BC97C813EA9
	for <lists+usrp-users@lfdr.de>; Fri, 15 Dec 2023 01:21:41 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CBFB538524E
	for <lists+usrp-users@lfdr.de>; Thu, 14 Dec 2023 19:21:40 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702599700; bh=F4DUUXgSjNChkEPtrDQkkIQkaAWEPO3DfyKsTnMT+V0=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=m8gUBaU2XYkzGL1jp4n9KsWtvsvXR1RZr0hsWS0SLo78zrivbGzSVnDxhLx8dobYe
	 0Gr/uPkSpLTaV14Sr0mLv4HvEmEQUcZeKAgeQ6Ie7gGTbLb+JSE9ZttzlcXdmCQ3i8
	 dcW7fLGVUI763z8mGJFGRdap9x+EQP5fDrhRuJPGOYXuTmn4SR8wv0uyMiZliG/LkB
	 vKpBqYnYeB8zzKX8HMduryoNcY+8n1/MzTpvm5TpnH5yPiLwkCmV/Z9B9oLbGLCN6Z
	 EriFGOrpFn8XeCM0bniiV2umgmT7BLeHd8m/gkGjQfVfaOD5lsI/VODcRbcgFewHbm
	 50h92KQ/c2BjA==
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 77BFD3851C7
	for <USRP-users@lists.ettus.com>; Thu, 14 Dec 2023 19:21:36 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ncsu.edu header.i=@ncsu.edu header.b="AHXw2ZBi";
	dkim-atps=neutral
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-db8892a5f96so87335276.2
        for <USRP-users@lists.ettus.com>; Thu, 14 Dec 2023 16:21:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ncsu.edu; s=google; t=1702599696; x=1703204496; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1xdeLFta8eH6WxWzfvrriRE/z/fftEmA+kPTCHVaWoM=;
        b=AHXw2ZBikCUYMLSnBayzbOWY1Jj7N3HvBLfQ0jOhopOJHWc2t/SNs2LVzUD5b/hfFT
         FpwSFGXh2GrCdZmFebQrdt2ZCDJtWG4ol3ycHWjGtgS2u2k1YDP1dPZHE9hD3nn2DFut
         EpUi5BC+oMYMUFD2ZMkFgY7qVlY0VLfJC96/7mBIS5xrWJJG+k24nPwnML8R/k5E0Gbl
         E6p5j8yQBgMmfe5fzx4NWTJWtFtrWsXawOECPdOY9AaSybB5NOacMhLQflPlGK1+tyAK
         VlnOI1M+aZQ87wYJBLE/H88FrSCs0VnKHuHjWzizcVgNbGTm4JqRKZ0alIvtVJf+vDl1
         Vhmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702599696; x=1703204496;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1xdeLFta8eH6WxWzfvrriRE/z/fftEmA+kPTCHVaWoM=;
        b=fCWXt9ud9BgPQTpda9J8/gQgMv79b0vBrtdj+2KPXV8JqdyM39xTU3tgjDiZPBFILP
         ObC68xNQEORezy6DAFDNTV2LZCmJU3DzzQ6BuJwTjk6Ww2MKLsKEw3QH9koMBjvYJjsl
         61J6PeqPCEVqBIFjZXfV13l/w3wVIWrxFaVFjncEqffm7l7rdc4pvfYCbp2saLrR3TCn
         Y4NKjQe0qoqGz9MtOB/46bQCyuagG5brZ/o6/V4bPi1BRRuyDeEr6rFCm3kQdVbVby6l
         oVg4fb2koACPicpS3JcNcTym4UrmHgZxdO0MjPo0MbtBY+b1f8BACkYErkkW/Mv7TmF7
         g4ow==
X-Gm-Message-State: AOJu0Yx09pHjV7bXk5Y4cXLTlLFtyuyabywpgsEWMltGVDI12NeGbuFN
	65hAV+tSpZCdAFlA7Oe+oQr5xXOviAf1oJYLBP+3zw==
X-Google-Smtp-Source: AGHT+IHIiNTwrMw68LMQCvtxuRk2ZS1Dh9Rsuf7KpvUZz3LdlT4BQGZ/kyz1/112tXaESdHbzS25ZxZG4enrZ86cc8k=
X-Received: by 2002:a25:8e04:0:b0:dbc:e13b:c9c8 with SMTP id
 p4-20020a258e04000000b00dbce13bc9c8mr1760731ybl.91.1702599695614; Thu, 14 Dec
 2023 16:21:35 -0800 (PST)
MIME-Version: 1.0
References: <CAKhiL6XLB_-aFw24M7s=r-60jEHU=BHLo8JKafQQhAA0HOQHiw@mail.gmail.com>
 <CANvw1+Q-WcRPAK-M-xJrjaPmj-wgtAwQfTpvr55SRLU9douEdQ@mail.gmail.com> <CAKhiL6WAtkPFO3N=4yBSULM5pOmLiEED4zmN2tNsz9R3wOJdLA@mail.gmail.com>
In-Reply-To: <CAKhiL6WAtkPFO3N=4yBSULM5pOmLiEED4zmN2tNsz9R3wOJdLA@mail.gmail.com>
Date: Thu, 14 Dec 2023 19:21:24 -0500
Message-ID: <CANvw1+QK+=OJd4CJAE_xbBDr2ZASYHq7UMZ_4SStW+mvuUYE3g@mail.gmail.com>
To: LoyCurtis Smith <ljsmith9@ncsu.edu>
Message-ID-Hash: Y5BUIFYKEFD2ZGAYQFREOFXPCNG6HQPO
X-Message-ID-Hash: Y5BUIFYKEFD2ZGAYQFREOFXPCNG6HQPO
X-MailFrom: agurses@ncsu.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Change UHD Version
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Y5BUIFYKEFD2ZGAYQFREOFXPCNG6HQPO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Anil Gurses via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Anil Gurses <agurses@ncsu.edu>
Content-Type: multipart/mixed; boundary="===============5566169748291809804=="

--===============5566169748291809804==
Content-Type: multipart/alternative; boundary="0000000000000de4d6060c8162b1"

--0000000000000de4d6060c8162b1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

>
> It fails when I was trying it.
>

Can you give more information? What is the exact error?

Did you have to delete the build folder then recreate it for a successful
> installation?
>
You can try deleting and recreating it again. It shouldn't matter. If you
follow the instructions I shared, there shouldn't be any build folder since
you'll be cloning from scratch.

PS. Don't forget to do `sudo ldconfig` after your installation.


A.


On Thu, Dec 14, 2023 at 6:18=E2=80=AFPM LoyCurtis Smith <ljsmith9@ncsu.edu>=
 wrote:

> Thanks Anil.
>
> It fails when I was trying it. Did you have to delete the build folder
> then recreate it for a successful installation?
>
> V/r
>
> LoyCurtis Smith
>
>
> On Thu, Dec 14, 2023 at 5:29=E2=80=AFPM Anil Gurses <agurses@ncsu.edu> wr=
ote:
>
>> Hi LoyCurtis,
>>
>> You can install different version of UHD by changing your branch to the
>> version's tag on the GitHub repository as shown below,
>>
>> ```
>> git clone https://github.com/EttusResearch/uhd.git
>> git checkout tags/v4.0.0.0
>> ...
>> ```
>> With these steps, you change your branch to a specific version release.
>> Then you need to build it again as usual.
>>
>> Let me know if you have any questions.
>>
>> A.
>>
>> On Thu, Dec 14, 2023 at 5:21=E2=80=AFPM LoyCurtis Smith via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Since Ubuntu 18.04 is EOL, my school upgraded my lab systems to Ubuntu
>>> 22.04. Since upgrading to Ubuntu 22.04, I have been unable to connect t=
o my
>>> USRP x310s via "*uhd_find_devices*." I can only PING them, and I can
>>> only communicate with them via UHD when explicitly stating the IP Addre=
ss
>>> of my USRP. I was able to communicate with the devices via UHD v
>>>
>>> While troubleshooting what is blocking the traffic with my IT staff, I
>>> am trying to change the UHD version from 4.5 to UHD version 4.0 to see =
if
>>> it changes anything. However, I do not see any instructions on installi=
ng a
>>> different UHD version. I installed UHD from source following the NI bui=
ld
>>> guide (https://files.ettus.com/manual/page_build_guide.html).
>>>
>>> Please assist.
>>>
>>> V/r
>>>
>>> LoyCurtis Smith
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>

--0000000000000de4d6060c8162b1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">It fails=
 when I was trying it. <br></blockquote><div><br></div><div>Can you give mo=
re information? What is the exact error?<br></div><div><br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div>Did you have to delete the bui=
ld folder then recreate it for a successful installation?=C2=A0 <br></div><=
/blockquote><div>You can try deleting and recreating it again. It shouldn&#=
39;t matter. If you follow the instructions I shared, there shouldn&#39;t b=
e any build folder since you&#39;ll be cloning from scratch.</div><div><br>=
</div><div>PS. Don&#39;t forget to do `sudo ldconfig` after your installati=
on. <br></div><div><br></div><div><br></div><div>A.<br></div><div>=C2=A0</d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Thu, Dec 14, 2023 at 6:18=E2=80=AFPM LoyCurtis Smith &lt;<a href=3D"m=
ailto:ljsmith9@ncsu.edu">ljsmith9@ncsu.edu</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Thanks Anil=
.=C2=A0</div><div><br></div><div>It fails when I was trying it. Did you hav=
e to delete the build folder then recreate it for a successful installation=
?=C2=A0</div><div><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"lt=
r"><div><div dir=3D"ltr"><font color=3D"#073763"><br></font></div><div dir=
=3D"ltr"><font color=3D"#073763">V/r</font><div><span style=3D"background-c=
olor:rgb(255,255,255)"><font color=3D"#073763"><br></font></span></div><div=
><span style=3D"background-color:rgb(255,255,255)"><font color=3D"#073763">=
LoyCurtis Smith</font></span></div></div></div></div></div></div><br></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu=
, Dec 14, 2023 at 5:29=E2=80=AFPM Anil Gurses &lt;<a href=3D"mailto:agurses=
@ncsu.edu" target=3D"_blank">agurses@ncsu.edu</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi LoyCu=
rtis,</div><div><br></div><div>You can install different version of UHD by =
changing your branch to the version&#39;s tag on the GitHub repository as s=
hown below,<br></div><div><br></div><div>```<br></div><div>git clone <a hre=
f=3D"https://github.com/EttusResearch/uhd.git" target=3D"_blank">https://gi=
thub.com/EttusResearch/uhd.git</a> <br></div><div>git checkout tags/v4.0.0.=
0 <br></div><div>... <br></div><div>```</div><div>With these steps, you cha=
nge your branch to a specific version release. Then you need to build it ag=
ain as usual.<br></div><div><br></div><div>Let me know if you have any ques=
tions.<br></div><div><br></div><div>A.<br></div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Dec 14, 2023 at 5:2=
1=E2=80=AFPM LoyCurtis Smith via USRP-users &lt;<a href=3D"mailto:usrp-user=
s@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr"><div>Since Ubuntu 18.04 is EOL, my school upgraded my lab systems to U=
buntu 22.04. Since upgrading to Ubuntu 22.04, I have been unable to connect=
 to my USRP x310s via &quot;<b>uhd_find_devices</b>.&quot; I can only PING =
them, and I can only communicate with them via UHD when explicitly stating =
the IP Address of my USRP. I was able to communicate with the devices via U=
HD v <br><br>While troubleshooting what is blocking the traffic with my IT =
staff, I am trying to change the UHD version from 4.5 to UHD version 4.0 to=
 see if it changes anything. However, I do not see any instructions on inst=
alling a different UHD version. I installed UHD from source following the N=
I build guide (<a href=3D"https://files.ettus.com/manual/page_build_guide.h=
tml" target=3D"_blank">https://files.ettus.com/manual/page_build_guide.html=
</a>).=C2=A0</div><div><br></div><div>Please assist.=C2=A0<br clear=3D"all"=
><div><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><div><div=
 dir=3D"ltr"><font color=3D"#073763"><br></font></div><div dir=3D"ltr"><fon=
t color=3D"#073763">V/r</font><div><span style=3D"background-color:rgb(255,=
255,255)"><font color=3D"#073763"><br></font></span></div><div><span style=
=3D"background-color:rgb(255,255,255)"><font color=3D"#073763">LoyCurtis Sm=
ith</font></span></div></div></div></div></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--0000000000000de4d6060c8162b1--

--===============5566169748291809804==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5566169748291809804==--
