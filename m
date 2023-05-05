Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB646F8447
	for <lists+usrp-users@lfdr.de>; Fri,  5 May 2023 15:41:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8D337383F87
	for <lists+usrp-users@lfdr.de>; Fri,  5 May 2023 09:41:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683294107; bh=bxwedcT0KotoHzC4jer+7oszPG9ozREjEXBxTORMKWg=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=zKKbiRig12rcff/zZ2NIy1cnMYEMpcytoHTwSK/15dB+rrpGSXdt/kHEBygkmCWKy
	 gEw349fSLiyNKG0ctAMCtswVL5F1+85VjMN5Dog3jqRSC5kBK7HSGM1OBeLb87XbL4
	 fw+MVxEYmTMg2ak0xAtg50spkXF+PXusPqMikhUxmV7jwxWvzvIrh/QZD12QUoihDk
	 MppCwQl8qC4YcHI72U7sT1+vMbi7/YAaN0hnN76BAxUkV5NpPzRCYnxYvExXqOZStr
	 wAM9Bw9ZihtyOz/cpn3vxsdlgCeCHqUBtRQoFctRxTEhsUWui3rEqHIGPkndc2ot4K
	 WiApnfKwNdAAA==
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com [209.85.210.195])
	by mm2.emwd.com (Postfix) with ESMTPS id 420373841EB
	for <usrp-users@lists.ettus.com>; Fri,  5 May 2023 09:39:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="k2EdDy4N";
	dkim-atps=neutral
Received: by mail-pf1-f195.google.com with SMTP id d2e1a72fcca58-643912bca6fso1441389b3a.0
        for <usrp-users@lists.ettus.com>; Fri, 05 May 2023 06:39:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1683293978; x=1685885978;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=UMrrCkIHVkRviyfcfLV0C1tlAEYHa+WaRTNrcKaX2vk=;
        b=k2EdDy4N7gwMMWR07C0ORUtvw9u8absR/xayS/K9jer2/N+lUTPUqAXMg79F55h6ZS
         Tf+JbWSDdFNnjlcaOZQCOcs4U0lP7wCgsgpncM7d/Q2VBI/3n1ZHYjNz34BK5D6qit06
         jXuH8DN+rJz9KgSGwG9emUQTcGXb52saj5JF1P/yOzhSoQ6TEB7nHdeJvxW3qBu0Ktn9
         IFd0o8/KnWD4XgPgOHg/4mTD4kJEtKXEjySi9rUw+fTI8XFywul20Oj0FdvIaBYDin+J
         T+Ek0Ebi1y2Kh6NQBZ8UwbKIyEifFhNFGDiW4zfcVc7jZhBpGHnmMm6t1AF4enD8/WLt
         EByQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683293978; x=1685885978;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UMrrCkIHVkRviyfcfLV0C1tlAEYHa+WaRTNrcKaX2vk=;
        b=jxzAL/AVJnoZsZXqXSZsMUl5AmywB2dKXvUGah1jJw1uGqpKwnXHg4UEo5rih0LuNI
         RYZeQhMukISeHLL/gElAGPSvwKWg+EUzRI/aVGhzWz0BjVhe/Bq3VolOicckC3Qlf3yO
         jRknlVRJk3MtZx6YrgX+NQzY/Ild9ORIyam1xCCzPfTkuqLrtm/IRqH1FohPk/aMAsSa
         9CXySfUolw6aHF0V5aNF2TkpNg3uZaLvoK/GB9fIgk5P+u2h/AaCp1Oc4v6Kx3A3GlvO
         8uOJgzNObrBmBuKnXx63lcAgYI7F9rN9pcM3btZha34AB6dnIrKOFuY4b7v/OnmDmpjS
         ZL9A==
X-Gm-Message-State: AC+VfDyKgAD+n8h+E/rq2HC3dr7nQm9fFENhTfUTCPuMcpZijFB6/ex9
	8jNl/hExtnDPspnTqWgsRBuIePIHVYf06+SWNQCKaQsftx3tehAFREvq2GyeS7s1OMUj
X-Google-Smtp-Source: ACHHUZ4b7POescEzkQu20rzjzGKsaNp1RzakkrVQcDinPd7UEwHtM/kE6CNNhrSoBxH/6ZFfXO7fMqG4BwDbmOSv1J0=
X-Received: by 2002:a05:6a00:ad5:b0:643:849a:dd06 with SMTP id
 c21-20020a056a000ad500b00643849add06mr2310424pfl.34.1683293977606; Fri, 05
 May 2023 06:39:37 -0700 (PDT)
MIME-Version: 1.0
From: Neel Pandeya <neel.pandeya@ettus.com>
Date: Fri, 5 May 2023 08:39:01 -0500
Message-ID: <CACaXmv-DQmzmbB-+Q9ARnuNfY+aTBPC_mpn24t=7683Vewo4+w@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: G7EDOWDZ6SE44ZBFNLVNYXB35IUHQEL7
X-Message-ID-Hash: G7EDOWDZ6SE44ZBFNLVNYXB35IUHQEL7
X-MailFrom: neel.pandeya@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] NEWSDR 2023 on Friday June 2 at WPI in Worcester, MA (only in 4 weeks!)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/G7EDOWDZ6SE44ZBFNLVNYXB35IUHQEL7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7700640670643088032=="

--===============7700640670643088032==
Content-Type: multipart/alternative; boundary="00000000000096911705faf26b3f"

--00000000000096911705faf26b3f
Content-Type: text/plain; charset="UTF-8"

The New England Workshop on Software Defined Radio (NEWSDR) is being hosted
in-person at Worcester Polytechnic Institute (WPI) on Friday June 2, in
Worcester, Massachusetts, with two exciting tutorials ("USRP FPGA
Programming with RFNoC" and "AI for Wireless Communications") scheduled the
evening before on Thursday June 1.

Many thanks to the support of our generous event sponsors Mathworks and
NI/Ettus Research.

The event is free, but advance registration is required.

To learn more about this event, as well as to register for free to attend
NEWSDR 2023, and to present a poster during the networking sessions, please
visit our website at the link below.

http://newsdr.org/workshops/newsdr2023/

--00000000000096911705faf26b3f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D""><font face=3D"verd=
ana, sans-serif">The New England Workshop on Software Defined Radio (NEWSDR=
) is being hosted in-person at Worcester Polytechnic Institute (WPI) on Fri=
day June 2, in Worcester, Massachusetts, with two exciting tutorials (&quot=
;USRP FPGA Programming with RFNoC&quot; and &quot;AI for Wireless Communica=
tions&quot;) scheduled the evening before on Thursday June 1.</font></div><=
div class=3D"gmail_default" style=3D""><font face=3D"verdana, sans-serif"><=
br></font></div><div class=3D"gmail_default" style=3D""><font face=3D"verda=
na, sans-serif">Many thanks to the support of our generous event sponsors M=
athworks and NI/Ettus Research.</font></div><font face=3D"verdana, sans-ser=
if"><br>The event is free, but advance registration is required.<br><br>To =
learn more about this event, as well as to register for free to attend NEWS=
DR 2023, and to present a poster during the networking sessions, please vis=
it our website at the link below.<br><br><a href=3D"http://newsdr.org/works=
hops/newsdr2023/">http://newsdr.org/workshops/newsdr2023/</a><br></font><di=
v class=3D"gmail_default" style=3D""><font face=3D"verdana, sans-serif"></f=
ont></div></div>

--00000000000096911705faf26b3f--

--===============7700640670643088032==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7700640670643088032==--
