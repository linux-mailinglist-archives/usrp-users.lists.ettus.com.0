Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4724A36CC00
	for <lists+usrp-users@lfdr.de>; Tue, 27 Apr 2021 21:51:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 67248384417
	for <lists+usrp-users@lfdr.de>; Tue, 27 Apr 2021 15:51:11 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6F8D3383E3F
	for <usrp-users@lists.ettus.com>; Tue, 27 Apr 2021 15:47:09 -0400 (EDT)
Date: Tue, 27 Apr 2021 19:47:09 +0000
To: usrp-users@lists.ettus.com
From: jcasallas2019@gmail.com
Message-ID: <M5NUqYTGsD6O9pf6UlbL5zvm2sewujb7DoXnwXOs@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAB__hTTDUO6rmaLtztuUr0x5P7Tcny5i2Ab4vjohRG34=2pnMQ@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: N5NIBM5URCD5GHRVIZLGWKCFJ3EZXBXE
X-Message-ID-Hash: N5NIBM5URCD5GHRVIZLGWKCFJ3EZXBXE
X-MailFrom: jcasallas2019@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Counting actual samples using RFNoC custom block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/N5NIBM5URCD5GHRVIZLGWKCFJ3EZXBXE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5420189960231679653=="

This is a multi-part message in MIME format.

--===============5420189960231679653==
Content-Type: multipart/alternative;
 boundary="b1_M5NUqYTGsD6O9pf6UlbL5zvm2sewujb7DoXnwXOs"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_M5NUqYTGsD6O9pf6UlbL5zvm2sewujb7DoXnwXOs
Content-Type: text/plain; charset=us-ascii

Thank you so much for the insight,

I went ahead and set high the context_tdata HDR EOB bit field when the sample counter reaches a value, context_tuser is 0x0 and context_tvalid is high, but when I read it,  UHD  rx_metadata_t &metadata end_of_burst, I do not see the flag comes true. I wonder if this is the way to read and end_of_burst flag. 

On the other hand, I am planning to stop data flow on/off after the sample counter reaches the value by setting payload_tlast and payload_tvalid high  and low respectively. Something similar like the Keep_one_in_n. Any other consideration should I need to take into account?

Thanks

 Julian

--b1_M5NUqYTGsD6O9pf6UlbL5zvm2sewujb7DoXnwXOs
Content-Type: text/html; charset=us-ascii

<p>Thank you so much for the insight,</p><p>I went ahead and set high the context_tdata HDR EOB bit field when the sample counter reaches a value, context_tuser is 0x0 and context_tvalid is high, but when I read it,  UHD  rx_metadata_t &amp;metadata end_of_burst, I do not see the flag comes true. I wonder if this is the way to read and end_of_burst flag. </p><p><br></p><p>On the other hand, I am planning to stop data flow on/off after the sample counter reaches the value by setting payload_tlast and payload_tvalid high  and low respectively. Something similar like the Keep_one_in_n. Any other consideration should I need to take into account?</p><p><br></p><p>Thanks</p><p> Julian</p>


--b1_M5NUqYTGsD6O9pf6UlbL5zvm2sewujb7DoXnwXOs--

--===============5420189960231679653==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5420189960231679653==--
