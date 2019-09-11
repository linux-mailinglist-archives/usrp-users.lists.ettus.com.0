Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CB53AFF2A
	for <lists+usrp-users@lfdr.de>; Wed, 11 Sep 2019 16:51:40 +0200 (CEST)
Received: from [::1] (port=38362 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i83y6-0003gB-9X; Wed, 11 Sep 2019 10:51:38 -0400
Received: from mail-ed1-f45.google.com ([209.85.208.45]:45166)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jbmsdr@gmail.com>) id 1i83y2-0003WQ-Am
 for usrp-users@lists.ettus.com; Wed, 11 Sep 2019 10:51:34 -0400
Received: by mail-ed1-f45.google.com with SMTP id f19so20853232eds.12
 for <usrp-users@lists.ettus.com>; Wed, 11 Sep 2019 07:51:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=8XUeTbJ8m4xvhnGiCzVOmCPpFC1K8Ywbggp0a/4ceqw=;
 b=OhWAMHJh5IUg3UCxdKREp3t/SjvrV26yZBAMqm/U9PM46EFM9ZTwIrJLz/Nsf6w5hq
 XKYA/6DEPPUIsp/Orh52KKxKiv3Nye9wz1KQooP9Um1mtJDMCpj3Td4sta6PwfnEtg2L
 uHITe+q+x5IiiH7VlyJGOJYY5tyvDS6eQtEkSGz8XO0MTkePMOtMTybzI7Arb6MOobK5
 eOphX4F8rlw+j4qtzNIJlhUtYLjBp2UA9aUMfv3vGqgik/a1xqmWykvarTAOPZCYphG9
 sNhV5FQZgMDT5cHO7JGMpkJERv2rR/XFJ+Hz2DHg3mzYmjveM31LqqFTcfsY33oOaUnK
 FclA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=8XUeTbJ8m4xvhnGiCzVOmCPpFC1K8Ywbggp0a/4ceqw=;
 b=mOZOVls0xoc9BaP8f/0V3zejnei58lAh3I/TioucwOCk58Nqd4K8upOhmiDQNT+XnR
 ET7DMp4OLCRHD9idxgiwmtvQW6SQUIBBA1hKUi21iDFDdzbJSq9NPPIO7GAOq7IWzZqj
 tqGLGLKFQuQnPrPgesA1tGNpzWZNC2jOmSG1bNWEWe0Rj9GNOKmVBo2hHiLc1TIWCzyg
 iuJDlNobiZyvdmVL1jBXZOIzo31H+UoGr9y962nqcuduwYhk+0UPCTWYGnZZRapOFJK8
 +yRIC2oNKu+qE//QtkYr5KWRcmbWjw8mEAF4r/gKPOW/tEHpYEBkFRYIuNLoHvbJsZVe
 CEqQ==
X-Gm-Message-State: APjAAAUC9Sy2FyKx7Tv8uoUXNS7PiKkINlE5g6XCuZU5R6TXAlZSsoAq
 MzfjsI+Iz+Kw6CDjZWfKuTaRVEflqjmFV3RtEKu6gw==
X-Google-Smtp-Source: APXvYqywgtaFxwJUlK9lldPzG+uvaHVfVsQZcROCsxilxeKzuy4ztMqsZls9qL3Yp+XaTwSUNjLI3R25e5GCIW3LhKE=
X-Received: by 2002:a17:906:c7ca:: with SMTP id
 dc10mr13906555ejb.308.1568213452139; 
 Wed, 11 Sep 2019 07:50:52 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 11 Sep 2019 10:50:41 -0400
Message-ID: <CA+1FM8rABFGmjTHf-GrW9w1agB_vMybCLRr_WjDaMjXsbtbg5Q@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: [USRP-users] UHD sink transmit at 100 MSPS
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
From: Josh via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Josh <jbmsdr@gmail.com>
Content-Type: multipart/mixed; boundary="===============3626140685888933863=="
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

--===============3626140685888933863==
Content-Type: multipart/alternative; boundary="000000000000bf2f3405924825ae"

--000000000000bf2f3405924825ae
Content-Type: text/plain; charset="UTF-8"

Hello,

I'm looking to transmit a wideband signal from an X310 at 100 MSPS, so I'll
start by posing the very general question of what tips and optimizations do
I need to make to be able to do this reliably.

Here is what I already have set up (this is using a powerful server - 60
cores at 3.4GHz)
GNU Radio 3.7, Ubuntu 16
UHD 3.14.1.1
  - have also downgraded to UHD 3.9 and get generally higher throughput,
less buffer underruns
MTU/frame size set to 8000

But no matter what I try - continuous stream, or TSB bursts, there is a
string of U's when I first start transmitting.  With TSBs, there is also a
string of Us on every burst I send to the UHD sink (with the newer UHD).
I've monkeyed around with parts of gr-uhd and uhd - but nothing of
consequence.

So any tips to get up to 100MSPS transmit would be greatly appreciated

Thanks,
Josh

--000000000000bf2f3405924825ae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I&#39;m looking to tr=
ansmit a wideband signal from an X310 at 100 MSPS, so I&#39;ll start by pos=
ing the very general question of what tips and optimizations do I need to m=
ake to be able to do this reliably.<br></div><div><br></div><div>Here is wh=
at I already have set up (this is using a powerful server - 60 cores at 3.4=
GHz)<br></div><div></div><div>GNU Radio 3.7, Ubuntu 16<br></div><div>UHD 3.=
14.1.1<br></div><div>=C2=A0 - have also downgraded to UHD 3.9 and get gener=
ally higher throughput, less buffer underruns<br></div><div>MTU/frame size =
set to 8000</div><div><br></div><div></div><div>But no matter what I try - =
continuous stream, or TSB bursts, there is a string of U&#39;s when I first=
 start transmitting.=C2=A0 With TSBs, there is also a string of Us on every=
 burst I send to the UHD sink (with the newer UHD).=C2=A0 I&#39;ve monkeyed=
 around with parts of gr-uhd and uhd - but nothing of consequence.=C2=A0 <b=
r></div><div><br></div><div>So any tips to get up to 100MSPS transmit would=
 be greatly appreciated<br></div><div><br></div><div>Thanks,</div><div>Josh=
<br></div></div>

--000000000000bf2f3405924825ae--


--===============3626140685888933863==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3626140685888933863==--

