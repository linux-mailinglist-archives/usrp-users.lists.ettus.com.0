Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AAEFD3698AA
	for <lists+usrp-users@lfdr.de>; Fri, 23 Apr 2021 19:51:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A5889384BBA
	for <lists+usrp-users@lfdr.de>; Fri, 23 Apr 2021 13:50:59 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3EBF7383AAD
	for <usrp-users@lists.ettus.com>; Fri, 23 Apr 2021 13:50:06 -0400 (EDT)
Date: Fri, 23 Apr 2021 17:50:06 +0000
To: usrp-users@lists.ettus.com
From: jcasallas2019@gmail.com
Message-ID: <sjchtPrrPJYcAr2Z8yuCvd7L2gpkh7QTtYtpuylu1k@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAL7q81vk87-pC+7bGLk=TckeXScmkqZu0cboHDAGxOGac_PETg@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: AMGLSO46DX6M4FFRHXT2AU4FJ23SI3AV
X-Message-ID-Hash: AMGLSO46DX6M4FFRHXT2AU4FJ23SI3AV
X-MailFrom: jcasallas2019@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Counting actual samples using RFNoC custom block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AMGLSO46DX6M4FFRHXT2AU4FJ23SI3AV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2133443441270455137=="

This is a multi-part message in MIME format.

--===============2133443441270455137==
Content-Type: multipart/alternative;
 boundary="b1_sjchtPrrPJYcAr2Z8yuCvd7L2gpkh7QTtYtpuylu1k"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_sjchtPrrPJYcAr2Z8yuCvd7L2gpkh7QTtYtpuylu1k
Content-Type: text/plain; charset=us-ascii

Jonathon,

Only when tvalid is high.  The reason why I did not use pload_tready was because eventually (is not implemented yet) I want to decide when am ready to receive data. My goal here is to count samples for now, please let me know your thoughts.

Also, I would like to mention that I am using the axis_data_clk and axis_data_rst. I can see other clock ce_clk which is also specified in the YAML file as clock domain but I do not see any ce_rst in my block verilog file,  wonder if I am using the right clock for the user logic.

Thanks a lot.

Julian

--b1_sjchtPrrPJYcAr2Z8yuCvd7L2gpkh7QTtYtpuylu1k
Content-Type: text/html; charset=us-ascii

<p>Jonathon,</p><p><br></p><p>Only when tvalid is high.  The reason why I did not use pload_tready was because eventually (is not implemented yet) I want to decide when am ready to receive data. My goal here is to count samples for now, please let me know your thoughts.</p><p><br></p><p>Also, I would like to mention that I am using the axis_data_clk and axis_data_rst. I can see other clock ce_clk which is also specified in the YAML file as clock domain but I do not see any ce_rst in my block verilog file,  wonder if I am using the right clock for the user logic.</p><p><br></p><p>Thanks a lot.</p><p>Julian </p>


--b1_sjchtPrrPJYcAr2Z8yuCvd7L2gpkh7QTtYtpuylu1k--

--===============2133443441270455137==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2133443441270455137==--
