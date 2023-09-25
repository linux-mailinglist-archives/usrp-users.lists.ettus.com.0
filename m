Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B65557ADD60
	for <lists+usrp-users@lfdr.de>; Mon, 25 Sep 2023 18:47:11 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 12E7E384B56
	for <lists+usrp-users@lfdr.de>; Mon, 25 Sep 2023 12:47:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695660431; bh=J0YjlA+EVFKsHG6VUFB3/AMWq2kROpbVP4Pw2hqwlPA=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=EcIDidZ3+vQ96LiNQCzVqrXnopwDL2zAttYoz9RM2oPDryJY2uWuZl9L2gQlv52W/
	 IgmgQDYT/Yc16f3OnXs2SafE6v+GOvYvCFruSN52l6jdG/ogxIhlGKw4UYQTyy4L+4
	 ExhNMRVs5FSkMMQgX2xpeUebj1R3BM8wTs6lX2qTmqCzz5lIOOp4AZKhuWRwZeh4fS
	 +SAVC72WMZh8kDGDS8CW2DzYE6v2bqdVpIzgz9uZU1h6i7NyJaUS5lr+uqow+SQIKY
	 eqgBbxjz8O09WEaznOR58Hfxw6evt2p3/b9yeHd29fiTBHbI2+hvM9L3wItFD8E+fH
	 czrUJq6FkmiwQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id ABAA7384B56
	for <usrp-users@lists.ettus.com>; Mon, 25 Sep 2023 12:47:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695660426; bh=K2x59bgtVxmIO7KwnoISl8HBtSzZgzNH1HHkRzJvuGM=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=H9nvXo1B4sDURI2QMmjYXOO+3zzmEKMEpYkS7bwOaqq8rYbVGam8ewY+o2EvwRDzZ
	 b1m+C2plsr5fZU0yF9axgHAyXU9D9/Qtrs7s8uxZDSMJevSs8mDjMa8DzP965ityiE
	 dsNIfkIki3FzC4qgn59D9sPaXvlUnT99MgUYYWLR860cy0HqbNlFquojKD6PXjqAD3
	 zcD1Yc1hC5em3t9AMuzJjLJof3bVXoAMzqPVLrG2OeNouSsLxZ6VrCocgQhLPxn1Vc
	 EQZkV5iAnG/ODt2je1S2ibaBfjnc5HJGW96CRPD0AuvPfAvuvH2q6P5tk6iiAq7Gzm
	 HmdorAaDiBSwQ==
Date: Mon, 25 Sep 2023 16:47:06 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <vUkPLqxnOKQltLJ42cyqLSn8jpI029vdDGCUo3bcCM@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 6d68e868-46da-cd94-1d81-a1bb1a9f5b2e@gmail.com
MIME-Version: 1.0
Message-ID-Hash: 65PTK3EKFKTKMJ5X3SZMYCY6D6IBFB46
X-Message-ID-Hash: 65PTK3EKFKTKMJ5X3SZMYCY6D6IBFB46
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Ettus X410 Power Error State
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/65PTK3EKFKTKMJ5X3SZMYCY6D6IBFB46/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1258641577054623169=="

This is a multi-part message in MIME format.

--===============1258641577054623169==
Content-Type: multipart/alternative;
 boundary="b1_vUkPLqxnOKQltLJ42cyqLSn8jpI029vdDGCUo3bcCM"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_vUkPLqxnOKQltLJ42cyqLSn8jpI029vdDGCUo3bcCM
Content-Type: text/plain; charset=us-ascii

We have contacted them now. Then are much less than 3 years old.

--b1_vUkPLqxnOKQltLJ42cyqLSn8jpI029vdDGCUo3bcCM
Content-Type: text/html; charset=us-ascii

<p>We have contacted them now. Then are much less than 3 years old.</p>


--b1_vUkPLqxnOKQltLJ42cyqLSn8jpI029vdDGCUo3bcCM--

--===============1258641577054623169==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1258641577054623169==--
