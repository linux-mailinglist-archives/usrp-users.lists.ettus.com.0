Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DFE786A1B9
	for <lists+usrp-users@lfdr.de>; Tue, 27 Feb 2024 22:31:56 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 978713845BD
	for <lists+usrp-users@lfdr.de>; Tue, 27 Feb 2024 16:31:54 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1709069514; bh=7X6oaMZRDDWu0c6kktUntKMBVzDElYQzit7QcEh8h3Y=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=MCjLun00ORwblb4hE7la65mfbrKgCmXylvfhIkB8sxIe/LUTg9DviuP/PnK7rLdEY
	 RNVgrX2vHnCWdkfbpnGzRmlO3p/BP+i3oGApdfA2kvtjZmyDK9ENgV2OsmJSu0Xg57
	 duDmysXT4xN9bzAy0J5mbUyMjKITOwliUXUG+VjEUNHiLDFoatoCr+dXtEK0WKpeI3
	 6vbr5uaBKMYWCMCDpyVorQL80fW428QdRcrgDWVZITtwpzDzI1FbjV3R3gIxW+CTBG
	 CKj1ha1ZETmMsdAOEWhp+3/zq1cQdFW/+qqJibJUCXtzMNet93YOiFIcYisIk49FA+
	 gL0y/OivL+upw==
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 97AEB38456F
	for <usrp-users@lists.ettus.com>; Tue, 27 Feb 2024 16:31:46 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=umass.edu header.i=@umass.edu header.b="BbEHP/lO";
	dkim-atps=neutral
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-299d3b09342so3373776a91.2
        for <usrp-users@lists.ettus.com>; Tue, 27 Feb 2024 13:31:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=umass.edu; s=google; t=1709069505; x=1709674305; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=K0biQDNUQCcHsPdYW1FITsP4dK3Ls79qxJTxMdNyETo=;
        b=BbEHP/lOj0nKj6/2KiIfGdVnyjofa65kD7uVbIQuVyJtDkvv0MZSB4odA8pIG0y38O
         nJedpsVmE1Mbm5cDBWXUPWtG10iTWgQiP3J4O9zhcmwE8EUt3Aq6FZq1AT9Sj3UvXc9B
         ggBPHtS6QuG8J8Rtlh7exNCS/Qc/qR33tCDe8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709069505; x=1709674305;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=K0biQDNUQCcHsPdYW1FITsP4dK3Ls79qxJTxMdNyETo=;
        b=Gri9Kd5YkyGN+TWGMrGfFT6exDj5o6NHzT7aq/VABs0MPnpOMxA/d4AIaXDyq+rhzZ
         wIPWSzXulobkc08yv3Us/FUnC1q5Vd9jGLHUg7StVh3V0hHHx0GVcRKoyav65BZpSbcR
         T6lSWzx4+5wa72FuF7utNKq2p4ihwfXiRECrftFqBXfWSWMw1GoFbnJdenOMN0YWNjZS
         btVxII6TSY+w1C2liCwVRZPeDWB56KaksgelBvR1a0J0ebhgXM07Ns+spBGVlUZ/lxfr
         JiWMde1ylGGv4B6Offr/9pWoDu6GUYFfBZmAvqql+bSf2WLKbetTiZxfBAr+ntohch7p
         1AOw==
X-Gm-Message-State: AOJu0YzA8fC5BS1vN5J3T1+SctDIcmt91LQ+DGjWMlyU1xabU4zPBjcd
	zFPSSBB0lz411JQgldoAeTwyyucv88Y/hyBjEfSNselTAni7qHnz3846n8F7hz4Y2nFZyGjGyBg
	RyrDFTUrA5ZZaoVd/SJybd940jJlwtCmqFLJ1Q+CDVd7d6uLUlQta+g==
X-Google-Smtp-Source: AGHT+IH6hsBsifgx0wS0AmX5B7K+1mtK3+dDzq7smTZpN4F9rgBtzGYS4phPCJ3DNqZkaO0GT3RSItxeO4CXknN4rTU=
X-Received: by 2002:a17:90a:b82:b0:29a:76fc:1140 with SMTP id
 2-20020a17090a0b8200b0029a76fc1140mr8360217pjr.17.1709069505432; Tue, 27 Feb
 2024 13:31:45 -0800 (PST)
MIME-Version: 1.0
From: Yashaswini Guruprasad <yguruprasad@umass.edu>
Date: Tue, 27 Feb 2024 16:31:34 -0500
Message-ID: <CAD8oTTMq3FK_Vm4-o0OwehKKvRTuKxB-=p8=TO2++BbS==vmGg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: F6Z7I5ZUYIJNIY5ENUU7QRPCKM65MHOK
X-Message-ID-Hash: F6Z7I5ZUYIJNIY5ENUU7QRPCKM65MHOK
X-MailFrom: yguruprasad@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Issue after adding a new keep one-in-n block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/F6Z7I5ZUYIJNIY5ENUU7QRPCKM65MHOK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3917478599234927616=="

--===============3917478599234927616==
Content-Type: multipart/alternative; boundary="000000000000c4b1f9061263c0de"

--000000000000c4b1f9061263c0de
Content-Type: text/plain; charset="UTF-8"

[WARNING] [UDP] The recv buffer could not be resized sufficiently.
Target sock buff size: 2453333 bytes.
Actual sock buff size: 212992 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.rmem_max=2453333
[WARNING] [UDP] The send buffer could not be resized sufficiently.
Target sock buff size: 2453333 bytes.
Actual sock buff size: 212992 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.wmem_max=2453333
[WARNING] [UDP] The current recv_buff_size of 212992 is less than the
minimum recommended size of 816000 and may result in dropped packets on
some NICs
[WARNING] [UDP] The current send_buff_size of 212992 is less than the
minimum recommended size of 307200 and may result in dropped packets on
some NICs

--000000000000c4b1f9061263c0de
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">[WARNING] [UDP] The recv buffer could not be resized suffi=
ciently.<br>Target sock buff size: 2453333 bytes.<br>Actual sock buff size:=
 212992 bytes.<br>See the transport application notes on buffer resizing.<b=
r>Please run: sudo sysctl -w net.core.rmem_max=3D2453333<br>[WARNING] [UDP]=
 The send buffer could not be resized sufficiently.<br>Target sock buff siz=
e: 2453333 bytes.<br>Actual sock buff size: 212992 bytes.<br>See the transp=
ort application notes on buffer resizing.<br>Please run: sudo sysctl -w net=
.core.wmem_max=3D2453333<br>[WARNING] [UDP] The current recv_buff_size of 2=
12992 is less than the minimum recommended size of 816000 and may result in=
 dropped packets on some NICs<br>[WARNING] [UDP] The current send_buff_size=
 of 212992 is less than the minimum recommended size of 307200 and may resu=
lt in dropped packets on some NICs<br></div>

--000000000000c4b1f9061263c0de--

--===============3917478599234927616==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3917478599234927616==--
