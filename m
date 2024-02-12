Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E4539851C66
	for <lists+usrp-users@lfdr.de>; Mon, 12 Feb 2024 19:04:17 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 344733850BD
	for <lists+usrp-users@lfdr.de>; Mon, 12 Feb 2024 13:04:17 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707761057; bh=vNf58a3oMZoqvPaZNx1dYZC4prUhVwfm2W8tFKF5bVc=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=XYiEuWUJwcuM9lQoqSyghsfXY+gCD2WIKH3nVrTisH0goBebnsf1Wf3npysq9YL6K
	 FSrmN9NLLysaQiRi4y7dAFuMYi8n+zgEdJFJLDdy+lZeXIsa/U/Do6GoK0l37d92Gj
	 lbdFpJI0RE4FSVzPaZNWTwri9mfce0Omn4kYVb7jn3MANgR9OXwDIsOJ5Lu7/mmGTU
	 vui75WXSNQJ6lq9LlfyT6PJ/AajmE8LqkoUbwi/cGLV16SUym44CNFniaR75No5fh+
	 3lSa3GNrF9eJOd3nzLIj7hSQlwryzxm/tPDG2ulffLqKpwVeBmmgP4t6zVUDHBVwu7
	 zamHl4Q+RaK5Q==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 366B0384922
	for <usrp-users@lists.ettus.com>; Mon, 12 Feb 2024 13:04:12 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707761052; bh=5q8ICVq8bf6pbCr92BKyhGi7QIhM0oX6G2YbSILmRrI=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Y5QHdDUjGgRj31THpyow3Kx+M5Hy9nCcJhaaBX4hgFVLGmswUz4/4yhKZMbV8uI4Y
	 cWANmuSmewDOkr9eH1XnuUhC2/Xo9fDL/keP6uGzW4lWAo67dvDjMQ3/U9EBT3GEYN
	 llkIWwcwk8iHZjzhOgi2oYM0psUcqUFtFJ7DxhcUG2KjbcFPTxi9WsN3Uf9rm+0kIq
	 yD9vVrcOgCm8G7vozrclJjTc1kl6W6w94noXwGStXvtIsq/5vFfB2kyjqpkZ9OLJHG
	 pzvjYZzOmAdKVWQfuBuN05k5N+G6yq1WezABPLVgiJTlc5hL0XGQsdJAgmoSmR4T8/
	 BkOPPfmKjlMwA==
Date: Mon, 12 Feb 2024 18:04:12 +0000
To: usrp-users@lists.ettus.com
From: gaytanc4@gmail.com
Message-ID: <ydTJtYzwSbHTPd2X7O9RMzkCGwqAlfBUIAKOjVf6RQ@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: G1OfgKqD1VmJtYGsL6cI1YyHt0ZIlKtfbobb45yr2o@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: VGOK3SSTNTGZAWPNKJ7F2EJWM5FO463W
X-Message-ID-Hash: VGOK3SSTNTGZAWPNKJ7F2EJWM5FO463W
X-MailFrom: gaytanc4@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Adding existing RFNOC blocks in GNU Radio GUI
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VGOK3SSTNTGZAWPNKJ7F2EJWM5FO463W/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0820833166562544907=="

This is a multi-part message in MIME format.

--===============0820833166562544907==
Content-Type: multipart/alternative;
 boundary="b1_ydTJtYzwSbHTPd2X7O9RMzkCGwqAlfBUIAKOjVf6RQ"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_ydTJtYzwSbHTPd2X7O9RMzkCGwqAlfBUIAKOjVf6RQ
Content-Type: text/plain; charset=us-ascii

I also cannot find existing installed blocks like the radio block, DDC and DUC blocks in my current GUI. Any help would be greatly appreciated!!

--b1_ydTJtYzwSbHTPd2X7O9RMzkCGwqAlfBUIAKOjVf6RQ
Content-Type: text/html; charset=us-ascii

<p>I also cannot find existing installed blocks like the radio block, DDC and DUC blocks in my current GUI. Any help would be greatly appreciated!!</p>


--b1_ydTJtYzwSbHTPd2X7O9RMzkCGwqAlfBUIAKOjVf6RQ--

--===============0820833166562544907==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0820833166562544907==--
