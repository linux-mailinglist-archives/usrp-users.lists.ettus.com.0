Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B663CF95
	for <lists+usrp-users@lfdr.de>; Tue, 11 Jun 2019 16:54:04 +0200 (CEST)
Received: from [::1] (port=36946 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hai9y-0001XO-IX; Tue, 11 Jun 2019 10:54:02 -0400
Received: from www.itsystems.it ([62.94.30.103]:45288 helo=mx1.itsystems.it)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <p.palana@itsystems.it>)
 id 1hai9v-0001Pm-0t
 for usrp-users@lists.ettus.com; Tue, 11 Jun 2019 10:53:59 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=itsystems.it; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
 Date:Message-ID:Subject:From:To:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TzHlLOcYJhV2dW1vVDc0vZJ2OPGCoSduC1zCfdhibVk=; b=m7AkLOM9FUvmgYqGbZF3n89G96
 NYskNiwQMDBYXS/xSlPDSysZaQGHCv7Ob/JdL/z93Rb3i/bo8xcn++SN7au/KUKYmjTg68aGxFeMR
 poyPKMRkvjbp+1hAl8p5aIWk3Ew/bqPAi96w+eQ3ZRzdX1zPh3J4k1r6ohwrsLWNHYKg=;
Received: from [10.10.0.138]
 by mx1.itsystems.it with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.90_1) (envelope-from <p.palana@itsystems.it>)
 id 1hai8g-00029Q-M7
 for usrp-users@lists.ettus.com; Tue, 11 Jun 2019 14:52:42 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Openpgp: preference=signencrypt
Autocrypt: addr=p.palana@itsystems.it; prefer-encrypt=mutual; keydata=
 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
 YdrDHPAoRmQ=
Message-ID: <1cc193d7-d0c0-4605-8bf2-e8b6dab5c3ec@itsystems.it>
Date: Tue, 11 Jun 2019 16:53:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
Content-Language: en-US
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "v-mx.virt.itsystems.it", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Hi I've a little problem with my new n310. I'm trying to
 configure
 it with a stock XG image using jtag and vivado labtoos 2017.4. The
 configuration fails with error 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 0.8 BAYES_50               BODY: Bayes spam probability is 40 to 60%
 [score: 0.4992]
Subject: [USRP-users] problem configuring n310 using jtag
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
From: Paolo Palana via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Paolo Palana <p.palana@itsystems.it>
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

Hi

I've a little problem with my new n310. I'm trying to configure it with
a stock XG image using jtag and vivado labtoos 2017.4.

The configuration fails with error

ERROR: [Labtools 27-3165] End of startup status: LOW

I think I miss something, but I'm unable to figure out what.

The n310 device is connected to a remote (LAN) machine and I'm
configuring it through hw_server.

Thank you in advance for your help.


Paolo





_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
