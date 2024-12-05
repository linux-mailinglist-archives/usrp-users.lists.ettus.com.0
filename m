Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E92039E5A71
	for <lists+usrp-users@lfdr.de>; Thu,  5 Dec 2024 16:58:54 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CD6CC385AE4
	for <lists+usrp-users@lfdr.de>; Thu,  5 Dec 2024 10:58:53 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733414333; bh=gZz8Pg8eJP5yl2K90pgGjT11YxfN9MHOeqtcHqdcrA4=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=jn1cz90/HF9hTMO4b9zVwPhrSQ2SkbBA3QongUC708S8NZujqnVqiyapYNLO3kSa1
	 fbX5AKaREtPpYGElN2n9tMpZlEV3fkOFBDD6/GXOI4ki+ZW9jZ3CDHZ/BGkA2vjy49
	 8Fdlxk2Dmj+xwC4Qy5cwMIRBV37L9lCzjG+dp5mHP6fav8eNjxCZ5zbx9Y3LUtuI4h
	 TRo4e1QoW/LCyR9OO7oWZDpnlayLuHlY3XUjelfciGowjgLMggZQkEFYhxNrA+Ihfx
	 IyiSwTI4ubHFO+PbnfB8vgJO0Fz64tP8alGRqUxf625L683l/5ziGGvhDR90sQV+1A
	 bTqIKWuOM+s7Q==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C03DF3859BF
	for <usrp-users@lists.ettus.com>; Thu,  5 Dec 2024 10:58:15 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733414295; bh=lfLPF8L6qsgZzx7gkwoDBnqJQteUuJ3LWZmN4HuRHjo=;
	h=Date:To:From:Subject:From;
	b=dKSSvkR4iF2t2HD/90geetVFNlTGlyKN+HMrk/2WZePBdlxkDbLr0PSCQxbBBd/EM
	 FiHZx5B/Csrv5F6r1b0+PPUppxvlCMWkVoXVlMFMxXgyGKCqc4h/LmB+I9NaFAJk+R
	 NmTznnyyfk+cm7XDJhz4HkoYOSKzlFlJ9kYAbQttkpSNYzAuF6yKUbbj4QSQTjbHpP
	 POG86reFZzbb577S9etvf/bg/t0Z16/QtH6EXmHfy6Fvl6atiyReVqNzVZ/tCdjR0U
	 wzG7w8hfKSPlZekI3u398wiwnwP1+6+b7mX0VXo42CQRVxjxUIA8ypn61i5JEe2Oxp
	 rwnekQ1XUvveQ==
Date: Thu, 5 Dec 2024 15:58:15 +0000
To: usrp-users@lists.ettus.com
From: steve.wakelam@roke.co.uk
Message-ID: <tRaBRbu7Ez2vaDqaSsAfHkpg5SbzVsakTkObb7boA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: WHJNX6NNKVNMRX2FEEINY37YQ7RRN4SJ
X-Message-ID-Hash: WHJNX6NNKVNMRX2FEEINY37YQ7RRN4SJ
X-MailFrom: steve.wakelam@roke.co.uk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Ettus X310 - Streaming Data TO the SDR
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WHJNX6NNKVNMRX2FEEINY37YQ7RRN4SJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8513215234910906632=="

This is a multi-part message in MIME format.

--===============8513215234910906632==
Content-Type: multipart/alternative;
 boundary="b1_tRaBRbu7Ez2vaDqaSsAfHkpg5SbzVsakTkObb7boA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_tRaBRbu7Ez2vaDqaSsAfHkpg5SbzVsakTkObb7boA
Content-Type: text/plain; charset=us-ascii

Hi

We can stream data from the Ettus by following the user guides. However there does not appear documentation on streaming data TO the Ettus. 

Firstly is this possible and should we follow the guide for streaming from but change it to a tx_streamer?

Thanks

--b1_tRaBRbu7Ez2vaDqaSsAfHkpg5SbzVsakTkObb7boA
Content-Type: text/html; charset=us-ascii

<p>Hi</p><p><br></p><p>We can stream data from the Ettus by following the user guides. However there does not appear documentation on streaming data TO the Ettus. </p><p>Firstly is this possible and should we follow the guide for streaming from but change it to a tx_streamer?</p><p><br></p><p>Thanks</p>


--b1_tRaBRbu7Ez2vaDqaSsAfHkpg5SbzVsakTkObb7boA--

--===============8513215234910906632==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8513215234910906632==--
