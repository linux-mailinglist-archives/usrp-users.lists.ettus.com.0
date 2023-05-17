Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 65FEA706F7C
	for <lists+usrp-users@lfdr.de>; Wed, 17 May 2023 19:31:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 478EF38392B
	for <lists+usrp-users@lfdr.de>; Wed, 17 May 2023 13:31:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684344674; bh=HaRQ4ZmY3Gba7cat8fy64x3pK+gn1b90eDamwhwJM1Q=;
	h=Date:From:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Lw/BNRngNQdK/W6mZ5h25QuKWpWFy2ove6NZgxnVYKv5PCjxnRhdEvbaCSFN6fjoM
	 JozFNBHeMfdoHMBRcOoCu6UEZFb2WSn5o4RVQ06RP42PFwOMNav6/8YfVd2QpqGDGu
	 0H78BnF3XPDl5Gz3dCFUJ1BG5FyOgzQCro7MALq86sTmTTsnKZ0zluMA42Yzk1McLV
	 CCCW1e8zGyyaGnhKX6MxvzGAiEHX6yalWKDqnFqYas3dtEHULTxD0zEp4uTk7Gwkxh
	 Fb7R8PxrOuQckFDvvwpE2hfPzuF6GWfNkb0R46+Wskb6vT8KCHBWxES/HlUa/O84BG
	 q/Du58CscUZaw==
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
	by mm2.emwd.com (Postfix) with ESMTPS id D50C1380953
	for <usrp-users@lists.ettus.com>; Wed, 17 May 2023 13:30:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fNKpYibC";
	dkim-atps=neutral
Received: by mail-ot1-f42.google.com with SMTP id 46e09a7af769-6ab611e57c2so848634a34.1
        for <usrp-users@lists.ettus.com>; Wed, 17 May 2023 10:30:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684344646; x=1686936646;
        h=user-agent:to:from:subject:message-id:date:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SW6YCjqjvmbzSf0U9O/wrGte0dYIKaveNfT79sTtCIk=;
        b=fNKpYibCxAbMs9/1x9gRDvc8ZaPrJmk8wxR8G2MpTY//3LB3HIeCD1faMiHP5H1Hs4
         sbYVqKFutYzVr9O6V/en/HFd3mpvYko+BnnMJNd3Po04FFNO6nk4BAxXqObcw1AKcXv5
         Z02BjVEoSVQuUVVHtbzXoAb6CwxsYK7ErWngVYOclhd7X3LMvej5nV+xyF7cuphB2lrn
         uHsn4oywdDMgPjr9UNJJ1d+zfrT4+3XbM89Lf3sehIVJ/y/hy/BZlr8+KjXyowxU8+vx
         SeTH8TY4vb7my2qXhEd2/YDUAlcY7rqM3hAUloIQ6bWNx7tCEh5zmqY6+7tJD9kbH9vz
         v+Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684344646; x=1686936646;
        h=user-agent:to:from:subject:message-id:date:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SW6YCjqjvmbzSf0U9O/wrGte0dYIKaveNfT79sTtCIk=;
        b=cLjX6O9xW0APv2yMJe/yGsmLjzbkH/99fIyZs37OUOOKWp0kCbWKxAEY+CuimqJzH5
         QWVLt6XPdc/BWCeNE1S9N7BUxv+78SuTfB3icWeLFIK/v2QLhqFozpwoMHzkq3ga6nte
         glutaPFKYQG3pCK+IECDd9s7+5WY8Lo+I0p3NGlGRAxmDpbNM3uZYT6AueFV9pf/3VHN
         KfE149EFK4QNgsmCCKwVXt0PoyCWrdbt0yb44NIr0EZ7cMZRZJ2eGLH1p2dv+rsp4qcU
         Boe2V2++8mJw5OuZ4L0BU2FEe7oq6wqe0nn3JU7DNnunBkIGAgAwdo3szpbZqYgBG1r5
         cUiw==
X-Gm-Message-State: AC+VfDwt+zIirtea6vnohiDGXZPK0zVsqZ2KVXtBMeNgf8Zw0WWDyyB/
	SpPp5RKhyBECUCkk39rSamok3HzmjzI=
X-Google-Smtp-Source: ACHHUZ5bQMd8oFAzU43Im98WkcC/50ElBHunjMby8GWjg3S2kfRnLQgxfn+CaZ9ttQSnTQ5bdkgPIA==
X-Received: by 2002:a9d:7994:0:b0:6ab:24ce:eb55 with SMTP id h20-20020a9d7994000000b006ab24ceeb55mr14098239otm.27.1684344646206;
        Wed, 17 May 2023 10:30:46 -0700 (PDT)
Received: from [192.168.4.31] ([47.186.160.129])
        by smtp.gmail.com with ESMTPSA id d1-20020a056830004100b006a42e87aee4sm7455606otp.32.2023.05.17.10.30.45
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 May 2023 10:30:45 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 17 May 2023 12:30:29 -0500
Message-ID: <Mailbird-70cf993e-2702-42fa-a6a2-fed6e2bd4416@gmail.com>
From: page <pageheller@gmail.com>
To: "usrp-users lists.ettus.com" <usrp-users@lists.ettus.com>
User-Agent: Mailbird/2.9.74.0
X-Mailbird-ID: Mailbird-70cf993e-2702-42fa-a6a2-fed6e2bd4416@gmail.com
Message-ID-Hash: EOF42PRQ4F2Z4O47BPTW5GBWBNWXLCH5
X-Message-ID-Hash: EOF42PRQ4F2Z4O47BPTW5GBWBNWXLCH5
X-MailFrom: pageheller@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Ubuntu and USRP
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EOF42PRQ4F2Z4O47BPTW5GBWBNWXLCH5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1260714763947726726=="

--===============1260714763947726726==
Content-Type: multipart/alternative;
 boundary="----=_NextPart_11086302.678186168649"

------=_NextPart_11086302.678186168649
Content-Type: text/plain;
 charset="utf-8"
Content-Transfer-Encoding: quoted-printable

For some time I have been using a B-210 in research and development. I have=
n't been active on the list for a awhile. I recall someone citing problems =
using Ubuntu 20.x with USRP. As a result, I'm still using Ubuntu 18.x, whic=
h has been working fine. Have the problems with using Ubuntu 20.x been reso=
lved? Is anyone having further trouble with the latest versions?

--

page heller
[dab2ce89-121d-4ba4-b1f7-a53493beaca6]
------=_NextPart_11086302.678186168649
Content-Type: text/html;
 charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div id=3D"__MailbirdStyleContent" style=3D"font-size: 10pt;font-family: Ar=
ial;color: #000000;text-align: left" dir=3D"ltr">For some time I have been =
using a B-210 in research and development. I haven't been active on the lis=
t for a awhile. I recall someone citing problems using Ubuntu 20.x with USR=
P. As a result, I'm still using Ubuntu 18.x, which has been working fine. H=
ave the problems with using Ubuntu 20.x been resolved? Is anyone having fur=
ther trouble with the latest versions?<br><div><span style=3D"font-size: 10=
pt">--</span><br></div><div class=3D"mb_sig"><div>page heller</div></div></=
div><img class=3D"mailbird" width=3D"1" height=3D"1" style=3D"border:0; wid=
th:1; height:1; display: none;" src=3D"https://tracking.getmailbird.com/Ope=
nTrackingPixel/?messageId=3DMailbird-70cf993e-2702-42fa-a6a2-fed6e2bd4416@g=
mail.com&senderHash=3D3B5B4D97E15C53C84AB3BBA711CF8FA4E8DEA2B834615A93F02F8=
50A4B090C4C&recipientHash=3D62BDC89AFB5F046DA8A22F47CAB9288DB44CE5326F66A9C=
242E4B6B173C0F8E1&internalId=3Dac5c9af6-5efb-417c-badd-a95313d8d62a" alt=3D=
"dab2ce89-121d-4ba4-b1f7-a53493beaca6">

------=_NextPart_11086302.678186168649--

--===============1260714763947726726==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1260714763947726726==--
