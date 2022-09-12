Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BD3CF5B5E82
	for <lists+usrp-users@lfdr.de>; Mon, 12 Sep 2022 18:48:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 76DBF380FEF
	for <lists+usrp-users@lfdr.de>; Mon, 12 Sep 2022 12:48:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663001315; bh=hp8pguLDBadu8lt/lJz1Q1SsV1Q9M49E+EEzzq4Bpy0=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=s8JG/5NwDIt9bilJ1pB1rN9y7B8LwaUNdfDliqX4Jg8R4UVwOp+kkP6ED/1hg8hoX
	 jbDIE8oHnlED67a2+DrzC5v4IyZXvSXBF+dxtpX4m775Po7szzYDGBXw8JesKWwTMp
	 7XRAREly481il2Do8dXhUKeTgu5VZl6RcQa9yowiDCHieYBbXYiYTWZcD57gxUVmg2
	 JJoNEcpfAgogorQaZ6s6bCwuU05mA518MnbnGRjXA+WKLtSJkmNLlrNm9vfYuXiy8p
	 vjegjcy59lMzKu2rkbaKZUVbDjJbzBkGauEMl1HBD5PeihAGIqzx4VORsOrkFkKp1G
	 wlmNgK4Ed/7lg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D4C6E380F0F
	for <usrp-users@lists.ettus.com>; Mon, 12 Sep 2022 12:46:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663001205; bh=bz3x/zgJb+SF5HI0NKrZ3xJsLcx6G9LYIXw5HzdTuKE=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=TtAzOeuFIvVDU5fN04cKVzEyWOXDbKYb887AHbxpgg1Fm21MPT3bS7gFXMkts6d4l
	 Q9qtlJYRvguePZDnyZVqIhE0xpVeVH2Le+CQdnM69tMb/o5N7JylKYzP39SPrhtWX6
	 4M7nGBp36BGRcpyUPFWgrZL7t7qVPfjN2ATMxLYFqgwbig5XDi+5FvSizSYhr6rovj
	 BNs0VvWhmOT3D6bd8hfEZlpx4r6KVUNz5zhbvAdLYNtJG98FvlaBLI1D+jJv7WKk0q
	 SDkssj2LkkGeLXHYyjX+FKX1qMkN8cAKuhELBVbu6GkJBoYj0f67xaRHktaHoAA4dp
	 pbolHY5483IoQ==
Date: Mon, 12 Sep 2022 16:46:45 +0000
To: usrp-users@lists.ettus.com
From: jason@gardettoengineering.com
Message-ID: <iRdQGyLbiiWMH75F0xjdt5iiWzK3U70FqLo85dDlA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 8b6c2553-678f-0c84-636c-138d65f27a88@gmail.com
MIME-Version: 1.0
Message-ID-Hash: HIFWDJYV4EEW2FVWTHQCRVPBIY7ILADE
X-Message-ID-Hash: HIFWDJYV4EEW2FVWTHQCRVPBIY7ILADE
X-MailFrom: jason@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 sample rate change locking-up
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HIFWDJYV4EEW2FVWTHQCRVPBIY7ILADE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3666151103372650502=="

This is a multi-part message in MIME format.

--===============3666151103372650502==
Content-Type: multipart/alternative;
 boundary="b1_iRdQGyLbiiWMH75F0xjdt5iiWzK3U70FqLo85dDlA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_iRdQGyLbiiWMH75F0xjdt5iiWzK3U70FqLo85dDlA
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Marcus D. Leech wrote:

> Sample-rate is an inherent property of a *stream* as I recall, rather
> than a *session*.=C2=A0 Are you creating a new stream
> =C2=A0 across sample-rate changes, or applying the rate change to an
> existing stream?

That is an interesting comment.  I am not stopping and starting a stream,=
 just trying to change the rate while running (think how someone would ha=
ndle a freq change).

If I am following you correctly, your instinct is that I would have to st=
op a stream, make the change, and start the stream again, right?  In whic=
h case I would take the hit of the multiple seconds it takes to start the=
 radio back up, right?

--b1_iRdQGyLbiiWMH75F0xjdt5iiWzK3U70FqLo85dDlA
Content-Type: text/html; charset=us-ascii

<p>Marcus D. Leech wrote:</p><blockquote><p>Sample-rate is an inherent property of a <em>stream</em> as I recall, rather
than a <em>session</em>.&nbsp; Are you creating a new stream
&nbsp; across sample-rate changes, or applying the rate change to an
existing stream?</p></blockquote><p>That is an interesting comment.  I am not stopping and starting a stream, just trying to change the rate while running (think how someone would handle a freq change).</p><p>If I am following you correctly, your instinct is that I would have to stop a stream, make the change, and start the stream again, right?  In which case I would take the hit of the multiple seconds it takes to start the radio back up, right?</p>


--b1_iRdQGyLbiiWMH75F0xjdt5iiWzK3U70FqLo85dDlA--

--===============3666151103372650502==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3666151103372650502==--
