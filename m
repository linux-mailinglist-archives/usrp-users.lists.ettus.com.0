Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC4AA93F67
	for <lists+usrp-users@lfdr.de>; Fri, 18 Apr 2025 23:20:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6CC23385F4E
	for <lists+usrp-users@lfdr.de>; Fri, 18 Apr 2025 17:20:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1745011205; bh=rcohHMFxH8YpJnDbSbcYcQ07tzuS6qt6qQvnf1gJIAU=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=EKxk77vWCIHMZXKU9RB5bQcXg/IRx/Dm+w1k9leyO8FVxCvePugCgHRbz2k51z+Y7
	 suDiagHiCWS5epKiaBBz2oJSKvcu0HpSw8yT11MiGqIgOBe/kuKLC4sXvhOhvZrfqo
	 jsuHBx38CuPmf+e7WVTT1NhU2+o2za2w8o5cfk+MSqSHrgJI+NIztiVzz2Vszzgq9d
	 6uErHX4hJsV9OficUgYpQh6DIPkbzsfmi4XtRkmRXPT+pc96Qrhhipm4cO7XCyckJO
	 GOGrRXD/S/q2pVzxOpb8gsJKC9/gNLR5q2XpicNBGjbTzkPIXDpRPvONvzfkyOWOla
	 W3Ggj5LwliKyg==
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 88F57385C23
	for <usrp-users@lists.ettus.com>; Fri, 18 Apr 2025 17:19:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="GUTav/s0";
	dkim-atps=neutral
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5f4ca707e31so3329200a12.2
        for <usrp-users@lists.ettus.com>; Fri, 18 Apr 2025 14:19:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745011149; x=1745615949; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=YnsiQzYVt/FyaXfXFVFOmmhma6RymcxgxzeWoQiMlmM=;
        b=GUTav/s0T/fnaAAn3jHbqk/78u71f8Y//GusKDZNHh4daZXMlsZu2qlRyoiQBHTkFY
         B6FFvAtNwnKbRru17OcThfDa2fJ67n+zFwHt39umOzd4yXcb3k7lZQRibv/PagKpQSIX
         kv7F1yt2lm6XZAtQJscSqPEKe/eEA4Oouzhuz8eijsOSAQjlp3guJXJTLJU/BFRBMciV
         IhY3LZg49/3fQkHmWiFBsontb3caIGFjqDHYtZNnb5YBME21qbTyc04pRyKiWqBdtQNR
         uAlV6WNVIiiyin1Ez6j0+JsY0aihR0M1iHClx/irM+hmVIijQDEJW/7buXlIagyOKXZW
         koiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745011149; x=1745615949;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YnsiQzYVt/FyaXfXFVFOmmhma6RymcxgxzeWoQiMlmM=;
        b=KAW5ICbXYA/aIpW6t7fGCczOW4G7/mW+miw/Tf99flM+2vwxZmrxX8kLSbc3pjbdfG
         9IitwOOdsxfi8GwFzft/6hznozyxCyTmxWl3COnLa0ZRgkAiniJexND7CH9BjRdHBtCq
         XtuFYkwiwGotQgbBPuzXeolZ+nKywKuLov7GZOT9wcWTFn8xid1RiWDkU9Cv1SXy9bGN
         YCAFr6H4QK9i0nCG6qxvhXy3i5TPwdm5qVazEz/L2WBQd2cvN8sNa4R+nG0R8UQlFyV6
         15Dx5mspnEPMew4r3Uq48Jv9sENvAMiL8JFFGqD/RghxxtPrczWz08krtQz4qQYWlLVE
         1QjA==
X-Gm-Message-State: AOJu0Yws7kRxQkCreo3uAyVseux4Ce2zNDEQRPDcGIfLilFZB9r6d6Sf
	gEgRyWSzgus9Qyci+E14KnB+6I0KkQgBLVxVB/inmaXhzHf9pngbFpqlosyYFuRjhXUOozHrp7e
	Y637SvxknhzpKU+2CUuqJ5z9pXd6emg==
X-Gm-Gg: ASbGnctIeJRGQKoc8iztAPlWqfGiwEPLCyyv698bEVOoyQ3d2qtgbddRPUlrN475l0k
	mFppxXs2sNQ07CTwqfASBj/p9EZCPeaiXBsAf5E/ZhtHOevaE5mQ3DGXQQ1SStuoPXt6S7LD4tX
	0kMkRNud3bKH3HpmcCry7/oA==
X-Google-Smtp-Source: AGHT+IGgQNCqGqb6vGMTqqGbd/I88LS98TWzhy9SmTz5KWWEYN1KO6xYU2f//LIKW+FJRKX4Nh8Cj2ST6rviTWpmNuk=
X-Received: by 2002:a17:907:72c8:b0:aca:95e7:ec59 with SMTP id
 a640c23a62f3a-acb74b1d0d7mr364154966b.19.1745011148470; Fri, 18 Apr 2025
 14:19:08 -0700 (PDT)
MIME-Version: 1.0
From: Brian Padalino <bpadalino@gmail.com>
Date: Fri, 18 Apr 2025 17:18:57 -0400
X-Gm-Features: ATxdqUGo57BWqlJS9wU_5P4oOPNvk9P6D2uIBL723o4vxyx_y4kcjDcADCx9-HI
Message-ID: <CAEXYVK70sjPF61vd66FuEna4vt5jEtiSN2CSkmQOz5S=Bpptag@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: 6NNLX3SFIW2Q62GFYUUZM5BH4ABGPACQ
X-Message-ID-Hash: 6NNLX3SFIW2Q62GFYUUZM5BH4ABGPACQ
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X440 RFNoC Local Configuration, Remote Data
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6NNLX3SFIW2Q62GFYUUZM5BH4ABGPACQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4857672562614436836=="

--===============4857672562614436836==
Content-Type: multipart/alternative; boundary="000000000000a247140633141114"

--000000000000a247140633141114
Content-Type: text/plain; charset="UTF-8"

Are there any examples of the X440 RFNoC configuration being set up locally
on the Arm to be able to accept CHDR packets over the dual 100 Gbe
interface?

I imagine it shouldn't be too difficult since the 1Gbe management port is
used with MPM to configure RFNoC so it seems very similar (configure on one
port, listen on a different one). I am just not sure what runtime
configuration items might need to be "fixed" in the local application such
that the machines out-of-the-loop can still talk with the device.

Any pointers or suggestions on how to accomplish this would be greatly
appreciated.

Thanks,
Brian

--000000000000a247140633141114
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Are there any examples of the X440 RFNoC configuration bei=
ng set up locally on the Arm to be able to accept CHDR packets over the dua=
l 100 Gbe interface?<div><br></div><div>I imagine it shouldn&#39;t be too d=
ifficult since the 1Gbe management port is used with MPM to configure RFNoC=
 so it seems very similar (configure on one port, listen on a different one=
). I am just not sure what runtime configuration=C2=A0items might need to b=
e &quot;fixed&quot; in the local application such that the machines out-of-=
the-loop can still talk with the device.</div><div><br></div><div>Any point=
ers or suggestions on how to accomplish this would be greatly appreciated.<=
/div><div><br></div><div>Thanks,</div><div>Brian</div></div>

--000000000000a247140633141114--

--===============4857672562614436836==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4857672562614436836==--
