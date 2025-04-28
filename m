Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6F5A9F14F
	for <lists+usrp-users@lfdr.de>; Mon, 28 Apr 2025 14:48:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7F62C385CEF
	for <lists+usrp-users@lfdr.de>; Mon, 28 Apr 2025 08:48:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1745844482; bh=XTWVTC7IJyhrpeKyC7w3APRN2retH7Z89rjv5mn0RoU=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=aIkUMv5W9jhVR9iGJ/JtGEBoHZa+rtPPMH4oTCpYkiUEvYrazZMEJsWdtmjAGBamb
	 lU7pf4XGwuv4f7F+RBRTtJPfsx37u37WTn4m+nc+NPcIVaTZFDRJJ78vEUUM78Bgdo
	 8wRMnMG8IAzvqMHAZ3bxz4TaST7MUfiniDWEnz8GDV4xmcQt9Zr0UhTX7x7iuyew7i
	 dN73B3GRdH+x2pe94z2yr3mPLnyk2yIxTvuLu9g8d0wAsJe58SSFvYtNWf9AqCt08A
	 UzhQERbls4xqsHBMRi2smbl+rNsLVZQrnLwYW10DCk68miHMbGlDRiY1h7rl4HcPKF
	 fv0mvdG2CIGXw==
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 5CBB4385D2C
	for <usrp-users@lists.ettus.com>; Mon, 28 Apr 2025 08:47:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="DE0znnjk";
	dkim-atps=neutral
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-70825de932bso49223497b3.0
        for <usrp-users@lists.ettus.com>; Mon, 28 Apr 2025 05:47:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1745844425; x=1746449225; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kPSaq0pV98PaV1jT5hv1/4/QTZTE3h01seOpAT3a1eI=;
        b=DE0znnjkaiyOPqqLUNQ0pTOzpkGlLBm46/vAiXhJ2Is4lpbUkv45RNYIRtwmULykDF
         1EyblB1Qy9tGQzeC/hioQpe3NL/0/vomMDRNgiAZ78RPR9lFfdh7BmVSQsvkJG7W6glR
         GV4Wc/0pOjK+hGVQTLXkwj6Sf19c4gCe938Vl1G2T0KdxLquD8Ik1rOa41571td+BGxf
         Z5obSmI67io5Pd7KLymSgx3ajK0UoeXyXKr+xmu322mTbnQiqvlFalJXmMpIO959Xeh7
         qQ9JFTNTm0+dentClpvyNz/5abKenoDPi4Ty2GiCDcKIfwsn6XlI6G43HxA38hK7kqHo
         We9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745844425; x=1746449225;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kPSaq0pV98PaV1jT5hv1/4/QTZTE3h01seOpAT3a1eI=;
        b=IVnzcwauFk0VOVcKlx06xOQv6G58nMX1iv3qqjBwAwXkchg2RQSdIlexF/uJUDZ3nm
         CV4slc4aUXQMgv+7ddlDJr5Qv2LB+jdnmTZrMqESWOQ1Ob7YfA1y5H+GIkuAP4fBBKex
         c5631DOeXMVj/iFAoCywvqFMWN8bp9uLYmBic514oDXNVpDhKWe5PiMLWaPF+A0jynmF
         QiqJOVFGMbf5robjYv8glwPAXHmGrP0CvbL4m3+EjV7twllomP834f4C1C2gzTbJ0Nol
         AhnuD3Gh0tyrALknLQJKq+7UMCp4SZUMaRZP1BR6RoXv7sv5UKQaZUR1+ZdLAohJu8Bq
         2PkQ==
X-Gm-Message-State: AOJu0YyKS7Jx1aWyf45Nspq4RDTUAQziQLFh+YEXh5SS+WbPd41TK7Zm
	v/WGhF8E61ukG22R8MqGp0Bh7wUKeGvC20G8wxEac8oywKYSDQtkhTew2CgxO3A6X0cUQjbC+3Q
	glF1iCKA5585zAKFR/8EQ6ZHDRy8e1TRRnl6ILPA1
X-Gm-Gg: ASbGncvARHTV/nCK/wtD0f2uiA58fEOCTSlg83+VAoziwqBF/O1bSOc4wopUEKMv7jK
	+WhVXjhdiLVb+0Fkw4vAlqeKaBEsIJpRYiEUaScILQ7JcZpJb7XoY++LtVe9R93LGn7vtO+RMcS
	Mw3n09Isk9GyMgaCJjI0s=
X-Google-Smtp-Source: AGHT+IEMctyDIejpidd1EKzX6J0kaTgQax+yoQcjbtENV1dHp2V5OP3NixY8mwluJUcM6uJrPGQ9sux1NdkSZOSNv54=
X-Received: by 2002:a05:690c:67c6:b0:6fb:9474:7b4f with SMTP id
 00721157ae682-708543d6258mr167772367b3.6.1745844424674; Mon, 28 Apr 2025
 05:47:04 -0700 (PDT)
MIME-Version: 1.0
References: <CAEXYVK4_EZt1CN7eic+zX89q_UM9xkLRrgDYOfQgAJa-vxgkEA@mail.gmail.com>
 <CAFche=hXaVLyqJA7Ay7k8NqnVaKyWni1h7JwapVwue2iwAM5MA@mail.gmail.com> <CAEXYVK5W_kupokFpwQY+GpwEUO1nN4Y0cH6Bhj8z1HFMYP54uw@mail.gmail.com>
In-Reply-To: <CAEXYVK5W_kupokFpwQY+GpwEUO1nN4Y0cH6Bhj8z1HFMYP54uw@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Mon, 28 Apr 2025 07:46:47 -0500
X-Gm-Features: ATxdqUHw2Nt4Ml3Ub6rGRqM-EA-oVEFc6j94AsUiv9FpDFiPKM2A7UX_2bmS-Q4
Message-ID: <CAFche=iRsVwbop=mzORPq9HoOwFkMc-uBkaEYocerg9Es+QXrQ@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Message-ID-Hash: OV3OEPNKRAMOGUVOGGRGNP35N3ARAWVD
X-Message-ID-Hash: OV3OEPNKRAMOGUVOGGRGNP35N3ARAWVD
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC CHDR DstEPID and Virtual Channels Clarification
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OV3OEPNKRAMOGUVOGGRGNP35N3ARAWVD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7158956768294073996=="

--===============7158956768294073996==
Content-Type: multipart/alternative; boundary="000000000000c42f0e0633d61476"

--000000000000c42f0e0633d61476
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Right, up to 64 VCs per stream endpoint.

Each stream endpoint only supports a single sequence number counter, so
that single counter would be shared by all virtual channels.

Wade

On Sun, Apr 27, 2025 at 8:27=E2=80=AFPM Brian Padalino <bpadalino@gmail.com=
> wrote:

> On Sun, Apr 27, 2025 at 8:44=E2=80=AFPM Wade Fife <wade.fife@ettus.com> w=
rote:
>
>> The EPIDs are only used by the stream endpoints. I think it will always
>> be set to 0 when it is sent to your block, and anything you put in there
>> will be ignored by downstream blocks. In theory, I suppose it could be u=
sed
>> the way you described, but I think that would require pretty significant
>> changes in both UHD and in the FPGA.
>>
>> Could you use two stream endpoints instead to double the number of
>> virtual channels?
>>
>
> Maybe I could do that. So have 4 endpoints be the lower 64 channels, and
> then have 4 endpoints be the upper 64 channels and utilize only the VC
> field?
>
> When it comes to SeqNum, do the VC's count as being separate or would the
> SeqNum also increase since the DestEPID is still the same?
>
> Thanks,
> Brian
>

--000000000000c42f0e0633d61476
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Right, up to 64 VCs per stream endpoint.</div><div><b=
r></div><div>Each stream endpoint only supports a single sequence number co=
unter, so that single counter would be shared by all virtual channels.</div=
><div><br></div><div>Wade</div></div><br><div class=3D"gmail_quote gmail_qu=
ote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Apr 27, 2025 a=
t 8:27=E2=80=AFPM Brian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com"=
>bpadalino@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"></div><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Apr 27, 2025 at 8=
:44=E2=80=AFPM Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com" target=
=3D"_blank">wade.fife@ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>The EPIDs are only u=
sed by the stream endpoints. I think it will always be set to 0 when it is =
sent to your block, and anything you put in there will be ignored by downst=
ream blocks. In theory, I suppose it could be used the way you described, b=
ut I think that would require pretty significant changes in both UHD and in=
 the FPGA.</div><div><br></div><div>Could you use two stream endpoints inst=
ead to double the number of virtual channels?</div></div></blockquote><div>=
<br></div><div>Maybe I could do that. So have 4 endpoints be the lower 64 c=
hannels, and then have 4 endpoints be the upper 64 channels and utilize onl=
y the VC field?</div><div><br></div><div>When it comes to SeqNum, do the VC=
&#39;s count as being separate or would the SeqNum also increase since the =
DestEPID is still the same?</div><div></div><div><br></div><div>Thanks,</di=
v><div>Brian</div></div></div>
</blockquote></div>

--000000000000c42f0e0633d61476--

--===============7158956768294073996==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7158956768294073996==--
