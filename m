Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FED14E66D6
	for <lists+usrp-users@lfdr.de>; Thu, 24 Mar 2022 17:17:46 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 29138384CF3
	for <lists+usrp-users@lfdr.de>; Thu, 24 Mar 2022 12:17:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1648138665; bh=35O1M8KF5GUpJnbJBvtoOF9AnnL7MJiRw3wR9CXNzlA=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=uZ/45ngEB6kyvEKyuKxGMZ86TFaTYkiObBicjY8jTHC0CZJLZlqn3KugGyisVlVjt
	 9tlF6oGtLT3WI5gnh3X+HodrHkm4Mec6AYjs73NtqK5ETOugkSULwYC81X2djfWuqN
	 +5Q7RY5Wawuw/3jg7N+JyC6gXfGXhLvcHAHTKAtRaebuYrP+BY+h4CmEvgQwOQmrIh
	 VDd9+nZMgOUHHW8SWyTgppWAM2ZXONRelI2SN61f9a6MEf9isrMQ4YsopDvaaEj+4F
	 WuMs3zWQApsoOI6+h6HHVg6xifeWzPwXB9BfCgkf2yj/bWtmBK4E4cWGS0vG0F5wIq
	 fYUMA7K7sx+RA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EB834384785
	for <usrp-users@lists.ettus.com>; Thu, 24 Mar 2022 12:16:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1648138602; bh=nKIVWHjoSM6LkT2/MvGVCMZGqC4OCBa70DG8k0TfHxc=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=FXK2Qif+E0+dfkqbqV6y+h5acgbx2bFFBRCNPhFltG+UBEMONolvrGEk9x9YyzCxQ
	 +P8rVxL/ZI0m/dwkmuCEXK42j9IxzhhTgMiq3CJTbVRLLbNHgXS3e2gwAL0QxHMr/S
	 4L86Mri/n0mLdYf6jipRJ6uOVauMI9/M2uuFgPq5xBt+g9T5ei82oi0S24Oi3S0HJf
	 F15LGskRrFkpbujjLRw8b/q6QQf7LmqELoZPuRHxChV+IVXAjs5cfOIuHBYmyVhOUm
	 D8+Dbrf2kLfudalCvMrzqszvNxr1E2Zu4MMIU/Y+hrNZq5pgu7IgewGj/cim9X5vFG
	 UD6Q6ZooH3bQA==
Date: Thu, 24 Mar 2022 16:16:41 +0000
To: usrp-users@lists.ettus.com
Message-ID: <ZrdcgxgEGZicwqMU2YsLFONTyOvFmOUGVRTxdrRiRA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 44e6613f-625b-47b5-1347-de2b7ea2ff5b@gmail.com
MIME-Version: 1.0
Message-ID-Hash: ETTH77QRFIRQ2YYQDWIBC77O6LD4RON4
X-Message-ID-Hash: ETTH77QRFIRQ2YYQDWIBC77O6LD4RON4
X-MailFrom: jhb19g@my.fsu.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: 2 rx antennas + USRP B210
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ETTH77QRFIRQ2YYQDWIBC77O6LD4RON4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Jumana  via USRP-users <usrp-users@lists.ettus.com>
Reply-To: jhb19g@my.fsu.edu
Content-Type: multipart/mixed; boundary="===============4192605101802886701=="

This is a multi-part message in MIME format.

--===============4192605101802886701==
Content-Type: multipart/alternative;
 boundary="b1_ZrdcgxgEGZicwqMU2YsLFONTyOvFmOUGVRTxdrRiRA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_ZrdcgxgEGZicwqMU2YsLFONTyOvFmOUGVRTxdrRiRA
Content-Type: text/plain; charset=us-ascii

Appreciate your help. I am going to learn how to construct Gnu Radio flow-graph.

--b1_ZrdcgxgEGZicwqMU2YsLFONTyOvFmOUGVRTxdrRiRA
Content-Type: text/html; charset=us-ascii

<p>Appreciate your help. I am going to learn how to construct Gnu Radio flow-graph.</p>


--b1_ZrdcgxgEGZicwqMU2YsLFONTyOvFmOUGVRTxdrRiRA--

--===============4192605101802886701==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4192605101802886701==--
