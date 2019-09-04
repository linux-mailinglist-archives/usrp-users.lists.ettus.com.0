Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ED141A813E
	for <lists+usrp-users@lfdr.de>; Wed,  4 Sep 2019 13:41:29 +0200 (CEST)
Received: from [::1] (port=56946 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i5TfC-0001Pt-O8; Wed, 04 Sep 2019 07:41:26 -0400
Received: from exchange.tu-berlin.de ([130.149.7.70]:65343)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <braeuer@campus.tu-berlin.de>)
 id 1i5Tf8-0001Jt-Do
 for usrp-users@lists.ettus.com; Wed, 04 Sep 2019 07:41:22 -0400
Received: from SPMA-03.tubit.win.tu-berlin.de (localhost.localdomain
 [127.0.0.1])
 by localhost (Email Security Appliance) with SMTP id DDA106CC0E_D6FA2B8B
 for <usrp-users@lists.ettus.com>; Wed,  4 Sep 2019 11:40:40 +0000 (GMT)
Received: from exchange.tu-berlin.de (exchange.tu-berlin.de [130.149.7.70])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (Client CN "exchange.tu-berlin.de",
 Issuer "DFN-Verein Global Issuing CA" (not verified))
 by SPMA-03.tubit.win.tu-berlin.de (Sophos Email Appliance) with ESMTPS id
 AF78E68B33_D6FA2B8F
 for <usrp-users@lists.ettus.com>; Wed,  4 Sep 2019 11:40:40 +0000 (GMT)
Received: from [192.168.103.85] (130.149.49.51) by
 EX-MBX-01.tubit.win.tu-berlin.de (130.149.6.151) with Microsoft SMTP Server
 (TLS) id 15.0.1395.4; Wed, 4 Sep 2019 13:40:40 +0200
To: <usrp-users@lists.ettus.com>
Message-ID: <e9eaf91b-fbf4-af25-be4c-122e88f21ec6@tkn.tu-berlin.de>
Date: Wed, 4 Sep 2019 13:40:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-ClientProxiedBy: EX-CAS-01.tubit.win.tu-berlin.de (130.149.6.141) To
 EX-MBX-01.tubit.win.tu-berlin.de (130.149.6.151)
X-PMWin-Version: 4.0.1, Antivirus-Engine: 3.74.1, Antivirus-Data: 5.67
X-PureMessage: [Scanned]
X-SASI-RCODE: 200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=campus.tu-berlin.de;
 h=to:from:subject:message-id:date:mime-version:content-type:content-transfer-encoding;
 s=dkim-tub; bh=8DV4pKCkApw8STlhEsmLp60Nxk35ANDv09W8aF8HTB4=;
 b=CIcehGncZRDg799eppJO+/BAZjUjB0ORuUBor0QD/VxmWPo2DkaSAvJ/Ra5yZ7I8NbZzMP4wnES7B4XIMhuk954CCspsL4uh9tXVzFLV2JuDKUixv6Y4llWHhwUR5RAYhIjAyQRMxv8Mek0Tcxmnbwz+mTzncij9+h5cDp3rCHc=
Subject: [USRP-users] RFNoC packet sizes
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

Hi,

I am currently trying to optimize my RFNoC application for latency and I 
have some questions regarding the packet sizes between blocks:

1) If I set the "spp" parameter of the receiving radio block, does this 
value "propagate" upstream, i.e. does this set the packet size for all 
following blocks or just the packet size between radio and e.g. DDC?

2) If the "spp" parameter of the radio does influence the whole 
receiving chain, how can I achieve lower packet size on the transmission 
chain? Reducing spp on the transmitting radio block seems to have no 
effect.

I hope these questions somehow make sense, because I am still trying to 
get my head around this. I think packetization is the main source of the 
delay but to proof that, I need to know the exact packet sizes.

Thanks in advance for your help!

Sebastian

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
