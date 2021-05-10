Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DB7843790F1
	for <lists+usrp-users@lfdr.de>; Mon, 10 May 2021 16:37:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AE0203841C4
	for <lists+usrp-users@lfdr.de>; Mon, 10 May 2021 10:37:13 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 577DE383D0F
	for <usrp-users@lists.ettus.com>; Mon, 10 May 2021 10:36:16 -0400 (EDT)
Date: Mon, 10 May 2021 14:36:16 +0000
To: usrp-users@lists.ettus.com
From: jcasallas2019@gmail.com
Message-ID: <xWolveXPlOm8cPjzjf70Hjpdhtg2wwefYYUSGnbW7Y@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAL7q81uYP9+okR4snEy+jtqzevMN+Qm2ysAzXpcAxSxrQLn0CA@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: 2AFVLGQOYYOM5B5GZBYNML37VBDAH7GU
X-Message-ID-Hash: 2AFVLGQOYYOM5B5GZBYNML37VBDAH7GU
X-MailFrom: jcasallas2019@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RuntimeError: Device reported an error during initialization
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2AFVLGQOYYOM5B5GZBYNML37VBDAH7GU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5363634952529003761=="

This is a multi-part message in MIME format.

--===============5363634952529003761==
Content-Type: multipart/alternative;
 boundary="b1_xWolveXPlOm8cPjzjf70Hjpdhtg2wwefYYUSGnbW7Y"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_xWolveXPlOm8cPjzjf70Hjpdhtg2wwefYYUSGnbW7Y
Content-Type: text/plain; charset=us-ascii

Hi Jonathon,

No I did not. The only thing I did was creating x300.bit bitstream files through vivado GUI, and programming the FPGA for ILA debugging, I was following the guide https://kb.ettus.com/Debugging_FPGA_images. I created a folder to save my projects and then after all the debugging, I used image builder without vivado GUI. 

To load the image I used the image loader script and this issue came up, I decided to use the default image but the issue was still there.  I followed the steps of the recovery device guide but still the same.

Thanks

--b1_xWolveXPlOm8cPjzjf70Hjpdhtg2wwefYYUSGnbW7Y
Content-Type: text/html; charset=us-ascii

<p>Hi Jonathon,</p><p>No I did not. The only thing I did was creating x300.bit bitstream files through vivado GUI, and programming the FPGA for ILA debugging, I was following the guide https://kb.ettus.com/Debugging_FPGA_images. I created a folder to save my projects and then after all the debugging, I used image builder without vivado GUI. </p><p>To load the image I used the image loader script and this issue came up, I decided to use the default image but the issue was still there.  I followed the steps of the recovery device guide but still the same.</p><p><br></p><p>Thanks</p>


--b1_xWolveXPlOm8cPjzjf70Hjpdhtg2wwefYYUSGnbW7Y--

--===============5363634952529003761==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5363634952529003761==--
