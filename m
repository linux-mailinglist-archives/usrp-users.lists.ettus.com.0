Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F13A6059C6
	for <lists+usrp-users@lfdr.de>; Thu, 20 Oct 2022 10:31:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AB428383A19
	for <lists+usrp-users@lfdr.de>; Thu, 20 Oct 2022 04:31:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666254685; bh=6Mrf61OHAw80FvrdIRThe0o7EFt/crdzksQ1C6i2+HI=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=CHKdebZm26O+xcaoUE7rWQJnpRZQih8JjGTX4J5lAEURctSXKJGZtXRelv1dmOrE+
	 pHEZKN8sjG2CUza2UbQlmtWhBT3+EZxvvfLi+MIlIVSUs7iJTh8lgYI3ZeBKrW1vb0
	 MwjPErEDWT45mU2ErD2j6Y5usuYAo83n97f8fZt4da1AVUhoKU8QLR26qVt3ENd+6W
	 fT/iDcHcONrpujp2+6c17oG9GtqsukszwVrMSQDdAQx9CAqf1I9k+2b7jKPdJwxAbh
	 ibE0Bd6M9ofpnaIyEoFPyz36/ek3xn/XmmWWJYfYAI4fzYDKQVHQYx3n1N8Ku2q+Gy
	 1Deg1OPgajP5Q==
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 79D16381063
	for <usrp-users@lists.ettus.com>; Thu, 20 Oct 2022 04:30:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="cuFv987w";
	dkim-atps=neutral
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-12c8312131fso23719890fac.4
        for <usrp-users@lists.ettus.com>; Thu, 20 Oct 2022 01:30:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=5+Jk6k2uNg97+2QEgC8nkvvrHbKAXb5cHZhZrfEYSAA=;
        b=cuFv987wkT6V4XlQR/hMucTEucMbaKaQH+wg5omy1ZjfZ2zqHE158D32AFIgBCi+Pn
         zCx5VzyHqk9lRN3MnCHIqaTfJehkrCnuk9KZIQHP00X35YtGMkCCFapyoX9IvP4XI0/N
         XIVvZuPILOt4BOIJ07xZSP1BQYnyki9GXYu2ChU6CBRFut/qOLx1ngLgJ5zIIx66dHZL
         Q0QaZ0v2OsnaQcBn5i9rIjJgQ7sgOxb+jWQNEI6a+RbT9aOfZZCrxST1tvlgxnQQqsvN
         sd0PdWh1IdT7l1cKOIop9WuIBDVIMgaJoG0TQkQ8je/sD6mwRaX/IRHbXUVLy5qlGB8Q
         fKIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5+Jk6k2uNg97+2QEgC8nkvvrHbKAXb5cHZhZrfEYSAA=;
        b=Fp0fsUZo5B9cnKrtkkxflzJdmzhmZlCc5Atsx2BHxIu6CpCoj2q7cEsgq60dil0Q5n
         KnlVEUY9vmum3u4aAFb5/PruecA8NhIBHfBe9Mm/ah1TzZeE7DerUtqE5WW71BuCgJqY
         88Ub1rTNEaxRHuauw/sq2mpSsNG3CIPxyeEk/Vvdf29074TgWzbgGXB2CXYgmWv5tv3y
         8tZRyf7EiK7g1NWncKVqpc5hAX679LY91o12i5N2gBEC+qKHkskxwQVAgcis2A0SVBq/
         qevmssPLsH/BozGR/Bd+WRmC03P87TOBWO6AorIvIJyGljoGArzFI04DW1vJ68IxFaU0
         PP/g==
X-Gm-Message-State: ACrzQf3uaHcEacrOr2L6F1Dk/+0h+0Arp+uVMWevCXLeJW0Wm59/8Sah
	LGk8Yd4CVwPFTI2orChIAKeE9jCkUlw0uzQIibQTXoc=
X-Google-Smtp-Source: AMsMyM6J03FO9gIfu9BGFBjI1wikQ73WWvbdKvVepk54z25Vc8eCzQWZUV1t0NQvSUtVIGjWj0u3dVr3bBfWv4xG7Ac=
X-Received: by 2002:a05:6870:170f:b0:136:4357:946d with SMTP id
 h15-20020a056870170f00b001364357946dmr24632143oae.243.1666254636452; Thu, 20
 Oct 2022 01:30:36 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?WWFzaXIgw5Z6w6dhbMSxaw==?= <simultaneous11@gmail.com>
Date: Thu, 20 Oct 2022 11:30:25 +0300
Message-ID: <CALooG3-PGwwXgn5_Q0T_nSXPYm5vXfV+XsNx+i6k=7UCSEnCCQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: EHQEZQLIQENC37QUBNVTQGL7TY3M6WW4
X-Message-ID-Hash: EHQEZQLIQENC37QUBNVTQGL7TY3M6WW4
X-MailFrom: simultaneous11@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Debugging E320 with JTAG causes a problem
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EHQEZQLIQENC37QUBNVTQGL7TY3M6WW4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2025033676470803622=="

--===============2025033676470803622==
Content-Type: multipart/alternative; boundary="000000000000b610b605eb73232f"

--000000000000b610b605eb73232f
Content-Type: text/plain; charset="UTF-8"

Hi everyone,
I am trying to debug E320 with JTAG. I connected to the E320 JTAG console
with Vivado 2019.1 hardware manager. Vivado successfully recognized E320.
Then, I loaded my custom bitfile. The problem is E320 started to give me
errors saying that "IO Error during GSM initialization." I thought that
might be because of the bit file. Therefore; I tried to load the default
bit file, but the same problem occurred again. When I use uhd_image_loader,
bitfiles work without problem. But when I wanted to debug it with JTAG and
loaded the bit file with jtag, uhd_usrp_probe gave me an error message. Can
anyone help me with this, please? What might be the problem?

Kind Regards,
Yasir.

--000000000000b610b605eb73232f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi everyone,=C2=A0<div>I am trying=C2=A0to debug E320 with=
 JTAG. I connected to the E320 JTAG console with Vivado 2019.1=C2=A0hardwar=
e manager. Vivado successfully recognized=C2=A0E320. Then, I loaded my cust=
om bitfile. The problem is E320 started to give me errors saying that &quot=
;IO Error during GSM initialization.&quot; I thought that might be because=
=C2=A0of the bit file. Therefore; I tried to load the default bit file, but=
 the same problem occurred=C2=A0again. When I use uhd_image_loader, bitfile=
s work without problem. But when I wanted to debug it with JTAG and loaded =
the bit file with jtag, uhd_usrp_probe gave me an error message. Can anyone=
 help me with this, please? What might be the problem?</div><div><br></div>=
<div>Kind Regards,</div><div>Yasir.</div></div>

--000000000000b610b605eb73232f--

--===============2025033676470803622==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2025033676470803622==--
