Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8569C65F847
	for <lists+usrp-users@lfdr.de>; Fri,  6 Jan 2023 01:46:47 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1711C3844B1
	for <lists+usrp-users@lfdr.de>; Thu,  5 Jan 2023 19:46:46 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1672966006; bh=RsncxT1rPw1zu1nVzEv0oNBEeOlCFklO3s8NYm3XyCg=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=j1KpjCQyAKBOOh6S5Jm81SLFOjEbo2QjGE6rD0tBLeY5WLrxYetm95leCNvBcIirl
	 6TuChuS37IVZu9fbj2T5Jikql24dQpcFYloSl6S77hDYJMvgXZrcNabCq5d6LdX3GY
	 rza4gPxN50d51QbHk/Cut1D0YQs17yhrU2L3j0BK78h7jdrl7DWn1VMrEoeJLmRUm0
	 tCqlchYoBT2KJPeCGQHpQbzohIfEwROGUW2jKfOOoQ2vL+yL1wOFCWKiqVawgYXDRI
	 7L54jhy3PwdUXYW4yWW7+uYo1FUU6zkzjRiEAYhwnJC8ngg3EcgO9ROKJ4JJD+2ZwP
	 OuI5Pnkbu/pkw==
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 5A8683843C4
	for <usrp-users@lists.ettus.com>; Thu,  5 Jan 2023 19:45:58 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="D4/igQSD";
	dkim-atps=neutral
Received: by mail-ed1-f46.google.com with SMTP id i15so429275edf.2
        for <usrp-users@lists.ettus.com>; Thu, 05 Jan 2023 16:45:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=BaqB+uL/wV02kR6zrAVil1ICALzT0vEWAZmdqfRJNPo=;
        b=D4/igQSDOTDI10dRSt08D2Lp2nA03vxpPaKZTRIbHeEobB8OeC2yJfem3hs+suMHC+
         hqZdrBfEVS2ZpL90Ueg3x+1UaaMb2AXi/lD7cQuLZ54+VZTmNzZr8gakdaQ9MOgQuMhe
         tRuZQACgdGHkeRaHi2vhe4Hmzy/xDGCboPG6Z6+r6OmEP5lRZ6igsghd7OlnuWWgu3XU
         OVWh4txgKCGKp7c8xX/QxW5jYYvo3NjvaYypgRiE4DmeVSCt7+RKZSy+8H6NXOYDG/if
         mH8qmOSXcMduEnhs9Y9o7kDRlJSP/5vNdQubCuK44eKWL9+p2Q3LLZiHwpWFzUlgmGn6
         dAuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BaqB+uL/wV02kR6zrAVil1ICALzT0vEWAZmdqfRJNPo=;
        b=UJGktYsNzsoGW2GlzZCzidGA6YeT0J2KwWfnZq2NKBCjEvseSyeFWUeG9JxMCN+aFQ
         7U/8pbHi56b+Sav6i6rZrTsQ4gVoFZhkX+N+A+bB1xTXsDar2mcJSDQbUhwskBTQaOXp
         a76KqB7ajFgySvnphvvvMDQEX5tCgq9nP7IetJJePwGdmZvbkxx7xEUFyUcv/85D5qhv
         hlEegwfqLjTI7pVQpiiYHu5u2Q7s5jshPyvEFVVMY0mg5SJRbuq4pCrq6w4JJp2qTtbA
         gYjvPrP6DNdOJYgAAF4HTq4+73qVa9iMcgYmAyhULfW7qWNa3IapldupWmuPS7c8Z/gQ
         BX+Q==
X-Gm-Message-State: AFqh2kqv/u4Dd+mCGz7qP3jTjrDBYRLYrvXn3WmtyHXLDTv+QEJcD+xZ
	YMhuij/Nme5AggtzeJAQ0penuNK76uPr9w6M+m7QPjfe//o=
X-Google-Smtp-Source: AMrXdXuY42efso1i2MgN1Zn5kCgvO9Ww50x7HugIcGxTA7FQ4qCaC8vZtWMKIzgGWR6yRD8jQ6hbj3tNN1B6oYmd7pw=
X-Received: by 2002:a05:6402:34c3:b0:48e:c102:41a7 with SMTP id
 w3-20020a05640234c300b0048ec10241a7mr908473edc.357.1672965956757; Thu, 05 Jan
 2023 16:45:56 -0800 (PST)
MIME-Version: 1.0
From: Brian Padalino <bpadalino@gmail.com>
Date: Thu, 5 Jan 2023 19:45:44 -0500
Message-ID: <CAEXYVK6SzuxTxGM6kZkxE7+z8F7ooGDzsHAhxcedheDdz=yOFg@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: QAS2VC5I3M76O2FA72MLXKERVK6K34FA
X-Message-ID-Hash: QAS2VC5I3M76O2FA72MLXKERVK6K34FA
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RFNoC 4.0 Generated NoC Shell
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QAS2VC5I3M76O2FA72MLXKERVK6K34FA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5608811262558360587=="

--===============5608811262558360587==
Content-Type: multipart/alternative; boundary="00000000000092ee8d05f18dbda5"

--00000000000092ee8d05f18dbda5
Content-Type: text/plain; charset="UTF-8"

Before RFNoC 4.0, there was a generic NoC shell that was used instead of
one being generated for each of the blocks.

I see there is a noc_shell_generic_ctrlport_pyld_chdr, but it isn't used
anywhere.

Is there a reason that a generic one isn't utilized and that ones are being
generated individually for each block?

Thanks,
Brian

--00000000000092ee8d05f18dbda5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Before RFNoC 4.0, there was a generic NoC shell that was u=
sed instead of one being generated for each of the blocks.<div><br></div><d=
iv>I see there is a noc_shell_generic_ctrlport_pyld_chdr, but it isn&#39;t =
used anywhere.</div><div><br></div><div>Is there a reason that a generic on=
e isn&#39;t utilized and that ones are being generated individually for eac=
h block?</div><div><br></div><div>Thanks,<br>Brian</div></div>

--00000000000092ee8d05f18dbda5--

--===============5608811262558360587==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5608811262558360587==--
