Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C2596F6E5B
	for <lists+usrp-users@lfdr.de>; Thu,  4 May 2023 16:55:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 80D7D38481B
	for <lists+usrp-users@lfdr.de>; Thu,  4 May 2023 10:55:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683212107; bh=tUoKiZkmrf1w1Ei0CuXL7KzjghUxa9FKQ5rGRVWZxBo=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Ttvqo7/AAmAD3vxGRM4Hdfe+XDg2EY+tdFBtkBf8pOSdu1875Eo8eKGnW0g96u1e2
	 03UVz44WFs7/1i+lUVlQQWUbcxOJ0Lq1nBelRO4LtDiv0tattpqrce1v5sB8RK/zwL
	 jbjKAozac1xdi3e+ea/G3+eoYbBAzSU8yyPu5dk22sVkjoxOv29/3xxF70FTNBnp1i
	 BVLdazhfifpmdrszxMjWAfsBFWYeK4TJS8OkC9pidaRJWcKCupBOJ07q7ovjBRFhXB
	 EQ1+on0Xzw7RD44jQse0PXgaQMGGNvdIcXQS+Aoap3146zduIAVW4xWIPWsTws1DLw
	 XKqtkyJjfmdhQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 32D0738485C
	for <usrp-users@lists.ettus.com>; Thu,  4 May 2023 10:54:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683212058; bh=obc4+F/Z+DWb4aA9xKHsw3hLewz9Yjjnx5T3XFmJqcs=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Eyb9AnD8Lq8/xemTHui9HC+JJKfTqBT/HNOtpdHYgWLXxgeCyCpT463+1vZrOkOX0
	 XH+CQpYao3FuAKnq+QhMfMghh+gIcfsON8VLboMY8YD6mU/zMNA9BCJAI/fV7nmtsw
	 bDZdkK7l8GdSFMf2Nec2CVvpRsj03sjjD4m1MmXQ3bDoKYFstB+WfzNAJpsOqG05HA
	 CpuAg8Z078XSVNWU7/VJn4AeiqpB/PIkwEGniAXlty7ZzhTPX7IAw9J1+IrXO0/g85
	 BK9RuhtD+RrmOo2kbybiTULyrwSKqyky6Id9n790Yhm9DDvOMJioPw4etbPSGZ2b00
	 rz3+H/aeIGhmg==
Date: Thu, 4 May 2023 14:54:18 +0000
To: usrp-users@lists.ettus.com
From: david.fernandes@viveris.fr
Message-ID: <b6UvUNXfjdwWK8OIBTsMRiSWh8Wx2yYyFeiFpzdd9LI@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 78608f5e-29b8-2b56-a358-ee87ba7b1853@gmail.com
MIME-Version: 1.0
Message-ID-Hash: ABILFBYYH3YMKUI6CIUPBEALBWHTQMGW
X-Message-ID-Hash: ABILFBYYH3YMKUI6CIUPBEALBWHTQMGW
X-MailFrom: david.fernandes@viveris.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Full duplex issues with X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ABILFBYYH3YMKUI6CIUPBEALBWHTQMGW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0494197030153559110=="

This is a multi-part message in MIME format.

--===============0494197030153559110==
Content-Type: multipart/alternative;
 boundary="b1_b6UvUNXfjdwWK8OIBTsMRiSWh8Wx2yYyFeiFpzdd9LI"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_b6UvUNXfjdwWK8OIBTsMRiSWh8Wx2yYyFeiFpzdd9LI
Content-Type: text/plain; charset=us-ascii

Hi Marcus,

Indeed, I tested so many things that I forgot to put the right frequencies. Now it works smoothly. Thank you very much for your support.

--b1_b6UvUNXfjdwWK8OIBTsMRiSWh8Wx2yYyFeiFpzdd9LI
Content-Type: text/html; charset=us-ascii

<p>Hi Marcus,</p><p>Indeed, I tested so many things that I forgot to put the right frequencies. Now it works smoothly. Thank you very much for your support.</p>


--b1_b6UvUNXfjdwWK8OIBTsMRiSWh8Wx2yYyFeiFpzdd9LI--

--===============0494197030153559110==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0494197030153559110==--
