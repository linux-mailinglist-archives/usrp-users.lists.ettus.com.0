Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F5E9AE2539
	for <lists+usrp-users@lfdr.de>; Sat, 21 Jun 2025 00:22:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6F576385E59
	for <lists+usrp-users@lfdr.de>; Fri, 20 Jun 2025 18:22:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1750458169; bh=20ywYfvBvfvhU2Wt8PBibfh9v1TTUqv0UAjjjbKjsoU=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=ibzztZTbPDkruSBssJGi89msqGew3Pjc2S98tkeNgfCkD62x1dureuaPSwWLchHuU
	 EMCEFHT0hhtM4HSPnyI9ihclEsZHqM8vTqBhcqyQih6TZk6mmzKmSOGhhMHpKDJ0/N
	 meOv9bqi5oZF4bSHe3TncBm7Slt0+HFPVOutW7sgPlVqt34pFDIY72NE/B5GcNDnxZ
	 fpPTyQKrCcwOCwWgTvYA02Lt/rq3VtKDFElXdL2EGcguVqHuHndBv3SNNOiFmFjehB
	 95DFqoLaHJfD7WCpuKeUDTdtuWsKsHnnOXg9+35xvLWcWex9F2sH4eUC86idNxuC40
	 OCXIOi33lJpaw==
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by mm2.emwd.com (Postfix) with ESMTPS id ECD0E385D7F
	for <usrp-users@lists.ettus.com>; Fri, 20 Jun 2025 18:20:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="jyxc1pgg";
	dkim-atps=neutral
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-6099d89a19cso5026809a12.2
        for <usrp-users@lists.ettus.com>; Fri, 20 Jun 2025 15:20:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1750458044; x=1751062844; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ALcDS6gu0CHnY5xBCIz/PNtFI+y/q+C6MczYopMXliU=;
        b=jyxc1pgg+2Ty+kB+tn/WlbFDXjuWwQnOh6PP1zVPX2qnAlM70q5VUMu+YzqFzYZMCn
         1TUfQm7WkoW9N55qfIW49KktwYBJ+cmgwqKOe1/MDyHDZSAVKNr9AwrgJYMj9VdtHHlk
         72shxytW0arlEXk7rOlpz4Q8omKKrkeQqMjwJGLYY0IEEQyEOSd9A2lqPeCqXS77n60/
         bI56ywnWmifFinzCN688NMt+2MHrmb1FLbFlc7CUDm1Tq6/J5tZQvtCORCw4iiBOmXHU
         hjPUnPnn/vlsEEl5dpPfRfGqM4jRohWxXU5pvDYzNjvo5h4KuKWtkKQa7cAes/LCc1c1
         LOfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750458044; x=1751062844;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ALcDS6gu0CHnY5xBCIz/PNtFI+y/q+C6MczYopMXliU=;
        b=V6FzL+jrK+T+FYb0nyaGMIERAeiRnZ3SiQ/+bUOSTwuPHeV6afrQEiKRZnV62HvGao
         iU6lM7quDFwa/X8n60OFyYk9JBVHtWJEnNiOKPUyGNX+Xe8WDHc1pAR0aKWKFkx8BLtM
         lNAvTzrYFR2ozXuP8KN2gCmGKnyhtI2bAOpbZiIY/5gX/pPMgqxOH8LbdC0rJ0wKKh4b
         0glYI/KVHFTYIUuf7kGyjdH+chOAUJSRd1bOgeUBvPNG8054kQDotEgzX5+a9oUcXvM9
         svXe6r18uK/06UZ/eqfsufPR4/BC34MppiICrTH9oTyBuboV59GNI0c9yIrOGlk+8qH7
         98nQ==
X-Gm-Message-State: AOJu0YzIy7bpXghm1wEULE1EcHIV9tIrjZ5eogPA8kt/BthviXDA/CKJ
	onhTYJ4mKRruc8cQr52cnJvt63KAHMkR/yX5aA4lWb9gRtDMG5QULGyOR1B1ov1AQ4Pqqhak06c
	f5Swq5PKNDXhrIoO11urAbdsVjJLrL+jQBFefGRIztdJx0lJNnmQ=
X-Gm-Gg: ASbGncuIwpbL1lpwH1zQoUcGE2vzI0xh6yia2+sxSDIj1FXYcRJ/a5BND5oPM50GqRA
	5GLYEbjOJAMA4uj/+M3alMdNFGaLuXqPYV1qbT0PnBSWzC3lehiYYoAUbd0Tp8x6WMHIBSHu+Of
	vCUXlM9WxvOJvHn71EzYR35E8+rURkJZAdivRTEjCphfHeTkKZmO9AfA==
X-Google-Smtp-Source: AGHT+IGUbbuH6GZnvPrkTZph4CIme2+whVOaqedRy+reYDJBVLcKMIKhdk8HFR51a1hDaR4jKF/+gY8XlXPCPEzfwPA=
X-Received: by 2002:a05:6402:278a:b0:5f7:f55a:e5c8 with SMTP id
 4fb4d7f45d1cf-60a1d1676bdmr3735189a12.21.1750458044262; Fri, 20 Jun 2025
 15:20:44 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTQSQ4774oEwhJMnmEQH1q0diNbKmFB2fR8dPtQsBBZbUQ@mail.gmail.com>
In-Reply-To: <CAB__hTQSQ4774oEwhJMnmEQH1q0diNbKmFB2fR8dPtQsBBZbUQ@mail.gmail.com>
Date: Fri, 20 Jun 2025 18:20:33 -0400
X-Gm-Features: AX0GCFvQwQVLuQmTl2pzbxUlYSNrTy6MTARCHpv_CMcqamB6LBq23hG9FjWeg1Y
Message-ID: <CAB__hTRz3MNhS-QEbYnZ4PuhmfiLD2nJGXfi_563ZwjnrWr3SA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: L3CAXLWDTLTRJBWYCKDEXPDEGZ3JXB6A
X-Message-ID-Hash: L3CAXLWDTLTRJBWYCKDEXPDEGZ3JXB6A
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X410 100Gb link issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/L3CAXLWDTLTRJBWYCKDEXPDEGZ3JXB6A/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============3846137343404772810=="

--===============3846137343404772810==
Content-Type: multipart/alternative; boundary="000000000000ec41020638084597"

--000000000000ec41020638084597
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Update.  The optical transceiver model that I was using is labeled
"QSFP-CWDM4-100G".  I also have some older models "QSFP28-IR4-100G" which I
believe are the same item (just with the model renamed at some point). In
any case, if I use the IR4 model in the X410 with either the IR4 or the
CWDM4 model in the workstation E810 NIC, it now works!  So, the fact that
the 2 different model names can talk to each other must imply that the
technology (CWDM x4) is the same.  And, the fact that the X410 is happy
with the IR4 model means that it can handle this technology.  I don't
really have an explanation why the CWDM4 model does not work in the X410.
Rob

On Fri, Jun 20, 2025 at 4:19=E2=80=AFPM Rob Kossler <rkossler@nd.edu> wrote=
:

> Hi,
> I just received an X410 and I am having trouble getting the 100Gb link to
> work.
>
>    - On the workstation side, my NIC is an Intel E810 CQDA2 and I am
>    using UHD-4.8 with Ubuntu 24.04 LTS
>    - On the X410 side, I loaded the  UHD-4.8 file system and the UC_200
>    FPGA image which implements 100Gb on SFP1.
>    - Finally, I am using Fiberstore CWDM4 100Gb
>    <https://www.fs.com/products/65219.html?now_cid=3D1159> optical
>    transceivers with a duplex single-mode fiber.  This item is my current
>    suspected culprit - it's not clear to me whether the operation of this
>    optical transceiver is transparent to the 100Gb port or if the port ne=
eds
>    to handle things differently for this type of CWDM transceiver
>
> The problem is that I never even get link lights on the workstation NIC
> when I connect to the X410. However, if I move the QSFP28 transceiver fro=
m
> the X410 to another workstation (with a Mellanox 100Gb NIC), the link
> lights come right up on both sides and the OS sees a 100Gb Ethernet link.
>
> So, the problem "appears" to be that the X410 does not like this optical
> transceiver. Does anyone have any experience using this optical transceiv=
er
> with the X410?
>
> Thanks.
> Rob
>

--000000000000ec41020638084597
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Update.=C2=A0 The optical transceiver model that I was usi=
ng is labeled &quot;QSFP-CWDM4-100G&quot;.=C2=A0 I also have some older mod=
els &quot;QSFP28-IR4-100G&quot; which I believe are the same item (just wit=
h the model renamed at some point). In any case, if I use the IR4 model in =
the X410 with either the IR4 or the CWDM4 model in the workstation E810 NIC=
, it now works!=C2=A0 So, the fact that the 2 different model names can tal=
k to each other must imply that the technology (CWDM x4) is the same.=C2=A0=
 And, the fact that the X410 is happy with the IR4 model means that it can =
handle this technology.=C2=A0 I don&#39;t really have an explanation why th=
e CWDM4 model does not work in the X410.<div>Rob</div></div><br><div class=
=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr=
">On Fri, Jun 20, 2025 at 4:19=E2=80=AFPM Rob Kossler &lt;<a href=3D"mailto=
:rkossler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,<div>I just received a=
n X410 and I am having trouble getting the 100Gb link to work.=C2=A0</div><=
div><ul><li>On the workstation side, my NIC is an Intel E810 CQDA2 and I am=
 using UHD-4.8 with Ubuntu 24.04 LTS<br></li><li>On the X410 side, I loaded=
 the=C2=A0 UHD-4.8 file system and the UC_200 FPGA image which implements 1=
00Gb on SFP1.=C2=A0=C2=A0</li><li>Finally, I am using <a href=3D"https://ww=
w.fs.com/products/65219.html?now_cid=3D1159" target=3D"_blank">Fiberstore C=
WDM4 100Gb</a> optical transceivers with a duplex single-mode fiber.=C2=A0 =
This item is my current suspected culprit - it&#39;s not clear to me whethe=
r the operation of this optical transceiver is transparent to the 100Gb por=
t or if the port needs to handle things differently for this type of CWDM t=
ransceiver</li></ul><div>The problem is that I never even get link lights o=
n the workstation NIC when I connect to the=C2=A0X410. However, if I move t=
he QSFP28 transceiver from the X410 to another workstation (with a Mellanox=
 100Gb NIC), the link lights come right up on both sides and the OS sees a =
100Gb Ethernet link.=C2=A0=C2=A0</div><div><br></div><div>So, the problem &=
quot;appears&quot; to be that the X410 does not like this optical transceiv=
er. Does anyone have any experience using this optical transceiver with the=
 X410?</div></div><div><br></div><div>Thanks.</div><div>Rob</div></div>
</blockquote></div>

--000000000000ec41020638084597--

--===============3846137343404772810==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3846137343404772810==--
