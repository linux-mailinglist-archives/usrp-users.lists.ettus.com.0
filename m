Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BF89045DB12
	for <lists+usrp-users@lfdr.de>; Thu, 25 Nov 2021 14:27:18 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7F8C7384551
	for <lists+usrp-users@lfdr.de>; Thu, 25 Nov 2021 08:27:17 -0500 (EST)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5FC3C384133
	for <usrp-users@lists.ettus.com>; Thu, 25 Nov 2021 08:26:18 -0500 (EST)
Date: Thu, 25 Nov 2021 13:26:18 +0000
To: usrp-users@lists.ettus.com
From: emanuele.tolomei@intecs.it
Message-ID: <Ae69GB613IEjsp0LgvPDfLOr5Jbtu4wBYix21uBlXI@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAB__hTS2hwXkbjhEc_dcYV15sQE0A8hc9OoMLTfqwLPei99WBg@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: K2WMPQHLU2HRK4VVMSLIMLJOD4JG2X6C
X-Message-ID-Hash: K2WMPQHLU2HRK4VVMSLIMLJOD4JG2X6C
X-MailFrom: emanuele.tolomei@intecs.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Trouble with TwinRX frequency tuning
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/K2WMPQHLU2HRK4VVMSLIMLJOD4JG2X6C/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6334328994581082165=="

This is a multi-part message in MIME format.

--===============6334328994581082165==
Content-Type: multipart/alternative;
 boundary="b1_Ae69GB613IEjsp0LgvPDfLOr5Jbtu4wBYix21uBlXI"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Ae69GB613IEjsp0LgvPDfLOr5Jbtu4wBYix21uBlXI
Content-Type: text/plain; charset=us-ascii

> Emanuele, I think if you use set_time_unknown_pps(0) you can get consistent \
> phase behavior.

This solved our issues. Thank you very much.

Regards

Emanuele Tolomei

--b1_Ae69GB613IEjsp0LgvPDfLOr5Jbtu4wBYix21uBlXI
Content-Type: text/html; charset=us-ascii

<blockquote><p>Emanuele, I think if you use set_time_unknown_pps(0) you can get consistent <br>phase behavior.</p></blockquote><p>This solved our issues. Thank you very much.</p><p>Regards</p><p>Emanuele Tolomei</p>


--b1_Ae69GB613IEjsp0LgvPDfLOr5Jbtu4wBYix21uBlXI--

--===============6334328994581082165==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6334328994581082165==--
