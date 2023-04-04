Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CD65B6D6CC1
	for <lists+usrp-users@lfdr.de>; Tue,  4 Apr 2023 20:58:02 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AF6443848A0
	for <lists+usrp-users@lfdr.de>; Tue,  4 Apr 2023 14:58:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680634681; bh=rcgazBSxaKl9hasW/RfEzcrVUjMPp3Tat4DHjM3vqEI=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=JzfPPKO8+CCNarOjfRp0h8OtUCTjRLvBDhiMIcHgnuGP4IJo85SujqAFxaxu4tLFf
	 kw0lJOXUXqCa7RjH813NZblB+DqwEVjG+SFWn5Z5y08QffSvkS4DSZACFpBNQDo1L9
	 tSBTa7vASmuGZkJgw3VlXwdsbiI3RdfH9lLRzqpkgcOw8OOZK9DEDiQQrm7e50NZZg
	 DHPN2SQIRYQ3NdWXWQwy7oUp2stIUw32W8WKQBoOmmB/tcr/d7gccSqYAVy5G8F38e
	 Xu12qjWw5Zn48jvSfowWLyM1vQhk7G3AS6LQ3NBe1AIxhHDy0wOe12naxhoLg+nKiZ
	 mYlrti/lsYgpQ==
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by mm2.emwd.com (Postfix) with ESMTPS id A3D4838487E
	for <usrp-users@lists.ettus.com>; Tue,  4 Apr 2023 14:57:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="OLeIql3d";
	dkim-atps=neutral
Received: by mail-ed1-f45.google.com with SMTP id cn12so134661917edb.4
        for <usrp-users@lists.ettus.com>; Tue, 04 Apr 2023 11:57:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1680634648;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=T1xvY6FodwMf0Q87XUmwvH8Hv4GvkgHgq06XGp3R+7I=;
        b=OLeIql3d7BF2pLi69q06B/Sbi9qo8piiig5WxQUvjApUxIHwI4BAM5nyxvoP9+0KAk
         4r/BN6tG5EwrX2TcpkuYh29uHeEB6qSBrgW1XHGH5OaQd/bFQtmZhaXLQIeDFjA+Uohz
         aD3FP1/NQnAX/V8uVLLOxACydnGjptRKiUfNmopje8HWmQ43katpDtc81Lxh05XRZfnx
         GRxjpzsML/Sn4QZEnGS9WQi6Hd73EZGRqUVfRKpqHKxDXXSzqQvLcz9mrhxabJoLCsnB
         Cp78mJ55EjHzPcHFYSU4uhlGS1yKURMiUar8x94REeoQvCSAp40c+ALvUHHNo3CTULLg
         utHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680634648;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T1xvY6FodwMf0Q87XUmwvH8Hv4GvkgHgq06XGp3R+7I=;
        b=KYPWwGQz4O+c8XH0W0TTN3pSGKeSczJ+yVuF2xHc0dwZOSzHYpFntw4pDGzJktqYMG
         tITXBuqBaIX7tGHxkwrouKkDMuoPSEcq/2xjMklEe/Njx682PH+19XXnZdyFa0zC/zmc
         dNFdJpWBKH4s7J7pwu+7i8tQ/tQi4EgFMbPFUeCLp2F4Ht9tGMe/DfetI1pXBPiPIorn
         nr/SzsKcz0JULgowFjaXcH6r1pylCLW6Nv9fNqMDZB/Y0tzojOCqkaSfdlAsCiFtQrc+
         I1cpWBDEqux1CUtBoaHMN20+/ZbUj7MCDSimI3qlg069gY8f0ptHif1Hcq4S33pAIKmG
         hnhA==
X-Gm-Message-State: AAQBX9dO1G0Z5z/0NLFzxe2JRPejjLP9b4Ha2ppWvLNpHl5EDJEI7+6d
	mrLaxKV3cd4tYBRApDZ/3qFQ3y3Dr1RMREKkb6IUjhmBkJzgOmMP
X-Google-Smtp-Source: AKy350abftQ929atgHeWwp+A0UqgTidMBX3Qn1qh0IKitujX74NlygCVgv9Dc3w6WFotkfulmsG/UF7dGXf7paa4QuA=
X-Received: by 2002:a17:907:20ce:b0:930:310:abef with SMTP id
 qq14-20020a17090720ce00b009300310abefmr165190ejb.3.1680634648186; Tue, 04 Apr
 2023 11:57:28 -0700 (PDT)
MIME-Version: 1.0
References: <QXmf97jb5MYA5TV9F6D7vtLLQoVUqrqFvtkMl8ITnY@lists.ettus.com>
In-Reply-To: <QXmf97jb5MYA5TV9F6D7vtLLQoVUqrqFvtkMl8ITnY@lists.ettus.com>
Date: Tue, 4 Apr 2023 14:57:17 -0400
Message-ID: <CAB__hTT7JCXB9V+XG_t2_fUZKxSKNuHuHoqvN1gxv1ok5H5XYw@mail.gmail.com>
To: h57jafari@gmail.com
Message-ID-Hash: L6RUY7G4RRNDEJFTOKRBNVY6Q774AC54
X-Message-ID-Hash: L6RUY7G4RRNDEJFTOKRBNVY6Q774AC54
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Integrate USRP-X410 with XL710 intel PCIe NIC card through QSFP ports
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/L6RUY7G4RRNDEJFTOKRBNVY6Q774AC54/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============3741194602911332978=="

--===============3741194602911332978==
Content-Type: multipart/alternative; boundary="0000000000003451ae05f8873f3d"

--0000000000003451ae05f8873f3d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Unfortunately, I don't really know. I do not have an X410. However, I do
have an N321 which has both a QSFP+ port and two SFP+ ports. I use the SFP+
ports with a 4x10Gb breakout cable (either fiber or copper) and the XL710
NIC. But, it is my understanding that the N321 QSFP+ port is configured to
operate as 4x10Gbe (but use only 2 of the 4 lanes available on the
interface).  I don't really know if your cable will work but it seems to me
like it should....
Rob


On Tue, Apr 4, 2023 at 2:39=E2=80=AFPM <h57jafari@gmail.com> wrote:

> Thank you Rob,
>
> In USRP-X410 I can load X4_200 FPGA image to set QSFP28 port 0 interface
> to 4*10G, and as you said I need to set XL710-NIC similarly with some
> utility tools. Does that mean I do not need any extra adaptor between the=
m
> for rate/protocol match.
>
> please correct me for the following step:
>
> 1- then for connection between USRP-X410 and XL710-NIC in such 4*10G
> configuration, does this cable works:
>
>  40G QSFP+ DAC Cable - 40GBASE-CR4 Passive Direct Attach Copper Twinax
> QSFP Cable (from 10Gtek)
>
> 2- Do I need other settings in USRP-X410 or XL710-NIC sides to establish
> communication links.
>
> 3- I assume I may need also install DPDK later.
>
> Thank you for support.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000003451ae05f8873f3d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Unfortunately, I don&#39;t really know. I do not have an X=
410. However, I do have an N321 which has both a QSFP+ port and two SFP+ po=
rts. I use the SFP+ ports with a 4x10Gb breakout cable (either fiber or cop=
per) and the XL710 NIC. But, it is my understanding that the N321 QSFP+ por=
t is configured to operate as 4x10Gbe (but use only 2 of the 4 lanes availa=
ble on the interface).=C2=A0 I don&#39;t really know if your cable will wor=
k but it seems to me like it should....<div>Rob</div><div><br></div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue,=
 Apr 4, 2023 at 2:39=E2=80=AFPM &lt;<a href=3D"mailto:h57jafari@gmail.com">=
h57jafari@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><p>Thank you Rob, </p><p>In USRP-X410 I can load X4_200 =
FPGA image to set QSFP28 port 0 interface to 4*10G, and as you said I need =
to set XL710-NIC similarly with some utility tools. Does that mean I do not=
 need any extra adaptor between them for rate/protocol match.</p><p>please =
correct me for the following step:</p><p>1- then for connection between USR=
P-X410 and XL710-NIC in such 4*10G configuration, does this cable works:</p=
><p>=C2=A040G QSFP+ DAC Cable - 40GBASE-CR4 Passive Direct Attach Copper Tw=
inax QSFP Cable (from 10Gtek)</p><p>2- Do I need other settings in USRP-X41=
0 or XL710-NIC sides to establish communication links.</p><p>3- I assume I =
may need also install DPDK later.</p><p>Thank you for support.</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000003451ae05f8873f3d--

--===============3741194602911332978==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3741194602911332978==--
