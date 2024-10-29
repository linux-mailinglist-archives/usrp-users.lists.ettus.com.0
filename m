Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 433F69B4E4E
	for <lists+usrp-users@lfdr.de>; Tue, 29 Oct 2024 16:42:50 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 136C33866EB
	for <lists+usrp-users@lfdr.de>; Tue, 29 Oct 2024 11:42:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730216569; bh=GXb0DX3tCPZJdX+7zDNvBLNyhVkD3X1Kd+iCthdlk7s=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=lhpSwf8KRNWp8/U0DNjTFV/dke43bAtuijF+spu8JV3tYFMJdsplc9d/RrNx+BFe7
	 nYMg+QQia2+Kiu1/Iwi8zh1TENGoM6ASKnO5Tyhd8LxA8CNE1QdX1Bo9LLXDHgLIgX
	 SIKiAqG9aAkwpQlHWRga77J2bMdXLVWCnyiDMQ0HzXcKP5B/G0YPi5cVydJVng6PZf
	 RfR91L/L0DY5NZJDn1lD+2CLWlbEGwEkWyHfALVvo4PvEl8SQPQQI1K64hF2CHoOL0
	 WynS0BDqa5qRws9fNk6Y+KSGHKyOcvY/JiWqrBsjNZe1iGyjvUzm9HpCLDJ6QINxtM
	 ePoRBgkNLry6g==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0EBE4386594
	for <usrp-users@lists.ettus.com>; Tue, 29 Oct 2024 11:42:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730216555; bh=txdYEY60eqQGYRajDguRtSIknI8QiL5/Ibz7YQudAds=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=C3TcDMY+jTuIdOSO29O7515Zov8j+JBIOpB1cGr+00LJvKSAYMBBSzf99/fHiw8cA
	 ujv0zTrnpm0pmHkK1f528eFJ7KNqXxCAdMbnGvYpqNuEY7EYqMC8wibkCti9N43dlY
	 Wb56LNQ18se1HzXuqv21okdXuVIAMb1sWDhP9aaFI/hm0pZd+PzMboXrBt4wdC1B5V
	 kdKuFs7PY6uDx73BQpmse5NCPCzOWRkCaJfpt9bb1dIHQsgAohOtyU+MXQHXN1xxZp
	 EouJ+ORtAzFo/BN9wnIc9QvelAGkr6cddNHXF3txlWzQOFVmRprvke6VdXxV1f3P9Y
	 +FCasiG3DICXA==
Date: Tue, 29 Oct 2024 15:42:35 +0000
To: usrp-users@lists.ettus.com
From: pigatoimdeafrancesco@gmail.com
Message-ID: <WGfcxlBtqxO3ZgfMtpMzIJmBaZS3j2LEPtDNutE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 48569545-98d6-4071-a613-293ffb0da6d7@gmail.com
MIME-Version: 1.0
Message-ID-Hash: 4BBCNBNSSZKQFIUABGG5IGBSPT2P7FIV
X-Message-ID-Hash: 4BBCNBNSSZKQFIUABGG5IGBSPT2P7FIV
X-MailFrom: pigatoimdeafrancesco@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error: RuntimeError: Failure to create rfnoc_graph on USRP N310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4BBCNBNSSZKQFIUABGG5IGBSPT2P7FIV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7109764952265733660=="

This is a multi-part message in MIME format.

--===============7109764952265733660==
Content-Type: multipart/alternative;
 boundary="b1_WGfcxlBtqxO3ZgfMtpMzIJmBaZS3j2LEPtDNutE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_WGfcxlBtqxO3ZgfMtpMzIJmBaZS3j2LEPtDNutE
Content-Type: text/plain; charset=us-ascii

Hi Marcus, 

N310 can be pinged with both addresses. 

I set up port 49152 and should be listed:

$sudo firewall-cmd --list-ports

49152/udpv

however, the problem still persists

--b1_WGfcxlBtqxO3ZgfMtpMzIJmBaZS3j2LEPtDNutE
Content-Type: text/html; charset=us-ascii

<p>Hi Marcus, </p><p>N310 can be pinged with both addresses. </p><p>I set up port 49152 and should be listed:</p><p><br></p><p>$sudo firewall-cmd --list-ports</p><p>49152/udpv</p><p><br></p><p>however, the problem still persists</p><p><br></p>


--b1_WGfcxlBtqxO3ZgfMtpMzIJmBaZS3j2LEPtDNutE--

--===============7109764952265733660==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7109764952265733660==--
