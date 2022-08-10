Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CE6158F4A3
	for <lists+usrp-users@lfdr.de>; Thu, 11 Aug 2022 01:05:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DDB12383FBA
	for <lists+usrp-users@lfdr.de>; Wed, 10 Aug 2022 19:05:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1660172751; bh=3kccLLFekgYrxh7L8vq9dwCRMFpWr2mz5E9eUQKcHRI=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=0PGFYHizQAq5V6X0vLLGE01lyi7jTy1Wvz3rTXsqrxzeIra9IN9fnqOLB5K+075Lv
	 seipIl+I71y//3e2EgZLph4LFr2ZXep3FRbO/2Fn226U6BBNSzDZRwYOnItjE61RL/
	 xPicUeE4kle0RYj1ufchzTiiVK5d0MCjFY49ukJtVoJL/t6BRGAvFWv1GNoL2lh9YA
	 eJ/4DDaPnrGOpNzWwOZlM1ZEsbtvR6CRSby/nj/annbzPNy/a+aWuoIoArfBDnwxR9
	 NDN2fbwduRt7vUDjzz7AO/ailRN2sH+NWnWdpzh/rJgsmjE4L82XBra0MG5NoJNHFk
	 sD6r54paSaM3A==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9DD81383EA1
	for <usrp-users@lists.ettus.com>; Wed, 10 Aug 2022 19:04:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1660172680; bh=S0zBaEwQpRD6udRp9kpnWBcnDl772kyJJcDNmuxeamc=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=TmaTkWtaN6bKZzhylbaMKHJnxq9Iu6e8xnBkNbLA2SOQ1NTGvi/HjhheJchbul38Z
	 BDL2oZK2D3IIgkimBpoCnfDCHmyh62bwgzekQdwGLtXIH3GwxG11+352k/gjinjC5B
	 VAkUsxn50Rehz0IfMZJnskIeX4nfZCHUMARr7iFokcpvHe6m+cnYANMlx+sTwNfBYM
	 7YW8rXOOHxqfal2UVTLbUp3Hrxli64NNqXK5zneEOyoJcpIirUmNo+axt83OqbXhl7
	 WuAGl3dqpz0RwLsgnWuflmquGIAcWyQyYu3n8XURHwnxf9MpdSffRFrOyW9UL9IIpE
	 wi1dtCjw228cA==
Date: Wed, 10 Aug 2022 23:04:40 +0000
To: usrp-users@lists.ettus.com
From: horvlint@gmail.com
Message-ID: <OgU8w28tGFOzSePdxlMR9kEQ7Jfn8bNiKeZJycRKA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 8e3d9401-2ba1-c0d8-6a74-e00b65904e3b@gmail.com
MIME-Version: 1.0
Message-ID-Hash: 4L6SOICHYEWYZ6QAVBLPMEUOIZDBHFXP
X-Message-ID-Hash: 4L6SOICHYEWYZ6QAVBLPMEUOIZDBHFXP
X-MailFrom: horvlint@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x310 with WBX-120 LO: unlocked
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4L6SOICHYEWYZ6QAVBLPMEUOIZDBHFXP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9185349414719279689=="

This is a multi-part message in MIME format.

--===============9185349414719279689==
Content-Type: multipart/alternative;
 boundary="b1_OgU8w28tGFOzSePdxlMR9kEQ7Jfn8bNiKeZJycRKA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_OgU8w28tGFOzSePdxlMR9kEQ7Jfn8bNiKeZJycRKA
Content-Type: text/plain; charset=us-ascii

Thanks for the suggestion, both LO locks on the same WBX in the txrx_loopback_to_file example with UHD version 3.15-LTS. 

It seems that this solves the problem.

--b1_OgU8w28tGFOzSePdxlMR9kEQ7Jfn8bNiKeZJycRKA
Content-Type: text/html; charset=us-ascii

<p>Thanks for the suggestion, both LO locks on the same WBX in the txrx_loopback_to_file example with UHD version 3.15-LTS. </p><p>It seems that this solves the problem.</p>


--b1_OgU8w28tGFOzSePdxlMR9kEQ7Jfn8bNiKeZJycRKA--

--===============9185349414719279689==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9185349414719279689==--
