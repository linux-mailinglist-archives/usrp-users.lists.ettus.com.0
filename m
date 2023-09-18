Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E1E7A3FE0
	for <lists+usrp-users@lfdr.de>; Mon, 18 Sep 2023 06:12:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C0243384C6C
	for <lists+usrp-users@lfdr.de>; Mon, 18 Sep 2023 00:12:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695010369; bh=Iq4ul31uYd9LBXizV0MaNe8wpYCm//nEmCngo8RwQNE=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=0WKGDR6hj0Vgcq68Oq5vomt7ikSYZXIJ9XDmd4K8dh3GcqK1EWwbLO24x3NiJfgHN
	 r9OSS9Btty7jn9oA2JklCU/9ugaJlt0SMXzwa9J02vQj4JOYu5FHdZ8YClPGYP7JT3
	 ViPtaeB/BkRBCoxr+cPnjJYeVcmYnDOWQWmkTQhTuI0eVo2ZJSLVCyqNB0RQVHJhVE
	 E7W4EcNhTaLUnMG7c2fpSF6ac1Tq27ZDwQdN1OhfpMfW2QhqroqdCSsLK8Hb5RLz/0
	 2jdiS2R/f9+4/jV2TTuPN+EU1yeXeTPucl12YaXyWRDrq7CZTyRHK6lIAz2N3VdPPp
	 tw7EvVQ2pJX1Q==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 178A6384585
	for <usrp-users@lists.ettus.com>; Mon, 18 Sep 2023 00:12:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695010354; bh=wc6n4E7XF6R/nIlL25hJ7Thp5CnhdvD3R5K95ilkP3s=;
	h=Date:To:From:Subject:From;
	b=0KnZKxqDvTrCeQbrVNPZN2ZT6rEkwxKDG+/WCpcY3Kj1m+hoBXMfagzCgHt/deTxA
	 tXNDLTv8z0vvU6g5a280q+WguUIwz+HD5cUj61cMsV+cVpHDxZEPHsh8IwwWanP9oX
	 KmVSQC/NgLhrVmIcpjMfp0Fwiaf5zW0T8hPTddQ2sf1VE+lY9yWV+hTzWfzxyEq5JG
	 CDMpkCReEGT2lqK2zuV1X517xnKtqkR+WesHfXPj9BKFf1sRsmPzGMSyFwtb9ppo8P
	 TsWT/aTovROn2eiRZ5C0R25Eka6kcLykch6/WpwT3MpuPty2pD1geKMI63Z958d1GX
	 9cT0b4KH9ZRIA==
Date: Mon, 18 Sep 2023 04:12:34 +0000
To: usrp-users@lists.ettus.com
From: h57jafari@gmail.com
Message-ID: <TCOxjy9YsDBIq4vAibs4jsDSIdi31S1jUGBAmYEls@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: GKDHOL347J47NLIIUHEL7JBZRON3EIOJ
X-Message-ID-Hash: GKDHOL347J47NLIIUHEL7JBZRON3EIOJ
X-MailFrom: h57jafari@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RFNoC Replay sample example in GNU Radio
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GKDHOL347J47NLIIUHEL7JBZRON3EIOJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3618333079843780656=="

This is a multi-part message in MIME format.

--===============3618333079843780656==
Content-Type: multipart/alternative;
 boundary="b1_TCOxjy9YsDBIq4vAibs4jsDSIdi31S1jUGBAmYEls"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_TCOxjy9YsDBIq4vAibs4jsDSIdi31S1jUGBAmYEls
Content-Type: text/plain; charset=us-ascii

Hi,

Can anyone share a sample RFNoC Replay example in GNU Radio to replay/transmit IQ samples from file. Thank you.

--b1_TCOxjy9YsDBIq4vAibs4jsDSIdi31S1jUGBAmYEls
Content-Type: text/html; charset=us-ascii

<p>Hi,</p><p>Can anyone share a sample RFNoC Replay example in GNU Radio to replay/transmit IQ samples from file. Thank you.</p>


--b1_TCOxjy9YsDBIq4vAibs4jsDSIdi31S1jUGBAmYEls--

--===============3618333079843780656==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3618333079843780656==--
