Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF1F6EFDAA
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 00:52:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6883638403E
	for <lists+usrp-users@lfdr.de>; Wed, 26 Apr 2023 18:52:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682549571; bh=KyXgZmAiNX0po66gYckkfJ7AK2B0Ads6St65JA8mvpg=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=BHpNisai/zwYL1ncGKfPHwZYnJMfPdSw2xSZn6m4XMP+L2/Bkud37X7ErLXab/7oB
	 gs1jCGW51PWs/k/Xpdu8HiPWhrRDhixJfprs1VYkr0IpnHqEzVo9Y91v9qL819Zycf
	 V86DBofDl+VEvlTWSr8sFfWrqxrfi9UObBaojKXurgFf+ibMh3oCMVHy7x4pFEpVp3
	 5xhVrg+kJS6u7eQG6F5NLPypcQhiWA+J4McMXZHQXzyJE+bHoi7hjDiptTYdItIGYW
	 niP8ikyAxz10fXq2w5NPtXsIBQwmlQl3ZkyrAfHHcM9HDFsQlemlBumrg9JBfLZGJn
	 N5MinKHUOlh2Q==
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by mm2.emwd.com (Postfix) with ESMTPS id E75F43839AF
	for <usrp-users@lists.ettus.com>; Wed, 26 Apr 2023 18:52:30 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fiL3r7BC";
	dkim-atps=neutral
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-50506ac462bso11541984a12.3
        for <usrp-users@lists.ettus.com>; Wed, 26 Apr 2023 15:52:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682549550; x=1685141550;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=FUKU/RCUhvaW3SLsRVyHbtWVFaU+EWFubcuNWCQb1oo=;
        b=fiL3r7BCu4ZOVjxkwcKO+Fp32mrSFJekuvP05pT4RC3rm8Ba0M8KJV9TtZxMyj8S7n
         xmqyZqSlG/NiMy44BqP6zyjZkHqXoSeCpmNrBT1vgFCqvty5Dwfza+i8cCKn0uludxFC
         5e+l7Va6koMxlwcg7kr167vOEAfM/4dcaEaQ5LUT8vvBvCSAiBTPElxfwLrxmKgpgAw/
         ArHTSFaZPlXrQjkJl282Y3yAFwxh/yobJZdszVDGH8tbE3eKh27WsGHGuSEVNzSQiVRC
         J4EZCl9VOGfWFCwf+PrYIpdf6p5fcScsqPJa+2j5DhZr0k9ieqS+PFzlBvHasBZBqd5V
         +CMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682549550; x=1685141550;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FUKU/RCUhvaW3SLsRVyHbtWVFaU+EWFubcuNWCQb1oo=;
        b=NjjiFL59A7dthitN9WwKnKCsTtjoob3sVGYZvc4DPk9bd7e5lvd7Hx4ZygGdoFLS9X
         JhDaLeIQr/SWQ1uBHLMW3PqtxRih6mxTHZeSb4EHUz6uGOfVniwhv4VpMubl1HOSh7CQ
         jWHteEOhUxJ2Hvvqs4FPLDgyX89zYDSsET0oZLID3src0FmvNmw04qdLhIRCKsHpN1nI
         458/aZS9iWqMIPnogHA4bp2HRPlHAseq+URuo3djT69HdexdLcqfW3Ck73a6gRxefOMn
         esl4kXIEcHuwWFlDId8WkhF7viXE85Fkx+d5uYMnndAaHbHh11nxmVpVUDxy0uyQo0XM
         +EEA==
X-Gm-Message-State: AAQBX9c7AxFVx/BzdvNL4BRbwhrVIwh7XZuw/SoI8ZZHrz1qTGsnzrUZ
	d4wx5JMhdJKn9RUcX1JjUgcmEJxNBgyyOiEUFCYiF1OoK40=
X-Google-Smtp-Source: AKy350b7oQPhA5dJ3bNYKaAUqPCrwhH46mHu1SsbgKxdfH0RY4El+W74iSyp3/ceyG93WziWoiNcgD9lj69xOkBhCVY=
X-Received: by 2002:a17:906:72dc:b0:94c:dcac:4b24 with SMTP id
 m28-20020a17090672dc00b0094cdcac4b24mr17885716ejl.49.1682549549227; Wed, 26
 Apr 2023 15:52:29 -0700 (PDT)
MIME-Version: 1.0
References: <SJ0PR09MB91268F4BF0C27FE2E41A1846EC659@SJ0PR09MB9126.namprd09.prod.outlook.com>
In-Reply-To: <SJ0PR09MB91268F4BF0C27FE2E41A1846EC659@SJ0PR09MB9126.namprd09.prod.outlook.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Wed, 26 Apr 2023 18:52:18 -0400
Message-ID: <CAEXYVK6OOGyUWqFE85ornE2dEQqpeo6C6XHsm8a0RSKE+6VdCg@mail.gmail.com>
To: Eugene Grayver <eugene.grayver@aero.org>
Message-ID-Hash: WQTLM5S3G46JZWELMRR7BISDE6VC5JJC
X-Message-ID-Hash: WQTLM5S3G46JZWELMRR7BISDE6VC5JJC
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Split USRP (X310, N231) between two PCs
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WQTLM5S3G46JZWELMRR7BISDE6VC5JJC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6458897041043708706=="

--===============6458897041043708706==
Content-Type: multipart/alternative; boundary="00000000000032e41105fa451890"

--00000000000032e41105fa451890
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 26, 2023 at 6:33=E2=80=AFPM Eugene Grayver <eugene.grayver@aero=
.org>
wrote:

> How much would work would it take to allow two different PCs to each
> control one of the channels on the X310?  Would the work be mostly on the
> host (software) side, or will some FPGA work be required?   There is no
> issue on the RX side (with the recent UHD updates to support streaming to
> arbitrary IP).  The issue is with control (e.g. set sample rate) and with
> TX flow control.  One use case would be two independent modems each
> processing the full 200 Msps from the separate 10 GbE ports.  I guess one
> could always just buy another USRP but it seems wasteful/inelegant.
>

What if you split your application up into essentially a daemon that
controls the radio and handles the subscription to the sample stream.

Your applications then communicate with that daemon - maybe via ZMQ
messages - which handle the forwarding of the sample stream(s) and
command/control of the radio.  It's all software and there is still really
just one machine handling all the communication with the radio device.  No
change in paradigm for UHD.

The downside is that you generate a lot more network traffic because you
want to split the workload over multiple computers.

Do you think this might work for you?

Brian

--00000000000032e41105fa451890
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, Apr 26, 2023 at 6:33=E2=80=AFPM E=
ugene Grayver &lt;<a href=3D"mailto:eugene.grayver@aero.org">eugene.grayver=
@aero.org</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><div class=3D"msg-1046312852242641516">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
How much would work would it take to allow two different PCs to each contro=
l one of the channels on the X310?=C2=A0 Would the work be mostly on the ho=
st (software) side, or will some FPGA work be required?=C2=A0 =C2=A0There i=
s no issue on the RX side (with the recent UHD
 updates to support streaming to arbitrary IP).=C2=A0 The issue is with con=
trol (e.g. set sample rate) and with TX flow control.=C2=A0 One use case wo=
uld be two independent modems each processing the full 200 Msps from the se=
parate 10 GbE ports.=C2=A0 I guess one could always
 just buy another USRP but it seems wasteful/inelegant.</div></div></div></=
blockquote><div><br></div><div>What if you split your application up into e=
ssentially=C2=A0a daemon that controls the radio and handles the subscripti=
on to the sample stream.<div><br></div><div>Your applications then communic=
ate with that daemon - maybe via ZMQ messages - which handle the forwarding=
 of the sample stream(s) and command/control of the radio.=C2=A0 It&#39;s a=
ll software and there is still really just one machine handling all the com=
munication with the radio device.=C2=A0 No change in paradigm for UHD.</div=
><div><br></div><div>The downside is that you generate a lot more network t=
raffic because you want to split=C2=A0the workload over multiple computers.=
</div><div><br></div><div>Do you think this might work for you?</div><div><=
br></div><div>Brian</div></div></div></div>

--00000000000032e41105fa451890--

--===============6458897041043708706==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6458897041043708706==--
