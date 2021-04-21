Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4788436743A
	for <lists+usrp-users@lfdr.de>; Wed, 21 Apr 2021 22:39:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 14CA53846B6
	for <lists+usrp-users@lfdr.de>; Wed, 21 Apr 2021 16:38:59 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A5FE23842DB
	for <usrp-users@lists.ettus.com>; Wed, 21 Apr 2021 16:37:46 -0400 (EDT)
Date: Wed, 21 Apr 2021 20:37:46 +0000
To: usrp-users@lists.ettus.com
From: jcasallas2019@gmail.com
Message-ID: <X1D1NTuMQrcKmNwnxGl6MligBq6GJhQxl14U96RO7k@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: MHWEWKXS4Z5HKNUR3QJ257YKPZ7RJJZX
X-Message-ID-Hash: MHWEWKXS4Z5HKNUR3QJ257YKPZ7RJJZX
X-MailFrom: jcasallas2019@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Counting actual samples using RFNoC custom block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MHWEWKXS4Z5HKNUR3QJ257YKPZ7RJJZX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4412935762275867452=="

This is a multi-part message in MIME format.

--===============4412935762275867452==
Content-Type: multipart/alternative;
 boundary="b1_X1D1NTuMQrcKmNwnxGl6MligBq6GJhQxl14U96RO7k"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_X1D1NTuMQrcKmNwnxGl6MligBq6GJhQxl14U96RO7k
Content-Type: text/plain; charset=us-ascii

Hi all,

What would be the best approach to count actual samples inside the rfnoc custom block. Based on the gain block shown in the video RFNoC 4 we added a counter and noticed that it counts faster than the data rate set in the DDC block, and it was expected as the rfnoc block has 200MHz clock. We would like to actually count samples, any advise to accomplish this?

Thanks,

Julian

--b1_X1D1NTuMQrcKmNwnxGl6MligBq6GJhQxl14U96RO7k
Content-Type: text/html; charset=us-ascii

<p>Hi all,</p><p><br></p><p>What would be the best approach to count actual samples inside the rfnoc custom block. Based on the gain block shown in the video RFNoC 4 we added a counter and noticed that it counts faster than the data rate set in the DDC block, and it was expected as the rfnoc block has 200MHz clock. We would like to actually count samples, any advise to accomplish this?</p><p><br></p><p>Thanks,</p><p>Julian</p>


--b1_X1D1NTuMQrcKmNwnxGl6MligBq6GJhQxl14U96RO7k--

--===============4412935762275867452==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4412935762275867452==--
