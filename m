Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 554552B8052
	for <lists+usrp-users@lfdr.de>; Wed, 18 Nov 2020 16:25:25 +0100 (CET)
Received: from [::1] (port=56170 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kfPKl-0004zz-JN; Wed, 18 Nov 2020 10:25:23 -0500
Received: from mail-qk1-f173.google.com ([209.85.222.173]:39992)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <dw2zq@virginia.edu>) id 1kfPKh-0004nx-Mi
 for usrp-users@lists.ettus.com; Wed, 18 Nov 2020 10:25:19 -0500
Received: by mail-qk1-f173.google.com with SMTP id y197so2097545qkb.7
 for <usrp-users@lists.ettus.com>; Wed, 18 Nov 2020 07:24:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=virginia-edu.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:date:user-agent:mime-version
 :content-transfer-encoding;
 bh=mXjH5PNyPShEN0gHk5piENJiHmiq5ZOEdnqOgOxbReg=;
 b=QsJEsps5BIK7elbfzelx/oMmSH0yU6u5OqHLnuw0p8a6ymTJGDQ+HRpW9WHnQxupkU
 T5yTntP0PVgHbTG0XQaOL0ICzrc6KiZAJZqkMhGmDrg+4dieNY2Vj23qSEhw+U/6g4Ag
 oTM52p7Y24dqoKfS84OhQ3b2i5BJIJ97tz/7JApIPjgZTj7oI2Nf0DhtV2tIjmedpw4a
 TQFj2z7f61x+gVtqcyPw98i0F41TIMFDElyCsAD/aXrdWnFKrJt2s5OQYJivt8aGacBa
 SnlTD444LYF1N08CkJq09gcTSqFFaTIXAxqPDWi4lBpYKKAmnRUxG0iQqv3LeTcKUJJJ
 nVwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:user-agent
 :mime-version:content-transfer-encoding;
 bh=mXjH5PNyPShEN0gHk5piENJiHmiq5ZOEdnqOgOxbReg=;
 b=KLP5EKcSqtNTgkRa5dG4zsjNmLJAdg8lMwuKF9G9N2bDt6FXxdCZNDuVzJaX144dNz
 flOPYfF4UTXMYj/ACTtmHMo88fvEkDojlUuPTFkD58TMLm5smBxoo/7FYGCv9epiqdRq
 /3HmSIcp/vz4fUT1eKU0zMuJeBQaK77YdstR5UpJc77sZ253oTSb/G9UR6bXfW6kYqdq
 6kgT5lH/dm3aEPlzCF7iJR9Ocs9RAZxRFRakBb6JciTaOaa2bYJaI+FpR8xrRTIUm8H+
 jJkCwrPCU9zd7FkeiikG6McUww31iVaG/Qc5XxcoIMxhR0tIqSThl7bXcW5qnq3IxQiW
 Nb7g==
X-Gm-Message-State: AOAM5326Y9LBlkEAsswKko1U05+dYZxB09JMlWkg27DyX01ZMW0dsxbr
 ai5+2GPS2hR8NmyefSwjMjtE39tdjfjr0A==
X-Google-Smtp-Source: ABdhPJwOANpJDmidRbxBAh45eN/8x694YUtlaxNiUNWqz3ko8qlOXyJ0K4yoY0/NoQY/GbdjKFdTZg==
X-Received: by 2002:ae9:f306:: with SMTP id p6mr5262621qkg.94.1605713078741;
 Wed, 18 Nov 2020 07:24:38 -0800 (PST)
Received: from [10.32.128.226] (c-73-40-68-102.hsd1.va.comcast.net.
 [73.40.68.102])
 by smtp.gmail.com with ESMTPSA id z11sm15961215qkz.38.2020.11.18.07.24.37
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Nov 2020 07:24:38 -0800 (PST)
Message-ID: <8b07db0bd61586f4d91a9b7b65e5f21b74c332df.camel@virginia.edu>
To: usrp-users <usrp-users@lists.ettus.com>
Date: Wed, 18 Nov 2020 10:24:41 -0500
User-Agent: Evolution 3.38.1 
MIME-Version: 1.0
Subject: [USRP-users] RfnocError: OpTimeout
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Dustin Widmann via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Dustin Widmann <dw2zq@virginia.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

Hi usrp-users,

terminate called after throwing an instance of 'uhd::op_timeout'
  what():  RfnocError: OpTimeout: Control operation timed out waiting
for space in command buffer

I've been getting the error above occasionally, usually after hours of
operation. I've got a few questions about it:
* The error seems self explanatory, but why might it happen sometimes
and not others?
* Are there any steps I can take to prevent the error from occurring?
* Alternately, what would be the best way to catch and recover from it?

Relevant context:
* USRP X310
* * ubx (using for 1x transmit)
* * twinrx (using for 2x phase synchronous rx, with lo sharing)
* UHD 4.0 C++ API, multiusrp

Dustin


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
