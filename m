Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D95E8706FA
	for <lists+usrp-users@lfdr.de>; Mon,  4 Mar 2024 17:26:10 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AFABB3851D7
	for <lists+usrp-users@lfdr.de>; Mon,  4 Mar 2024 11:26:08 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1709569568; bh=7XZ1g5E4GIV3cL+gM2qqcbnCwMPzuJ1cpq1hQVlgu6Q=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=d8eRaiH1TTIiAsXtQ+R8hOie3oLHI/ybbA7TNOkMBt+bWFb6x0pxbW5NF9sdHLC9j
	 zzlH0Uk0NBCKJPI4R2nuWXKR3dVXhZf0qCzUfc4/8ZZRNvpN813V3Wg7XRodmTFCoP
	 SiTRQ+OIBii1eUtQzIHRydB2GOiFAO5c/76DN4vgQZeIy4kYECnarWmTUToCRDnUEC
	 JeD4hrTlh/UzcJ9Z3kYgymOM4lW7FNgypSKNZDI5GgKrtCfqXiewxTP78xfvpEzzpn
	 /zRRC0tM/6gmbYZbxnpdPVy6wMZBUhmaSI9kE1LWPWdmWwtfyEHOgqCjXuT2mZkOgw
	 OreRLG66INHrQ==
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 89F243850F7
	for <usrp-users@lists.ettus.com>; Mon,  4 Mar 2024 11:25:17 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=iptronix.com header.i=@iptronix.com header.b="IId/6TTC";
	dkim-atps=neutral
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2d26227d508so53757811fa.2
        for <usrp-users@lists.ettus.com>; Mon, 04 Mar 2024 08:25:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=iptronix.com; s=google; t=1709569516; x=1710174316; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=og5aBhv7RzDN4gLbpX8+H0M2CUSYGq+Rhq1bvLbaDe4=;
        b=IId/6TTCcVSxxKDZdJ8NorBC9xBLwq3GcK2xf/mADj3FpG8EKYY34Me4kjKtK67tl2
         kesMv0UkwGkPdAuH15KCXIJ1D18rBeDv1NWoeb9V8mOETThjNslS0QQiZBHz9XzNiq5o
         u3hZ4xSsyEX9n3kUWdtFJXIShZ8VsvZqRPFi6sdnPxbc9xHx9V46KYmsqyXo8/x1H+4F
         R6F6sGuz+fQiNdQ/k59D8FqyxPhWIZSx/tubvkT/RRpIPSilYLNKJsTtYVlpBpbfz2dG
         SzfOny+r/YBPR2L6ZGBXRfONWQtwdtIIIoEW70aqFKMNbFg3tPI6D2sqa91hH5DKWAai
         Jy5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709569516; x=1710174316;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=og5aBhv7RzDN4gLbpX8+H0M2CUSYGq+Rhq1bvLbaDe4=;
        b=RotazblwztmH2QFaaghDaXTSM2Ph6KgUJ+3KB4sIlXZK3C+kXWTKwocb33trI0kNdy
         r1eVKtIeYUlSced5g1RCK2fgYd4B6hnbP6T9SaIlFUHySdib+aN4oxVVaA7B6wOh/Fq7
         p33a6PBaK1UzozNdoAlyfSArNYSaIhJfjYxiVJQjsTLhUkrrjg/7ngNBWVnYETQ7G2Yw
         ZPfq8cfXcD6CsAkVxUqXTwlham30FtVUCXEGsZWlDERr+0GEdSHp/7UL1LAcHO+Yy8B7
         +NBFS55bF9U9POh3evKimgo1WVzk3jhPrgZU3Gu0vqg9Ic6r8VUDE1X8AX3f8thfNs6D
         5TxQ==
X-Gm-Message-State: AOJu0YzMVheeNi1BcC2JlkAJc2XW9h4SrSC9V+7xeN/5KPyQVg5Pdr/a
	rePNHSYlIv0n4Id1xrDMW7OLrB7DcQ7PwHlJF/6S6oKg52HqQmAWruAlXtCLjWkpuJzz/EFWakB
	8Jg6BlvfEziSKDzYzA7JhIEu9dm2at4Y1lpM0dAvmCyV+qraR
X-Google-Smtp-Source: AGHT+IF0NRxtuwPUE+a+y3aabsoqF6hKTgrna8FzBkXEyWnnRcLALktVEhV9pnPld4IE5e2ZXtp0txyOQr/RPYI1R1A=
X-Received: by 2002:a2e:a4c4:0:b0:2d2:e93c:dd75 with SMTP id
 p4-20020a2ea4c4000000b002d2e93cdd75mr6056473ljm.32.1709569515694; Mon, 04 Mar
 2024 08:25:15 -0800 (PST)
MIME-Version: 1.0
From: Dario Pennisi <dario@iptronix.com>
Date: Mon, 4 Mar 2024 17:25:03 +0100
Message-ID: <CAKHaR3nZa=rZZqQZyw+KYkZukKzN=5BjNkh8=6OQ81-i43yXsw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: OOPJAJZX4PC66EJNVOYQWZKCWZPK64QH
X-Message-ID-Hash: OOPJAJZX4PC66EJNVOYQWZKCWZPK64QH
X-MailFrom: dario@iptronix.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] question about X410 _d images and CHDR width
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OOPJAJZX4PC66EJNVOYQWZKCWZPK64QH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6649693304589045729=="

--===============6649693304589045729==
Content-Type: multipart/alternative; boundary="000000000000b3cab20612d82b35"

--000000000000b3cab20612d82b35
Content-Type: text/plain; charset="UTF-8"

Hi,
i'm working on an X410 image that needs to run at 400 MHz (500 MSPS). i see
there are two templates one called X410_400 and one called X410_400_d. the
first one has CHDR_W set to 512 which seems quite oversized while
X410_400_d has CHRD_W set to 128
if i'm not wrong bus clock in both cases is set to run at over 200 MHz so
sending 4 samples per clock should be more than enough so why does the one
with 512 bits exist?

as a secondary note i'm having some trouble with my block which is a signal
generator that connects through static routes to radios. in this case if i
set packet length equal to MTU radios won't output anything whereas if i
set them to output MTU/2 it seems to work.. any hint?

thanks,
Dario Pennisi

--000000000000b3cab20612d82b35
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>i&#39;m working on an X410 image that needs to run=
 at 400 MHz (500 MSPS). i see there are two templates one called X410_400 a=
nd one called X410_400_d. the first one has CHDR_W set to 512 which seems q=
uite oversized while X410_400_d has CHRD_W set to 128</div><div>if i&#39;m =
not wrong bus clock in both cases is set to run at over 200 MHz so sending =
4 samples per clock should be more than enough so why does the one with 512=
 bits exist?</div><div><br></div><div>as a secondary note i&#39;m having so=
me trouble with my block which is a signal generator that connects=C2=A0thr=
ough static routes to radios. in this case if i set packet length equal to =
MTU radios won&#39;t output anything whereas if i set them to output MTU/2 =
it seems to work.. any hint?</div><div><br></div><div>thanks,</div><div><di=
v><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signat=
ure"><div dir=3D"ltr"><span style=3D"color:rgb(0,0,0);font-family:Calibri,s=
ans-serif;font-size:13.3333px">Dario Pennisi</span><br style=3D"color:rgb(0=
,0,0);font-family:Calibri,sans-serif;font-size:13.3333px"><br></div></div><=
/div></div></div>

--000000000000b3cab20612d82b35--

--===============6649693304589045729==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6649693304589045729==--
