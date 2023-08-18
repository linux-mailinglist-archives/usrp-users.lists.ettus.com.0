Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E67F9780CAA
	for <lists+usrp-users@lfdr.de>; Fri, 18 Aug 2023 15:40:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6933D383C88
	for <lists+usrp-users@lfdr.de>; Fri, 18 Aug 2023 09:40:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692366048; bh=QTw2a5ySohyt9yw4FldTBKBFmb8k3vLkEYUmHZ1ftlM=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=LIz7oqkAwwgKO0CCD4luPXJHqSA7vOO0e79KAX8FsTbudpMkS0hCGMjBYJTpjgWbT
	 UEt4oNHxbi8tV4AtymASXnD2/ldGs0x3LgesI6FLofwb+Wr8LhuvqoU0aSIgToxjxB
	 oGUwShFkppO+P7899tYNN7zvoMh6Cxu8AGyySmxKZpFqIWeBd9mB1KHr/8LGfvNq8h
	 Ch1AF6r/Zrie5JiQqwNj+Fv513KvwLNJgO8BrN62C6k+OM61CMypuGrkrzmwsZgibh
	 CflRlPTQ9JYiuLC3KvdokiieDMTdKricd8wy3DCpKvYqhO1KJReaciEK5Ybyi/q/IP
	 knHXAYbN7tHWw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 42D3B383AE4
	for <usrp-users@lists.ettus.com>; Fri, 18 Aug 2023 09:40:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692366017; bh=/MtKpo0id1aUEMTTGakOL3eSan1XhF0gZQrfyu3E9/Y=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=UgiVC8aJyeKOJLxK+PuVw2oROn4/xwtFFYB8xa0rnzbrXbpx17UuSVM7GHWQgZRV8
	 ZaXYdEP3+bVwTa6xKAN3GPrldnDdqwfXirR4TAp1ukC8JylSPGWFWA2vcTE+IjjntY
	 i1OX9uYNBRd8v+V+Jt6ugT7zPj2Wk+IyMwEDEr/4tw4IHHl6zvNkTsP+FF819Xkote
	 uzK9wgcC+bFXfi7MYP9Pv5r10Y6j9+TvQpXq4bJs+7EOPBg6mSxM6psPdBPuRKTo/n
	 iM/WoRmhBehG+/wPC6sa3TRNf5MSxlJqogqmcX4gQkdjaW/CavbycGXZ47XVrsI+IR
	 UK0rCxcc72yVw==
Date: Fri, 18 Aug 2023 13:40:17 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <4Mjn3kQEXEkhMQj1I3lVGGZw3PQFE6a0ZHEHb7e9TQI@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFche=j1eR=xEkMU+651QM=Ww8MNmETFdy-rq_ov7DaRamNVWw@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: RFM4VBGJAJ4LXFGQJNQDBDJLJRXQ24MH
X-Message-ID-Hash: RFM4VBGJAJ4LXFGQJNQDBDJLJRXQ24MH
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Overflows with CHDR_W = 128 on x410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RFM4VBGJAJ4LXFGQJNQDBDJLJRXQ24MH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6053926414274457600=="

This is a multi-part message in MIME format.

--===============6053926414274457600==
Content-Type: multipart/alternative;
 boundary="b1_4Mjn3kQEXEkhMQj1I3lVGGZw3PQFE6a0ZHEHb7e9TQI"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_4Mjn3kQEXEkhMQj1I3lVGGZw3PQFE6a0ZHEHb7e9TQI
Content-Type: text/plain; charset=us-ascii

I was reading the metadata to check for a overflow (similar to the examples). Is there a way to check specifically what block is giving an overflow? I only know how to check if there is an overflow.

I was able to increase the overall data rate without overflow by increasing PYLD_FIFO_SIZE of the axis_data_to_chdr module in the custom block that is linked between the radio block and the rx_streamer.

--b1_4Mjn3kQEXEkhMQj1I3lVGGZw3PQFE6a0ZHEHb7e9TQI
Content-Type: text/html; charset=us-ascii

<p>I was reading the metadata to check for a overflow (similar to the examples). Is there a way to check specifically what block is giving an overflow? I only know how to check if there is an overflow.</p><p><br></p><p>I was able to increase the overall data rate without overflow by increasing PYLD_FIFO_SIZE of the axis_data_to_chdr module in the custom block that is linked between the radio block and the rx_streamer. </p>


--b1_4Mjn3kQEXEkhMQj1I3lVGGZw3PQFE6a0ZHEHb7e9TQI--

--===============6053926414274457600==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6053926414274457600==--
