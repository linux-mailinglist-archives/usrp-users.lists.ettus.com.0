Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF943FC445
	for <lists+usrp-users@lfdr.de>; Tue, 31 Aug 2021 10:48:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9FC52384529
	for <lists+usrp-users@lfdr.de>; Tue, 31 Aug 2021 04:48:54 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BCD57383FA1
	for <usrp-users@lists.ettus.com>; Tue, 31 Aug 2021 04:48:07 -0400 (EDT)
Date: Tue, 31 Aug 2021 08:48:07 +0000
To: usrp-users@lists.ettus.com
Message-ID: <A0DtKWrNwk4KRUYC7EJXxfzVMWxPQLAQ2aR0QOmIE4@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: Y77ER3JRLQNAWTZ7PXPRE3LK7FMLYYDG
X-Message-ID-Hash: Y77ER3JRLQNAWTZ7PXPRE3LK7FMLYYDG
X-MailFrom: hiroki_iwata@ieee.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Contents implemented in the B205mini-i FPGA configuration file distributed in GitHub
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Y77ER3JRLQNAWTZ7PXPRE3LK7FMLYYDG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: hiroki_iwata--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: hiroki_iwata@ieee.org
Content-Type: multipart/mixed; boundary="===============5886375453268283342=="

This is a multi-part message in MIME format.

--===============5886375453268283342==
Content-Type: multipart/alternative;
 boundary="b1_A0DtKWrNwk4KRUYC7EJXxfzVMWxPQLAQ2aR0QOmIE4"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_A0DtKWrNwk4KRUYC7EJXxfzVMWxPQLAQ2aR0QOmIE4
Content-Type: text/plain; charset=us-ascii

Dear community members,

I am new to touch the USRP device and design FPGA.

I would like to confirm and understand the contents (such as signal processing blocks) in the FPGA bin file for B205mini-i distributed in GitHub (EttusResearch).

As a first step, I installed ISE tool from Xilinx and confirm the schematic using Project Navigator, but I cannot understand it clearly.

Does anyone know the details for signal processing on FPGA? Or Does anyone have some materials for the design details?

Especially, I want to understand how the parameters for RFIC (such as center frequency, bandwidth, and gain) are sent from a USB Host to the RFIC via USB controller and FPGA.

Thank you so much in advance.

Hiroki

--b1_A0DtKWrNwk4KRUYC7EJXxfzVMWxPQLAQ2aR0QOmIE4
Content-Type: text/html; charset=us-ascii

<p>Dear community members,</p><p><br></p><p>I am new to touch the USRP device and design FPGA.</p><p>I would like to confirm and understand the contents (such as signal processing blocks) in the FPGA bin file for B205mini-i distributed in GitHub (EttusResearch).</p><p>As a first step, I installed ISE tool from Xilinx and confirm the schematic using Project Navigator, but I cannot understand it clearly.</p><p>Does anyone know the details for signal processing on FPGA? Or Does anyone have some materials for the design details?</p><p>Especially, I want to understand how the parameters for RFIC (such as center frequency, bandwidth, and gain) are sent from a USB Host to the RFIC via USB controller and FPGA.</p><p>Thank you so much in advance.</p><p>Hiroki</p>


--b1_A0DtKWrNwk4KRUYC7EJXxfzVMWxPQLAQ2aR0QOmIE4--

--===============5886375453268283342==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5886375453268283342==--
