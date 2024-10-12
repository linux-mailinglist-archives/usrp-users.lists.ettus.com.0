Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6597599B1F0
	for <lists+usrp-users@lfdr.de>; Sat, 12 Oct 2024 10:03:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 18DD0385C4E
	for <lists+usrp-users@lfdr.de>; Sat, 12 Oct 2024 04:03:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728720188; bh=56Uzmym8uKR5Viho/B0eGb3tFjziVXUY01bS06NEGBQ=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=oxu+R0ENc1QX6hPAo4bPU/aEbAsbSaO6vtNfvBU+tq78tnZiSu4CrH8GnNMi93lvA
	 O1TDcDnz33uwavPMVfDo/munKQfMPl7ZYVTP155q2bLLyvIEBw1u8bW7VNWbkWEazJ
	 CZoZmb42kbFMMR4j8FLyOmXfn8d4+ji3CGgL49XQ1g0YjrDvuCaebInoIR9F3Kx1Mw
	 D7LnpMbp9qi23xL62ycYvu51RjzGWbrppLB7Li4d3HUHpvTlz35tOl+pCzJkGClaD0
	 zPi6vmNdwcR/GZjrOR8bNP/m3umZ6pu/a9k/nHEe7jlTJ2iqVf0a03i2E4/2BuT3iR
	 rM+jqQ5b7mIKQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1AE60385B62
	for <usrp-users@lists.ettus.com>; Sat, 12 Oct 2024 04:02:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728720169; bh=AOgr5Fno5TKOZIK3mGAXsd8xtMGwcnb2ECHNI1mbd44=;
	h=Date:To:From:Subject:From;
	b=pULByY9pEXsV2uk+MhwSrEbcfN+D8blu/i2zDX9SQ8CBfLugqh6d+ytFFNiGMp2Wi
	 voBnBzKYbM4bXfIOVsb2E7upSP0SAXOAWoxxN7MV4O1urDXlIwKrXnB6DZadiv8ONE
	 HmYK4wmolkE+5Hg/4G+V3GUsBQ2Kqrwqz+OFBjjCkUj5b613L8fu+JZHMYSL28dftQ
	 UnloUTtC2jYyEgPLXvmjUZ8klZqZfOBl0Q/UT5vdJS47CGqQoggjLu55pwiLGiBVbB
	 ZpdNcwaJqR5lbeY95THqDRSf1EqTpRG24twgCxUGfR+DwNtrIYrxWz6uhf4NzZ8DMd
	 ujymQqzjV1fQA==
Date: Sat, 12 Oct 2024 08:02:49 +0000
To: usrp-users@lists.ettus.com
From: steve.wakelam@roke.co.uk
Message-ID: <3Cx0iEocTE8SmTu3iweo3reKVYZLmAaoUoRjB1oSM@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: HZEYRW5SA47DRPQ6A2KXK5X7JFMIW3VD
X-Message-ID-Hash: HZEYRW5SA47DRPQ6A2KXK5X7JFMIW3VD
X-MailFrom: steve.wakelam@roke.co.uk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Migrating a Design from 3.0 to 4.0
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HZEYRW5SA47DRPQ6A2KXK5X7JFMIW3VD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4939105264795649978=="

This is a multi-part message in MIME format.

--===============4939105264795649978==
Content-Type: multipart/alternative;
 boundary="b1_3Cx0iEocTE8SmTu3iweo3reKVYZLmAaoUoRjB1oSM"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_3Cx0iEocTE8SmTu3iweo3reKVYZLmAaoUoRjB1oSM
Content-Type: text/plain; charset=us-ascii

Hi 

I am migrating a fairly complicated design over to RFNOC4.0

I am carefully comparing the design I have with a smple 4.0 deesign.

Obviously there are big differences between around  the AXI_WRAPPER and NOC SHELL. We currently in 3.0 have pipeline FIFOs that go between the NOC_SHELL and our logic. The clear for this uses **clear_tx_seqnum\[0\]** 

However clear_tx_seqnum does not exist in the template genereated for RFNOC4 as the noc shell is very different. 

How do I now handle clearing the pipeline FIFOs or indeed can I remove them?

Thanks

--b1_3Cx0iEocTE8SmTu3iweo3reKVYZLmAaoUoRjB1oSM
Content-Type: text/html; charset=us-ascii

<p>Hi </p><p>I am migrating a fairly complicated design over to RFNOC4.0</p><p>I am carefully comparing the design I have with a smple 4.0 deesign.</p><p>Obviously there are big differences between around  the AXI_WRAPPER and NOC SHELL. We currently in 3.0 have pipeline FIFOs that go between the NOC_SHELL and our logic. The clear for this uses <strong>clear_tx_seqnum[0]</strong> </p><p>However clear_tx_seqnum does not exist in the template genereated for RFNOC4 as the noc shell is very different. </p><p><br></p><p>How do I now handle clearing the pipeline FIFOs or indeed can I remove them?</p><p><br></p><p>Thanks</p>


--b1_3Cx0iEocTE8SmTu3iweo3reKVYZLmAaoUoRjB1oSM--

--===============4939105264795649978==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4939105264795649978==--
