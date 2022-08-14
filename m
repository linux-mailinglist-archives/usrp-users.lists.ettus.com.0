Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 797235925F1
	for <lists+usrp-users@lfdr.de>; Sun, 14 Aug 2022 20:25:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EB0E3380F84
	for <lists+usrp-users@lfdr.de>; Sun, 14 Aug 2022 14:24:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1660501498; bh=7b6mKfr8YIdRoYjYRS+y10Lggxw+5XQ0nDDpj+Y/kVs=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Kcmr5iXefcUFYzKCDB7mqSEehBIOxWyco9E8N70SY8Uqx2flCK22Vc+XTP415c6TU
	 f/KiALMGERL82uh0tX4EYx9PDMwO23jRA8lBxbpPSf5y4vz26xmy3Mb/NjJ85c9LAy
	 rEI0f+p4VZcaVa+q9XLxUp2hFrwO4GnS+KNch3HphsE0YyT78y8oss/VT03BDp540t
	 JlMdXktzhX8T4VWbD2CG60Zq9n7Ckg6MsUQNRrjmbL94VmHgzoaXGCxQJdnIsAI1Nc
	 sz1qGFzjIs4trPFoGOV3H7c3Aik7YBWh98WFzqCSAyuehL97MSOUWsajA20VguVb7M
	 I9nAeiM3X66EQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F28AB380F80
	for <usrp-users@lists.ettus.com>; Sun, 14 Aug 2022 14:24:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1660501446; bh=1D09gWsrn07SR3myregWuqesTl6ybnnfKjVqr8EVFfU=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=HS7ew/r7m5Q7rJoVyIP+cK4KeUdaIukP3wu9U8lMIB6AyRr+YI4uBem32G6Y/Y93e
	 K8hpwLtu0hrj99xhdVhFiTQciQV5Kb8Mh0vAPHk/imysWQGa+Bm/XRT8HOZYDgavBW
	 c9w6qsnX69U3ITcGUZYTrowEoVfy2HehpbbR0J6Tx+o4rV5VXHNtqdNMdUu3kTd+z0
	 yE3hsAtIWJC4PhXk03Q+XjuUNXt14WTnWBoW/3q8ed9LlYnGz6qc9MT7U6l9W60R1t
	 PENOprQ5Badnh2A0tJkmt7JYTsKez0lAQ1TOiqoRvtz2L+0TMGPBim8L6vLZ41nkN9
	 qooDPzPssh9+Q==
Date: Sun, 14 Aug 2022 18:24:05 +0000
To: usrp-users@lists.ettus.com
From: woznych@gmail.com
Message-ID: <B72xaKaRIC2UxRuWOmwCJi86KWNRsedQa7pmUfpHkg@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAAxXO2E4+JP77swc7Z01GJCOrL3UpwTM_GbKM5=voN9Q_h5fCA@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: S6UJFNM6Q3NO2EO7FRXSKFMHCPCXG7PR
X-Message-ID-Hash: S6UJFNM6Q3NO2EO7FRXSKFMHCPCXG7PR
X-MailFrom: woznych@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Bus errors and UHD exceptions with simple I/Q recorder
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/S6UJFNM6Q3NO2EO7FRXSKFMHCPCXG7PR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2020971212621538766=="

This is a multi-part message in MIME format.

--===============2020971212621538766==
Content-Type: multipart/alternative;
 boundary="b1_B72xaKaRIC2UxRuWOmwCJi86KWNRsedQa7pmUfpHkg"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_B72xaKaRIC2UxRuWOmwCJi86KWNRsedQa7pmUfpHkg
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Nikos,

Thanks for the reply. I traced it to the =E2=80=9Crecv=E2=80=9D call whic=
h has left me puzzled. I added a bunch of instrumentation to see if I was=
 walking off the end of my memory that was allocated to the 16-bit I/Q bu=
ffer.

`const std::int32_t startIndex =3D 2*num_accum_samps;`

`const std::int32_t remainingSize =3D 2*sampleLength-(2*num_accum_samps);=
`

`std::cout << "iq[" << startIndex << "] =3D " << iq[startIndex];`

`std::cout << "\t" << remainingSize;`

`std::cout << "\t" << startIndex + remainingSize;`

`std::cout << "\t" << bufferSize << std::endl;`

`num_accum_samps +=3D rx_stream->recv(&iq[startIndex], remainingSize, met=
a, 5.0, true);`

And I can get it to faithfully crash every single time when I don=E2=80=99=
t pad my array of 16-bit integers by an additional 2165 int16s. I include=
d some output indicating where I=E2=80=99ve specified as the start of the=
 buffer for it to write to, followed by the remaining size, followed by t=
he sum of the two just to make sure I can math, and finally the actual re=
served buffer size plus the pad of 2164 int16s.

`=E2=80=A6`

`iq[1180480] =3D 0	19520	1200000	1202164`

`iq[1185920] =3D 0	14080	1200000	1202164`

`iq[1191360] =3D 0	8640	1200000	1202164`

`iq[1196800] =3D 0	3200	1200000	1202164`

`Segmentation fault (core dumped)`

If you=E2=80=99ll notice, I=E2=80=99ve specified for it to start at index=
 1196800 and that the number of samples per buffer being passed to recv()=
 is 3200. I think I=E2=80=99m just being dense / misinterpreting the *nsa=
mps_per_buff* (the second parameter of the =E2=80=9Crecv=E2=80=9D call) b=
ecause it seems as if it is not respecting the remaining buffer size that=
 I am specifying and attempting to write beyond the bounds of the memory =
I=E2=80=99ve allocated for the buffer.

Is there some alignment or minimum buffer size that I=E2=80=99m not aware=
 of?

Thanks,

Chris

--b1_B72xaKaRIC2UxRuWOmwCJi86KWNRsedQa7pmUfpHkg
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Nikos,</p><p>Thanks for the reply. I traced it to the =E2=80=9Crecv=
=E2=80=9D call which has left me puzzled. I added a bunch of instrumentatio=
n to see if I was walking off the end of my memory that was allocated to th=
e 16-bit I/Q buffer.</p><p><code>const std::int32_t startIndex =3D 2*num_ac=
cum_samps;</code></p><p><code>const std::int32_t remainingSize =3D 2*sample=
Length-(2*num_accum_samps);</code></p><p><code>std::cout &lt;&lt; "iq[" &lt=
;&lt; startIndex &lt;&lt; "] =3D " &lt;&lt; iq[startIndex];</code></p><p><c=
ode>std::cout &lt;&lt; "\t" &lt;&lt; remainingSize;</code></p><p><code>std:=
:cout &lt;&lt; "\t" &lt;&lt; startIndex + remainingSize;</code></p><p><code=
>std::cout &lt;&lt; "\t" &lt;&lt; bufferSize &lt;&lt; std::endl;</code></p>=
<p><code>num_accum_samps +=3D rx_stream-&gt;recv(&amp;iq[startIndex], remai=
ningSize, meta, 5.0, true);</code></p><p>And I can get it to faithfully cra=
sh every single time when I don=E2=80=99t pad my array of 16-bit integers b=
y an additional 2165 int16s. I included some output indicating where I=
=E2=80=99ve specified as the start of the buffer for it to write to, follow=
ed by the remaining size, followed by the sum of the two just to make sure =
I can math, and finally the actual reserved buffer size plus the pad of 216=
4 int16s.</p><p><code>=E2=80=A6</code></p><p><code>iq[1180480] =3D 0=091952=
0=091200000=091202164</code></p><p><code>iq[1185920] =3D 0=0914080=09120000=
0=091202164</code></p><p><code>iq[1191360] =3D 0=098640=091200000=091202164=
</code></p><p><code>iq[1196800] =3D 0=093200=091200000=091202164</code></p>=
<p><code>Segmentation fault (core dumped)</code></p><p>If you=E2=80=99ll no=
tice, I=E2=80=99ve specified for it to start at index 1196800 and that the =
number of samples per buffer being passed to recv() is 3200. I think I=
=E2=80=99m just being dense / misinterpreting the <em>nsamps_per_buff</em> =
(the second parameter of the =E2=80=9Crecv=E2=80=9D call) because it seems =
as if it is not respecting the remaining buffer size that I am specifying a=
nd attempting to write beyond the bounds of the memory I=E2=80=99ve allocat=
ed for the buffer.</p><p>Is there some alignment or minimum buffer size tha=
t I=E2=80=99m not aware of?</p><p>Thanks,</p><p>Chris</p>

--b1_B72xaKaRIC2UxRuWOmwCJi86KWNRsedQa7pmUfpHkg--

--===============2020971212621538766==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2020971212621538766==--
