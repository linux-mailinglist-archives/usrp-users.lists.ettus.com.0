Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E6467B8F6
	for <lists+usrp-users@lfdr.de>; Wed, 25 Jan 2023 19:02:38 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 990D03843E2
	for <lists+usrp-users@lfdr.de>; Wed, 25 Jan 2023 13:02:36 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674669756; bh=vg10tLDf3wfMYpctSYrm1xv09C65Di9a8CZ6NeK0FOw=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=OuPyGjZDLCsvU8nwdr6H3qTFTF0LD85wXK4l9AjlJLDcjfWGK/XqyJRxh99iPpjPq
	 oEmHglQ99Ebmt6jTo3ALHHvFyElBOirxTckzR3a012HxPAz+oSR5OCsORwH/78oiuL
	 4VU7XWDA2kMNV21qJyy5hzPk6kMV2Y+tGLDubykq+8w6Z0N6++LUc7NCNdP8P4HjmQ
	 wAmgIBNDFPzWaP65NmHlMjdXIk8rFZ//hH0yjT0vQkyQ5/OkfXNjIMS4BfUeaPbc7p
	 rIfBX7qw4ddHIR03xZmELEHqTIQmGbT4xBAjewPGOxuDJtyIKks7EGfuMGXdAdo5M7
	 p4J/qXNyPz0ew==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6F68D380DDB
	for <usrp-users@lists.ettus.com>; Wed, 25 Jan 2023 13:01:04 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674669664; bh=GpmKtDwSpsFcdfUUHrGJgUl7E9PkCmqEn52UwPtkSU0=;
	h=Date:To:From:Subject:From;
	b=qGuGVfv74hW8uiA92hEro8snY7SlqAeXCR0CINGYR9MCtzt+kYmZzgLGPoOJMc5bL
	 PREIUbe9jEbvuDk8g+0db7CQS74reb/7whBR14yWVldk/DmEn90j2RUK++zD6E9dyl
	 7atA/xt+JKfoUQbvsZfPmvIGAS+Uk32YEkw+WesDAGvkNz8d7MKkYWuI3Dp0yyAzLQ
	 QgzOll17XJX455UmatJqMSU79tlB/ddUm+NHxAHlkQq3GKcZxRLCgiD+jCEUohg3Cu
	 3RRIF5uU/sin4iyNqwkdC68SwiobdwsAcyvrfTgeQYL3viqxc92VJk6O8Z5eiLZVxJ
	 WspbleU0DmytQ==
Date: Wed, 25 Jan 2023 18:01:04 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <vAwWsjbJX9HaKDE3zUZeVFZiQmo96IcYXESPb0n5nM@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: NUO6DMPRJK62OUZO5QPCOBX6HCMMQ6TI
X-Message-ID-Hash: NUO6DMPRJK62OUZO5QPCOBX6HCMMQ6TI
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Parsing dat file produced by rfnoc_rx_to_file
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NUO6DMPRJK62OUZO5QPCOBX6HCMMQ6TI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4762400367659533548=="

This is a multi-part message in MIME format.

--===============4762400367659533548==
Content-Type: multipart/alternative;
 boundary="b1_vAwWsjbJX9HaKDE3zUZeVFZiQmo96IcYXESPb0n5nM"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_vAwWsjbJX9HaKDE3zUZeVFZiQmo96IcYXESPb0n5nM
Content-Type: text/plain; charset=us-ascii

Hello,

I am currently following instructions for RFNoC here https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0.

I get a file when running the executable rfnoc_rx_to_file, called usrp_samples.dat. However, I am lost as to how I am supposed to parse this file. Is there any instructions on how it parse it, or a python/c++ script that parses it?

Thanks

Joe

--b1_vAwWsjbJX9HaKDE3zUZeVFZiQmo96IcYXESPb0n5nM
Content-Type: text/html; charset=us-ascii

<p>Hello,</p><p>I am currently following instructions for RFNoC here https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0.</p><p><br></p><p>I get a file when running the executable rfnoc_rx_to_file, called usrp_samples.dat. However, I am lost as to how I am supposed to parse this file. Is there any instructions on how it parse it, or a python/c++ script that parses it?</p><p>Thanks</p><p>Joe</p>


--b1_vAwWsjbJX9HaKDE3zUZeVFZiQmo96IcYXESPb0n5nM--

--===============4762400367659533548==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4762400367659533548==--
