Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D18A6A7BBC3
	for <lists+usrp-users@lfdr.de>; Fri,  4 Apr 2025 13:53:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8BBFD385CA2
	for <lists+usrp-users@lfdr.de>; Fri,  4 Apr 2025 07:53:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1743767620; bh=fj6ttPPlk74OT8K/NtsP7yLKI6y6NblMMkWM+z2oJg4=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=h/vFfhNR2DCkzznn1TKjjv+NCSf2jqHW6xL9qtv4Gp1BcobRfUbhjkzkaaDB8D1tO
	 hpEpVPNc8VUPOA7Bu6ZzGry+QXQjmTdP6uvz3CXItHXY7tvMfTCMbDn03vjQ57P3gC
	 Z/x90TZBbRYteBJr91BVkYXf0b2NOlPUSIAjgD3d35c8L9RAb0WAQfxHMclbI1dcmb
	 /5W06OgXPEkAGXTnokN6zAPVZEcxgWhcsVEn0it9Xi5ucZAAbD8UeaVllv7wHJB2s/
	 BK3s7njTtT4GwmefL6Nq9fEQeP65+fkE8ymKjXpsD5dA0MfrMiObX1ePLjRWyFUPDq
	 +QznTGIt7rGbA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3F2F1385494
	for <usrp-users@lists.ettus.com>; Fri,  4 Apr 2025 07:52:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1743767565; bh=faL8autA0rPPSXevChXZ+QQqFqT0NzMEYTW0KXbNhWY=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=MJzgd+nO5yqm0ClqD6XHgY3TugttF3yLb0U2+OaL+Ek4zuMEn9AuY7gPEFf3W6yob
	 HxsgyKfQyKrttKdLxbOW3F9xDIJ28c6ZoiUDd3IPfSQGlrbm8ZRr2SSTlouEEUe0Sz
	 VRVYwpto7OjHqJVkVsT4RB4FfZ0D35QcyWapRoNefb5LaiD0DhGsOTOYHI/Z0PQU8L
	 C542qXoJvLn9/9hacG4R27J0DNcsNbrLTAYg68UtHy29gZ+yoCIlrt40Ho1bwf8XQP
	 DW+iylU6OH94NCWQ26AAGNSWKmG7ppP3yOuK7akj0oddqRyPQPunq4OVGn/pFO+fcF
	 Gx8dZfWkYBdsA==
Date: Fri, 4 Apr 2025 11:52:45 +0000
To: usrp-users@lists.ettus.com
From: cyberphox@gmail.com
Message-ID: <SgB01yM4TMf9v4GKtvPqt8siF8w7hL7PYaKW8q1zc@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFOi1A60ycL4eRXeYoMauWFiVLCjvBbLzqhb3AZHa_tbSpaVag@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: BNK4OFZZM2LQO4GAAGYRDO2HX3OM4J7M
X-Message-ID-Hash: BNK4OFZZM2LQO4GAAGYRDO2HX3OM4J7M
X-MailFrom: cyberphox@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reading/Write registers - Timeout
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BNK4OFZZM2LQO4GAAGYRDO2HX3OM4J7M/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6968409545290668332=="

This is a multi-part message in MIME format.

--===============6968409545290668332==
Content-Type: multipart/alternative;
 boundary="b1_SgB01yM4TMf9v4GKtvPqt8siF8w7hL7PYaKW8q1zc"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_SgB01yM4TMf9v4GKtvPqt8siF8w7hL7PYaKW8q1zc
Content-Type: text/plain; charset=us-ascii

HI Martin

I have tried setting this to 100us but it has a detrimental effect on our application and it fails over. Perhaps I will try lower time delays and see what happens.

Thank you.

Marino

--b1_SgB01yM4TMf9v4GKtvPqt8siF8w7hL7PYaKW8q1zc
Content-Type: text/html; charset=us-ascii

<p>HI Martin</p><p>I have tried setting this to 100us but it has a detrimental effect on our application and it fails over. Perhaps I will try lower time delays and see what happens.</p><p>Thank you.</p><p>Marino</p>


--b1_SgB01yM4TMf9v4GKtvPqt8siF8w7hL7PYaKW8q1zc--

--===============6968409545290668332==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6968409545290668332==--
