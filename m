Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E5B12A83D
	for <lists+usrp-users@lfdr.de>; Wed, 25 Dec 2019 14:30:45 +0100 (CET)
Received: from [::1] (port=60814 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ik6kK-0000RQ-TM; Wed, 25 Dec 2019 08:30:40 -0500
Received: from dslsn201.fix.netvision.net.il ([82.166.192.201]:38621
 helo=sept12.barochoren.com) by mm2.emwd.com with esmtp (Exim 4.92)
 (envelope-from <baroch@6tzvaim.com>) id 1ik6kG-0000LE-H8
 for usrp-users@lists.ettus.com; Wed, 25 Dec 2019 08:30:36 -0500
Received: from [192.168.14.139] (bzq-79-180-220-28.red.bezeqint.net
 [79.180.220.28])
 by sept12.barochoren.com (Postfix) with ESMTPSA id 5F77423FCD6
 for <usrp-users@lists.ettus.com>; Wed, 25 Dec 2019 14:55:57 +0200 (IST)
To: usrp-users@lists.ettus.com
Message-ID: <c00377a3-bfc9-79eb-a033-6b11611b372d@6tzvaim.com>
Date: Wed, 25 Dec 2019 15:29:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
Content-Language: en-US
Subject: [USRP-users] Gain difference in 4 RX on N310
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
From: Baroch Oren via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Baroch Oren <baroch@6tzvaim.com>
Content-Type: multipart/mixed; boundary="===============3678238225821281540=="
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

--===============3678238225821281540==
Content-Type: text/html; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

<html style="direction: ltr;">
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <style type="text/css">body p { margin-bottom: 0cm; margin-top: 0pt; } </style>
  </head>
  <body bidimailui-charset-is-forced="true" style="direction: ltr;">
    <p>Hello.</p>
    <p>I've been capturing with N310 on 4 channels simultaneously. A
      strange behavioure occurs:</p>
    <p>First experiment: capturing on a single channel when all the
      other 3 rx channels are terminated, I get a similar captured gain
      on every one of the RX channels.</p>
    <p>Second experiment: capturing simultaneously, channel 3 (RF2 RX2)
      shows a decreased capture gain in about -14db. all other channels
      show capture gain similar to first experiment.</p>
    <p>Third experiment: capturing simultaneously on 4 channels, all
      inputs terminated: thermal noise of same gain on all 4 channels.</p>
    <p><br>
    </p>
    <p>Anyone has any clue for direction to further research this?</p>
    <p><br>
    </p>
    <p>My setup: UHD_3.14.1.HEAD-0-g0347a6d8 on Ubuntu</p>
    <p><br>
    </p>
    <p>Thanks,</p>
    <p>Baroch Oren<br>
    </p>
    <p><br>
    </p>
  </body>
</html>


--===============3678238225821281540==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3678238225821281540==--
