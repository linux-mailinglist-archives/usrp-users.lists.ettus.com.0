Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A07E3462F4
	for <lists+usrp-users@lfdr.de>; Tue, 23 Mar 2021 16:34:20 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B2413383ABB
	for <lists+usrp-users@lfdr.de>; Tue, 23 Mar 2021 11:34:19 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0A590383841
	for <usrp-users@lists.ettus.com>; Tue, 23 Mar 2021 11:34:10 -0400 (EDT)
Date: Tue, 23 Mar 2021 15:34:10 +0000
To: usrp-users@lists.ettus.com
Message-ID: <hJ8JxBKDGiUk0YSJzVW267jXqGkBA09HDSW2T8yLw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: HVH2AHNPQFT3REUO72SUXQ6T5E2Z4EYO
X-Message-ID-Hash: HVH2AHNPQFT3REUO72SUXQ6T5E2Z4EYO
X-MailFrom: serge.manigault@ingenico.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] [usrp/host/example/tx_sample_c.c] cant interrupt in UHD 4.0.0.0 was ok in UHD 3.9.2
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HVH2AHNPQFT3REUO72SUXQ6T5E2Z4EYO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Serge Manigault via USRP-users <usrp-users@lists.ettus.com>
Reply-To: serge.manigault@ingenico.com
Content-Type: multipart/mixed; boundary="===============5846201831623910681=="

This is a multi-part message in MIME format.

--===============5846201831623910681==
Content-Type: multipart/alternative;
 boundary="b1_hJ8JxBKDGiUk0YSJzVW267jXqGkBA09HDSW2T8yLw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_hJ8JxBKDGiUk0YSJzVW267jXqGkBA09HDSW2T8yLw
Content-Type: text/plain; charset=us-ascii

Hello USRP users, 

I was using tx_sample_c with UHD 3.9.2 and when I wanted to stop the loop a ControlC in the console was acting almost immediately. Now in UHD 4.0.0.0 it get stuck in the loop.

Any idea how to solve this?

Best regards,

Serge

--b1_hJ8JxBKDGiUk0YSJzVW267jXqGkBA09HDSW2T8yLw
Content-Type: text/html; charset=us-ascii

<p>Hello USRP users, </p><p>I was using tx_sample_c with UHD 3.9.2 and when I wanted to stop the loop a ControlC in the console was acting almost immediately. Now in UHD 4.0.0.0 it get stuck in the loop.</p><p>Any idea how to solve this?</p><p>Best regards,</p><p>Serge</p>


--b1_hJ8JxBKDGiUk0YSJzVW267jXqGkBA09HDSW2T8yLw--

--===============5846201831623910681==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5846201831623910681==--
