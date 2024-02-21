Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE6D85E9C0
	for <lists+usrp-users@lfdr.de>; Wed, 21 Feb 2024 22:15:36 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 45C0638500C
	for <lists+usrp-users@lfdr.de>; Wed, 21 Feb 2024 16:15:35 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708550135; bh=ypv1qy5rULaYrzwv3tP002HVaVDRhyn3/wN+kNX/QT8=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=0KD3U0+O7z+u4bk/FAwCfhDtew45NOXU1EpEnSlKSB1wFSWN3jpEonyFpO3RgogVf
	 YQSIrGbf6pCoMM5Mov2RcmVj/OMSbT/8HVI2398ISmSuqHOjks1qbl/XVhDsYidAAm
	 0VbxH60UFDNCq0yWCZrpI7QpOkLD242NXLwYcQA+BWnB4Dd7L/Ic5nievSwffaYpAy
	 taOsrGeZjyGLc05jH7K8N2eZSogA3PLw6sooZGVzHFgqPO1w4qTQnXz2pbrKUB3TlG
	 xu6/jXnm6RZVIm9Tkyz0ucOszroeVxUP9wJ6y2pJREi3LzVuYU6gj4ymVGvh4Cu9ET
	 DEG3GoaC+XJPw==
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com [209.85.166.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 62B36384FBB
	for <usrp-users@lists.ettus.com>; Wed, 21 Feb 2024 16:15:16 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XEC5YsAF";
	dkim-atps=neutral
Received: by mail-io1-f47.google.com with SMTP id ca18e2360f4ac-7c4949a366fso279384139f.1
        for <usrp-users@lists.ettus.com>; Wed, 21 Feb 2024 13:15:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708550115; x=1709154915; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=2UU3y10DPKnec72c4AGHCX0L45M4mxUhnSNLqriew+A=;
        b=XEC5YsAFw2x/yxESIDhgIGygkme6NjGUQH9rhEAiSgaaNDUtpKIdhTJBvGD1RDm/ks
         XQaTs8W1WEak4u2Wdz2Py4NyKmF6jjQvyxWAYSsqtGFNvIpRFWhIg8bjNNr2uXzb/NLr
         GXTsqO8FKPgeScePAAXw35ebOdDikU/Q4tsfJ30eU6SoFvn5MQSNm+XVN4udpjPdDmyf
         c1pOLbTi6RAMcE8rBWp+DMbU3bzvBG/x/OY78fs6vVSsDn8XpaeYGPUYF3vZLjY7M88X
         MgUsJcNiuAzKyY1xVFKKMFbNjsOdnRQ5T1xaBg+7zw4SHEqwDIyEL1lXYLCG6k/oLO9i
         eWBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708550115; x=1709154915;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2UU3y10DPKnec72c4AGHCX0L45M4mxUhnSNLqriew+A=;
        b=Yz+IdXdfN6HC+TS4vzlPfBoGtf6FdgrOywvCDvGk5XcS6fhY9JCJIjTsYGIEQELLAh
         SbSRgXe7vjZ3WL0jln+if6yrDNkge4+kSuTSFJHkiZhyTLt591OjVpo509U7ZjGCdGxn
         aQ30dYdNKt+vQlqy/dz/VSrymmQoEOFaBPr6assbc78jO+lswmrehlAvCd+GouxRgBMC
         UQgNzix4zgns0a+5juMa5N1eSw2pvJo4M4zTmpJxA2bmTg5SJdeIv5/H+DTWGp5XDkPb
         tdQ4pBbNvKSVDTSSa8QD2IbxULQ+A+Lf5deK6UU2uP+KzakImrLdcyZ3mAp5nKeSAKIE
         VhLQ==
X-Gm-Message-State: AOJu0YzFCrMEkksjys1zeshP2ihNPhajCJgCiyNo/uprMLSlapxLbdzn
	wso+SZ/lQIjaEsm6pK36fSWQHAgBPzXH7T/odO9SrYxDo1R6FL+XJBQ8zM6idEnVYvbBh6OWgNb
	O6o0W7DXkV1CLvnDDbcGwlNEiC2L0+dmc
X-Google-Smtp-Source: AGHT+IFMPYM2fUje2Y9Ioo7O7wVAEL6PU95W63wBjYI2rY5Auzsg2I7qlQWXNqjf2si03nGO8eOQj/cbcuZttBi+9k8=
X-Received: by 2002:a5d:9550:0:b0:7c7:29a1:992d with SMTP id
 a16-20020a5d9550000000b007c729a1992dmr17635883ios.0.1708550115347; Wed, 21
 Feb 2024 13:15:15 -0800 (PST)
MIME-Version: 1.0
From: Alin Stoica <alinstoica1234567@gmail.com>
Date: Wed, 21 Feb 2024 23:15:04 +0200
Message-ID: <CAArU_bEd4h0Cfd4HNkP4Z7gTXh2JyBVrO1uKnzTRA3D-xYXBRQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 4EZXZVT65N36LPIO4UTGAS4FQJZ3YQXX
X-Message-ID-Hash: 4EZXZVT65N36LPIO4UTGAS4FQJZ3YQXX
X-MailFrom: alinstoica1234567@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Writing UHD 3.9 Image onto SD Card for E310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4EZXZVT65N36LPIO4UTGAS4FQJZ3YQXX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6025981801461216010=="

--===============6025981801461216010==
Content-Type: multipart/alternative; boundary="000000000000b4d2e20611ead2b3"

--000000000000b4d2e20611ead2b3
Content-Type: text/plain; charset="UTF-8"

Hello,

 I'm asking for a little help with my E310. I tried to insert UHD version
3.9 on an SD card and I'm getting errors. As it turns out, installing an
image on SD card with other versions of UHD is much simpler than for this
version. The process described in the manual doesn't seem quite right to
me, and I'm not sure if I'm following the steps correctly or if the
tutorial for this specific version is still current (Version:
003.009.007-0-g50839059 for UHD user manual).

 Are there any other tutorials or additional resources that might exist for
UHD 3.9? I would really appreciate any tips or detailed instructions you
can share. Or if I can take the image from somewhere else and download it
to SD card easier.

--000000000000b4d2e20611ead2b3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello,<div dir=3D"auto"><br></div><div dir=3D"auto">=C2=
=A0I&#39;m asking for a little help with my E310. I tried to insert UHD ver=
sion 3.9 on an SD card and I&#39;m getting errors. As it turns out, install=
ing an image on SD card with other versions of UHD is much simpler than for=
 this version. The process described in the manual doesn&#39;t seem quite r=
ight to me, and I&#39;m not sure if I&#39;m following the steps correctly o=
r if the tutorial for this specific version is still current (Version: 003.=
009.007-0-g50839059 for UHD user manual).</div><div dir=3D"auto"><br></div>=
<div dir=3D"auto">=C2=A0Are there any other tutorials or additional resourc=
es that might exist for UHD 3.9? I would really appreciate any tips or deta=
iled instructions you can share. Or if I can take the image from somewhere =
else and download it to SD card easier.</div></div>

--000000000000b4d2e20611ead2b3--

--===============6025981801461216010==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6025981801461216010==--
