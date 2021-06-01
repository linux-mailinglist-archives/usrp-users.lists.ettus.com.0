Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D7B9397334
	for <lists+usrp-users@lfdr.de>; Tue,  1 Jun 2021 14:28:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 69D29383EC2
	for <lists+usrp-users@lfdr.de>; Tue,  1 Jun 2021 08:28:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=dcsmail.net header.i=barry@dcsmail.net header.b="dpOTT44E";
	dkim-atps=neutral
Received: from sender4-op-o18.zoho.com (sender4-op-o18.zoho.com [136.143.188.18])
	by mm2.emwd.com (Postfix) with ESMTPS id 0B3C4383E9C
	for <usrp-users@lists.ettus.com>; Tue,  1 Jun 2021 08:27:33 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622550451; cv=none;
	d=zohomail.com; s=zohoarc;
	b=cliL8iChWCqu14QEVMDhbFZ6We1ME339F2PvEpv8auXlGx/8Dvh6jora2pD8yaEGunn8mJKtK7i3YiDsEVludH6U2NcCbpQ+TrrXJxiOcym+dDKf0PEdkasff9KBnATTXqGLJytknLGH7LcBRO6FVMfjwf8OClZRwsTL3xhWC7A=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc;
	t=1622550451; h=Content-Type:Content-Transfer-Encoding:Date:From:MIME-Version:Message-ID:Subject:To;
	bh=LNWVm5S3y4jal8DRPYPPgRtZRwzTgdXzt77NIWSvj5I=;
	b=l146FQQpb77AK4W3xwWyb/d95uHAtiGIjDtrP4u1jKSzz6fe9RvcnN8dg6DD0yfstB5NJ7vgjgfxHXiEQzqmOjDpnMUK1nDcJjD5mCMq/4mra7qShtPKLzTJ7AqIX7g7EE/P1I0czjKpdItlKAVmAOhDyPgGwzE0ktntW4V3oh0=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=dcsmail.net;
	spf=pass  smtp.mailfrom=barry@dcsmail.net;
	dmarc=pass header.from=<barry@dcsmail.net>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1622550451;
	s=21097; d=dcsmail.net; i=barry@dcsmail.net;
	h=To:From:Subject:Message-ID:Date:MIME-Version:Content-Type:Content-Transfer-Encoding;
	bh=LNWVm5S3y4jal8DRPYPPgRtZRwzTgdXzt77NIWSvj5I=;
	b=dpOTT44Ey9yNb7nVLwT5huBFp4p5nIzKxkVomLA3YbbAP4PAofKrgXetz5gwuj7D
	HTgQReOy11rQ2UyaLqSCsXb+r1YYDROoJjtrIBeFbTcJX+tH8L/sp7iczxifg8uzey7
	e2bNi2dfyScHZ9HbJvKU7pLSaROEbiaPl4MxfNMM=
Received: from [192.168.1.194] (24.42.137.213 [24.42.137.213]) by mx.zohomail.com
	with SMTPS id 1622550450533806.5522401726315; Tue, 1 Jun 2021 05:27:30 -0700 (PDT)
To: usrp-users@lists.ettus.com
From: Barry Duggan <barry@dcsmail.net>
Message-ID: <e38bba1e-3346-1af2-6c66-31a03e20628f@dcsmail.net>
Date: Tue, 1 Jun 2021 07:27:28 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
Content-Language: en-US
X-ZohoMailClient: External
Message-ID-Hash: TN3F26KUBNZX7ZQ6BSDND4KUDQL5KIIL
X-Message-ID-Hash: TN3F26KUBNZX7ZQ6BSDND4KUDQL5KIIL
X-MailFrom: barry@dcsmail.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] GRCon21 first submission deadline is June 9
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TN3F26KUBNZX7ZQ6BSDND4KUDQL5KIIL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Even though September seems a long way off, the first deadline for 
submissions to GRCon21 is just over a week away!

GNU Radio Conference (GRCon) is the annual conference for the GNU Radio 
project and community, and has established itself as one of the premier 
industry events for Software Radio. We invite developers and users from 
across the GNU Radio Community to present their projects, presentations, 
papers, posters, and problems at GRCon21. We are accepting submissions 
for both In-Person and Virtual presentations.

The First Round of Submissions closes June 9. The Call for Participation 
details can be found at https://events.gnuradio.org/event/8/abstracts/

Any questions can be sent to grcon@gnuradio.org

-- 
Barry Duggan KV4FV
member of the organizing committee
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
