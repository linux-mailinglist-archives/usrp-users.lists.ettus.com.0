Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 975E2745E04
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jul 2023 15:57:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E24D738460B
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jul 2023 09:57:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688392677; bh=Nkjf8jMBAYTjBrne8ZvUgKycwL+kuQY+zp1M6qoJQA8=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Qv/jYdB7dlTQL974gMxja9YyFSq68FxEzOWj+lD3QYv26oBirl7s8IgyTW5fOmRDs
	 5rGjmvcHRESeGyQGwgr8yVon4k8cUzPO5ABFgU1x8bEtL9v42i+aR4vHHU/zB/xLU9
	 UAyfoc27nhfq6K2lUp5xhFnzPVfcfsnj7+2qaCIUoCN3BCiQwme5Xu7Rpspkj0EnsK
	 oHzkXivx6fRBM+r/ySRM76nUKGeUuGWEs2HkIMQYLNLKoPd4PTH3qpjdVQOCINbbID
	 2dIpUAePAqAZ9iGILgBeVEjiOTgf4Z3s9Sk+aEhlD2WWdGUNXQ4c0TOtNW6ET48DBX
	 FFMrSJPKOjOjQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B9DEB380077
	for <usrp-users@lists.ettus.com>; Mon,  3 Jul 2023 09:57:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688392623; bh=FXotdEC6NU0ha8ECFlV/va9sV+fPydF3IjxfAfdbfTU=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Ybni6ntqm0nxIUdLKUOUIwF+r9DWAy1JrfURf5p/73ZMNLCcrNf2uRBhBu9h4fmcJ
	 VsPl5+G0yZt4N9D03gGnolf7+sfPIS3izHwxQaKoBbu5cvXyiqXFqQZ0CrnswlfWig
	 HDP5YC6Up1MWYD0Mk7ajrz3gzX1Xdi6FjKUvEwzHGWAc+4X0xBBXIgMty7AK4h6O5B
	 3MTCQV35rl0HoVyttMaZVTIa/cUGLKhVf8FNvIGyGGtRaQ/60rKLGcL1/Mp6V2I4k+
	 OkuzxMHLCZ1GwWFvrABsuo5qzzh5aH3GrpGXJGr36+TbhBeSt1NTDkkmXbM27+xSmZ
	 TyEdNTrt5TsDw==
Date: Mon, 3 Jul 2023 13:57:03 +0000
To: usrp-users@lists.ettus.com
From: jnunez@cud.uvigo.es
Message-ID: <NSHsZJ7mvUlEyxLVvwwjrYbX4HuOWdHVnPVVFHI@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 869a1d2f-85a0-754d-b84c-2b391967d0b2@gmail.com
MIME-Version: 1.0
Message-ID-Hash: PS3BECGF2ZA6C7LTZ33TKB7BUGTNKPLC
X-Message-ID-Hash: PS3BECGF2ZA6C7LTZ33TKB7BUGTNKPLC
X-MailFrom: jnunez@cud.uvigo.es
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Understanding time differences in rx_time
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PS3BECGF2ZA6C7LTZ33TKB7BUGTNKPLC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2784221796792214693=="

This is a multi-part message in MIME format.

--===============2784221796792214693==
Content-Type: multipart/alternative;
 boundary="b1_NSHsZJ7mvUlEyxLVvwwjrYbX4HuOWdHVnPVVFHI"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_NSHsZJ7mvUlEyxLVvwwjrYbX4HuOWdHVnPVVFHI
Content-Type: text/plain; charset=us-ascii

https://drive.google.com/file/d/1T5YFFmp3YnpAxYVjEgDRf2ald0NrdhDv/view?usp=sharing

--b1_NSHsZJ7mvUlEyxLVvwwjrYbX4HuOWdHVnPVVFHI
Content-Type: text/html; charset=us-ascii

<p>https://drive.google.com/file/d/1T5YFFmp3YnpAxYVjEgDRf2ald0NrdhDv/view?usp=sharing</p>


--b1_NSHsZJ7mvUlEyxLVvwwjrYbX4HuOWdHVnPVVFHI--

--===============2784221796792214693==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2784221796792214693==--
