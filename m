Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C74606D7285
	for <lists+usrp-users@lfdr.de>; Wed,  5 Apr 2023 04:33:06 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B8BA83849CC
	for <lists+usrp-users@lfdr.de>; Tue,  4 Apr 2023 22:33:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680661985; bh=8jXnEDtA8ZUjpq6EiZmOzm4vzYIpgc0+HMJAq2mXJ2U=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=e8yrxw4ozElxFqrd4esp6t/h8u53dyTN4jTAkH2jtUMo7iG6oX6+0iw0GB9quLP89
	 YqWQj56RcNYJJjYpmAoBewXN9I5BKZobBMOYgwYqP2iMlausSB1OOQLpCpInhkcqjk
	 ry0SaIA3EE09FD1NdDS2A8wscec0BozMfQ8pMyPKaAseZy/l8y3fFRa2j6ui4TmrfZ
	 cUfxyt+uyGLyJvOso72uj7Z1n8O3P6ntA2IJYBuWuLXpIryATJwICO0gYSeZhrfCpY
	 3JbzyIXnBnT96CNNHNYdouxVafYjy9NmoE/8hsm4dfA1uuxUKzMj5Dp4RsA62BxuxC
	 nbY8Drncn+t+A==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F21243849A8
	for <usrp-users@lists.ettus.com>; Tue,  4 Apr 2023 22:32:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680661945; bh=6zhlNFirwZpKVxZUKnpY5p8Kp7Tn1g8sWOUXLqHtuFw=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=VSA5mBhei+cRGYEex3fwtoajg/frJBixi7yIjYLbz1N2BppSfyjaBZPMtRP1tJcdO
	 SuxjgwYzxtrcd7Oa1KKqGJ0wtjDNKYRWQLkykD8yYkmF7ukL171N+q+ek/hvMb4I0Z
	 QtmCiaLFabUFEyzvwBkpAZp32/hnXaoNE/rIcBSTRzqe3WDQxkgRI02hmDPxpKoNT8
	 N5ibapQ2wQf/cf3lnlDZZC2JjN9olr7UizBhjccGiYJm18Tr06wkp3kWr736Bn8JV/
	 fElhE4NpK5QHJs+BROi+hIMJEzrcNb7xIKYgWPHjjwo9rqiumLJU2op/o9eNicdCrS
	 VwCUYjnJW+K/A==
Date: Wed, 5 Apr 2023 02:32:24 +0000
To: usrp-users@lists.ettus.com
From: h57jafari@gmail.com
Message-ID: <kvMDiAr1fpHGuIBgFHPCxKl8KPd1A5vxKDzw4IwjQ4g@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFche=hkwv4LTOVBpHhSr=7+y=a++7gXwUkxgdhmtaa+CCYGXw@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: TPG3GHX4YYX3K55IWNA5YCYV2T5B2BCA
X-Message-ID-Hash: TPG3GHX4YYX3K55IWNA5YCYV2T5B2BCA
X-MailFrom: h57jafari@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: PCIe NIC card connect to USRP-X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TPG3GHX4YYX3K55IWNA5YCYV2T5B2BCA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0712267268806359169=="

This is a multi-part message in MIME format.

--===============0712267268806359169==
Content-Type: multipart/alternative;
 boundary="b1_kvMDiAr1fpHGuIBgFHPCxKl8KPd1A5vxKDzw4IwjQ4g"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_kvMDiAr1fpHGuIBgFHPCxKl8KPd1A5vxKDzw4IwjQ4g
Content-Type: text/plain; charset=us-ascii

Thank you so much Wade!

--b1_kvMDiAr1fpHGuIBgFHPCxKl8KPd1A5vxKDzw4IwjQ4g
Content-Type: text/html; charset=us-ascii

<p>Thank you so much Wade!</p>


--b1_kvMDiAr1fpHGuIBgFHPCxKl8KPd1A5vxKDzw4IwjQ4g--

--===============0712267268806359169==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0712267268806359169==--
