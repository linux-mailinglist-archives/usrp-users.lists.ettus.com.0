Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B1CA2AE236C
	for <lists+usrp-users@lfdr.de>; Fri, 20 Jun 2025 22:19:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5225A385CE0
	for <lists+usrp-users@lfdr.de>; Fri, 20 Jun 2025 16:19:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1750450776; bh=WXeAXBnGArIgrvHjXDUqQMjT6RLMvY61v7MUXiI/6iY=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=b6470BotYHmrMuYMtlI2NnD4wbBQmt2zIqq7aGLsHK6g9vg1SOEX6CSKmzNq0S8Vt
	 NNKRJA1zEvPRL700SlE6IT62ps03MOBWRByEFWyNM/nqe+0zWQQ8ICDwUytqMdjMtR
	 T7OgzHJdtGafIu0OgUuN/jNpJKhhVz2fvTfu5s+5NfLPUAJFChMI4AJ2Va86u2A6Ta
	 QRJgUHy/hcp/GMuy8pARG7GyDBlXOBn8fqN9UeEjouBQeFx/+/JLz0TkpGJt80iUz8
	 xzKO0qXqY5TDHreQgZQdKv4rZT8/iBpqoC7Iy28wXgpJc5/8FAcknA6qTdHSC3NMJo
	 BSwZ5bKWV2ELw==
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	by mm2.emwd.com (Postfix) with ESMTPS id F0232385AC4
	for <usrp-users@lists.ettus.com>; Fri, 20 Jun 2025 16:19:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="ZkWCdeMS";
	dkim-atps=neutral
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-604bff84741so4145617a12.2
        for <usrp-users@lists.ettus.com>; Fri, 20 Jun 2025 13:19:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1750450756; x=1751055556; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=LkvKRkiPhOoR1VRO+87vlOvI/a04KYrZVqj6QeMjigA=;
        b=ZkWCdeMSDrrm8BNEaZHLMza0Wg7sloXsjyDk9GtFXzmYrCifFkPoLmlVTJ9pGFI+mx
         5Oznyyg091uUQn313xisuAE5jJiQ5WfcIHDSXkm7OnEOiPUKHvJtAugV0QzxNL2o6HlH
         gN5dgGD24+HPL4TyoMy3xb+sxZ4iw2yhqBmBYLB6aGot67BMDBdgxmPHoiQqe+VSAHBF
         a7SosMXGhmIvlf3Is1Q9H4TvCmSDm2O4+Y2B4jO1EjIVmWyrDAwYXJisipi4FS1gmW8C
         rUy7lqXt+bisgi47mKf+a08tJ/o4DJiKrNMlcngVJMNy2l1VdD7MzeMvXtAs1yeGsnNY
         okWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750450756; x=1751055556;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LkvKRkiPhOoR1VRO+87vlOvI/a04KYrZVqj6QeMjigA=;
        b=NZvbz811PTk8uH3UFZ7do9RMz5Do2w91wacF4tNv5VMiq16R/q4T0edVUkBjloHzDi
         Dt2R65JN2KLd22lJzsBo657Sh5li1+TzqnLIKRV5MMlllvzilm+nDNR7tD/XOK6m6RsH
         mi1PiLYBzGSX/+Vs7qEM42AV4hsqe9NDRJVU8AzfmG5OciTrew+ktFyrTBpAkTlb2F7e
         F+4p6D6mEiPPsrAwZjWUNR35i9NEB0AgN1baCtxFwshcn+zk97K+LEfaKTLLeSlUEqyd
         Bm4dINxWtSVFj0SHNjCvPcJ/g6MJ/sQbKdAez21vGaZiR/71sREEtyJwl/KRZqF5XkVb
         9JcA==
X-Gm-Message-State: AOJu0YwgAonOM/EQxg+idZlfWuOPXnVFckfOsJPFG1IJxCDHZjMC5Vmi
	p8duDwW3QZAtmDzEAuA3NXnxSYS3ZJMDSt4qt0E5td6VbzE/EohCX21/73WiH/1wUYggeWiMveD
	+Y4DJXbus6texx/ihSSo7D1trIqC4C5Z+NIYLWj5xUgIvTqquClUTYQ==
X-Gm-Gg: ASbGncsXT8nbWklyiNViIrYE9ZTt4kko7JqAbtrqngaDorlTYEvwbEiUW0lOeG5V93x
	EwEiPExgfPOmfDAJdfkrzsF7cH9rju8nXBtwCypyV/PqYd6TKu+10/Ugb9WAI3TmKp5XBNpiege
	V9mm/6jUv4/8+CKz4YLFq4czR8OcoReUIGpwX2rnXx4WFgxYO6XjNT
X-Google-Smtp-Source: AGHT+IHeaQMPxN94q0G6Vlz78qiP4UuaYrcrK5n+hmp11hZnpbppJ4xD5vHfRWTYY26Z87QIEfTuBqfYyCgyoaYEkZA=
X-Received: by 2002:a05:6402:13cd:b0:607:6fd3:374f with SMTP id
 4fb4d7f45d1cf-60a1cd1ce0bmr3724426a12.20.1750450756330; Fri, 20 Jun 2025
 13:19:16 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 20 Jun 2025 16:19:05 -0400
X-Gm-Features: AX0GCFuJkrS0nxFHvhG44k7Yhd3Oy-UQ3ZO2gTFGsENvsgS_PyQAbBEI1btrwII
Message-ID: <CAB__hTQSQ4774oEwhJMnmEQH1q0diNbKmFB2fR8dPtQsBBZbUQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: G4Y5SW7WJGC3HOX4ISPCFTIPGGXY67TL
X-Message-ID-Hash: G4Y5SW7WJGC3HOX4ISPCFTIPGGXY67TL
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X410 100Gb link issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/G4Y5SW7WJGC3HOX4ISPCFTIPGGXY67TL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============6214186718922089354=="

--===============6214186718922089354==
Content-Type: multipart/alternative; boundary="00000000000087498e0638069312"

--00000000000087498e0638069312
Content-Type: text/plain; charset="UTF-8"

Hi,
I just received an X410 and I am having trouble getting the 100Gb link to
work.

   - On the workstation side, my NIC is an Intel E810 CQDA2 and I am using
   UHD-4.8 with Ubuntu 24.04 LTS
   - On the X410 side, I loaded the  UHD-4.8 file system and the UC_200
   FPGA image which implements 100Gb on SFP1.
   - Finally, I am using Fiberstore CWDM4 100Gb
   <https://www.fs.com/products/65219.html?now_cid=1159> optical
   transceivers with a duplex single-mode fiber.  This item is my current
   suspected culprit - it's not clear to me whether the operation of this
   optical transceiver is transparent to the 100Gb port or if the port needs
   to handle things differently for this type of CWDM transceiver

The problem is that I never even get link lights on the workstation NIC
when I connect to the X410. However, if I move the QSFP28 transceiver from
the X410 to another workstation (with a Mellanox 100Gb NIC), the link
lights come right up on both sides and the OS sees a 100Gb Ethernet link.

So, the problem "appears" to be that the X410 does not like this optical
transceiver. Does anyone have any experience using this optical transceiver
with the X410?

Thanks.
Rob

--00000000000087498e0638069312
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>I just received an X410 and I am having trouble ge=
tting the 100Gb link to work.=C2=A0</div><div><ul><li>On the workstation si=
de, my NIC is an Intel E810 CQDA2 and I am using UHD-4.8 with Ubuntu 24.04 =
LTS<br></li><li>On the X410 side, I loaded the=C2=A0 UHD-4.8 file system an=
d the UC_200 FPGA image which implements 100Gb on SFP1.=C2=A0=C2=A0</li><li=
>Finally, I am using <a href=3D"https://www.fs.com/products/65219.html?now_=
cid=3D1159">Fiberstore CWDM4 100Gb</a> optical transceivers with a duplex s=
ingle-mode fiber.=C2=A0 This item is my current suspected culprit - it&#39;=
s not clear to me whether the operation of this optical transceiver is tran=
sparent to the 100Gb port or if the port needs to handle things differently=
 for this type of CWDM transceiver</li></ul><div>The problem is that I neve=
r even get link lights on the workstation NIC when I connect to the=C2=A0X4=
10. However, if I move the QSFP28 transceiver from the X410 to another work=
station (with a Mellanox 100Gb NIC), the link lights come right up on both =
sides and the OS sees a 100Gb Ethernet link.=C2=A0=C2=A0</div><div><br></di=
v><div>So, the problem &quot;appears&quot; to be that the X410 does not lik=
e this optical transceiver. Does anyone have any experience using this opti=
cal transceiver with the X410?</div></div><div><br></div><div>Thanks.</div>=
<div>Rob</div></div>

--00000000000087498e0638069312--

--===============6214186718922089354==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6214186718922089354==--
