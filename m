Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 92A396D6671
	for <lists+usrp-users@lfdr.de>; Tue,  4 Apr 2023 16:58:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 226A038481E
	for <lists+usrp-users@lfdr.de>; Tue,  4 Apr 2023 10:58:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680620286; bh=zj/XEOOOrHzat4Qp/Dd3BT+j9HxFfGGIAyRs3nvly7k=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=EJiq8S7s34Mv+TXRRUKOSdZuyBzTcxyKdQ64CjVXRZS/Ck0OyZFPgIMnayxdLaBmb
	 OQesHRWp1oINbHXda5wbafrEBonAmbwRnzXphiP2ttELq7tLarJGTN3yrPs6bd+TI0
	 2a6VZPVP4MyPpnKZuuJSTlj7kBYT+CkV3HD4X5uPzCDcCr+QcdREeiKd2Ovm7EdH5H
	 xiT7gwEadTrvZUX/zxtcFGw0MF+QvJD3pyK6v9Sm4t4D5qoQYJ+XX3hD8O9vgMmfJ2
	 8UtguwhCgO0S4FucUTWfzFkTrityA+bAEnWagpiIEePxIhc6H2mSDz9zxOFxRLxQmr
	 /iVo14aCkhXMg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 415B238481E
	for <usrp-users@lists.ettus.com>; Tue,  4 Apr 2023 10:58:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680620280; bh=x3a2JdBnGHuC2Z1Zgf4Ss1uUGe3lrhEt8aac/VvVh2k=;
	h=Date:To:From:Subject:From;
	b=tO6hwUx+lcFl93vM1Qg8B4pSgvKt1GbKpXsYfKclSmxt1xNpjAKsUrOl3VxJBOpQI
	 7m5zoSypcqRB1hNMN3mEdRycEnnAeJFVukApu6oJyeMwg3ZCi/tINgN86NTuIKfTjt
	 SaQdmIEUnLDUzSaRgmuMj0FhW+8gw89fk7/I01LeXP24uWFLM8yIAL+XbnP3vKw7PO
	 Y4q0o8yiHb6bJ6UTDL/Hog6B9mRckm2Ehw0bk7iIv3OsOrq4zxItI6s69WjjFHJcOz
	 55jfIDi8IXOcpxrgTHJkT4Vxx2EPM+gG4n+G1cpz+KXQlVity+UInlOouwtcW9Tott
	 jPY/pcGM1Z4zQ==
Date: Tue, 4 Apr 2023 14:58:00 +0000
To: usrp-users@lists.ettus.com
From: yanzhanggc@gmail.com
Message-ID: <Kmi3kEahfjMhcm2ysTSYK0BFwrGzDFcHc03SWoMYQ@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: WIFVJRRNNQYUFVG7KEGDWOKTDHZLQU3F
X-Message-ID-Hash: WIFVJRRNNQYUFVG7KEGDWOKTDHZLQU3F
X-MailFrom: yanzhanggc@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] what is the purpose of issue_stream_cmd() for the rx_streamer?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WIFVJRRNNQYUFVG7KEGDWOKTDHZLQU3F/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0850935741781748384=="

This is a multi-part message in MIME format.

--===============0850935741781748384==
Content-Type: multipart/alternative;
 boundary="b1_Kmi3kEahfjMhcm2ysTSYK0BFwrGzDFcHc03SWoMYQ"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Kmi3kEahfjMhcm2ysTSYK0BFwrGzDFcHc03SWoMYQ
Content-Type: text/plain; charset=us-ascii

Hi all,

Does anyone know the purpose of issue_stream_cmd() for the rx_streamer? When I use the rx_streamer to stream data to the host, I just call the recv() method. 

The question is what is the purpose of issue_stream_cmd() for rx_streamer in uhd?

Thanks,

Yan

--b1_Kmi3kEahfjMhcm2ysTSYK0BFwrGzDFcHc03SWoMYQ
Content-Type: text/html; charset=us-ascii

<p>Hi all,</p><p>Does anyone know the purpose of issue_stream_cmd() for the rx_streamer? When I use the rx_streamer to stream data to the host, I just call the recv() method. </p><p><br></p><p>The question is what is the purpose of issue_stream_cmd() for rx_streamer in uhd?</p><p><br></p><p>Thanks,</p><p>Yan</p>


--b1_Kmi3kEahfjMhcm2ysTSYK0BFwrGzDFcHc03SWoMYQ--

--===============0850935741781748384==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0850935741781748384==--
