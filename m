Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 98C7336141B
	for <lists+usrp-users@lfdr.de>; Thu, 15 Apr 2021 23:27:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AB42D3846B4
	for <lists+usrp-users@lfdr.de>; Thu, 15 Apr 2021 17:27:27 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id ABD0F383FCD
	for <usrp-users@lists.ettus.com>; Thu, 15 Apr 2021 17:26:38 -0400 (EDT)
Date: Thu, 15 Apr 2021 21:26:38 +0000
To: usrp-users@lists.ettus.com
From: jcasallas2019@gmail.com
Message-ID: <Y0GccvkCQS4wDq9BgoW9VjEZ6eOuuixH02lPEwjknk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAL7q81tNgFuY=-fj+VuVAB09X+V2Ak9jHa_GJtoU0wuJgWhGFA@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: E2UXVD2ELIFEB5BCFGRKCODJGDHRWODZ
X-Message-ID-Hash: E2UXVD2ELIFEB5BCFGRKCODJGDHRWODZ
X-MailFrom: jcasallas2019@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Adjusting data rate in custom RFNoC block based on DDC or DUC data rate.
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/E2UXVD2ELIFEB5BCFGRKCODJGDHRWODZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3087101701070428566=="

This is a multi-part message in MIME format.

--===============3087101701070428566==
Content-Type: multipart/alternative;
 boundary="b1_Y0GccvkCQS4wDq9BgoW9VjEZ6eOuuixH02lPEwjknk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Y0GccvkCQS4wDq9BgoW9VjEZ6eOuuixH02lPEwjknk
Content-Type: text/plain; charset=us-ascii

Hi Jonathon,

I appreciate your insight here, our RFNoC block will be dropping payload data for certain amount of time but still keeping track of the timestamp and it also modifies the CHDR header to notify the host through the RX_streamer that do not expect to receive data setting EOB flag and keeping the time accurate when reading state is back again. In this case we are not passing through the context signals and gating our payload data.

I wonder if in this case the data will be replicated, assuming that we set the DDC at 100MSps, because we are setting our axis context and payload output signals following ce_clk 200MHz.

Thanks

--b1_Y0GccvkCQS4wDq9BgoW9VjEZ6eOuuixH02lPEwjknk
Content-Type: text/html; charset=us-ascii

<p>Hi Jonathon,</p><p><br></p><p>I appreciate your insight here, our RFNoC block will be dropping payload data for certain amount of time but still keeping track of the timestamp and it also modifies the CHDR header to notify the host through the RX_streamer that do not expect to receive data setting EOB flag and keeping the time accurate when reading state is back again. In this case we are not passing through the context signals and gating our payload data.</p><p>I wonder if in this case the data will be replicated, assuming that we set the DDC at 100MSps, because we are setting our axis context and payload output signals following ce_clk 200MHz.</p><p><br></p><p>Thanks </p>


--b1_Y0GccvkCQS4wDq9BgoW9VjEZ6eOuuixH02lPEwjknk--

--===============3087101701070428566==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3087101701070428566==--
