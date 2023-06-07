Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D15E725B7E
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jun 2023 12:22:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 046BB383F88
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jun 2023 06:22:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686133335; bh=obTfk5NDtQPn/v/VmeccICPPKVD+C9oEOLtLuWftV1I=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=MmEa0/NuvOz0wF107P/uQzOoUeR1vhci/ZvG+AQ0MQqHx8B5nx/tA2yZPFO1bieYc
	 Skk1kmwETr7fIDbZIFa9DkxXTWsAo2c0BzRINtvvd3K/0hYsODSztk6pGWcxhNTpI1
	 tKvpqV8Hmzfm2CGvQz4RvzaLmK9i5PFQ5Rz1ggmcAfM52cjWABwDu7WeCQdDT3278U
	 3EIrXZIKCNLJi5ehKAqXmwcAVRyUqnx3Km5gievDCk0zeIVGdn3Ta9Su/x6roCNeNf
	 h8/TTFoZom517GcRaT3PH+0OKkHraHuuLKMIJbwtZqn869I3WfbBGVw1R0eXFWKHZ7
	 oo+sTT24HNUfA==
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	by mm2.emwd.com (Postfix) with ESMTPS id BD7363808F7
	for <usrp-users@lists.ettus.com>; Wed,  7 Jun 2023 06:21:14 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="feKeYiIW";
	dkim-atps=neutral
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-974539fd9f0so138412466b.0
        for <usrp-users@lists.ettus.com>; Wed, 07 Jun 2023 03:21:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686133273; x=1688725273;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=l+3w1mCmDfkSYVr/gupGzbi73bbtoLl8+nJXjbPvHYk=;
        b=feKeYiIWY9JVCFBXRsYoJPjA1YvaOWj6U8Nl6A51/+PIz5eEzfBAsoavW/4PCcWoIL
         wJlCYKkmeEoSoJ0E3u4AOLlx/9TbEsT1waMfVk3teGwKjgoxAEntGuHiowzIn1fOXSp+
         m+n+MVRpAYIzt/0jQQkubA79QW82LG+waBw3sxrm6bBNEFS/zl2YtUEMO1vIly8doSNe
         wX7q7zARqiYUKTM+sqgM78Ln0+Dcp7YHsQ3KiVryGQcK+EOQ8rICnDu3UMQKb08O4xtk
         EjVQIyuyqiQZ1mxDh06wnw77k96H0hr/kmqSieqobk5A667BXw6QODZem5ZSjcyozWYY
         24CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686133273; x=1688725273;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=l+3w1mCmDfkSYVr/gupGzbi73bbtoLl8+nJXjbPvHYk=;
        b=PEaCoYR2n43yYR9ZMuYOIUTcGuzuaMj8ENDZY3eUzAPXZY3V4Spes4FAXIsGSHcIZS
         tMtvueNJN/Q4kyi22spwfk39ccErU8TyNYhch9xFnhzD/tkh8z1v0+ctKieMRJfsQeh+
         LByra2MWA/tQAku/edwb50DgB/znN6CiQGGvkOfR8RrADJugrf1BpWbztdv9v4b3Qydt
         8b/BXkzRgeiTUisVNo+RXbSExiAk7SQl5/iQOdBhXX20H7aGNkcy8xnkA3aQIxfl+otL
         I5NxmGWaXcEKlitehk07f21DY7MXxRxvNZgLx5ZKl/OzeDgpngLtd9UIBJ8ewFZCD2K5
         FETQ==
X-Gm-Message-State: AC+VfDwqTH9DfmxQc1KP/+vYHSK6yYiaY7hQeRjdeWOfqhjqgARJm1MH
	ifmN6t/KEDkaJbQJ169VDfsv6OMoyj7SKEFnohGUd5JJHm4=
X-Google-Smtp-Source: ACHHUZ4fXOXbeYZYVUnWRjQdm2pjDses+jytM2tDjU56CPDUgZj1+vlrP3oOnIaBP0FL3KxhLKJcfypwo/mGLIlgHxs=
X-Received: by 2002:a17:906:738d:b0:977:befe:73c4 with SMTP id
 f13-20020a170906738d00b00977befe73c4mr4622784ejl.3.1686133273044; Wed, 07 Jun
 2023 03:21:13 -0700 (PDT)
MIME-Version: 1.0
From: Kevin Williams <zs1kwa@gmail.com>
Date: Wed, 7 Jun 2023 12:20:36 +0200
Message-ID: <CAJhOL6eLOqG8m8DP8wwMm4DRa8Yq2i_wS7fMPXJJJZws6nLSSQ@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: 4ENT6WX5YNSA4HCLDN3XQZHZIGT35Z7O
X-Message-ID-Hash: 4ENT6WX5YNSA4HCLDN3XQZHZIGT35Z7O
X-MailFrom: zs1kwa@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] N2rt13HDRTExceptionE in Vivado 2021.1
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4ENT6WX5YNSA4HCLDN3XQZHZIGT35Z7O/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7043395132143139070=="

--===============7043395132143139070==
Content-Type: multipart/alternative; boundary="000000000000c8ad0d05fd877ec4"

--000000000000c8ad0d05fd877ec4
Content-Type: text/plain; charset="UTF-8"

Hi,

Why can't this be fixed in the USRP builds by upgrading to 2021.2 which
apparently has addressed this fault?

I have added a trivial delay and my image now builds in 2021.1 after many
failures while trying to develop. It is random, and I waste an hour or two
almost every day because of this.

I do not have time for this random approach to building firmware.

Regards, Kevin

-- 
Kevin Williams, Ph.D.

--000000000000c8ad0d05fd877ec4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>Why can&#39;t this be fixed in the =
USRP builds by upgrading to 2021.2 which apparently has addressed this faul=
t?</div><div><br></div><div>I have added a trivial delay and my image now b=
uilds in 2021.1 after many failures while trying to develop. It is random, =
and I waste=C2=A0an hour or two almost every day because of this.</div><div=
><br></div><div>I do not have time for this random approach to building fir=
mware.</div><div><br></div><div>Regards, Kevin<br clear=3D"all"><div><br></=
div><span class=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" c=
lass=3D"gmail_signature" data-smartmail=3D"gmail_signature">Kevin Williams,=
 Ph.D.</div></div></div>

--000000000000c8ad0d05fd877ec4--

--===============7043395132143139070==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7043395132143139070==--
