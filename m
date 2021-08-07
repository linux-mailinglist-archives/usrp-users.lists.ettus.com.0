Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 11A163E36E1
	for <lists+usrp-users@lfdr.de>; Sat,  7 Aug 2021 20:59:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D3880384A86
	for <lists+usrp-users@lfdr.de>; Sat,  7 Aug 2021 14:59:46 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3480F38417A
	for <usrp-users@lists.ettus.com>; Sat,  7 Aug 2021 14:59:01 -0400 (EDT)
Date: Sat, 7 Aug 2021 18:59:01 +0000
To: usrp-users@lists.ettus.com
From: xiapeiqing@gmail.com
Message-ID: <EdQ4IXev9I14TLVo5A2KiRwWzjC0gw4jhSYa3LJE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: zYHWrEBllCPTNIOv8C6mMcDLynex307b8ypjGnIko8s@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: QYMMJOTS7N3HEPARY33Q6M7GSDKGANZ7
X-Message-ID-Hash: QYMMJOTS7N3HEPARY33Q6M7GSDKGANZ7
X-MailFrom: xiapeiqing@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 ethernet connection failure
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QYMMJOTS7N3HEPARY33Q6M7GSDKGANZ7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0776852096427900301=="

This is a multi-part message in MIME format.

--===============0776852096427900301==
Content-Type: multipart/alternative;
 boundary="b1_EdQ4IXev9I14TLVo5A2KiRwWzjC0gw4jhSYa3LJE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_EdQ4IXev9I14TLVo5A2KiRwWzjC0gw4jhSYa3LJE
Content-Type: text/plain; charset=us-ascii

Problem solved, hoping my note can be helpful for others. This device was previously programmed to use non-default IP addr, something different from 192.168.10.2 and 192.168.40.2 in HG image. I bet the previous owner was doing MIMO study.

To bring back the default configuration, re-program the EEPROM. Steps can be found in https://kb.ettus.com/About_the_Motherboard_and_Daughtercard_EEPROM_on_USRP_Devices

FYI, the hardware revision label in my unit was placed in a location different from the web-page description, not an issue at all.

--b1_EdQ4IXev9I14TLVo5A2KiRwWzjC0gw4jhSYa3LJE
Content-Type: text/html; charset=us-ascii

<p>Problem solved, hoping my note can be helpful for others. This device was previously programmed to use non-default IP addr, something different from 192.168.10.2 and 192.168.40.2 in HG image. I bet the previous owner was doing MIMO study.</p><p>To bring back the default configuration, re-program the EEPROM. Steps can be found in https://kb.ettus.com/About_the_Motherboard_and_Daughtercard_EEPROM_on_USRP_Devices</p><p>FYI, the hardware revision label in my unit was placed in a location different from the web-page description, not an issue at all.</p>


--b1_EdQ4IXev9I14TLVo5A2KiRwWzjC0gw4jhSYa3LJE--

--===============0776852096427900301==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0776852096427900301==--
