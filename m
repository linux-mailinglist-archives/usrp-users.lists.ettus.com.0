Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BC0EE6D9831
	for <lists+usrp-users@lfdr.de>; Thu,  6 Apr 2023 15:29:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 34F5A3848F3
	for <lists+usrp-users@lfdr.de>; Thu,  6 Apr 2023 09:29:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680787753; bh=AVqM0uF/AoUb74bBhMK4aMuefxrrc/5e6OhH4f0AqZc=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Zd/sd4VoBTe7IpjyGj1nexJkGLL+Vus+LZ97TTVNOUjCMZxoAnetX1oASHyxrkzzz
	 d0cNHmIu6ahcmUPMq+EBrdDQTnapQCRoEoYApVQvt15SLWoV6XoyYKqJEOXE3n1cXQ
	 spa5X6NvZQ7qYH7HIhTIEIlwY19BH3IfzmrhdvglgpP4jf5/UTRqwP+2O3GSmNkeQM
	 k32RiHFD6R7Wq3JiBdMsMWlgNGNsEP3XUMUXMrf3THp5teW2Vr6xc4mUzkskwXqOES
	 5r4Xy0FC0KnnmcZ42FtS+AYENdsdkp5ugxgUO+09GCi8oK1XCWbNh1520FbFCTw+oc
	 D3Zr5NeF5Zx0w==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 34D4D3848F3
	for <usrp-users@lists.ettus.com>; Thu,  6 Apr 2023 09:29:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680787749; bh=Qg73ybpbBj1zjQrSG87/NFlAhuJUPQfvCsbgFzDu/xA=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=LtI/8JowEVbfSB1HvIwo6Vl74vVK7FL1bM86XkQomsnxci2fvIVk3gDTn295NzWDr
	 uvIIUkFHlU0/MwVurekCLfGr33XDvLc+p2+5mtvRsR16nllHfHNlwEOYq69gOP8QVm
	 6bhvB+bTuvatKVxw10YTMyeKPcEg6EcDrqmxPBTM8EJxsS16GzNeBslVMyHy0iSXCG
	 +WWZyqkhfwtw9DYM4SlcKjuYCHrI/XeB5g90A0D41cTXEtXchHj+7WKV+Zho73PPMk
	 biXehYu7O79BKfcllEzcLGBo8or3DA27414FXqj7zU49YZnZd6f2PQcuFm5lr13o3W
	 d8nY1yJRQNHkA==
Date: Thu, 6 Apr 2023 13:29:09 +0000
To: usrp-users@lists.ettus.com
From: shikunhong12138@outlook.com
Message-ID: <loc8SPsfWf4FAaEZwMDZNmN1NlMyiB31lpb3UzzDs@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFche=i38wHH6a046yAZQz=iG+fMNqiCq4HC8ndOU5h6yMAauQ@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: CLZ3N45GFSFGTAXE2HXOQDJXPADZ7VPH
X-Message-ID-Hash: CLZ3N45GFSFGTAXE2HXOQDJXPADZ7VPH
X-MailFrom: shikunhong12138@outlook.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 x4_200 connectivity question
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CLZ3N45GFSFGTAXE2HXOQDJXPADZ7VPH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5731029049557742734=="

This is a multi-part message in MIME format.

--===============5731029049557742734==
Content-Type: multipart/alternative;
 boundary="b1_loc8SPsfWf4FAaEZwMDZNmN1NlMyiB31lpb3UzzDs"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_loc8SPsfWf4FAaEZwMDZNmN1NlMyiB31lpb3UzzDs
Content-Type: text/plain; charset=us-ascii

For question 2, can I understand it like this: if I use mellanox mcx516ccat board, mirror select x4 200 for firmware, parameters addr, second_addr, third_addr and

The fourth_addr is set to 192.168.10.2, so that when uhd is running, the data stream will be automatically allocated, up to 40 GbE?

--b1_loc8SPsfWf4FAaEZwMDZNmN1NlMyiB31lpb3UzzDs
Content-Type: text/html; charset=us-ascii

<p>For question 2, can I understand it like this: if I use mellanox mcx516ccat board, mirror select x4 200 for firmware, parameters addr, second_addr, third_addr and</p><p>The fourth_addr is set to 192.168.10.2, so that when uhd is running, the data stream will be automatically allocated, up to 40 GbE?</p>


--b1_loc8SPsfWf4FAaEZwMDZNmN1NlMyiB31lpb3UzzDs--

--===============5731029049557742734==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5731029049557742734==--
