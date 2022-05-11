Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B85D6522BD1
	for <lists+usrp-users@lfdr.de>; Wed, 11 May 2022 07:40:21 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9CF32384907
	for <lists+usrp-users@lfdr.de>; Wed, 11 May 2022 01:40:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1652247620; bh=hwyhppgIj7YDlaSP6ZoZv1uCT/QsOxKA48dECv3C4pw=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=yK9hG7IAGJFC05iCbzT9jvI8lN7kXXdKnMYWe1MNNW2uSf0JeA0lwJc8HIgkSkbY1
	 JDyunLkEn97To1WLRKPQ1PsEt50IWgo3dt3/kciFLXGNBUB6BN68BijCqS7gLtfQzE
	 xuKago0mGcowdn3RT/VI4VUI/gBiboANYcRipcp521wXFztRocl9vO0R1Sg8rJ5Aij
	 PBb4y6bVfGGbw0wYnYpFI0TNKyfc56h115PdrkJuJR3p73ur4QdtXcbjI5Cybtj/Wb
	 54eqYiInlGR4/F9RCfIkj+O/cDy1XOf+jVd9qSbp8Mv3DGsiLbvGvMRS3YWf6xg6d1
	 64HJurtL1Qf8w==
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 9B0EE38458E
	for <usrp-users@lists.ettus.com>; Wed, 11 May 2022 01:39:12 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="EqzR18Ca";
	dkim-atps=neutral
Received: by mail-yb1-f170.google.com with SMTP id x17so1922322ybj.3
        for <usrp-users@lists.ettus.com>; Tue, 10 May 2022 22:39:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=NIjN7QDFL3tqJ9T1g/L1lKxK3QiJ8/T2mwcMPNHNPlU=;
        b=EqzR18CaSVVu2JRCJ5/UNMI5iEcCAdCeh2RfSwucm4IxEaNbAt3QLFhnnLPfnFV1hD
         gC+h/4NeoOAresl3lNpvbrjD8Og/RSQYMpiI6wIAQr/1fAwDSNEl6yH707i6tjsjChuu
         Tyt6kQMrdFiaJlxDWG7+f8OKYuLH8SSrYapHtWlugSi+gIdJjQUjj/BOZsT3fznIp5A5
         uSn82SrZGHtTBGGePAPIH4RNGbL2Zv8pyvMMiFAPJ85veXzsSU58NGLfvBIg4XeyKoX/
         r5q3Zmnr8YYEYwpfC00zt3/L0F2Dq6zQBmxT3ImV/H10fLcS/ybNk6U8Bf4HuyGoe6ax
         cMyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=NIjN7QDFL3tqJ9T1g/L1lKxK3QiJ8/T2mwcMPNHNPlU=;
        b=v5ztaUkmMHEMM5+FLByRrg/GC+LxcD3Ps5lCdjfYkKfdKi22pS0bJC5uQhzaoIt2Rz
         NZvlKakWuJ5NEH/7COU8BTKIkXbMPKxl8OwcY1pY1dr9sMQvhKctC9JQi/de4nAe9AfL
         0aA9znSQKj7c94esspFbLcffpqkkK2OjL+KlrLIQmvLaLaSRRzX6a3O6qis9uAdv5hln
         6W8YLvyZQ2wT++20QDOdo07cYcpCKE+TD4uOfjcjdwf5HvB6uC1HEGESFClYQuDNTKQ6
         2pLlvBv3sobVHF/cB5h5KC84tYZg2B3ewn0oPt3KQa+gRSBAAAunL+Ep0st9cNuU4R6n
         cP7A==
X-Gm-Message-State: AOAM5313mEKKmuRA56mRPX2Ab9QEgsaEOBQiLIZ9Nd5gwjPRqLP0qpcz
	4mc77e7WrMenGtfrlZ1zzsPpM3iyxGK6oYrrmh3j3pUoBew0uYeQ
X-Google-Smtp-Source: ABdhPJxHy9e2ChGxytIngZqO9K69Or2egnpoqtDeSkOPi2rVvxaKBJfl7W6fnXpUek4iwKST9F1/nJ73e6E4xaqa+b8=
X-Received: by 2002:a05:6902:124a:b0:649:460a:312c with SMTP id
 t10-20020a056902124a00b00649460a312cmr21841741ybu.148.1652247551284; Tue, 10
 May 2022 22:39:11 -0700 (PDT)
MIME-Version: 1.0
From: sp h <stackprogramer@gmail.com>
Date: Wed, 11 May 2022 10:09:00 +0430
Message-ID: <CAA=S3PsXwxAB2SU2i3TeTg6SDXsUU3LBnCGjfOEJr6Y5TvnNOw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: ZTCA3SXELBKEOTHGJDZJDHP2JMSHJPOW
X-Message-ID-Hash: ZTCA3SXELBKEOTHGJDZJDHP2JMSHJPOW
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Is it possible that I changed center frequency and gain of USRP from the Verilog code (In a RFNOC block)?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZTCA3SXELBKEOTHGJDZJDHP2JMSHJPOW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2893969836409706262=="

--===============2893969836409706262==
Content-Type: multipart/alternative; boundary="000000000000601b0305deb5dcff"

--000000000000601b0305deb5dcff
Content-Type: text/plain; charset="UTF-8"

Is it possible that I changed center frequency and gain of USRP from the
Verilog code?
I study API CPP Gnuradio and UHD, In CPP we can change the frequency and
gain of USRP easily ...
But for me there is a question can I change the frequency or gain USRP from
Verilog in an  RFNOC block?
Thanks in advance

--000000000000601b0305deb5dcff
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Is it possible that I changed center frequency and gain of=
 USRP from the Verilog code?<br><div>I study API CPP Gnuradio and UHD, In C=
PP we can change the frequency and gain of USRP easily ...</div><div>But fo=
r me there is a question=C2=A0can I change the frequency=C2=A0or gain USRP =
from Verilog in an=C2=A0 RFNOC block?</div><div>Thanks in advance</div></di=
v>

--000000000000601b0305deb5dcff--

--===============2893969836409706262==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2893969836409706262==--
