Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B464E78FA
	for <lists+usrp-users@lfdr.de>; Fri, 25 Mar 2022 17:34:45 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B6BBC3846E8
	for <lists+usrp-users@lfdr.de>; Fri, 25 Mar 2022 12:34:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1648226084; bh=Teh/l4SgmpniF/tZBVWWdkhH7MOFKxmX6t11jkWEHyI=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=ppvcOG0mfOYNu33XnVIGa1zeTa7RS3srU5VOZoboh6oTteE9TOfti702sgnl/3pVD
	 /m9V3xRfQtvaY/lV8rJbWBnzfjNwr/WK0m8lf80jU4IXRl3kKyWTE+sBPTI7a9SzWv
	 6+K8r3s/hlpw4XOJ/7wKmDIvINENlCiRbaEXC8nrreLT3pl4xCdKHWnNKgew8a/sQC
	 SyO6BWEEFMfm1Bxsp1mzNsxSfdigUYfV+/x3m8aTOawDTmP9Vod043EoeoPkPIiKQs
	 spJb0AcfPDSSNdxO1ML3HyIYAr92D+yu4mUnecxckypmA89975/1bcESpji9itdpAW
	 IBtQSH50VpZFg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 134593846C4
	for <usrp-users@lists.ettus.com>; Fri, 25 Mar 2022 12:33:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1648226025; bh=m9E7dms6nv/bVKvj3A4yN8TJvL4rISSRFhc7shZpnEA=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=PzT7njhO0MEtak8tOgFPxp7n3B6M7xfwthRUuReOwaItiAY6bZLw4aK/0TWWYT4uR
	 FWMOWNzr1O8pOTMQXrvLdYrtSAHFm1SjL8Qa0+iAZD7Fq7dNG4H2Ju3SRrWbLXbPMW
	 T4TPgAAT7jTMSZxtXILbjt4e+owBszIkRQHwwelLONgIO9Gw0Vzqok105va/iL2s+F
	 2ZkbXgfHyp5EwF4tjkQeFUlCLqSuAkyGat0up4c5Zd7f4/8VSBTN1uBtFGkFfvO6bw
	 h61YTSagr+RYnx//wJe238H79UzstnM92m6zusf7SlVwKawHBlCfkxZkqyeL1pmCHS
	 Qq07Sd2HgrdbQ==
Date: Fri, 25 Mar 2022 16:33:45 +0000
To: usrp-users@lists.ettus.com
Message-ID: <9bz3AdVN4dYF1ZRzcq09FqbW6UEinUxTZOQeJvBbso@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 4d54f52a-7af1-1637-6ed9-f5e45a13c85a@gmail.com
MIME-Version: 1.0
Message-ID-Hash: SSPVPRDMKXPUH6HJVEJKLOHA7QDNG2WW
X-Message-ID-Hash: SSPVPRDMKXPUH6HJVEJKLOHA7QDNG2WW
X-MailFrom: jhb19g@my.fsu.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: 2 rx antennas + USRP B210 + GNU radio
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SSPVPRDMKXPUH6HJVEJKLOHA7QDNG2WW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Jumana  via USRP-users <usrp-users@lists.ettus.com>
Reply-To: jhb19g@my.fsu.edu
Content-Type: multipart/mixed; boundary="===============2024370929277042273=="

This is a multi-part message in MIME format.

--===============2024370929277042273==
Content-Type: multipart/alternative;
 boundary="b1_9bz3AdVN4dYF1ZRzcq09FqbW6UEinUxTZOQeJvBbso"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_9bz3AdVN4dYF1ZRzcq09FqbW6UEinUxTZOQeJvBbso
Content-Type: text/plain; charset=us-ascii

Thank you.

I fixed the errors and it works well right now.

--b1_9bz3AdVN4dYF1ZRzcq09FqbW6UEinUxTZOQeJvBbso
Content-Type: text/html; charset=us-ascii

<p>Thank you.</p><p>I fixed the errors and it works well right now.</p>


--b1_9bz3AdVN4dYF1ZRzcq09FqbW6UEinUxTZOQeJvBbso--

--===============2024370929277042273==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2024370929277042273==--
