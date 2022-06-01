Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D9BD553A9B2
	for <lists+usrp-users@lfdr.de>; Wed,  1 Jun 2022 17:11:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 828A63846DE
	for <lists+usrp-users@lfdr.de>; Wed,  1 Jun 2022 11:11:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654096317; bh=L5LPeCAzTHMBM0DA84CPBfK0nwnFoJdykI7d7uK1Y+Y=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=IbTHBSgXNdvBVK+jV0fAlCpgkxYyNswtl0K86p4PbuDDwC0fzEuAJCbOot+IqRjwU
	 g4RKlbs0BTVbgMxJ24LiaupFRCgH91SpS4xqdrKhrF3WOVRmrYRsfB66R6Cyst0KDh
	 EXBNs16PBvt7vGLo3douePOuX+oMid0BW4lWZFjoI380ZMFK6Sz+8xGJspwpMZw0cG
	 j+/KvuZIlLQWD8Ybr5qOiWVhsQT42RpRM8O4uFE3uUKC4cE1KLTDf6AxY6qUaeqXhn
	 pLjVEFD0oopch0urejHNKJvdIO6YDk0zma4epz2p9C6N0JdptwtHJMPRuuIithWLtV
	 R0Y6Xb9jewLaA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 35AF338463B
	for <usrp-users@lists.ettus.com>; Wed,  1 Jun 2022 11:10:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654096249; bh=syBmp57LR9MwuYCthlRCn7Jwy5S4ToJeuLBIGLjVrnE=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=TQbinzpWofc5hmfXBmylNGlJpBOd7BCHR2MlrBKpLk2vGtI8jnLTHUzQepP7ZlOna
	 e4Bubp9iFIMB61EG5wvAWxODluSsDpOlncLpX+YyWHDD7tPlKZhOXAqzN/kDP3eQMC
	 Fy5Eb2II97SGZox4/TRk4NYC/t5bFR/GAcM/VKXnquMxIGPFZvrMriGKHoLwuz2gic
	 QDHHmhATcgULlQOs6Fsbg0mMcSYguGmgLN0mjvrjXiOoA+QiCZldHwFnCjwgwxsVOr
	 l3McEh4zohJHuFjogLrQjz2ydJd7lwPDYPALIHIoc5O7GFpefM7VKtDvNJBC2awJiN
	 Z/rJOWwMF8pDg==
Date: Wed, 1 Jun 2022 15:10:49 +0000
To: usrp-users@lists.ettus.com
From: ri28856@mit.edu
Message-ID: <tz5hARja2b8ghH2o2HjDg0JhxSqG06fUeIQL8uNt2A@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFche=ic6z+Z3sMof2DUqBfJa19aEoUK+Xpq5B8uY5=5_kfPhw@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: RMK6Z5HI777UQ363LE5XOM6TDJPYTUZK
X-Message-ID-Hash: RMK6Z5HI777UQ363LE5XOM6TDJPYTUZK
X-MailFrom: ri28856@mit.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DDC and DUC timed command queue depth
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RMK6Z5HI777UQ363LE5XOM6TDJPYTUZK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3317756781214256689=="

This is a multi-part message in MIME format.

--===============3317756781214256689==
Content-Type: multipart/alternative;
 boundary="b1_tz5hARja2b8ghH2o2HjDg0JhxSqG06fUeIQL8uNt2A"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_tz5hARja2b8ghH2o2HjDg0JhxSqG06fUeIQL8uNt2A
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thank you all for the suggestions! It will take me a couple of days to ge=
t an FPGA build environment configured, I=E2=80=99ll provide an update ea=
rly next week.

--b1_tz5hARja2b8ghH2o2HjDg0JhxSqG06fUeIQL8uNt2A
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Thank you all for the suggestions! It will take me a couple of days to=
 get an FPGA build environment configured, I=E2=80=99ll provide an update=
 early next week.</p>


--b1_tz5hARja2b8ghH2o2HjDg0JhxSqG06fUeIQL8uNt2A--

--===============3317756781214256689==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3317756781214256689==--
