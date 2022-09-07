Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 906AC5B00F9
	for <lists+usrp-users@lfdr.de>; Wed,  7 Sep 2022 11:56:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 94FFD383BB4
	for <lists+usrp-users@lfdr.de>; Wed,  7 Sep 2022 05:56:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662544610; bh=es/bBinOV90genG0tGIobGzBqSZXaUMxdmRo4B7OIHk=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=GrYkkJjwOpzyrN2HYSwmYIT+PvzviYCHIDbRexoAl9PfrQrZFckbRejKOktlnYRWt
	 slzH69qjc4XqqSkhJS7mJwOW2/wK54IK64z1fuYzj/RK5ASO/qDmfkEcc6oQTmc8uX
	 WfKcgduQO5FnoAOSA3+EEbykY0FkUB6pEZ6YNi+FIefoindn7iwGBqYtwliRvZc60T
	 x+Bz1h3l95A6fC++le/VsaYY844z8GLeONKbADL83l1yGsXoQMFT2sOvSm2zv56bTs
	 AvpEnumpVyhXkwO+Px8ffAk2yPvtG5ebN1o54YVZNJd1twmxyNmJt1rxss6KGmAu3o
	 0HPLH0Cy9LitA==
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 0E0AC383A9A
	for <usrp-users@lists.ettus.com>; Wed,  7 Sep 2022 05:54:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gdJp9i8N";
	dkim-atps=neutral
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-1278a61bd57so16168489fac.7
        for <usrp-users@lists.ettus.com>; Wed, 07 Sep 2022 02:54:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date;
        bh=1iAfhxQgOKs3nL/oN5+PkZohKPbsbDqYcMKySFmPl3U=;
        b=gdJp9i8NWYojOZxyhR1tmxme9kk4jOE6thH6d1qqeXrAsEPLVctGJw8RalF4zjWpWZ
         acL1l2g9uLXvWrR3ZppzQKL1SFIjcRQUidYs4qdbo0Ip3Snz7Nls4ESFaOP1R8NOeVrY
         AFQfA/hPNxOot+bZRI6RJrNPcY1Jl2yUlPUJBlNeot389MqxR9lPBKnAUY9c5BJv5vCJ
         oPtyEhz8/zl3FgEwdmsRONz8EFoKJuv7yi3N2JPZLYMd2LaQ+fr+mFindPb5p7qknwqf
         3BfU8JRMk92G57wOaQ+DC+XvZcA4++JCMv7dgHO0UysXhRSxLzXsnyFyNeHLLm6b8JlK
         Asmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date;
        bh=1iAfhxQgOKs3nL/oN5+PkZohKPbsbDqYcMKySFmPl3U=;
        b=UstCfVrOby5roYAar9fOYncOM0u3Ux1Y5RRP87i/ywftS+g2tGzN59h9rriZNKJ8kA
         UBlGjXG5hnfE/iJRs5B1YfAky7sdUcKjBO4zHcju4WrU5HobXcS0XCprjDjCsqT7NAjW
         2GIkBALsK+Iqllp/K1fAHuHYaZ6CBdyCtR19QN0uPhTdZQFaS1oU1TiaB+RfVfQ4BSoo
         vAGl3XK05ylv0GXAJceI/Qqk9lsNPTNXQk3ruxEJP1EPHNEteRlkXeq56c5rV9tci//r
         CWiglSRluKRUjnVAwvmqlLyibSqYYBBXR7LGCkOlI1at6FaaaaflnywIkWXN0xFYNMbF
         KDlg==
X-Gm-Message-State: ACgBeo35C5w7bT5jWTp3F67u3n6DQ+oxrCoZkmEgIG3GQFyOrt+G7vO+
	ugvbWR8W4AcBzeXsLS0RR7VjL89wlX3g8SpqYnBGUlqPeb4S+w==
X-Google-Smtp-Source: AA6agR4BpU7JTmA/IVVpRrOcVoNNVXJuF2dQa6cjiaqcB4ogqN+flz8YE8fUCsA2ztIFJsJ/CFe1n3ttO4kAe+jU8RI=
X-Received: by 2002:a05:6808:2382:b0:344:90f9:b79 with SMTP id
 bp2-20020a056808238200b0034490f90b79mr1118835oib.137.1662544498109; Wed, 07
 Sep 2022 02:54:58 -0700 (PDT)
MIME-Version: 1.0
From: Kevin Williams <zs1kwa@gmail.com>
Date: Wed, 7 Sep 2022 11:54:22 +0200
Message-ID: <CAJhOL6cXtZ9Q5RqEMt1_1pOrkmgph-soaj7eBQiasDn-rrdfqg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: AN54WZRNIW57WVUFEPVHQV6XSXKXRXXI
X-Message-ID-Hash: AN54WZRNIW57WVUFEPVHQV6XSXKXRXXI
X-MailFrom: zs1kwa@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] regenerating the C++ interface to an rfnoc block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AN54WZRNIW57WVUFEPVHQV6XSXKXRXXI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8864251785797070404=="

--===============8864251785797070404==
Content-Type: multipart/alternative; boundary="0000000000003bb37a05e8134e4b"

--0000000000003bb37a05e8134e4b
Content-Type: text/plain; charset="UTF-8"

Hi Everyone,

Is there a way to regenerate the C++ interface (the file
./lib/myblock_block_ctrl_impl.cpp) after the initial template is created by
rfnocmodtool?

I can't seem to find any files which define the registers, addresses, etc.

In my case, I am using Simulink to generate IP cores which I use in RFNoC
block designs. It allows one to specify the AXI4-Lite addresses of control
ports (starting from 0x100 only?) and I'm trying to understand how these
map to RFNoC register addresses.

Many thanks, Kevin

--0000000000003bb37a05e8134e4b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Everyone,<div><br></div><div>Is there =
a way to regenerate the C++ interface (the file ./lib/myblock_block_ctrl_im=
pl.cpp) after the initial template is created by rfnocmodtool?</div><div><b=
r></div><div>I can&#39;t seem to find any files which define the registers,=
 addresses, etc.</div><div><br></div><div>In my case, I am using Simulink t=
o generate IP cores which I use in RFNoC block designs. It allows one to sp=
ecify the AXI4-Lite addresses of control ports (starting from 0x100 only?) =
and I&#39;m trying to understand how these map to RFNoC register addresses.=
</div><div><br></div><div>Many thanks, Kevin<br clear=3D"all"><div><br></di=
v></div></div></div>

--0000000000003bb37a05e8134e4b--

--===============8864251785797070404==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8864251785797070404==--
