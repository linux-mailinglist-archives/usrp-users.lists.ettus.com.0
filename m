Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8970D367A96
	for <lists+usrp-users@lfdr.de>; Thu, 22 Apr 2021 09:08:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4F3E33840C2
	for <lists+usrp-users@lfdr.de>; Thu, 22 Apr 2021 03:08:51 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=itsystems.it header.i=@itsystems.it header.b="yDO+cGdB";
	dkim-atps=neutral
Received: from www.itsystems.it (mx1.itsystems.it [62.94.30.103])
	by mm2.emwd.com (Postfix) with ESMTPS id B9F67383DC4
	for <usrp-users@lists.ettus.com>; Thu, 22 Apr 2021 03:07:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=itsystems.it; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
	MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=4KeVdbHUfFbc06WtZZjcNfJune8BrXzYH/KfyK+YtKc=; b=yDO+cGdBRh0oUYioiBhaVEx+K2
	wQ3Nx72ilvcRm0d06YcYPj4mVR3yxf6Zgcrt1blxYqsZYRISbJ+w2wG5UVUwn79N4AZOWAG/QG+y3
	bQusgRk1NFyR+Jb3Q2K6j41zWUxqpXzxJWqWECoq6ifyu7i67miS5LNUhO/TVdk//8pw=;
Received: from 77-32-11-143.dyn.eolo.it ([77.32.11.143] helo=[192.168.178.108])
	by www.itsystems.it with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.90_1)
	(envelope-from <p.palana@itsystems.it>)
	id 1lZTQg-0004IN-50
	for usrp-users@lists.ettus.com; Thu, 22 Apr 2021 07:07:14 +0000
To: usrp-users@lists.ettus.com
References: <X1D1NTuMQrcKmNwnxGl6MligBq6GJhQxl14U96RO7k@lists.ettus.com>
From: Paolo Palana <p.palana@itsystems.it>
Message-ID: <24ea83c0-5057-6115-765f-c18aaf0f0c01@itsystems.it>
Date: Thu, 22 Apr 2021 09:12:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <X1D1NTuMQrcKmNwnxGl6MligBq6GJhQxl14U96RO7k@lists.ettus.com>
Content-Language: en-US
X-Spam-Score: -2.9 (--)
X-Spam-Report: =?unknown-8bit?q?Spam_detection_software=2C_running_on_the_system_=22v-mx=2Evirt=2Eitsystems=2Eit=22=2C?=
 =?unknown-8bit?q?_has_NOT_identified_this_incoming_email_as_spam=2E__The_original?=
 =?unknown-8bit?q?_message_has_been_attached_to_this_so_you_can_view_it_or_label?=
 =?unknown-8bit?q?_similar_future_email=2E__If_you_have_any_questions=2C_see?=
 =?unknown-8bit?q?_the_administrator_of_that_system_for_details=2E?=
 =?unknown-8bit?q?_?=
 =?unknown-8bit?q?_Content_preview=3A__Good_morning_Julian=2E_To_solve_this_problem_I_would_follow?=
 =?unknown-8bit?q?_two_approaches_based_on_what_I_want_to_know=2E_1=29_I_want_to_know_the_total_number?=
 =?unknown-8bit?q?_o_samples_handled_by_my_block=3A_I_would_use_just_a_counter_that_increment=A0?=
 =?unknown-8bit?q?_using_the_input_valid_signal_from_the_axi=5Fwrapper=2E_As_clock_for_this_counter?=
 =?unknown-8bit?q?_I_would_use_ce_=5B=2E=2E=2E=5D_?=
 =?unknown-8bit?q?_?=
 =?unknown-8bit?q?_Content_analysis_details=3A___=28-2=2E9_points=2C_5=2E0_required=29?=
 =?unknown-8bit?q?_?=
 =?unknown-8bit?q?_pts_rule_name______________description?=
 =?unknown-8bit?q?_----_----------------------_--------------------------------------------------?=
 =?unknown-8bit?q?_0=2E0_NO=5FDNS=5FFOR=5FFROM________DNS=3A_Envelope_sender_has_no_MX_or_A_DNS_records?=
 =?unknown-8bit?q?_-1=2E0_ALL=5FTRUSTED____________Passed_through_trusted_hosts_only_via_SMTP?=
 =?unknown-8bit?q?_-1=2E9_BAYES=5F00_______________BODY=3A_Bayes_spam_probability_is_0_to_1=25?=
 =?unknown-8bit?q?_=5Bscore=3A_0=2E0000=5D?=
 =?unknown-8bit?q?_0=2E0_TVD=5FRCVD=5FIP____________Message_was_received_from_an_IP_address?=
 =?unknown-8bit?q?_-0=2E0_NICE=5FREPLY=5FA___________Looks_like_a_legit_reply_=28A=29?=
Message-ID-Hash: PYLCA5ONHF6OQCKTHB24JU42GOJAP5QX
X-Message-ID-Hash: PYLCA5ONHF6OQCKTHB24JU42GOJAP5QX
X-MailFrom: p.palana@itsystems.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Counting actual samples using RFNoC custom block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PYLCA5ONHF6OQCKTHB24JU42GOJAP5QX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable

Good morning Julian.

To solve this problem I would follow two approaches based on what I want
to know.

1) I want to know the total number o samples handled by my block: I
would use just a counter that increment=A0 using the input valid signal
from the axi_wrapper. As clock for this counter I would use ce_clk.

2) I want to know the actual number of samples in my block: I would use
two counter. The first is the same I would use in case 1, while the
second is a counter that increment on my valid signal (from my logic to
the axi_wrapper).

BTW the ce_clk (at least in X310 devices and as far as I can understand
reading the FPGA code) is not exactly 200MHz, but it should be a bit
more (if I remember correctly bout 214MHz).

I hope this considerations can be of some help

Best

Paolo

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
