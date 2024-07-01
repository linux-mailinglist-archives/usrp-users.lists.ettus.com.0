Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6309091E270
	for <lists+usrp-users@lfdr.de>; Mon,  1 Jul 2024 16:29:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B00AC3850A8
	for <lists+usrp-users@lfdr.de>; Mon,  1 Jul 2024 10:29:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1719844177; bh=yt7gll0aJa/S8la5O1StscchxNUrv387+PSUYdBX+Ow=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=VDgskY5vQW+dhzIR3xuneWwWOD+wRefmNOc4ZnyzQjSKqCtOxA773yJRXpHgUETTt
	 jsbg1sjizlcwqEIaarsT1SRi1+DsgtTbX8iw6n/CVPWadkn7P6KBmeXjB0JOzzg9Sq
	 N/ppU/4JITrvP13ZSLe1SlHzStYpJI7mmpRU9FvvPhp0T/uNTUVHgAOXXcIgE8p5n6
	 mHmnaIcyMMgjByh/Kd+jm4g3avROquaH4iOfcBriEDIYRXPCx+e7nty6Dx+E81yCar
	 9BGYVBewOkvt6MbdR0Xq/LMtJY3XKG8DaSsBg7G2nldztljNYysvM6nTa7/XD8Xd3b
	 k2Apji//Pp84w==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B4AE2380BE1
	for <usrp-users@lists.ettus.com>; Mon,  1 Jul 2024 10:29:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1719844171; bh=AGSb0KdxKSY6wYJd3HrtI99W55pqy4zp53bfLS7f41I=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=pNe1mD0P3i3j1l2Zi8CAt8/fjlZPP47x/lw3nCYjjpZftQnlW+9kb7/n9+qmGOgJ5
	 U1kZfb345LDZ2bueKOHYuyCXzih+u+ulnsnjj7Ocv4qWjsM5oLGsD85l4p0WDJVrQu
	 1ZXIju8AHYm/clpnu2jIKXIdQHGcTGj7sebebGk4P94Koyl1cpdGmigcq9dLBTn/O/
	 hB1AFl5jzBD3VPkKGStBKsaGA8cOs3ftbYGZIiM7SNDFcwaf020ywJQa8kdo+/pIM/
	 9kLiNbmVViNFLUTWt/+V0W2r+HPFL0x+SVyyyYcfTKwYme4gLHhWOKwJ/Kg+0Phw6l
	 RDxb1OQfTh71g==
Date: Mon, 1 Jul 2024 14:29:31 +0000
To: usrp-users@lists.ettus.com
From: cjohnson@serranosystems.com
Message-ID: <DDsHCDTsdcDY6ZjVlG5vA6ayX9WCSouECsGprLEZ6k@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 63Ghf05Ibxp40J1j3KPXy69KPEzVIcgc4DQskuYdqw@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: YFOMPPHU7NIYVHIISC6DV3MF4WQJDLQ3
X-Message-ID-Hash: YFOMPPHU7NIYVHIISC6DV3MF4WQJDLQ3
X-MailFrom: cjohnson@serranosystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x310 Not Sending Jumbo Packets (>8000 bytes) as 1 Packet on 10GigE
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YFOMPPHU7NIYVHIISC6DV3MF4WQJDLQ3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5341855587030104542=="

This is a multi-part message in MIME format.

--===============5341855587030104542==
Content-Type: multipart/alternative;
 boundary="b1_DDsHCDTsdcDY6ZjVlG5vA6ayX9WCSouECsGprLEZ6k"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_DDsHCDTsdcDY6ZjVlG5vA6ayX9WCSouECsGprLEZ6k
Content-Type: text/plain; charset=us-ascii

I also got out of sequence errors at 1e6, I just had to wait 60 seconds instead of 30.

--b1_DDsHCDTsdcDY6ZjVlG5vA6ayX9WCSouECsGprLEZ6k
Content-Type: text/html; charset=us-ascii

<p>I also got out of sequence errors at 1e6, I just had to wait 60 seconds instead of 30.</p>


--b1_DDsHCDTsdcDY6ZjVlG5vA6ayX9WCSouECsGprLEZ6k--

--===============5341855587030104542==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5341855587030104542==--
