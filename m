Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EB153609CCC
	for <lists+usrp-users@lfdr.de>; Mon, 24 Oct 2022 10:34:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CE604380911
	for <lists+usrp-users@lfdr.de>; Mon, 24 Oct 2022 04:34:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666600479; bh=ni0art/xAFtboofRZPf/zhLMwOZh43uL6Nv4BznHxbs=;
	h=Date:From:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Yd8HeualSGhkBJhiSND9kOvfPWilVUM3sU5BfHz0IZuGpq8/WQhZORI0rG+M+R9Qj
	 Snxi4zI1bxoqNclERvJGC3LekXUZ4v8bcca2RKTNb+R9NCjieN5DyeBcMsy2k2PcM8
	 CFvNus6DNIiJuE2N6l5+afNfb/iYhDMBqtH/zucF21GXM5oOfPb38DmV5D8WfyQB1f
	 rY0QF9L9jn3aFrgEdJ5W88kWw0zm76DwlQF88gbTkski9YIebzIS4b2E4HyWuOGJuI
	 q6GUN6dLUxrNt3CmGjpvJ7opX3o2WdXXq6pAcuhhCQIUzM2c1GuO5AdRRD5NMgcQeu
	 l0M9L8wf5jFlA==
Received: from mail.femto-st.fr (lifc.univ-fcomte.fr [194.57.88.66])
	by mm2.emwd.com (Postfix) with ESMTPS id 0F842381526
	for <usrp-users@lists.ettus.com>; Mon, 24 Oct 2022 04:33:01 -0400 (EDT)
Received: from x230_1.trabucayre.com ([194.167.45.227])
	(authenticated bits=0)
	by mail.femto-st.fr (8.15.2/8.15.2/Debian-8+deb9u1) with ESMTPSA id 29O8WxcR018490
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Mon, 24 Oct 2022 10:33:00 +0200
Date: Mon, 24 Oct 2022 10:33:40 +0200
From: Gwenhael Goavec-Merou <gwenj@trabucayre.com>
To: usrp-users@lists.ettus.com
Message-ID: <20221024103340.717b7ca0@x230_1.trabucayre.com>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 194.57.88.66
Message-ID-Hash: TSLZONVIQKF2O2H7KCDSU4GXTZMVWN3N
X-Message-ID-Hash: TSLZONVIQKF2O2H7KCDSU4GXTZMVWN3N
X-MailFrom: gwenj@trabucayre.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] gr-ettus status
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TSLZONVIQKF2O2H7KCDSU4GXTZMVWN3N/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi everyone,

I am working on an OOT block with latest UHD's release (4.3.0.0) and GNURadio
(3.10.4.0).

The gr-ettus master branch [1] seems compatible with UHD's release I use but
not with GNURadio (build/install fails)

I have found a fork [2] who compile with my setup. But support seems limited to
build and to provided OOTs. rfnoc_modtools remains broken.

I have, locally, fixed some issues but before spending time to this support I
prefer asking about gr-ettus status: a complete portage to 3.10 is already done
somewhere or everything must be done?

Thanks

Gwenhael


[1] https://github.com/EttusResearch/gr-ettus
[2] https://github.com/bkerler/gr-ettus
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
