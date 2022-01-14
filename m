Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C2F948E414
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jan 2022 07:12:23 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A052138494A
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jan 2022 01:12:21 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="W9HmFYh4";
	dkim-atps=neutral
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 01A6538494A
	for <usrp-users@lists.ettus.com>; Fri, 14 Jan 2022 01:11:22 -0500 (EST)
Received: by mail-qk1-f170.google.com with SMTP id z10so5612754qkf.7
        for <usrp-users@lists.ettus.com>; Thu, 13 Jan 2022 22:11:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:date:subject:message-id
         :to;
        bh=JtHZPtkTRgCnZ3+Maiosf48SqhR3y3/u4/kQOv61ONM=;
        b=W9HmFYh4gSOh1GGfCbl49mLRTqUhsoI7/A+fKuwFyjM4WcGLSuIIgTR6hAwa52F6+n
         ZNfJe2o6MLlsnQplt8CAlNuXtQvBGVUnpRKrXRjifXU6eSFXUUjBadV+yf+8LuwC3dXx
         sKAtPewTA9TOzZK3kWwKirBLqxn+qRPbYX044NxclVdCt67JzXBBUZKRWkb7N51cFfNn
         lbcmJZT5nNy+IiooyZE1V9bYXKHQWx3XF6N7kUwXf+z2IEw7NYLdGkyNsZvWR3o/6VOv
         PKaySwZvpnf8z6SX+vnwcJsrpwR98SrnCB52h88u41my2uGY3mByeGirpRzYyIu86HFh
         m2Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version:date
         :subject:message-id:to;
        bh=JtHZPtkTRgCnZ3+Maiosf48SqhR3y3/u4/kQOv61ONM=;
        b=XUClm+zeD9G9StXH6zRotYCN9bpQOw1zVpPHkcKQMBWvfUpctGGf3+Bi9Ko9A88buB
         5quNqsPd4pyvwEWii4J+6mQS7xnxRmW8bD+P0oUoi+u8tjbRkCWxA6iQSXCIycDYYY30
         /a5e4ecm7QKpmYAys4qZqkj7j7ZBQUnLfWJha5n364gsSIeF6YO5TPiqvapCdIMmMpwV
         CATxOUXOeW5TUJjlo7vfYXcngSEuBFkHt8Uqf2a1/5h3wgcBsyS5GpJOymbAbWt/UHpw
         JppCXROr1NKom9iUOOPYDcnv0DecYhPqnyCog9qh0BskNh0ub++7Hj5Q82LfEpI8vi+m
         5wIA==
X-Gm-Message-State: AOAM530l3cCs9Mf5sn5/r3dFMHELdS16heIQIvJMsBU6DJBs3lTRAkH8
	1p/I+6SnxOE43i+csy59fbhJGJ84KnM=
X-Google-Smtp-Source: ABdhPJxbySIcJRimweCz40asXSt8et6TQdAJmzTA9Yi9PvS+rMDw16s29UUvfClCE6EvoormG1Y6LQ==
X-Received: by 2002:a05:620a:4408:: with SMTP id v8mr5568206qkp.613.1642140682072;
        Thu, 13 Jan 2022 22:11:22 -0800 (PST)
Received: from smtpclient.apple ([2600:4040:4032:5000:39ab:8de6:13f2:6d06])
        by smtp.gmail.com with ESMTPSA id bq41sm2958185qkb.32.2022.01.13.22.11.21
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Jan 2022 22:11:21 -0800 (PST)
From: Paul Atreides <maud.dib1984@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Fri, 14 Jan 2022 01:11:20 -0500
Message-Id: <9A9A1A5E-7E18-4FA6-9E1E-263E88992806@gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
X-Mailer: iPhone Mail (19B74)
Message-ID-Hash: G7HLUCSISVKKWQ3ADCPV6VM4N27DVNJL
X-Message-ID-Hash: G7HLUCSISVKKWQ3ADCPV6VM4N27DVNJL
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] N321 LO sharing between RF 0/1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/G7HLUCSISVKKWQ3ADCPV6VM4N27DVNJL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I am trying to configure the N321 to take some TX phase measurements between RF0 and RF1 
I have updated the file system to the latest release using the KB guidance. 

My host/software side is:
GNURadio 3.9.5
UHD 4.1.0.5
Ubuntu 20.04

My gr-uhd block has the LO settings:
Channel 0 export = true
Channel 0 LO = internal

Channel 1 export = false
Channel 1 LO = external

On the hardware side am I understanding the LO diagram correctly that in order to achieve the highest phase accuracy between channels i need to share the LO between the transmit ports of RF0 and RF1? 
If so, would I do that by physically connecting the TX LO OUT0 (really 0-3) to TX LO IN1? 

Am I missing anything obvious for the settings and/or is there a more desirable way to do this?

Thanks

<end transmission>
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
