Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CD92F4859B0
	for <lists+usrp-users@lfdr.de>; Wed,  5 Jan 2022 20:58:45 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D2E48385546
	for <lists+usrp-users@lfdr.de>; Wed,  5 Jan 2022 14:58:44 -0500 (EST)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 40EF4384989
	for <usrp-users@lists.ettus.com>; Wed,  5 Jan 2022 14:57:42 -0500 (EST)
Date: Wed, 5 Jan 2022 19:57:42 +0000
To: usrp-users@lists.ettus.com
From: ri28856@mit.edu
Message-ID: <jqqrNMK59tGOrGjn6D21Fcs4OEvjCr0bmXLAqrjE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: fcbcdb3d-8b2f-7bae-ab0e-ecec36ff00a4@gmail.com
MIME-Version: 1.0
Message-ID-Hash: KGYT6R2V3YPLCAD4EITQE6XRXEEBJM5M
X-Message-ID-Hash: KGYT6R2V3YPLCAD4EITQE6XRXEEBJM5M
X-MailFrom: ri28856@mit.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Propagating late and overflow messages in software
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KGYT6R2V3YPLCAD4EITQE6XRXEEBJM5M/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4215485781822737636=="

This is a multi-part message in MIME format.

--===============4215485781822737636==
Content-Type: multipart/alternative;
 boundary="b1_jqqrNMK59tGOrGjn6D21Fcs4OEvjCr0bmXLAqrjE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_jqqrNMK59tGOrGjn6D21Fcs4OEvjCr0bmXLAqrjE
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

> I don=E2=80=99t think that recv_async_msg() blocks. So an infinite loop=
 will chews up CPU.

I had a separate thread that only called recv_async_msg(). I have unused =
cores on my machine, my reasoning was that I=E2=80=99d rather have a CPU =
busy looping than risk Ls on my transmit because the hot loop Tx thread h=
ad to handle a bunch of async messages in a row and create cascading issu=
es.

I dug into the recv_async_msg() implementation a little. There are a few =
implementations and I=E2=80=99m not that familiar with the UHD software a=
rchitecture, but the majority of them essentially wrap a call to bounded_=
buffer::pop_with_timed_wait.=20

=C2=A0 =C2=A0 =C2=A0 =C2=A0 `UHD_INLINE bool pop_with_timed_wait(elem_typ=
e &elem, double timeout)`

`=C2=A0 =C2=A0 =C2=A0 =C2=A0 {`

`=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 boost::mutex::scoped_lock lock=
(_mutex);`

`=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (_buffer.empty())`

`=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {`

`=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (not _empty_c=
ond.timed_wait(lock, to_time_dur(timeout),`

`=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 _n=
ot_empty_fcn))`

`=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {`

`=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 re=
turn false;`

`=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }`

`=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }`

`=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 this->pop_back(elem);`

`=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 _full_cond.notify_one();`

`=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return true;`

`=C2=A0 =C2=A0 =C2=A0 =C2=A0 }`

It appears I was inadvertently adding contention over a mutex by putting =
this call in a separate thread. It looks like this function is also relat=
ively lightweight as long as timeout is 0, so I=E2=80=99m going to try ex=
perimenting with putting recv_async_msg() in my main Tx thread.=20

> I assume that redirection is not appropriate because your application u=
ses stdout?

Correct. It doesn=E2=80=99t strictly need it, but I made the mistake of a=
dding a debug feature that the users have become accustomed to that I now=
 have to maintain=E2=80=A6

--b1_jqqrNMK59tGOrGjn6D21Fcs4OEvjCr0bmXLAqrjE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<blockquote><p>I don=E2=80=99t think that recv_async_msg() blocks. So an in=
finite loop will chews up CPU.</p></blockquote><p>I had a separate thread t=
hat only called recv_async_msg(). I have unused cores on my machine, my rea=
soning was that I=E2=80=99d rather have a CPU busy looping than risk Ls on =
my transmit because the hot loop Tx thread had to handle a bunch of async m=
essages in a row and create cascading issues.</p><p>I dug into the recv_asy=
nc_msg() implementation a little. There are a few implementations and I=
=E2=80=99m not that familiar with the UHD software architecture, but the ma=
jority of them essentially wrap a call to bounded_buffer::pop_with_timed_wa=
it. </p><p><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; <code>UHD_INLINE bool pop=
_with_timed_wait(elem_type &amp;elem, double timeout)</code></p><p><code>&n=
bsp; &nbsp; &nbsp; &nbsp; {</code></p><p><code>&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; boost::mutex::scoped_lock lock(_mutex);</code></p><p><code>&n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if (_buffer.empty())</code></p><p><=
code>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; {</code></p><p><code>&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if (not _empty_cond.timed_=
wait(lock, to_time_dur(timeout),</code></p><p><code>&nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; _not_empty_fcn))</code></p><=
p><code>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; {</code></p=
><p><code>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; return false;</code></p><p><code>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; }</code></p><p><code>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; }</code></p><p><code>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; this-=
&gt;pop_back(elem);</code></p><p><code>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; _full_cond.notify_one();</code></p><p><code>&nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; return true;</code></p><p><code>&nbsp; &nbsp; &nbsp; &nbsp=
; }</code></p><p><br></p><p>It appears I was inadvertently adding contentio=
n over a mutex by putting this call in a separate thread. It looks like thi=
s function is also relatively lightweight as long as timeout is 0, so I=
=E2=80=99m going to try experimenting with putting recv_async_msg() in my m=
ain Tx thread. </p><p><br></p><blockquote><p>I assume that redirection is n=
ot appropriate because your application uses stdout?</p></blockquote><p>Cor=
rect. It doesn=E2=80=99t strictly need it, but I made the mistake of adding=
 a debug feature that the users have become accustomed to that I now have t=
o maintain=E2=80=A6</p>

--b1_jqqrNMK59tGOrGjn6D21Fcs4OEvjCr0bmXLAqrjE--

--===============4215485781822737636==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4215485781822737636==--
