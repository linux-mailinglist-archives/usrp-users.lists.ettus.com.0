Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B2BE82BD5C
	for <lists+usrp-users@lfdr.de>; Fri, 12 Jan 2024 10:37:43 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 645AC384C0F
	for <lists+usrp-users@lfdr.de>; Fri, 12 Jan 2024 04:37:42 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1705052262; bh=lGvVpi3z7zTeurFnGXZVmkuSNSKjWc6JkLDwQy1/3IU=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=0RREga1W3BInux8SEVTANyjBAN7upJAGN/apSuONOpI0DxyRXcEd46rMznYHcv/le
	 A3X9t0tipzZ7GY3xAeDmZ8jb+gJAH6ptTKfCHLpfSTIWWky039S6qjyIjy7+jl5vTV
	 QPGAQF2EWyW61orwEpjLeEi4Yp3qD9lRuwOo1VWwEHo1dhB7EMryvUcdYShKgh4Dxy
	 qDRYeXQSvLrMx2lcX9hDNNMC6EXgg3uvW+dW71VAuR2Kc8HRJn2VT0aqXHTU0pzXA0
	 3KKbRLdMZXqkliwte14Ha1/UQmIoKL+WvhOdF5d0xaAd5VW3ZsVz4jHHPfLuPrKM4S
	 jW3Cbxw76ikJw==
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com [209.85.166.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 9B3B5384BEB
	for <usrp-users@lists.ettus.com>; Fri, 12 Jan 2024 04:37:38 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="RissqehR";
	dkim-atps=neutral
Received: by mail-il1-f182.google.com with SMTP id e9e14a558f8ab-3606dc4fdf2so32185365ab.0
        for <usrp-users@lists.ettus.com>; Fri, 12 Jan 2024 01:37:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705052258; x=1705657058; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=X9KSl3dNvJ893IA8wfwKAkTieFtLrDNITnlJhyuhcI0=;
        b=RissqehRlwAPtwla0H34CVzHv1Pks88wq5LEBOKj2ZROuZ/eJh3gB/JATd64uL15Qt
         0CuhNgFciARVP2bCfLiOsN3AyhfejXxhwfpKEuvCFwsWYcyGf86yZOwMs5eTQtyAeiTx
         TUZ9vhJFjKFAfZ0ifBET9Lb9YWRs7gujc2xIkg8+M+t+rQBVnuu2tVr80C4eKJ78eLCl
         Dd3HD1LfGEJCays5up6zwq9Bc2Tsfirxv35ZYqZG7bHZ5iIMNsNukiBU2hZla1Mk7cua
         s8nYDJbXXRzRAalYXu7zxrqZ2c3uWj8a/4DuLWZzskIu0HWqbewE58udTxwm7aNpEO7H
         KQvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705052258; x=1705657058;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=X9KSl3dNvJ893IA8wfwKAkTieFtLrDNITnlJhyuhcI0=;
        b=gvt9tvV4OOSfqN8KmZtxwS8HM+nTIohXSiFU61O6CU/gBrLWdsCtx35KVxTwMVZIXl
         7KW7EuNmDFrIh0rtdCa3dFBClaKO0Rg9PzyC72eKHcqdmfOVtVHmd85YxTlgXgh7W2MW
         UgBe/oomwX7jNh7gYXFgcfyrN3wM71OaBvOafSzWSGNmZOSxA/+1DjtAapNYPj7XK+sN
         0VLml4tms3K4Y59JgC2ezfONu5e4CGZez7UruY1CYzuHci9bhJXVg91UVgbB0wYShcMo
         EMspWdq2JtE4EScI2jMkj0l0HMFjCrBCw9uYV4fhkvjnADH8XYLvdRD9igyZD1kezU/d
         ElLA==
X-Gm-Message-State: AOJu0Yyd7drPwpnDQ/hepw3KJGgHIHPwCKpErEbXY+xw3i1LRRiLSxkT
	YwNaIZzshWZwcYHRSllF691KZZqXYvsg/xH4CzD1USJe
X-Google-Smtp-Source: AGHT+IHi0dX75jy+B8FA8DMk17zIHLa0jagD2IG9+Y3XemCMeThc38EFO+wNVKMaqdAIrTx+p0SzppimGs/48viJwBM=
X-Received: by 2002:a5e:cb42:0:b0:7bf:2a8b:5531 with SMTP id
 h2-20020a5ecb42000000b007bf2a8b5531mr37885iok.34.1705052257760; Fri, 12 Jan
 2024 01:37:37 -0800 (PST)
MIME-Version: 1.0
From: Alin Stoica <alinstoica1234567@gmail.com>
Date: Fri, 12 Jan 2024 11:37:27 +0200
Message-ID: <CAArU_bE6h0B5C2xu5ArFc3LOswYFBdRst4aJYX_euCoNQyckhw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: EDZCH3OK6OPQVRRJVJAI5VLXFAOZXXZS
X-Message-ID-Hash: EDZCH3OK6OPQVRRJVJAI5VLXFAOZXXZS
X-MailFrom: alinstoica1234567@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP E310 capabilities
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EDZCH3OK6OPQVRRJVJAI5VLXFAOZXXZS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3106435133636868812=="

--===============3106435133636868812==
Content-Type: multipart/alternative; boundary="00000000000025bcff060ebc6a68"

--00000000000025bcff060ebc6a68
Content-Type: text/plain; charset="UTF-8"

Hello,
I have a question about my USRP E310 capabilities.
How many mega samples per second can tx and rx support (i.e. msps) As far
as I know the architecture has changed since UHD version 4.0 and there are
a lot of drops to 4 msps when running benchmark. the UHD 3.15 versions
support a bit more msps though, somewhere around 6-7, more msps leads to
underruns from what I have noticed. If I use UHD 3.09 could I get more mega
samples per second?

--00000000000025bcff060ebc6a68
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello,<div dir=3D"auto">I have a question about my USRP E=
310 capabilities.</div><div dir=3D"auto">How many mega samples per second c=
an tx and rx support (i.e. msps) As far as I know the architecture has chan=
ged since UHD version 4.0 and there are a lot of drops to 4 msps when runni=
ng benchmark. the UHD 3.15 versions support a bit more msps though, somewhe=
re around 6-7, more msps leads to underruns from what I have noticed. If I =
use UHD 3.09 could I get more mega samples per second?</div></div>

--00000000000025bcff060ebc6a68--

--===============3106435133636868812==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3106435133636868812==--
