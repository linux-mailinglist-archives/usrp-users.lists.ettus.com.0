Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F7E514EB76
	for <lists+usrp-users@lfdr.de>; Fri, 31 Jan 2020 12:07:49 +0100 (CET)
Received: from [::1] (port=35734 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ixU9I-0001yM-Pz; Fri, 31 Jan 2020 06:07:44 -0500
Received: from exchange.tu-berlin.de ([130.149.7.70]:61278)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <braeuer@campus.tu-berlin.de>)
 id 1ixU9F-0001uM-Ig
 for usrp-users@lists.ettus.com; Fri, 31 Jan 2020 06:07:41 -0500
Received: from SPMA-01.tubit.win.tu-berlin.de (localhost.localdomain
 [127.0.0.1])
 by localhost (Email Security Appliance) with SMTP id 464737DFEF1_E340A53B
 for <usrp-users@lists.ettus.com>; Fri, 31 Jan 2020 11:06:59 +0000 (GMT)
Received: from exchange.tu-berlin.de (exchange.tu-berlin.de [130.149.7.70])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (Client CN "exchange.tu-berlin.de",
 Issuer "DFN-Verein Global Issuing CA" (not verified))
 by SPMA-01.tubit.win.tu-berlin.de (Sophos Email Appliance) with ESMTPS id
 DAFD07DFE4A_E340A4FF
 for <usrp-users@lists.ettus.com>; Fri, 31 Jan 2020 11:06:55 +0000 (GMT)
Received: from [192.168.103.85] (130.149.49.51) by
 EX-MBX-01.tubit.win.tu-berlin.de (130.149.6.151) with Microsoft SMTP Server
 (TLS) id 15.0.1395.4; Fri, 31 Jan 2020 12:06:55 +0100
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID: <b65b5225-ccee-4706-0ed1-fbf2c3992139@tkn.tu-berlin.de>
Date: Fri, 31 Jan 2020 12:06:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
Content-Language: de-DE
X-ClientProxiedBy: EX-MBX-01.tubit.win.tu-berlin.de (130.149.6.151) To
 EX-MBX-01.tubit.win.tu-berlin.de (130.149.6.151)
X-PMWin-Version: 4.0.1, Antivirus-Engine: 3.77.1, Antivirus-Data: 5.71
X-PureMessage: [Scanned]
X-SASI-RCODE: 200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=campus.tu-berlin.de;
 h=to:from:subject:message-id:date:mime-version:content-type:content-transfer-encoding;
 s=dkim-tub; bh=w8Gt3IGgzvBPzA9KAxSzfkHmafINI8vaG9Pdrs4ldwQ=;
 b=YEwBW6vtJEFW9ju7wmKhQxKokSZTEAvIjxTx22rwoBl1cMuSwCdq7A7blFP7FeFHSGNYvrpw3xiKerpN3npQUjJ81WVWSVNqc+C1H6ZHcOLCv7irWmFtPU3ucCGanQOuHptdbGNJyFZ77c9ymKJJkwMJf23clsuF1ZTTJH+OBTA=
Subject: [USRP-users] E313 PoE requirements
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: =?utf-8?q?Sebastian_Br=C3=A4uer_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Sebastian_Br=c3=a4uer?= <braeuer@tkn.tu-berlin.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
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

Hi everyone,

just a quick questions: Which PoE standards are supported by the USRP 
E313? I have a 802.3at PoE injector (30W) but it does not seem to boot 
up (although the LED on the outside is on). Do I need more power?

Thanks in advance!

Sebastian


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
