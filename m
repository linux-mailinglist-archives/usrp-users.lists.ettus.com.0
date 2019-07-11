Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 226E365126
	for <lists+usrp-users@lfdr.de>; Thu, 11 Jul 2019 06:28:40 +0200 (CEST)
Received: from [::1] (port=36586 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hlQhA-0000KA-L1; Thu, 11 Jul 2019 00:28:36 -0400
Received: from mail-lf1-f52.google.com ([209.85.167.52]:36326)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <zidane2006@gmail.com>)
 id 1hlQh6-0000Gm-PH
 for usrp-users@lists.ettus.com; Thu, 11 Jul 2019 00:28:32 -0400
Received: by mail-lf1-f52.google.com with SMTP id q26so3082799lfc.3
 for <usrp-users@lists.ettus.com>; Wed, 10 Jul 2019 21:28:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=vB0JcWh3J3vsduqpMepyftG9IJDSgl6eY1Iv8cWnlsA=;
 b=OFKNHJI9BG3LJCd1BW6cMyR2x4ZUoXbafQPKuUcyhyW77kw59K9Bv3EsRSIAIeMsSi
 7PCsC3nVYoWBvyqYrOvSHgclfEQTtwlIJ5+uU/eT3Ll6Ca0tvzac3MTP8OHCovfH87Pc
 jx+YSDiiGBK8u+zrvu0aPFiEsxBKOynqcxv/Lc2AeyUEuPIovacZjo1PwMoVQ9Y/W7dE
 Gqq8nSegP5IpbR3ylkejZ+vd+AOiSsIwP9CjIdckdgQppyt5HYIxmRoquPf5ZjO6OEGj
 xS4By6B/KC20zqzrbygwA0qeaN575oBV2+iLW3Wq7NwFUKO3CkZ+84s152efqYy9A8WA
 FJCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=vB0JcWh3J3vsduqpMepyftG9IJDSgl6eY1Iv8cWnlsA=;
 b=RkqEZDnpm2fPkTo4bPxif7GI1ORo4vxeWJ99B2OgTTAJJtbf/WUtRGBMw5WBFhFbMz
 sU+gNITgduuyBpgLz5/sxdaTD1OfKCYS1SKEahPgtKTG31e0VlPHLLzl3EXU/PO/6FaJ
 /FkC5fBFRo8aYsX49bXDb91gTqfvgjvClk6QUsCyKI062TgMgl2NUJr5Z7wNamjlxHEe
 hxjU0RRm0MoClo/7epv9/5hNYq8a2gA4Q9QqoESQpipG+eeNuW306YoyhXnNRlmPnuCX
 X4Oi+S5S2ouIkWRInrk5Qd1KdEEhiuojFmUZ1bsfI2V3r62pzA1qWuO/rZDFtGD5dTwN
 IK/w==
X-Gm-Message-State: APjAAAX8oz0lh968MAhFeL9Lrz7j3arFT88VKBz3WeZ3jwam3Y9bTZN8
 /asTGB6wvgXLnwRF1GE5Be8eSi+zP/2Gdhlf41QRkw==
X-Google-Smtp-Source: APXvYqyUn6IxHmXege6wNOXlsYs+o0mAWcE66PuuHfY0hz/17IdBR2SNciwkUjjYWLM6/US9lkweNk9TV0CoFC0IeiE=
X-Received: by 2002:ac2:50cd:: with SMTP id h13mr644622lfm.36.1562819270625;
 Wed, 10 Jul 2019 21:27:50 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 10 Jul 2019 21:27:13 -0700
Message-ID: <CAHP8DwK0jVZWxnDmXfVBiyJ2DzJDs6xXFOoRbhRmgWGv7HNO_w@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] [B210] Read raw ADC data directly in Matlab
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: lc via USRP-users <usrp-users@lists.ettus.com>
Reply-To: lc <zidane2006@gmail.com>
Content-Type: multipart/mixed; boundary="===============8179180914216614187=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============8179180914216614187==
Content-Type: multipart/alternative; boundary="000000000000794d5c058d60379e"

--000000000000794d5c058d60379e
Content-Type: text/plain; charset="UTF-8"

Hi all,

I'm using B210, and try to dump the raw ADC data, feed it into matlab to
test the design.
Is it possible to do this in matlab without hacking the UHD?
(I think the data output shown in the simulink is from FPGA?)

Best wishes;
Chao Liao

--000000000000794d5c058d60379e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>I&#39;m using B210, and try to =
dump the raw ADC data, feed it into matlab to test the design.</div><div>Is=
 it possible to do this in matlab without hacking the UHD?<br></div><div>(I=
 think the data output shown in the simulink is from FPGA?)=C2=A0</div><div=
><br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_signature" data-sma=
rtmail=3D"gmail_signature">Best wishes;<br>Chao Liao</div></div></div></div=
>

--000000000000794d5c058d60379e--


--===============8179180914216614187==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8179180914216614187==--

