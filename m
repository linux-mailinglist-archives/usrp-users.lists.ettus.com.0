Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9773CAE7468
	for <lists+usrp-users@lfdr.de>; Wed, 25 Jun 2025 03:47:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 07240385B6C
	for <lists+usrp-users@lfdr.de>; Tue, 24 Jun 2025 21:47:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1750816027; bh=LlqIFzXQdrJeNmX/ITC53k3w4PD+YLVjnvh5gqf8kAM=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=UqqhU38KUP1HgKDNCPwbPLhpVUY2D8V9lb/GO0firycg1LsjqwNDLTPxJfXfxJMnt
	 DPTT6qvENPQ30SbLQdDRfBYx4k3YgWeJfxknR4NJgsp5YYYspPFrtvHk8bS7jQYJ1X
	 5e7smpIm0XugORctrG2SuJes1pAIXNqyXRpRv8DwiWBqhCAyFDicQnmwv5qgoXB2uK
	 lAAUkQGbI9Ny3gJsErvdBxZpkrkywr+2AwyvnDt2Q2IOhiPbqNmaA5MM+FBk3ppAeG
	 vleZFQwL3FaAqt0rdjOkMwq0pKhZsilebBTYRqPB3h6QGkCzxYwEyzf6pZW8LohsUz
	 p4SoLxEi9ViYg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AED0B3859B2
	for <usrp-users@lists.ettus.com>; Tue, 24 Jun 2025 21:46:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1750815969; bh=Ma9V8Wfvuuxoh668TsGJo2Xxpce6M6SIKHtTVWp42L0=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Ur5zGfxw4yGihShiG/z2b28cPc677Co7ChwJ1EXyr9a/X/3pW0yuu2+q00Ydk+HDO
	 NEGGqyUZ2bGa3SurjXjx2DHDI0GafNiRfR7t8AwwYX8R8gmmYdIOUh1aiBfpQsib2p
	 pAm0tJ3kyzOBxgHuLTM7zpcJTSt/qbwbkUEDe0w8FrdTLbgj8Mbo0ieS19pbUQvoYZ
	 56Bdm7YZAAHV7ofP55j2zKgfZu1RWhc66Op/GD7vnquwwdZRXPfFctOu3hT3izQZK5
	 xZEI0PpK6QEKiKs7qDd7Q04JpmmPxFyjcs6NwIwofKJ7FUZ1630HXO6LGHo/AMgFin
	 X9VF9WijeY3bA==
Date: Wed, 25 Jun 2025 01:46:09 +0000
To: usrp-users@lists.ettus.com
From: zhiwen_zhou@seu.edu.cn
Message-ID: <T0tH8wS7Q7K2ZFo9GsXZdrO0O4tVRr8JhkKG78t7E@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAAxXO2HNVACT5Dze19oDCuNAYBZPkHiBWO2xs24CmyR6bnmmQw@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: 3HLFOLHASOBSXGWEJ4WBHCP5IWMUMZ4I
X-Message-ID-Hash: 3HLFOLHASOBSXGWEJ4WBHCP5IWMUMZ4I
X-MailFrom: zhiwen_zhou@seu.edu.cn
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC Fosphor: rfnoc rx streamer :warning: Received fractional vector! Expect signal fagmentation.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3HLFOLHASOBSXGWEJ4WBHCP5IWMUMZ4I/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5571521023462992115=="

This is a multi-part message in MIME format.

--===============5571521023462992115==
Content-Type: multipart/alternative;
 boundary="b1_T0tH8wS7Q7K2ZFo9GsXZdrO0O4tVRr8JhkKG78t7E"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_T0tH8wS7Q7K2ZFo9GsXZdrO0O4tVRr8JhkKG78t7E
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

My MTU is 9000 and uhd_rx_streamer_max_num_samps=C2=A0returns 1996.

--b1_T0tH8wS7Q7K2ZFo9GsXZdrO0O4tVRr8JhkKG78t7E
Content-Type: text/html; charset=us-ascii

<p>My MTU is 9000 and uhd_rx_streamer_max_num_samps&nbsp;returns 1996.</p>


--b1_T0tH8wS7Q7K2ZFo9GsXZdrO0O4tVRr8JhkKG78t7E--

--===============5571521023462992115==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5571521023462992115==--
