Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 338C99613A0
	for <lists+usrp-users@lfdr.de>; Tue, 27 Aug 2024 18:06:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7D55A3858F2
	for <lists+usrp-users@lfdr.de>; Tue, 27 Aug 2024 12:06:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1724774808; bh=Bla2kSf75H7F5VS9DqqcaQ/j8VH+W7fEMv8lvBWbuZE=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=J6mrI6avYB3tTIP2Q5yfOARIc+y2CfIBwEN6wQUuN0IAtpUIBYbyxeQjmGs+ATTBc
	 Ha5+SfCDGoYu0drAaWPhIIwFaU13wbTNvSil8W5sIVIPmPADtNYG3Eoa1Oceku30kJ
	 cxSuTjd/GLT2HfBnbhtnHAo+xf2wGm4pw2mNtVDu8XfkvAHQyuxECpVW5z9lmyt4a4
	 jDNvB6AHgGw4UAhpN71FKqAq1fmqP5gwazOURGRtrI9GdvjnKNL3GdDLTkeApaqzRo
	 F5aUb3cPTSwlcFOWDOMmU0Pm9oPALpTFas1khelNnbXb1hO/EsM+pJq+5fyASdMUlF
	 BeRTtoArHfMaQ==
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by mm2.emwd.com (Postfix) with ESMTPS id C37713855F8
	for <usrp-users@lists.ettus.com>; Tue, 27 Aug 2024 12:05:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VDfsUqkw";
	dkim-atps=neutral
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5bed0a2ae0fso7086795a12.1
        for <usrp-users@lists.ettus.com>; Tue, 27 Aug 2024 09:05:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724774751; x=1725379551; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=hMZpG/Gzchl9kOi0Q0Ud+SjWey/2f6FWdYmqkotdAbE=;
        b=VDfsUqkwOozuErNGcX3EYtDJ4ZYRMVs3BC9B5rabp+t/P0VbA9GfccIcFTl+wRjHUY
         pTeaJCdYbAbyYhn5LhnCv78BMtN7EidIPOPNDKKuzxquOAQ821M1b7gFUs/Tcleobt9r
         jfjPvfgzuDRaZn07njVFaGIQ4vMj/vNxFjR0TFLA7mcjr6WYw2TomCPHpxfuEFNDxHVa
         SOZRhlACv/XfETx5rHleDL1AYrQTl67KS5SICWQIAdys60SkVEFEob18IRM9QNB9T0A3
         U9wG7NwiLF6Yv8qMRSI20i4TuCsl4ng8NvFEFJNkzWdAjUBGNRmKAJLDClg28/Q2YOjF
         yWQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724774751; x=1725379551;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hMZpG/Gzchl9kOi0Q0Ud+SjWey/2f6FWdYmqkotdAbE=;
        b=P8jDY+FxB9lYia4V9Ooz7JpbNrFjqFh/a4WYuTFMt12LO9Dh2atRZzpP+8ONlU0Pf3
         KEXjxjv9sOVXWlCAPhnYg3+7lPhEbB5Q+Ucw+ATrwK2i8sTOyo2vQPkF4Lm4kxL2+UX3
         +paeLAoV67auwqWhCBnIN/uwjaxm6YBTVPunfw9yWyUMAGx7cRKf4zDWYGs0fEt2bU7c
         BPc8KTyVYHcjfojiOBaor7ShDgSx4fJhh+W7kZohgQ1tC7qkvECnaAyoxwJn+CM9Vxgd
         zD88pPIpOAOaQ/bE3B40j/6V2qEpowcyJDCGEtUn4PDrVYWJ8XBr6Lc/xgqhIgzsfpVv
         GJjA==
X-Gm-Message-State: AOJu0Ywr7qbGw5yRy02yw72+drtcu/ild5ITkdYgcb0lK9abSmzCYaJ/
	q4peUVF1AmwXsnpBQPiQAhrpMlBo6AZkGIsnfMXwVlDpBGLNkOcWgXNT6wWTMF6rY+j70pr3jyH
	7ukO2CSCb2T48JGeKnVI3Lj3CDR2MaQ==
X-Google-Smtp-Source: AGHT+IFUcZa+S4/4nXNUUsarYo7Lj97AJ2aALxNpzu6X9TTnj8BBp9DiCQzJ6xp87LQPzvKAjzr7pS9AaDZAhBSMd3c=
X-Received: by 2002:a05:6402:2105:b0:578:60a6:7c69 with SMTP id
 4fb4d7f45d1cf-5c0891a0759mr7748837a12.30.1724774751292; Tue, 27 Aug 2024
 09:05:51 -0700 (PDT)
MIME-Version: 1.0
From: Brajesh <brajesh153@gmail.com>
Date: Tue, 27 Aug 2024 21:34:57 +0530
Message-ID: <CAL4V06o-TJRDA4VYCFAKh1Sh4VdweBXF1SqFsPC2pZAFGYTPTw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: YLYSRC5EFL2ML5SS3ZXC5NMEB35Y3EQZ
X-Message-ID-Hash: YLYSRC5EFL2ML5SS3ZXC5NMEB35Y3EQZ
X-MailFrom: brajesh153@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Command for burning image on N210R4
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YLYSRC5EFL2ML5SS3ZXC5NMEB35Y3EQZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1959946249847130545=="

--===============1959946249847130545==
Content-Type: multipart/alternative; boundary="0000000000005e56960620ac6a4c"

--0000000000005e56960620ac6a4c
Content-Type: text/plain; charset="UTF-8"

After building setup for N210R4, I am able to generate new image for
N210R4. I want to burn newly generated image on the N210R4 FPGA. Looking
for command to do the needful.

Thanks and regards.

--0000000000005e56960620ac6a4c
Content-Type: text/html; charset="UTF-8"

<div dir="ltr">After building setup for N210R4, I am able to generate new image for N210R4. I want to burn newly generated image on the N210R4 FPGA. Looking for command to do the needful.<div><div><br><div>Thanks and regards.</div></div></div></div>

--0000000000005e56960620ac6a4c--

--===============1959946249847130545==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1959946249847130545==--
