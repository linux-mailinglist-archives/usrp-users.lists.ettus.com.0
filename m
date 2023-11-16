Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF967EE983
	for <lists+usrp-users@lfdr.de>; Thu, 16 Nov 2023 23:50:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5DA6E384E91
	for <lists+usrp-users@lfdr.de>; Thu, 16 Nov 2023 17:50:47 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1700175047; bh=Pt2085heicqpfe2LDE+44HRmh5YfJREGEEcyGhIFXGI=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=wFtfqhYmzXAMy5KZ4ch9mkSVCtSUxyEL5Tf93gzPgxG7LzZZiP35aTwaifwGjNy/I
	 EE+hEAaOodfmLocxtH5N4bkz/67uWxTIlTwfFv1pcoYHmRcbv4Ee9xcUQBgV1mt+iV
	 9U82zBDELJVWvZZ9uZfkkAK56g7j3SLI4Dc0y0xiDacpBCa3XxOmiUQgTRl8c/k+ht
	 L5Rw5LYLOcCjDrIENFXegT0bCWzzXfuRr4TsaMmbB2n2nfqzZYQUUyjnHdRYgsN95I
	 JXK/8s5By7TkUZPJz9aQdCZ/pa8VXdHthd/1GaIrwa4qFiswLVuLERkdsFux9blcp6
	 S2SjG4BvdTyqQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AA46A384E84
	for <usrp-users@lists.ettus.com>; Thu, 16 Nov 2023 17:50:19 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1700175019; bh=q+wtFAz5ZXs2hegNFa5AO7W+iqf2r9CYz8mjY4l9Cy8=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=L01bcrZXOpJfU677moEUyc6XOvc0ebQ/6oG4ftNwynTDhZtzR+razk8DnFYg0eMsg
	 DhullfmeUSROo8GhIh4tx3G+i4OLzoPasckFYikjOCsUiAOmjliDYw4FsLmMlqZu08
	 xpoXD9pfTMxilJxPplb4TD8P7CmpoOvyytlEO/BRRp7URbBQLAA5ygm18d66XRdVrB
	 avhY6aKm1SfncBJwHtAOZqFv8U5vXHfLuL7tTkcR9t8FGdCNAMLfxWaAxD/E+psZ4M
	 0/1ht+gn2kxoJIKOvQXRtJ04ICtwTu583H3GLLIg8iv2+osaCK0R7dYKN365I6/gDH
	 JisSqmDdhfb6w==
Date: Thu, 16 Nov 2023 22:50:19 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <IfebGPnaRdWCII8FAxoiQGr6nuVCOyxZVfHcU6OL8E@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: gqEoYxzG6UTNCFuNrfVTDvgxY4WSUnicOBHegYuu8@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: 6BZI4NFABB7G25VADDWZ6MNN5LQG4ZB3
X-Message-ID-Hash: 6BZI4NFABB7G25VADDWZ6MNN5LQG4ZB3
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 stuck in reboot
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6BZI4NFABB7G25VADDWZ6MNN5LQG4ZB3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3549390670835214222=="

This is a multi-part message in MIME format.

--===============3549390670835214222==
Content-Type: multipart/alternative;
 boundary="b1_IfebGPnaRdWCII8FAxoiQGr6nuVCOyxZVfHcU6OL8E"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_IfebGPnaRdWCII8FAxoiQGr6nuVCOyxZVfHcU6OL8E
Content-Type: text/plain; charset=us-ascii

The boot loop occured again after trying to load a new image

I tried following the same steps as before. But even after reflashing, I still get caught in a boot loop.

I want to power cycle the device, but before I unplugged the power supply, I noticed LED 1 to be solid green, which I believe means the FPGA is turned on(https://files.ettus.com/manual/page_usrp_x4xx.html#x4xx_usage_rearpanelleds).

Is it safe to unplug the power supply with this light on? I am hesitant to unplug it but I am not sure of another solution to figuring out the boot loop.

--b1_IfebGPnaRdWCII8FAxoiQGr6nuVCOyxZVfHcU6OL8E
Content-Type: text/html; charset=us-ascii

<p>The boot loop occured again after trying to load a new image</p><p>I tried following the same steps as before. But even after reflashing, I still get caught in a boot loop.</p><p>I want to power cycle the device, but before I unplugged the power supply, I noticed LED 1 to be solid green, which I believe means the FPGA is turned on(https://files.ettus.com/manual/page_usrp_x4xx.html#x4xx_usage_rearpanelleds).</p><p>Is it safe to unplug the power supply with this light on? I am hesitant to unplug it but I am not sure of another solution to figuring out the boot loop.</p>


--b1_IfebGPnaRdWCII8FAxoiQGr6nuVCOyxZVfHcU6OL8E--

--===============3549390670835214222==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3549390670835214222==--
