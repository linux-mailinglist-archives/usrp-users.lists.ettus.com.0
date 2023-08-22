Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 184937838F5
	for <lists+usrp-users@lfdr.de>; Tue, 22 Aug 2023 07:00:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A5652384989
	for <lists+usrp-users@lfdr.de>; Tue, 22 Aug 2023 01:00:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692680437; bh=pO4ZEyFVjaqxlN+TaXs86cX9oNCRCiSMZ4oir2BatNI=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=0JgdxZEnsIG7JqGYwpAa0ib26iQ/185xh2SzlYdTJmh6CpTYbua1t1eiLYXiXdU1d
	 SaD/4la4AudfILCc1aBnM4vTdXuiZGSeO/EKPNC21w/Bd/7NSCHXhcHdsiz8vdKxqZ
	 RkzHxRW3gPyTDdJ9H8Ld2Vyx6qIY+IHvXM4ElbVk/KJ+b6/YljPx81Z/+oX4vrXE4l
	 csd6CxAFpVIJwIVvj2At+M3JIwJa/NVh9sOejRUApg6F4LQLYoV2/t87BzEzSRKkpS
	 PERvmfw8XQURorIpUkl3k8gVS4iku7Ty2to1pVqeclTRDX8xklvIdWOf3tcSNOcUDF
	 1jaW9aYYjtvag==
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com [209.85.221.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 81D16384809
	for <usrp-users@lists.ettus.com>; Tue, 22 Aug 2023 01:00:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VFj4z6T7";
	dkim-atps=neutral
Received: by mail-vk1-f170.google.com with SMTP id 71dfb90a1353d-48d2e2e05e7so522485e0c.3
        for <usrp-users@lists.ettus.com>; Mon, 21 Aug 2023 22:00:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692680421; x=1693285221;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=LRSav6gpjz92GedlBtM8sMT6Af8SW7qOwjGC5s8ZdTQ=;
        b=VFj4z6T7DjYvV0WjzEaMRCHAj6SciFXapnbij+nrzry0Cgl5kVrQBEuqiEFZcBAgig
         0O14omMwJEqXKLe9aM8c+DfV9zWB8m0Bw9ubjMih/zyDfjxWY+HZEss48PyRnqjK/9uX
         oiUCt2AR47U4uDmUZjeVWRlHmDYBS9Du540BR6ayF86DsNycZTTSm8RwjdwOZO3WcbfX
         JP5lhOJVKMtgZxcgXqey/vXJO5cuYaek6DF0z0tb4eq8e2XFfZSs1Wq2oyOKDhNu7Le8
         S/yHyyfxcL1FPNXPY7RXJ1Lkcy4WCT7TQCYJq/a6fl0DlmxkBwteuqHHOitykraaE4cU
         K6qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692680421; x=1693285221;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LRSav6gpjz92GedlBtM8sMT6Af8SW7qOwjGC5s8ZdTQ=;
        b=doVtsuArd77m7uQbB4Gp0wkjZIOwJO5426vdXu9VawloMLwRJchEZbWXYrA+X5RZKk
         PNswaS3lx1Ukth25jL6Ow0v0DS1Z0NNOd9IZRw/DEg12kTWDPb/7GH4TvW1Lmwy8Pcnv
         yy0xBLagX1VBFsikZaY5eHrw83OLG1WidHvT2YrGFah5XcifFVSBjMcljvkZJ6rA4Aeh
         EqRDNstEu6huw/QZOn+Byn8CUyeAwD3s9Qh4z6yrdI8RnCJjgMTK5QxO4I2u2MT3+ix7
         9Hjn4cSzK0QjhhavVyDU0F8183ltB5b7uoRk9R3Rao1qXO18vPZI+BugygDLdmglawUu
         Lc7Q==
X-Gm-Message-State: AOJu0Yx3tMtds/EmYFZwJhQjaA++gGVGN3yvXHshwO9/rgmKaqv3lMJw
	+Ne8vjLWznAJzcAokHaG1P557MLI9ZO9bt3yjr3uPd/zCmXFmA==
X-Google-Smtp-Source: AGHT+IGF1bpSJTb13d4GMYyTD3frra4cBYSVSn2qfwhrcmJZZJlo5/F05EDHaNjACnxbeL0D3qH1uzXXsqcVVnOORBE=
X-Received: by 2002:a1f:6d81:0:b0:48d:3579:3d63 with SMTP id
 i123-20020a1f6d81000000b0048d35793d63mr4107513vkc.2.1692680420584; Mon, 21
 Aug 2023 22:00:20 -0700 (PDT)
MIME-Version: 1.0
From: sp <stackprogramer@gmail.com>
Date: Tue, 22 Aug 2023 09:30:09 +0430
Message-ID: <CAA=S3PtAdQH3Ujd1X_rMwxAxL1EnaK-Xp-e=Z9ZRxjV7kKT3+A@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: V5S5CCGFNHABK4QLBH6M2NDIJIKBXMFX
X-Message-ID-Hash: V5S5CCGFNHABK4QLBH6M2NDIJIKBXMFX
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] why $diplay function is not work in my custom rfnoc block but
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/V5S5CCGFNHABK4QLBH6M2NDIJIKBXMFX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2157230128080142902=="

--===============2157230128080142902==
Content-Type: multipart/alternative; boundary="0000000000002ff29e06037bdf67"

--0000000000002ff29e06037bdf67
Content-Type: text/plain; charset="UTF-8"

why $diplay function is not work in my custom rfnoc block but it work in
other rfnoc blocks on usrp,
How can solve my problem?
I know that with rfnoc framework $diplay should be work in rfnoc blocks
but....
every thing is same other block only name of block is diff...
thanks in advance

--0000000000002ff29e06037bdf67
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">why $diplay function is not work in my custom rfnoc block =
but it work in other rfnoc blocks on usrp,<br><div>How can solve my=C2=A0pr=
oblem?</div><div>I know that with rfnoc framework $diplay should be work in=
 rfnoc blocks but....</div><div>every thing is same other block only name o=
f block is diff...</div><div>thanks in advance=C2=A0<br></div></div>

--0000000000002ff29e06037bdf67--

--===============2157230128080142902==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2157230128080142902==--
