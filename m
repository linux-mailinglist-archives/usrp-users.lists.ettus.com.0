Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4995F4E2B47
	for <lists+usrp-users@lfdr.de>; Mon, 21 Mar 2022 15:52:02 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3503538521D
	for <lists+usrp-users@lfdr.de>; Mon, 21 Mar 2022 10:52:01 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OzGF6iV+";
	dkim-atps=neutral
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 792D2384652
	for <usrp-users@lists.ettus.com>; Mon, 21 Mar 2022 10:51:07 -0400 (EDT)
Received: by mail-pl1-f171.google.com with SMTP id w4so12927673ply.13
        for <usrp-users@lists.ettus.com>; Mon, 21 Mar 2022 07:51:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QuKwilX9i/fJmFgyWe+2puh9Z07P0RggkY9bjLTPRc4=;
        b=OzGF6iV+qK3yTMtrr4vyaFXFGHsz/Pbm53WwvVWhvlsR/5WcWt8UamRUem7+OLgYK4
         FCwJa1cIgfqVErC7hPxe0nExW25iqBpK63SFhJkYMNDlCLsHJm30mMziMuVezDSqrXaB
         ieo//2VDM6dYBwg5+zdjmrOX1kkzkFdfPeCWraBPCclPIDBNcGxOb1tNAVlOSUAJBYJt
         qZ8vT9ncRviv2auDgHIOgg5xYhHSFdo1SUWDB+5/u9SL84El0X5fK7XEknGwfiFXA06m
         0wXrzPRH/8TDd93alD+BGKOZlT4pySvKK97cQAVIRIfxtP9YlB1iOb4VQRRtx8Vuyc8G
         9nXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QuKwilX9i/fJmFgyWe+2puh9Z07P0RggkY9bjLTPRc4=;
        b=Bh/q4vPxekP/IcfVI6XF8fIOcm1fy4cehodaINygRYe4n3pKu6f337rQ8rIGjCTf9o
         qHIZ22/vDCyHpK5CTopABxa/wxUsdVBt/ET13rtyhmvAfNUztySQK1DJuSe2zmpPgEmO
         6XrK8RRWxyFMfswKLr928kZEs7KljwbW++AVBBVzgArfWI+YL/CD/2qy3lPDl0NkE2kE
         CB2/au6qNEbywozyMgWoYIOnL/gpXst/CZ4WNUJNQ0VEohAr6dG2kMtJoH691eeit4QJ
         432htRWUNAHGi1Wp56kuZCalkiHEKlq7GU2efd3k1rlgS2EnUhwGmOQjtFHjhl/g6ghI
         Dy7Q==
X-Gm-Message-State: AOAM532A9UlE++t80t2OIBNH7IB2p3KSz0MauhsC2Eu17GIUs9N4Vz3g
	+yoKjdOHjjV21RJruMMsz57/MFA+1XUVloped7g=
X-Google-Smtp-Source: ABdhPJxdK+vaeY54nCY6qMH4ypziBeIsY/cmd2wQzwsRpYJw14peo3gBiYqXi76/64gVypSrdrhXzptFjNeGg/8rkr4=
X-Received: by 2002:a17:90a:1d04:b0:1bc:98ca:5e6f with SMTP id
 c4-20020a17090a1d0400b001bc98ca5e6fmr37639472pjd.32.1647874266462; Mon, 21
 Mar 2022 07:51:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3PsQ7758e5AzDEyNuAsgA6xwm1NQXMZHzAgzfgqDXVB8xQ@mail.gmail.com>
 <8d8335b8-bf02-af1e-3493-b0f4063409c4@ettus.com> <CAA=S3PuRq4X17Ba0xKSoNZnheQ_YFsXGE7K4iFdm3yBM9AsMLA@mail.gmail.com>
 <CAA=S3PtO-NgrrQVjQBtY5PAFDBYKb2qTB+X7jtZSObw+EA_VTA@mail.gmail.com>
In-Reply-To: <CAA=S3PtO-NgrrQVjQBtY5PAFDBYKb2qTB+X7jtZSObw+EA_VTA@mail.gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Mon, 21 Mar 2022 10:50:54 -0400
Message-ID: <CAEXYVK6o_P6VdKPoY5eivNSBLLCJwDwqL-n1ZSHgf-GqH1JWEg@mail.gmail.com>
To: sp h <stackprogramer@gmail.com>
Message-ID-Hash: AVVMF3NBGUGGADPBL34W33UZCF7FXWK2
X-Message-ID-Hash: AVVMF3NBGUGGADPBL34W33UZCF7FXWK2
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Default CHDR_W is 64 for a RFNOC blocks, How can increased samples buffer in RFNOC block to 4096...
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AVVMF3NBGUGGADPBL34W33UZCF7FXWK2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3905128434276166368=="

--===============3905128434276166368==
Content-Type: multipart/alternative; boundary="000000000000497d1d05dabba056"

--000000000000497d1d05dabba056
Content-Type: text/plain; charset="UTF-8"

On Mon, Mar 21, 2022 at 10:42 AM sp h <stackprogramer@gmail.com> wrote:

>
> But I need to add samples to a buffer. when 4096 sample is received for
> block, do an operation like correlate and convolution, and so on.
>
> Can we use RAM in an RFNOC block that enables us to work with specific
> count samples??
> It is possible?
>

The specification has an End of Vector (EOV) bit:

  https://files.ettus.com/app_notes/RFNoC_Specification.pdf

This sounds like the thing you want to help you determine where your vector
ends in the CHDR stream.

I don't know of any blocks that utilize this bit.

Brian

--000000000000497d1d05dabba056
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Mon, Mar 21, 2022 at 10:42 AM sp h &lt=
;<a href=3D"mailto:stackprogramer@gmail.com">stackprogramer@gmail.com</a>&g=
t; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><br></div>But I need=
 to add samples to a buffer. when 4096 sample is received for block, do an =
operation like correlate and convolution, and so on.<div><br></div><div>Can=
 we use RAM in an RFNOC block that enables us to work with specific count s=
amples??</div><div>It is possible?</div></div></blockquote><div><br></div><=
div>The specification has an End of Vector (EOV) bit:</div><div><br></div><=
div>=C2=A0=C2=A0<a href=3D"https://files.ettus.com/app_notes/RFNoC_Specific=
ation.pdf">https://files.ettus.com/app_notes/RFNoC_Specification.pdf</a></d=
iv><div><br></div><div>This sounds like the thing you want to help you dete=
rmine where your vector ends in the CHDR stream.</div><div><br></div><div>I=
 don&#39;t know of any blocks that utilize this bit.</div><div><br></div><d=
iv>Brian</div></div></div>

--000000000000497d1d05dabba056--

--===============3905128434276166368==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3905128434276166368==--
