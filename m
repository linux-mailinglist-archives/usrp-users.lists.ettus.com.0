Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 255F777ED05
	for <lists+usrp-users@lfdr.de>; Thu, 17 Aug 2023 00:24:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 03EB9384ABB
	for <lists+usrp-users@lfdr.de>; Wed, 16 Aug 2023 18:24:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692224680; bh=eLPfgJ15jk9b7GaVgWwlgwiSXTcwwU6plSFe5fCbCgg=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=nLiZRU4O0EV+POJ8B1QR15SA7C6KHmNYeoOdk0XZy/8kVjpcDrQ5pKqztuMI+ldx7
	 SS2vk+KTL2K4FspYBWxCwnS7ybk95N+ZIoO3xtzQA5NrXyF9EIHB40IRqKLpPOu+Um
	 CFst0JUzetYAIgaQZKbk7PrSY2MBvcD9zKm5WW9vAtNswkYvb4tQ9u37WMdBVNZQ/6
	 fFluWN4lNuQ+bSoWr5bvjvPXp6aMDSYYWlv9V5u+JQboXRaA+blT9OfTXh/xhPtlV2
	 KKNlJ1y815MJsM429wZWL2YeDcsFfrJypyQLeA78AP6GStsyXwT6K7zAETzQZ05ktZ
	 7/wboD5iS6aeA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F1D32383C33
	for <usrp-users@lists.ettus.com>; Wed, 16 Aug 2023 18:24:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692224667; bh=Y57Vp5SQbO5vcth7JkTjBUcrLCGsyMaImtrXnYaOgn8=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=aC3IlZsc6EYXIcYQc61hassp88FvgIsiu/BBAlgq+BZNkV9zvY6/Abt4IldDP4MLH
	 D1k91cbi6fbTpiXL8y/YAy63/WRp0ydJYLqWTo2Xr0vGNM1QxGSFVs6QEGjVEOyxU/
	 9iwKZk65zjYRPEFzpG0kQnExQZ7JRIHihiqVgJLZjxHnNxWxrE1Ld2QaLmprL4H18Q
	 nnciOMi2Pqxd911YEuCwAm9SuWKRO7d+cMJa4Ih5eygmRxxN28WL8Gtp/XXsQOxlfs
	 gHQflC3RGGV50YOt4A62soxzLxn0groHak/BGYbUYTwsTef6RrdvpRVTZhzsIclCuz
	 ZuhUM4gJQaEDQ==
Date: Wed, 16 Aug 2023 22:24:26 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <kP0qO70vWl7i7RI6o1TpJ7rV0aNHqx0lN3NllbzA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFche=j2=5KpSdujE1hQdbVFhTcuSoOCbZqmPkCFrk+S_NAUGw@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: YBYWKNOCZXCGLMWR7N3ILHWGJKWWT4TS
X-Message-ID-Hash: YBYWKNOCZXCGLMWR7N3ILHWGJKWWT4TS
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Overflows with CHDR_W = 128 on x410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YBYWKNOCZXCGLMWR7N3ILHWGJKWWT4TS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6458418882286531003=="

This is a multi-part message in MIME format.

--===============6458418882286531003==
Content-Type: multipart/alternative;
 boundary="b1_kP0qO70vWl7i7RI6o1TpJ7rV0aNHqx0lN3NllbzA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_kP0qO70vWl7i7RI6o1TpJ7rV0aNHqx0lN3NllbzA
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I assume it occurs between my custom block and the SFP. Is there a way to=
 tell exactly which block it occurs at using the software?

At a high level, my current network goes=E2=80=A6 ADC -> Radio -> CHDR_cr=
ossbar -> Custom Block -> Rx_streamer

My custom block has its s_axis_tready signal hooked up to the m_axis_trea=
dy signal, the m_axis_tvalid signal of the custom block is what is used t=
o =E2=80=9Cgate=E2=80=9D samples(i.e determine if a sample is dropped or =
not). I currently have this gate set to allow N samples to pass through e=
ach millisecond. If I set N too high, that is when overflows occur, which=
 is why I assume its not in the radio block, but within the custom block.

My guess is the correct buffer to increase is .PYLD_FIFO_SIZE in axis_dat=
a_to_chdr?

--b1_kP0qO70vWl7i7RI6o1TpJ7rV0aNHqx0lN3NllbzA
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I assume it occurs between my custom block and the SFP. Is there a way=
 to tell exactly which block it occurs at using the software?</p><p>At a =
high level, my current network goes=E2=80=A6 ADC -&gt; Radio -&gt; CHDR_c=
rossbar -&gt; Custom Block -&gt; Rx_streamer</p><p>My custom block has it=
s s_axis_tready signal hooked up to the m_axis_tready signal, the m_axis_=
tvalid signal of the custom block is what is used to =E2=80=9Cgate=E2=80=9D=
 samples(i.e determine if a sample is dropped or not). I currently have t=
his gate set to allow N samples to pass through each millisecond. If I se=
t N too high, that is when overflows occur, which is why I assume its not=
 in the radio block, but within the custom block.</p><p>My guess is the c=
orrect buffer to increase is .PYLD_FIFO_SIZE in axis_data_to_chdr?</p><p>=
<br></p><p><br></p>


--b1_kP0qO70vWl7i7RI6o1TpJ7rV0aNHqx0lN3NllbzA--

--===============6458418882286531003==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6458418882286531003==--
