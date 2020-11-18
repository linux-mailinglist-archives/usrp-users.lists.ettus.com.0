Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E5552B7650
	for <lists+usrp-users@lfdr.de>; Wed, 18 Nov 2020 07:31:44 +0100 (CET)
Received: from [::1] (port=52370 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kfH0D-00012X-JK; Wed, 18 Nov 2020 01:31:37 -0500
Received: from mout.gmx.net ([212.227.17.21]:55905)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <smithgeorge1492@gmx.com>)
 id 1kfH09-0000xT-59
 for usrp-users@lists.ettus.com; Wed, 18 Nov 2020 01:31:33 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1605681051;
 bh=ElhSB0WlC9PnYSQt087rzOhFYUrtwfh73EteSZAfoQw=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=fcFBLn3Wp/kia7oN7fjt3vqmj90F3FKgH/e6sdtzG//bsUDMl4dwVoMlIPhBfaN4X
 VCaCR26JqG8VD8bIsHzPd3dQ6wHk4uBs1zuJPevMQ9r7q9dYOqWZnkOGOKM+Vxip9a
 IYnsrZNFj2d7hz+y9jUquMJZHT4BsryHGCkfBzq0=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [62.216.202.34] ([62.216.202.34]) by web-mail.gmx.net
 (3c-app-gmx-bs11.server.lan [172.19.170.62]) (via HTTP); Wed, 18 Nov 2020
 07:30:51 +0100
MIME-Version: 1.0
Message-ID: <trinity-4654e898-788a-41aa-8050-615a97ba8200-1605681051681@3c-app-gmx-bs11>
To: usrp-users@lists.ettus.com
Date: Wed, 18 Nov 2020 07:30:51 +0100
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:e8cZ7WKy92Pt9lDI/1nJQIF34d72BVYPjC0en9aOwzyaSnGnJZN7MuDwqd+M4qn/ML2uo
 fEYYIdt8NuT3c2afnjRjbQGv1WaPo0amWU+hHWHdcVr8i/zv71hfbF3GUNa6iCS2Oh3Dbsm+UpGZ
 mnRt5yAFELashW6veoKLmBVPRM/7TdZIZpXSEytJzu5tK8h7acDHB9jkZUgQNg6wuPpGqTWCKQhd
 7EdlGCxpTiLuKeWRzc6yqNgVFEK06zleZVKtfscq7DnbUMHjNxUuBE9sgZqjEqGv5PdsyqeNd2Xf
 YQ=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:mAm0ZKFM5uE=:KFnmIEhC3etNuxMfVL/EU0
 jzgylRBz03Cz5Pz3AimBJ80Oi58/o8GSH1Lhwq7Wx2BJFuECOdn1IJyxDgl//380JnoM12d+8
 GEhy2NlASrtekSu92+tShRoqOEl+c5TlrmqEp4sDYoaT8IXL6axOL3Y4Kq5LAWSpToo3TgNEB
 fyqwLlEtVxBnPWvBSs40XtjG47OBPzcKVXiq9PXW5YuFf+enEIPcEinqC7ojvpHMO9a9Qs7X4
 /AW29Byy8foHveiZWF+XQzGvZvBfwlEuh+PSzCAuHaW/3288zqsVbZZZgfFvch/qJYn+D1N8I
 095kiWMVLcXuH58GgZZpbsOFoTruu+Sd+UewSu8UBU+WQV9jqXaLmXvdmZ4cOWfNpCThCfWKG
 yHHrFQ5Y/wQj4blDCoXiJFpb5tsf2W19pDaxhRZhiS2zuT8Es7IFmsXZLg8vWF+5alwVVowyv
 OL31myiQbDf9WzUa2oS3NOPLoRc0QNSHnkp0kh3Gi6evHh3OAf/qXgZpypI0rzG6G09sWBVSz
 6df/godUIkkXUMV2tg9Q5Cj5CUpqb8+DBc45bp0J96g3ztAORiq7ahBn2GQU6g6jp/TIuScOK
 V75I8KneBo0Qo=
Subject: [USRP-users] RFNoC: How can I use the GPS time?
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
From: George Smith via USRP-users <usrp-users@lists.ettus.com>
Reply-To: George Smith <smithgeorge1492@gmx.com>
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

I imagine, that I don't need an interaction for custom logic on the FPGA. Maybe I need it later, but in a first step I try to bypass it.
So I when I click on the Play Button in GNURadio all control tasks (in the test1_impl.cc) are consecutively processed and the last task is getting the GPS time (from the board) and writing it out to the PC (in a file).
This the timestamp.

Thanks for the help.

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
