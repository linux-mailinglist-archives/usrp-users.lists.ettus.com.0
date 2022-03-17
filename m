Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D29A44DC3D3
	for <lists+usrp-users@lfdr.de>; Thu, 17 Mar 2022 11:17:28 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D79F13851D2
	for <lists+usrp-users@lfdr.de>; Thu, 17 Mar 2022 06:17:27 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8A0CC384E88
	for <usrp-users@lists.ettus.com>; Thu, 17 Mar 2022 06:16:27 -0400 (EDT)
Date: Thu, 17 Mar 2022 10:16:27 +0000
To: usrp-users@lists.ettus.com
Message-ID: <t80L4ohuv9HH6OZixTIQl5PRQpRnTjsrsLnGgWkNGBQ@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAB__hTSjEAyeqS=0tRJkggz2aXg4mkz4otzv4crbHSM7DttGPA@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: 5Q3WT3OTJ5SH2BNNXL6FPFDJNR5EBWHA
X-Message-ID-Hash: 5Q3WT3OTJ5SH2BNNXL6FPFDJNR5EBWHA
X-MailFrom: tebetix672@tonaeto.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N32x - Signal amplitude distorted when NOT using coherent frontend ?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5Q3WT3OTJ5SH2BNNXL6FPFDJNR5EBWHA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: tebetix672--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: tebetix672@tonaeto.com
Content-Type: multipart/mixed; boundary="===============4172722877986363144=="

This is a multi-part message in MIME format.

--===============4172722877986363144==
Content-Type: multipart/alternative;
 boundary="b1_t80L4ohuv9HH6OZixTIQl5PRQpRnTjsrsLnGgWkNGBQ"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_t80L4ohuv9HH6OZixTIQl5PRQpRnTjsrsLnGgWkNGBQ
Content-Type: text/plain; charset=us-ascii

I've finally found the culprit: I had enabled the automatic IQ balance, this seemed to raise hell in the acquired signals :S

Thanks again for your help!

Best,\
Rob

--b1_t80L4ohuv9HH6OZixTIQl5PRQpRnTjsrsLnGgWkNGBQ
Content-Type: text/html; charset=us-ascii

<p>I've finally found the culprit: I had enabled the automatic IQ balance, this seemed to raise hell in the acquired signals :S</p><p>Thanks again for your help!</p><p>Best,<br>Rob<br><br></p>


--b1_t80L4ohuv9HH6OZixTIQl5PRQpRnTjsrsLnGgWkNGBQ--

--===============4172722877986363144==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4172722877986363144==--
