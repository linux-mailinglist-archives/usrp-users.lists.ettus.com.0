Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B13978545E
	for <lists+usrp-users@lfdr.de>; Wed, 23 Aug 2023 11:36:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1E53138453F
	for <lists+usrp-users@lfdr.de>; Wed, 23 Aug 2023 05:36:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692783372; bh=ZWZBfWfZfS4COZ//T/a0/qPBkH3xWAqQpJN/RM16GrM=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=XxQrqgVnFOiqdu6y8vEtRNF9tv+iXp6+JS1fS/LJoogQvsPktQg4Zld3F937RCfRV
	 DznosmRcORYX66Dnl20Xon80chQv2b6JvVLgWDLR0Q7ga86uksCeJTjSNmoDuSSsvh
	 7/ORPNU0B5WMPuaPOT/DXue0pZSLrvifP8F7lyR3ZwYW9BPgI/5fDyZOxyiB6rYVOV
	 +einqGdtPO5kTe9KFoH00Q1cJKeIeBHNp3nbDisvykfKr2OkjBLu/MC12gMMFvr8JR
	 6KyJv8wfRkj/f/LJrAqGj7D9F/uZV8q0Sd4ZqYjuFAv6cE6lG6722tif15NoiKwkfS
	 dv9ZtkC145Kmg==
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 4E1103844DB
	for <usrp-users@lists.ettus.com>; Wed, 23 Aug 2023 05:35:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=g-ecc-u-tokyo-ac-jp.20221208.gappssmtp.com header.i=@g-ecc-u-tokyo-ac-jp.20221208.gappssmtp.com header.b="NpngIH+a";
	dkim-atps=neutral
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-1bc0d39b52cso36203165ad.2
        for <usrp-users@lists.ettus.com>; Wed, 23 Aug 2023 02:35:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=g-ecc-u-tokyo-ac-jp.20221208.gappssmtp.com; s=20221208; t=1692783355; x=1693388155;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RmYUik+la8CwinRQSdscn5uYSfybWZJiMz9Si3OP+eA=;
        b=NpngIH+a/WlmADdWnMxszPTo36AbhSoz1K2vOTnaU6juBRABxzDNG8RPEr5p3c3/3F
         yTHFUyONl82CwBKjeLe0hC2lXLVM1qbhS+TXUqbwlds2fDMFmqqBFkhUy9cUa50OEWMa
         72tkrU49DJ69o3XOpMjxrgc5SAXNrjfh/6gD1bczOlhBkyLBPtmi4e9S/SxIMy0SGoUV
         P85X/KVzqQiVUXKIikwwOIJYfgYDm4fKQUohrOdWhlOAIWuplkgO9Fx8unBs79FrbrP/
         lR6NIRoFlxVQL3VkrO6sfoulzx4FkvUMsm/17LMmNMaWliT6nmMRX+H40Yf1q0tQToZj
         VEXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692783355; x=1693388155;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RmYUik+la8CwinRQSdscn5uYSfybWZJiMz9Si3OP+eA=;
        b=NGZFz9oL9mAG2Ql6pzhgqSxC+HBTFuBjEyG8US5R++GVMV0OVmITCCu0gZ80CpUbuZ
         cmm8tqiIgSHwDipf9aPYOgd2SdBFi9r6TJZ14JarrfK8LMBfQDgdYsMfo2Nfce/WsRsz
         WxyxHGlNKnTNIAH6RREogzfdPHCGnMbLg4mLrdgwrjnjDDpXlIf6CP+vIHC1DFvszpWf
         nSTIVNTqj4DZ/eqAON9MQNRUOhOrE8QsMokTUZR4Et5MaOhVygNk6uSEMmpNunXQYilE
         Ilu+J7HspnHdj0rHDZhNRV5EMU1f+e2U/RgYC/PEmao8p2LBmbllzTFt3BQ38QZgPh1a
         /INA==
X-Gm-Message-State: AOJu0YyF8K26zDHhKxBh0WYL50TOX62fS8zeGM4mxmUv7u1E6EyG/dB4
	29lYVr3zRU9qCtJYICyfz+5BmIxdGaOQavzvfn4=
X-Google-Smtp-Source: AGHT+IHX7eCBs1WM/GxpBdGmjoaZHJTbXL//R7/OaNn+EKwXJkw3aLf2ZJDzRr/TKwFqjykiTTKtkA==
X-Received: by 2002:a17:903:244a:b0:1b5:561a:5ca9 with SMTP id l10-20020a170903244a00b001b5561a5ca9mr10417025pls.50.1692783355576;
        Wed, 23 Aug 2023 02:35:55 -0700 (PDT)
Received: from [10.100.45.203] ([157.82.128.3])
        by smtp.gmail.com with ESMTPSA id g2-20020a170902934200b001b8052d58a0sm10433779plp.305.2023.08.23.02.35.54
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Aug 2023 02:35:55 -0700 (PDT)
Date: Wed, 23 Aug 2023 18:35:44 +0900
From: ". AERMAN TUERXUN" <armantursun@g.ecc.u-tokyo.ac.jp>
To: usrp-users@lists.ettus.com
Message-ID: <7395bac7-363b-42a3-9007-496d6ac869a4@Spark>
In-Reply-To: <0464981a-ac3d-4265-9677-5a393021b5a3@Spark>
References: <0464981a-ac3d-4265-9677-5a393021b5a3@Spark>
X-Readdle-Message-ID: 7395bac7-363b-42a3-9007-496d6ac869a4@Spark
MIME-Version: 1.0
Message-ID-Hash: ISNPW6KCTBQJOEX5JBP6HZ5GPGJGYMKE
X-Message-ID-Hash: ISNPW6KCTBQJOEX5JBP6HZ5GPGJGYMKE
X-MailFrom: armantursun@g.ecc.u-tokyo.ac.jp
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] How to stream large data packet using X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ISNPW6KCTBQJOEX5JBP6HZ5GPGJGYMKE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4430158023362618157=="

--===============4430158023362618157==
Content-Type: multipart/alternative; boundary="64e5d2f8_6af49984_568"

--64e5d2f8_6af49984_568
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Hi all,

I am currently using USRP X410 with 10G sfp+ cable.
I need to stream large data packet at once to my custom R=46NoC block, la=
rger than MTU.
Is there any way to stream large packet=3F
Now I am just using streamer.send() method to send the data in buffer. Bu=
t after several times of sending and receiving, it keeps showing the stre=
aming timeout error from the receiving metadata.
I assume there is some buffering problem, but couldn=E2=80=99t figure out=
 where exactly the problem comes from.
I guess maybe because the data size in the send buffer is larger than MTU=
.
Is there anyone encountered the same problem before=3F How should I do wh=
en I need to send and receive pretty large data.
Thank you=21

Best regards,

--64e5d2f8_6af49984_568
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<html xmlns=3D=22http://www.w3.org/1999/xhtml=22>
<head>
<title></title>
</head>
<body>
<div name=3D=22messageBodySection=22>
<div dir=3D=22auto=22>Hi all,<br />
<br />
I am currently using USRP X410 with 10G sfp+ cable.<br />
I need to stream large data packet at once to my custom R=46NoC block, la=
rger than MTU.<br />
Is there any way to stream large packet=3F<br />
Now I am just using streamer.send() method to send the data in buffer. Bu=
t after several times of sending and receiving, it keeps showing the stre=
aming timeout error from the receiving metadata.<br />
I assume there is some buffering problem, but couldn=E2=80=99t figure out=
 where exactly the problem comes from.<br />
I guess maybe because the data size in the send buffer is larger than MTU=
.<br />
Is there anyone encountered the same problem before=3F How should I do wh=
en I need to send and receive pretty large data.<br />
Thank you=21<br />
<br />
Best regards,</div>
</div>
</body>
</html>

--64e5d2f8_6af49984_568--

--===============4430158023362618157==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4430158023362618157==--
