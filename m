Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B0217EA924
	for <lists+usrp-users@lfdr.de>; Tue, 14 Nov 2023 04:29:32 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DDA64384B9E
	for <lists+usrp-users@lfdr.de>; Mon, 13 Nov 2023 22:29:30 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1699932570; bh=tnG082g8HvV9lA4djsYsY9Q4bLRd1+m5JU9W9se7K1k=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=vLAuFGEqqFH2r8hiQSKc/4SZ0m4X+HKIdrhuoxLtBUqfZMUBbEW9RNsQWT1DlO1gy
	 GvuQzKODCk4X8FHnuRDiavUPLWa70wa9qqQlGNRgMUhTFEN9DIxxNOYBJ0kYcVg0qJ
	 bbszbX075Fqd6P0niRjgRe2b9bymi6Mcu5qqEwEzjkSYFvHN+bLYqYHr11mpaQCwAI
	 TXhtz7DIzpnulGFpMHCu02zuZIyCDU4o9y3R8h/Ax8Rekrw0d4lSDJQmcPkyxIbLJw
	 bLLn0o2jiVfd1pPq+GoeXAN+IcS2t3SHJDEsK4BcDiq7QfiYFrmc1WIxVZpxs01BGI
	 2orWenh5nwhiw==
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 51B67384B3D
	for <usrp-users@lists.ettus.com>; Mon, 13 Nov 2023 22:29:13 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="iYwGuVUf";
	dkim-atps=neutral
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5441305cbd1so7870423a12.2
        for <usrp-users@lists.ettus.com>; Mon, 13 Nov 2023 19:29:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1699932551; x=1700537351; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=lbBctHUH1COVz2UlQIMopkL1qXejbGdqZyHx8yU3Bvk=;
        b=iYwGuVUfz9EEpgn8tVBJPyIA8yIipwZHLhabeO+p3ST8Qku2sPwfZhRvtwZWLcNtxE
         cUWh6EKdXttlNDqCauN2HNanJOv8LhVuHvRESwrdZpaZYHLH3SZJD99yK/MwlLMlAVmb
         LoGypEUMy+Mwm8mr2MEbC8DJJT48Cynptlly4DhqwZw6Pgo7JnWWdLndhuyCbjUIPqnK
         9a6/nA6mhz+mQr5OyzZqmoyzfrj4IwjA7g3vf04XzM3OHdpkJ+CSGgBbNrNR2ncpdqGj
         rPpTp6n47uSjIxS9Cq9B6KDJ/KDzukmqhG8CUgU0zKig46C+lsECNe0qSC4uYI0kG2bQ
         fkwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699932551; x=1700537351;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lbBctHUH1COVz2UlQIMopkL1qXejbGdqZyHx8yU3Bvk=;
        b=w6dGRDU/VjQMBocctXWwrB6xJNPGyBXd2FSaWtpn4tdwNiKtAF5YJP6abh2Sw6Gl1r
         ar1K3vouCjP375nHygz035AfRkpb1GXYMZcz4a5pFYNoNEoamePEtfGglhKhcdIps4cb
         mpMnDX7kFbbljHh8TJGLI1f1a8ea5qzVEAbvuvojbtvh7J0mMBYhcBn6muNUMwe7OqFr
         eisOfNEuvVaPq1peLke5NUjMJ8g8y3y7IawGNYkfHeUCSm+kznMpz3fL7RbsRUR1mkSj
         PrJUmVRYZLwPQFjDXcy6sQLJBKu7kANO3pZ6h1mRG7UcQdLVMkS0EbDN6IwjORtnZTfl
         Q/0Q==
X-Gm-Message-State: AOJu0YzpEks0jPdHwZ4/avRDWduoeQHftuRjEKOwoLCRwy4ytrYeq+CA
	IRBB0GeppQQya1wqYmbkbsr7jzruUZWVdRENL07EBHkY+Hz3XyUD
X-Google-Smtp-Source: AGHT+IG8Yaq2CS7QmNQjdALwX5INQnzSfNuCaaHnU3WqULCqU8X1p/uFEbCojr8fsWQZ5s3pi6DOt1V/oyLYhdgYKQY=
X-Received: by 2002:a05:6402:551:b0:547:b96:1172 with SMTP id
 i17-20020a056402055100b005470b961172mr5138045edx.28.1699932551307; Mon, 13
 Nov 2023 19:29:11 -0800 (PST)
MIME-Version: 1.0
Date: Mon, 13 Nov 2023 22:29:00 -0500
Message-ID: <CAB__hTQ0pt7MMKUQjQwZCej_k6LBjVLenGDHJwrqTZ_8eP=iQw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: 3KPTAZQJJCPKF5MMM4CAM4ZCZNK4P42C
X-Message-ID-Hash: 3KPTAZQJJCPKF5MMM4CAM4ZCZNK4P42C
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X310/UBX Tx tuning issue introduced UHD 4.4?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3KPTAZQJJCPKF5MMM4CAM4ZCZNK4P42C/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============1291024358393700949=="

--===============1291024358393700949==
Content-Type: multipart/alternative; boundary="000000000000dd53ce060a14636a"

--000000000000dd53ce060a14636a
Content-Type: text/plain; charset="UTF-8"

Hi,
I am having an issue with successfully tuning the frequency for the Tx side
of an X310/UBX and it appears to me that a bug was introduced in UHD 4.4 (I
haven't checked more recent versions, but I expect that they are also
affected).  The issue is that when you request a frequency such as 2450
MHz, the tune result returns with an actual frequency around 450 MHz, and
there does not appear to be an RF signal at the requested frequency.

I submitted an issue with Ettus' issue tracker. But, given the severity of
this issue, I wanted to check with other users to find out if anyone is
using the X310/UBX with UHD 4.4 or above and having success with Tx
tuning.  If so, then it seems I am wrong.  Can anyone confirm one way or
the other?
Thanks.
Rob

--000000000000dd53ce060a14636a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>I am having an issue with successfully tuning the =
frequency for the Tx side of an X310/UBX and it appears to me that a bug wa=
s introduced in UHD 4.4 (I haven&#39;t checked more recent versions, but I =
expect that they are also affected).=C2=A0 The issue is that when you reque=
st a frequency such as 2450 MHz, the tune result returns with an=C2=A0actua=
l frequency around 450 MHz, and there does not appear to be an RF signal at=
 the requested frequency.</div><div><br></div><div>I submitted an issue wit=
h Ettus&#39; issue tracker. But, given the severity of this issue, I wanted=
 to check with other users to find out if anyone is using the X310/UBX with=
 UHD 4.4 or above and having success with Tx tuning.=C2=A0 If so, then it s=
eems I am wrong.=C2=A0 Can anyone confirm one way or the other?</div><div>T=
hanks.</div><div>Rob</div></div>

--000000000000dd53ce060a14636a--

--===============1291024358393700949==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1291024358393700949==--
