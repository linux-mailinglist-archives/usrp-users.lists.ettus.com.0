Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 125439E1E9F
	for <lists+usrp-users@lfdr.de>; Tue,  3 Dec 2024 15:05:30 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AE39138557F
	for <lists+usrp-users@lfdr.de>; Tue,  3 Dec 2024 09:05:28 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733234728; bh=W1UnVK/8RUmeLPpn0sJuze0rSsmko4QOuBjWdBra/Tc=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=Qa0fuy6mmGmP/yJVxhGTSPFlQidxbOgRK5G8i5MkduihkY4/+uaJORkEmfdy3JtGv
	 JxqnB33CaXFGTrJ1jmhtkqRF56yeXjT4zynACXl3kFjJg04sEISyygtvoAxxxZjER0
	 iBw0yQ84CatHXGNzHWIE7Ck8/e0IFE/BrkwOzmJk7drWI7OVu+jkwWSrWgEgrSzaOu
	 BXWQHTfELaUwmpecWlucrzLANf2sLF1i6t1U68mcmHg3An0NxTjZzOucVL81ejELG1
	 Mt7pbSlGYXghz0lqtQ2GdHPxoKQhqEcQ8SS0SnKqdkfqwz2ncsLZ4uGRi9qkF1cgEQ
	 Z+0hp1TLn7ufA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0020C3854E8
	for <usrp-users@lists.ettus.com>; Tue,  3 Dec 2024 09:04:41 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733234681; bh=hL6w74LB1iyMz4BXlyUjBOeoq+BbWBGTCQXUXZI/mqo=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=gCyAuYw9020Hf5Tar9g/PDIM/pe+Ra7GeXtMKVdGdJLkR4WBQ+aW1tS9fOeNxlimh
	 Zn5VS290Cl382cNdSbKhGHzviS1Gi/yxRcjC+7TrJkHIWn0CZXIDX7WIa2/gRluVKt
	 gsjWWUDYN2jcnv0yL4CekVd7kevxyYWg48Dj4KZ8zhEPSLqt01ZmTpRcmLIilqBQ1R
	 2LxQoas56dMAEFRvM/AsbjFexKkRseZl+iQQ2PCc9777Nx62elXV4buWsWKzDu5R04
	 dIiWHlfCMeQ5cl2dQI9iCRoytylWuJ8JVJgF23VF90dSi2THEM5rk4xIBYkllf5hZK
	 mpobGj5unYBPQ==
Date: Tue, 3 Dec 2024 14:04:40 +0000
To: usrp-users@lists.ettus.com
Message-ID: <EvkgoKJFslRqwoEfZWlkpFFprnbsUkyeaIKDKZSnE4@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAO=xj9XHH+uYju64jMe7AT_vc9o_eU2ASdN76xeBPoZm=YEB-w@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: WARBVHSCAWLEZLPYRTROZUULCQCZ5RC4
X-Message-ID-Hash: WARBVHSCAWLEZLPYRTROZUULCQCZ5RC4
X-MailFrom: joerg.hofrichter@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD, DPDK compatibility question
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WARBVHSCAWLEZLPYRTROZUULCQCZ5RC4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "joerg.hofrichter--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: joerg.hofrichter@emerson.com
Content-Type: multipart/mixed; boundary="===============2751151677944591485=="

This is a multi-part message in MIME format.

--===============2751151677944591485==
Content-Type: multipart/alternative;
 boundary="b1_EvkgoKJFslRqwoEfZWlkpFFprnbsUkyeaIKDKZSnE4"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_EvkgoKJFslRqwoEfZWlkpFFprnbsUkyeaIKDKZSnE4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Houshang,

UHD 4.7.0.0 is only compatible up until DPDK 21.11.x. Later DPDK versions=
 *might* work, but for certain network cards you will run into issues as =
reported in https://github.com/EttusResearch/uhd/issues/754 and https://g=
ithub.com/EttusResearch/uhd/issues/795

UHD on latest master was successfully tested with DPDK 23.11.x. We did no=
t check for later DPDK versions yet.

Kind regards,\
J=C3=B6rg

--b1_EvkgoKJFslRqwoEfZWlkpFFprnbsUkyeaIKDKZSnE4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Houshang,</p><p>UHD 4.7.0.0 is only compatible up until DPDK 21.11.=
x. Later DPDK versions <em>might</em> work, but for certain network cards=
 you will run into issues as reported in https://github.com/EttusResearch=
/uhd/issues/754 and https://github.com/EttusResearch/uhd/issues/795</p><p=
>UHD on latest master was successfully tested with DPDK 23.11.x. We did n=
ot check for later DPDK versions yet.</p><p>Kind regards,<br>J=C3=B6rg</p=
>


--b1_EvkgoKJFslRqwoEfZWlkpFFprnbsUkyeaIKDKZSnE4--

--===============2751151677944591485==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2751151677944591485==--
