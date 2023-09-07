Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF49797DF6
	for <lists+usrp-users@lfdr.de>; Thu,  7 Sep 2023 23:32:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CE4A5385065
	for <lists+usrp-users@lfdr.de>; Thu,  7 Sep 2023 17:32:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1694122344; bh=Reb9faut2q65r9Zfd/vRHmwhIoCOzvzHiZT/bqobT5Y=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=E03kV7bECG1OWwXFWm1yvHJhfCOe0xdfP7HNIdP/xYZyy5n7zKiriqG14rsm7lFcj
	 MwAqaXVIROxVvsgZFupoEoEVYm8GBTq6uY+PLRJrkCGyiOrhmvyYZZLlKyOqyW8W/7
	 u7KpWlzfBraQBlcHNaVVyw/+N2JTe76zxVX0iecSUyn/rsYh4rnVa9wzZcokhbUrsa
	 CxjMAztp8zcAnASzZ//ulDFJKX1AgEHB5ofx92pFRO3hzq8eVRoqaQEccrSXitAa5i
	 gY96xnQNAxhBLJiy8nehUU+Dwbv3PvdqoxSewywLQatKtapYvsO+KTV4vnMT2KIV4e
	 Sjphuniti/TqQ==
Received: from ma-mailsvcp-mx-lapp03.apple.com (ma-mailsvcp-mx-lapp03.apple.com [17.32.222.24])
	by mm2.emwd.com (Postfix) with ESMTPS id 8EA47384EAA
	for <usrp-users@lists.ettus.com>; Thu,  7 Sep 2023 17:31:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=apple.com header.i=@apple.com header.b="IHFBv32m";
	dkim-atps=neutral
Received: from rn-mailsvcp-mta-lapp03.rno.apple.com
 (rn-mailsvcp-mta-lapp03.rno.apple.com [10.225.203.151])
 by ma-mailsvcp-mx-lapp03.apple.com
 (Oracle Communications Messaging Server 8.1.0.23.20230328 64bit (built Mar 28
 2023)) with ESMTPS id <0S0M00K0GX4CGN90@ma-mailsvcp-mx-lapp03.apple.com> for
 usrp-users@lists.ettus.com; Thu, 07 Sep 2023 14:31:26 -0700 (PDT)
X-Proofpoint-GUID: QyrJo8IQN2xSyxGz0yg4i9VV8R4IUEXo
X-Proofpoint-ORIG-GUID: QyrJo8IQN2xSyxGz0yg4i9VV8R4IUEXo
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.601,18.0.957
 definitions=2023-09-07_13:2023-09-05,2023-09-07 signatures=0
X-Proofpoint-Spam-Details: rule=interactive_user_notspam
 policy=interactive_user score=0 adultscore=0 malwarescore=0 mlxscore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxlogscore=460 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2308100000
 definitions=main-2309070190
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apple.com; h=from :
 content-type : content-transfer-encoding : mime-version : subject : message-id
 : date : to; s=20180706; bh=E4x79XdC2wKdEz9iXwFUC6SBS8Zdz1w0f9nqEUYIxr0=;
 b=IHFBv32m8L2qPZZeqtC5zzkDUrxDu9k4aF2QMWjeUibzkEBm8nc5/jhaHZXbzjoUnBQW
 phwkjkpSlNohrDkg0rcrW1rw4pTqnRZzzPK6EOpH+RHuO2DcAYdusz4HCpA40UZaQi9G
 sKvXpp5i5HXrkS35lXD5Lj7I0a0k0Pcr+jUvLnpxDkk/1uopwxpbLBSr886tkhF/uUdi
 tc7HPpYb9q61eD0CsAON8vRfMNizK5pPqTSuvpC3YmLjXcr2z4MeGZ3KXOOcigr9eled
 qW0xxwaH5LqwRS1SJVjMAN5JB3yGrUetRhr2x/IsAWOaZX6R3NstPJQz8AScwYT5gmzR Mw==
Received: from rn-mailsvcp-mmp-lapp03.rno.apple.com
 (rn-mailsvcp-mmp-lapp03.rno.apple.com [17.179.253.16])
 by rn-mailsvcp-mta-lapp03.rno.apple.com
 (Oracle Communications Messaging Server 8.1.0.23.20230328 64bit (built Mar 28
 2023)) with ESMTPS id <0S0M00JY3X4CNK00@rn-mailsvcp-mta-lapp03.rno.apple.com>
 for usrp-users@lists.ettus.com; Thu, 07 Sep 2023 14:31:24 -0700 (PDT)
Received: from process_milters-daemon.rn-mailsvcp-mmp-lapp03.rno.apple.com by
 rn-mailsvcp-mmp-lapp03.rno.apple.com
 (Oracle Communications Messaging Server 8.1.0.23.20230328 64bit (built Mar 28
 2023)) id <0S0M00X00WUR6200@rn-mailsvcp-mmp-lapp03.rno.apple.com> for
 usrp-users@lists.ettus.com; Thu, 07 Sep 2023 14:31:24 -0700 (PDT)
X-Va-A: 
X-Va-T-CD: 3d5221d1829f6b5ea83ffe8e1331d89d
X-Va-E-CD: b697facdf9659646f65511ea8a9552b8
X-Va-R-CD: d2971ddb9e5e4d9acbc16818941496d9
X-Va-ID: b3b890f6-fcf9-45a0-a66d-f2467056b2cf
X-Va-CD: 0
X-V-A: 
X-V-T-CD: 3d5221d1829f6b5ea83ffe8e1331d89d
X-V-E-CD: b697facdf9659646f65511ea8a9552b8
X-V-R-CD: d2971ddb9e5e4d9acbc16818941496d9
X-V-ID: cbaafe77-3bbe-45ad-b1b9-032b94a1ed75
X-V-CD: 0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.601,18.0.957
 definitions=2023-09-07_13:2023-09-05,2023-09-07 signatures=0
Received: from smtpclient.apple (unknown [17.234.21.232])
 by rn-mailsvcp-mmp-lapp03.rno.apple.com
 (Oracle Communications Messaging Server 8.1.0.23.20230328 64bit (built Mar 28
 2023)) with ESMTPSA id <0S0M00D0ZX4CAW00@rn-mailsvcp-mmp-lapp03.rno.apple.com>
 for usrp-users@lists.ettus.com; Thu, 07 Sep 2023 14:31:24 -0700 (PDT)
MIME-version: 1.0 (Mac OS X Mail 16.0 \(3731.400.51.1.1\))
Message-id: <D6A559C5-8B6D-4970-B55D-D4D229176390@apple.com>
Date: Thu, 07 Sep 2023 14:31:14 -0700
To: usrp-users@lists.ettus.com
X-Mailer: Apple Mail (2.3731.400.51.1.1)
Message-ID-Hash: SZNLFQGIT5BTYHU62LDKUWCKNFB7NNT2
X-Message-ID-Hash: SZNLFQGIT5BTYHU62LDKUWCKNFB7NNT2
X-MailFrom: vlevin@apple.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Can DPDK compiled UHD still work with B210/USB devices?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SZNLFQGIT5BTYHU62LDKUWCKNFB7NNT2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Victor Levin via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Victor Levin <vlevin@apple.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi all, 

I have a system that uses X410 with DPDK but I want to also use B210 on the same host. Is there anyway to have UHD compiled with DPDK still work with B210 (USB) or is a non DPDK compiled UHD binary needed? 

Thanks,
Victor
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
