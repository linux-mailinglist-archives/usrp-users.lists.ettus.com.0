Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 76721F365B
	for <lists+usrp-users@lfdr.de>; Thu,  7 Nov 2019 18:55:40 +0100 (CET)
Received: from [::1] (port=55906 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iSm0O-0006zU-Q3; Thu, 07 Nov 2019 12:55:36 -0500
Received: from mail.danlawtech.com ([221.134.42.157]:52882)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <joshij@danlawtech.com>)
 id 1iSm0L-0006us-2i
 for usrp-users@lists.ettus.com; Thu, 07 Nov 2019 12:55:33 -0500
Received: from localhost (localhost [127.0.0.1])
 by mail.danlawtech.com (Postfix) with ESMTP id 5A280170377E
 for <usrp-users@lists.ettus.com>; Thu,  7 Nov 2019 23:24:50 +0530 (IST)
Received: from mail.danlawtech.com ([127.0.0.1])
 by localhost (mail.danlawtech.com [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id q2sh5lD-VmGz for <usrp-users@lists.ettus.com>;
 Thu,  7 Nov 2019 23:24:50 +0530 (IST)
Received: from localhost (localhost [127.0.0.1])
 by mail.danlawtech.com (Postfix) with ESMTP id 02FF817044B9
 for <usrp-users@lists.ettus.com>; Thu,  7 Nov 2019 23:24:50 +0530 (IST)
X-Virus-Scanned: amavisd-new at danlawtech.com
Received: from mail.danlawtech.com ([127.0.0.1])
 by localhost (mail.danlawtech.com [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id D8ViCsnb9tIf for <usrp-users@lists.ettus.com>;
 Thu,  7 Nov 2019 23:24:49 +0530 (IST)
Received: from mail.danlawtech.com (mail.danlawtech.com [192.168.1.8])
 by mail.danlawtech.com (Postfix) with ESMTP id D7096170377E
 for <usrp-users@lists.ettus.com>; Thu,  7 Nov 2019 23:24:49 +0530 (IST)
Date: Thu, 7 Nov 2019 23:24:49 +0530 (IST)
To: usrp-users@lists.ettus.com
Message-ID: <528137120.131239.1573149289782.JavaMail.zimbra@danlawtech.com>
MIME-Version: 1.0
X-Originating-IP: [192.168.1.8]
X-Mailer: Zimbra 8.7.11_GA_1854 (zclient/8.7.11_GA_1854)
Thread-Index: YOuynM4QHV9C71IvVKBCTx7Gi0cTtA==
Thread-Topic: Usrp B200 IRNSS Simulator
Subject: [USRP-users] Usrp B200 IRNSS Simulator
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Joshi J \(Engg\) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Joshi J \(Engg\)" <joshij@danlawtech.com>
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

Hi All
   I want to create GPS and IRNSS simulator using usrp b200.I am using vs2015 ,uhd master from github(open-source).
I am able to generate GPS signal using   gps-sdr-sim.
How can we generate IRNSS datastream for transmission.

Thanks,
Jit

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
