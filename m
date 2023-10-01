Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AD73E7B47F6
	for <lists+usrp-users@lfdr.de>; Sun,  1 Oct 2023 16:22:21 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 55BF53863B6
	for <lists+usrp-users@lfdr.de>; Sun,  1 Oct 2023 10:22:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1696170140; bh=8ZHrnlTZnlXQ0ZONb09XrYxnIUtD1yLIFEA27png3yA=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=lJAnWJxCBziYV0GohbCzpGzrSn2P92tE8H06m+jZY3+hXqR4mPTy+0gH8xIOK6pC2
	 Qieq0Xsl2J2uAOba0A40096Mpqn1KC55bYpk5NBs5Q/xxBuRjKJWtSkO/cYvOHu4N6
	 FFGwasWjcG+n32SAFgfwueqWRqP5cSG+5dnjkVSIxhSxPbbvmQA8zEtNT5N2T3u0Oo
	 0DFTi0zbaNQSjtwzjU1yCXpDnbXAA3F8idLHksR3/0E8ox+oAUlCi6GlSlb9GeGRmy
	 HTX93yVw9B5SYo/EdH+oPmBHF90rW0KBH68N77wAenxY00iGhRYCSmZglsRP++UvZI
	 Vz5IV1qTNTMhA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EB9063862DC
	for <usrp-users@lists.ettus.com>; Sun,  1 Oct 2023 10:21:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1696170087; bh=IzMbdGYZTNMJieR4MkF+r8YoJN6sUok/4ZLKoEOLdVQ=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=bUbeoczNQUBpD+kWFvJ+paRkmUmJKD0nDXY6pXD3FnOfJnkVbhOn5iY2qWoqF4h3A
	 Oc6Hj7Scd500FmGmdN/K8M4SIfVyH88uRBX4d8h6cdayNqf5wy44IKgcyZlYy1zBwd
	 igw4CAX0EwkRGiEvAclBu26A2i2fZ5bs/usMXlfoGDWbJ3FnzVAIWG0X0skpuiOb78
	 pPTVcE0Y6pnW1gVFUxFKK4YbW6H61d/EBm0VvMjdlk2izbBpcIPDwTwq3+K1QuB8T5
	 AnCmV2/E1G4vhlH9g8X2ZIiLvg6P91qKHdbPNzXXjg6oVzC1cQml2PDTDGTA4ljldv
	 +/OZCbd4td9dA==
Date: Sun, 1 Oct 2023 14:21:26 +0000
To: usrp-users@lists.ettus.com
From: shaneflandermeyer@gmail.com
Message-ID: <HAFnQ93dmfnKgATadn7mn7wYAe7yHQfRWHkSTkdlAs@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: BN2P110MB17472FA25EE49E56B1F25A0BB7C7A@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM
MIME-Version: 1.0
Message-ID-Hash: QPON5QA5IQ4FWLBUNNPX2DY74BEVU2AA
X-Message-ID-Hash: QPON5QA5IQ4FWLBUNNPX2DY74BEVU2AA
X-MailFrom: shaneflandermeyer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DPDK with X310 and Intel X520-DA
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QPON5QA5IQ4FWLBUNNPX2DY74BEVU2AA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8684152938140300899=="

This is a multi-part message in MIME format.

--===============8684152938140300899==
Content-Type: multipart/alternative;
 boundary="b1_HAFnQ93dmfnKgATadn7mn7wYAe7yHQfRWHkSTkdlAs"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_HAFnQ93dmfnKgATadn7mn7wYAe7yHQfRWHkSTkdlAs
Content-Type: text/plain; charset=us-ascii

Thank you! This was my problem.

For anyone looking at this in the future, the configuration file that made this work looks like:

```
[use_dpdk=1]
dpdk_mtu=9000
dpdk_driver=/usr/lib/x86_64-linux-gnu/dpdk/pmds-22.0
dpdk_corelist=0,1
dpdk_num_mbufs=8192
dpdk_mbuf_cache_size=512
dpdk_link_timeout=5000
    
[dpdk_mac=90:e2:ba:dd:5b:cc]
dpdk_lcore = 1
dpdk_ipv4 = 192.168.30.1/24
dpdk_num_desc = 2048
```

--b1_HAFnQ93dmfnKgATadn7mn7wYAe7yHQfRWHkSTkdlAs
Content-Type: text/html; charset=us-ascii

<p>Thank you! This was my problem.</p><p><br></p><p>For anyone looking at this in the future, the configuration file that made this work looks like:</p><pre><code>[use_dpdk=1]
dpdk_mtu=9000
dpdk_driver=/usr/lib/x86_64-linux-gnu/dpdk/pmds-22.0
dpdk_corelist=0,1
dpdk_num_mbufs=8192
dpdk_mbuf_cache_size=512
dpdk_link_timeout=5000
    
[dpdk_mac=90:e2:ba:dd:5b:cc]
dpdk_lcore = 1
dpdk_ipv4 = 192.168.30.1/24
dpdk_num_desc = 2048
<br></code></pre>


--b1_HAFnQ93dmfnKgATadn7mn7wYAe7yHQfRWHkSTkdlAs--

--===============8684152938140300899==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8684152938140300899==--
