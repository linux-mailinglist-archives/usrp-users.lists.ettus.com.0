Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B734AAF07A
	for <lists+usrp-users@lfdr.de>; Thu,  8 May 2025 03:05:11 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1F65A3860A8
	for <lists+usrp-users@lfdr.de>; Wed,  7 May 2025 21:05:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1746666310; bh=4FXfET3aveE6+tIIVtHEuSfoaPEVeeziX2/l3jVZj60=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=gp9UtAVMnFDPdmCYuTAfJs4btePjGBvipfLMkvSG2hc1xQtKEn7CFAptnRIw8UDOs
	 kf/a2Si9ujckVgVNp7venbVSPu+bW9puxtSNjB5bF510VrGuWfz494/tB4QwCbgecY
	 eAjIjfEOCiuxSFbx61KJcmhTo1UAz9TjFRCSJUnCgg4Ic8/0AR4rDq78mZ1aN5e+Dd
	 ahcuCauBOAUgRyjr1lMA/ZBlUciKTeIuuDlGxHG31p2yC+xiroET4JvKxpA9RMcS3x
	 ZYAHKNmyReq+0CmLIiQWIgRvYmweTxNlWrpjlOBO1o5i68UD98Vdvs9gxKfbXp7D2o
	 Ajqlrts2VzgHA==
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by mm2.emwd.com (Postfix) with ESMTPS id D3229385FD7
	for <usrp-users@lists.ettus.com>; Wed,  7 May 2025 21:05:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="lhLTVzDQ";
	dkim-atps=neutral
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5f7ec0e4978so773052a12.1
        for <usrp-users@lists.ettus.com>; Wed, 07 May 2025 18:05:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746666299; x=1747271099; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=uqW2sFBjgu82wjvhOk7HuylP6mpKBIk/x3PfhYvBeRU=;
        b=lhLTVzDQg8PTgWugeAsHzITAIFRnvLmopAPjj2lPs5aqOe9TBEBcMzv7ljsULw/XsE
         lYxpyE/CVi95nP79Zfy/8mDt47Vm4Zzd2ywX4eA38SEcXq7qJ33IFtAChah3lUK7KCMp
         g+zci5XazGtP81CZuW5UHM0vMzOytT+sbHyONitRhXxx/27q4BPM0+PMlgr4EC8VehPm
         OMUelWgU5Byvz0Tvvxp7gnCbEveuJFSHUajStnvBF08q3SnDqJjr8ar3iE4xFJlLepPK
         RX2qePEEIy2MG8/ixEjbaeYh5Pp9dVxtakKfYmR5YMTXNYFKnU0WPrDqpCeyP9Y9sdEJ
         VJXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746666299; x=1747271099;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uqW2sFBjgu82wjvhOk7HuylP6mpKBIk/x3PfhYvBeRU=;
        b=KYbgaXa/i820ORpzb7TGaedkcfMNkdWkfUcuhMrJWw3sSrzXXPsfYS2nsmZu5Y96sN
         MvM7kofUpF0kTwmOrWiEhJlNMMvW9h1rJew6gI2XpnxFT7QXrJZazJ7SsPWv3Q1BxPtj
         U9ujAMAcpDugxr7SLAxNUR3/1ArUFNt6F2wZfE6aBFJIXXZYhaXcg+Cz/YrizOrQ32wa
         GJ6Rp81etkB8Bc4YELZvhFPC3Du+ZgykD8WYSUVQFYm0U0zmDDRYAIEU0oFxyAVNlKW3
         yvn2Ds77noNdMVijrsW17b78DRvfLmLFW4woMMILSfDzcPkVlnBi1QBHQ9D/Xbk3Fnpz
         Vm3A==
X-Gm-Message-State: AOJu0Yz1PbBk4B4ufYucOoQlBaNVuWqtkXSQoi7PM81KVaBPzELH/PYj
	0QBHFDM0gXSYeoAy3mAmFIbOCnpLmjE44g5YoT9gYkcG9evepLUas5Fm+w4NpVOzAscXXUgHkNY
	8rqLu2pBx2z/57b5wNIm31hMABIZErg==
X-Gm-Gg: ASbGncsCmop0BKb2XIX0gPb+MQ/KAnBSg1ry7wMWocoZf5Hofs1F3gzuhFMV7IZllj4
	kOkQ29/1kQcvE/7oyErUTVUt1qhnq0vjxLtIB0MQF0i7S4+HIIwPRocXqfpKPdFP2nWLePaewxr
	v3X0U2+VrvG8frA9VNaMCG8Q==
X-Google-Smtp-Source: AGHT+IHIvmW3HdJfs07rRJpFOoTahWyH0C4gIhJejSpOOuv/iuLQltDYPOn51SryyPLoosqklfHdS7+F0IqIKhUyE2E=
X-Received: by 2002:a17:907:869e:b0:ac3:991:a631 with SMTP id
 a640c23a62f3a-ad1e8c4bf5fmr526063566b.34.1746666298730; Wed, 07 May 2025
 18:04:58 -0700 (PDT)
MIME-Version: 1.0
From: Brian Padalino <bpadalino@gmail.com>
Date: Wed, 7 May 2025 21:04:47 -0400
X-Gm-Features: ATxdqUHdFnA7Ykjiue8X3pi0GphWaPuTByUTURCqI-O3HSLArKLt7Fh9Yz5_92Q
Message-ID: <CAEXYVK7pXB_g8rq3Cd-GAP0bRtc09-+c75xGqdZ3czMADBYorw@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: FNJPGVOFPQNP7N5FGJHM4QSG4KQSFLQI
X-Message-ID-Hash: FNJPGVOFPQNP7N5FGJHM4QSG4KQSFLQI
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RFNoC Payload Mismatch
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FNJPGVOFPQNP7N5FGJHM4QSG4KQSFLQI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5592511627892073230=="

--===============5592511627892073230==
Content-Type: multipart/alternative; boundary="00000000000046ed3c0634957038"

--00000000000046ed3c0634957038
Content-Type: text/plain; charset="UTF-8"

I've got a custom image with CHDR_W=512 and I am using sc8 for both the otw
and cpu formats. In my FPGA simulation, I set the ChdrData with 512 for the
CHDR_W and 16 for the ITEM_W. I am loading a counting pattern with the real
part being incremented every sample, and the imaginary incrementing every
128 samples. In simulation, the 512-bits coming out at the end are:

    0x1f001e001d001c00 ... 01000000

In wireshark captures, the Payload shows this counting pattern going up: 00
00 00 01 00 02 00 03 ... as I would also expect.

The ILA shows me a strange swizzle going on the 512-bit bus:

  0x010000000300020005000400 ... 1f001e00

It appears like it thinks data items might be 32-bits wide (16-bit I and
16-bit Q) and it's also backwards on the bus (first sample in the ethernet
packet is the upper most sample in the CHDR bus). I am using the
chdr_to_axis_pyld_ctxt with CHDR_W set to 512, ITEM_W set to 16, but the
NIPC is just 512/16 so it's the full 512-in, 512-out - no width translation
there. Also note that the context is perfect - it's just the payload that
is strange.

For the life of me, I can't see where the misconfiguration might be
occurring. As I said, my simulation with the testbench for my block pushes
a counting pattern to a queue of item_t, then I use item_to_chdr() to pack
it and give it to the CHDR BFM. I'd really like to be able to simulate what
might be going on but I am hesitant to try and include the ethernet
transport adapter into my block testbench.

Any pointers on what this might be? Does the wireshark ethernet packet
description sound correct to you for the payload? The lowest bytes in the
ethernet packet should show up as the lowest bytes on the payload bus?

Thanks,
Brian

--00000000000046ed3c0634957038
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;ve got a custom image with CHDR_W=3D512 and I am usi=
ng sc8 for both the otw and cpu formats. In my FPGA simulation, I set the C=
hdrData with 512 for the CHDR_W and 16 for the ITEM_W. I am loading a count=
ing pattern with the real part being incremented every sample, and the imag=
inary incrementing every 128 samples. In simulation, the 512-bits coming ou=
t at the end are:<div><br></div><div>=C2=A0 =C2=A0 0x1f001e001d001c00 ... 0=
1000000</div><div><br></div><div>In wireshark captures, the Payload shows t=
his counting pattern going up: 00 00 00 01 00 02 00 03 ... as I would also =
expect.</div><div><br></div><div>The ILA shows me a strange swizzle going o=
n the 512-bit bus:</div><div><br></div><div>=C2=A0 0x0100000003000200050004=
00 ... 1f001e00</div><div><br></div><div>It appears like it thinks data ite=
ms might be 32-bits wide (16-bit I and 16-bit Q) and it&#39;s also backward=
s on the bus (first sample in the ethernet packet is the upper most sample =
in the CHDR bus). I am using the chdr_to_axis_pyld_ctxt with CHDR_W set to =
512, ITEM_W set to 16, but the NIPC is just 512/16 so it&#39;s the full 512=
-in, 512-out - no width translation there. Also note that the context is pe=
rfect - it&#39;s just the payload that is strange.</div><div><br></div><div=
>For the life of me, I can&#39;t see where the misconfiguration might be oc=
curring. As I said, my simulation with the testbench for my block pushes a =
counting pattern to a queue of item_t, then I use item_to_chdr() to pack it=
 and give it to the CHDR BFM. I&#39;d really like to be able to simulate wh=
at might be going on but I am hesitant to try and include the ethernet tran=
sport adapter into my block testbench.</div><div><br></div><div>Any pointer=
s on what this might be? Does the wireshark ethernet packet description sou=
nd correct to you for the payload? The lowest bytes in the ethernet packet =
should show up as the lowest bytes on the payload bus?</div><div><br></div>=
<div>Thanks,</div><div>Brian</div></div>

--00000000000046ed3c0634957038--

--===============5592511627892073230==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5592511627892073230==--
