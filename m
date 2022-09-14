Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F285B82AC
	for <lists+usrp-users@lfdr.de>; Wed, 14 Sep 2022 10:13:53 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 146E0383ED6
	for <lists+usrp-users@lfdr.de>; Wed, 14 Sep 2022 04:13:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663143232; bh=HJZT7ZEIRH0SZ2ynfhb7Vy5DBNmNtvISxrAgVN+yS/Y=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=LyDdXqm+KPy/fbYlI7HH+sBGcHi8//uSUe5e47TE7EtkGEHqJr9QpLY28Rtepa6CF
	 oaf+/1hoWyXtfs8jH9otn6raV9ctBVT4Dbhv0HqjyeAHGbLNaLu8XB0xFG6KDqOzZN
	 T2SRlfutENq7ySrOGoWx4pcfOSLeTSXEjwBCsEAG3d0vDt4BKzBIIUqjv8/jj3TsPB
	 vMez13dIIyra0FzZpWDvG+gx+1tyiwT7IEUqhp8fxWrJcyoq4J1uSswD7DH7hU52Zq
	 A5Tza4L1XilhlMBipy3LOJ/XMaInqs0+Tkcs7cZiPyKTpOPeyQHWS/pBCeS3H3WZyV
	 oNpgu6J5Hu32Q==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9916E383B48
	for <usrp-users@lists.ettus.com>; Wed, 14 Sep 2022 04:12:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663143120; bh=1rHJ7BcMykh9HxIyne3UqlF7fAhFrDWx8AMbSelkUK4=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=cywrSK5PDqvhnzwRfhSsClviUKKyRr4kZAy7tErWxncOOvxbqkSRS9KRbQMeB+SCE
	 Br0YmuHcSxJSBkEv0pg3bGdIcey2rGe+IWdgq3akQj58znOc7M7yd+Wsimduvxjowy
	 HGenwQK50fyuQhsEPo03njLMJiDGkLzcYp7n1WoqavkpA3CVl37qClIp3lcIHnrI5H
	 2jXTc3uV7x0lBhNp9/lVhRgJxWaTEaZFC69perte24O3k7qowJBsVfiQ5DkJ1Y4tfQ
	 DcDEqvrbNBoCwb1tSi633Ak2aaSGgW+8LitRifIX7dTk4Mr5GPZIIO6kRMhovliF46
	 ATYOr6HVD+SYQ==
Date: Wed, 14 Sep 2022 08:12:00 +0000
To: usrp-users@lists.ettus.com
From: eduard.sivolenko@ni.com
Message-ID: <KrQPMifKSF0coFKMQej2bH2vaF7jbszkyw2xMsXA0ZA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAMMoi3uzr_iPPyBQsBUKn6G8doFEPNuM0Y8WW_ug=DidAkLi4A@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: DYZ7IHFVCZ2KXT2KCZFJREZCZ3WBRHRC
X-Message-ID-Hash: DYZ7IHFVCZ2KXT2KCZFJREZCZ3WBRHRC
X-MailFrom: eduard.sivolenko@ni.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N310 Multi-channel Transmit
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DYZ7IHFVCZ2KXT2KCZFJREZCZ3WBRHRC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4101804960143211731=="

This is a multi-part message in MIME format.

--===============4101804960143211731==
Content-Type: multipart/alternative;
 boundary="b1_KrQPMifKSF0coFKMQej2bH2vaF7jbszkyw2xMsXA0ZA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_KrQPMifKSF0coFKMQej2bH2vaF7jbszkyw2xMsXA0ZA
Content-Type: text/plain; charset=us-ascii

Hello Richard,

In the title, you mentioned N310. However, the description is about E310.

Could you please clarify the USRP family, i.e. N or E?

Thanks,

Eduard

--b1_KrQPMifKSF0coFKMQej2bH2vaF7jbszkyw2xMsXA0ZA
Content-Type: text/html; charset=us-ascii

<p>Hello Richard,</p><p>In the title, you mentioned N310. However, the description is about E310.</p><p>Could you please clarify the USRP family, i.e. N or E?</p><p><br></p><p>Thanks,</p><p>Eduard</p>


--b1_KrQPMifKSF0coFKMQej2bH2vaF7jbszkyw2xMsXA0ZA--

--===============4101804960143211731==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4101804960143211731==--
