Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 716E484BFF8
	for <lists+usrp-users@lfdr.de>; Tue,  6 Feb 2024 23:23:19 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 868EE385132
	for <lists+usrp-users@lfdr.de>; Tue,  6 Feb 2024 17:23:18 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707258198; bh=tvlwN8wgOEfghgS9Uvk5544xpZ/94qjgVMHgVTADC2A=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=nl5FCaZI/8jWRUfahXm9iabvyBvYE3I6IRFO2Sb6ivj88iryLdCEhrD2z+HjOTobV
	 eLqhWvwj8syULPqMAb2Av0+qXPUlvYQqBvq/m6AAbhaRKB64SZOhlte3iKq8d3ZPkU
	 axlKxb1MzkUuFwKQ7t+WDuLprCnOGqvprOZbt606zAp2jMDFJ0he8zTftmG0RMDkWJ
	 ZnGNIyEUJNmsetgdeltl+T7/48u2vm9Qae/poWNzoMVsh6z2EoQarcFLXvIKg8cm9H
	 mHVrxIV/yZaUe5wWk4b9T4cxhZKBFAUYOEcwYezhKmcBywbtC31ZQjrwO7mziyfwgW
	 myvwTdZZY8OsA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A8E3A384EE5
	for <usrp-users@lists.ettus.com>; Tue,  6 Feb 2024 17:23:04 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707258184; bh=pMvCzYj3emAYKXmNusr6y1laMT6wOoka8xxMDQBIGWI=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=BHLAeErfZvtZmLKT40eoHzAdYkrLWl+ifqmsdLe0SvgYUjmYysNL3fogSRPzMjIRF
	 WKnJTPmh9Lw0adffutbxyK4CjxwpWXX23HvIhJQgA490d+AvgGGca0YvTjtHV24glD
	 ikBhDlMdTKH6Zk1ufJVxEs9UOt81K40vZxIdUnF4zdBEDPO8iq2QW26UsfScjhXKBD
	 +RhJzCbn9KMkAqk8jrNBfgvpwEGWGdycFwfLChYmm6FJreTjjeVaH0nabROV4j+z1j
	 v3qKk/IvsW99E5tDFmjgcjQVQ4/UPTmKVV7XgUvFweAIaYYq0FTxo3ecLH2usu8x6w
	 8+82ScLUJY9Lg==
Date: Tue, 6 Feb 2024 22:23:04 +0000
To: usrp-users@lists.ettus.com
From: zackkomo@utexas.edu
Message-ID: <Je2rmnVRsHMv5FbqtTKa3wbbzr1mn2RPKFRr6nzHGc@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 1b67074f-df21-4ed2-b875-dd24a780e34c@gmail.com
MIME-Version: 1.0
Message-ID-Hash: AJVA75FIQZ7BQVBAFG7QHKMC2PVKERE2
X-Message-ID-Hash: AJVA75FIQZ7BQVBAFG7QHKMC2PVKERE2
X-MailFrom: zackkomo@utexas.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Align multi-channel captures with different rx_stremers
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AJVA75FIQZ7BQVBAFG7QHKMC2PVKERE2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6364957997804352620=="

This is a multi-part message in MIME format.

--===============6364957997804352620==
Content-Type: multipart/alternative;
 boundary="b1_Je2rmnVRsHMv5FbqtTKa3wbbzr1mn2RPKFRr6nzHGc"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Je2rmnVRsHMv5FbqtTKa3wbbzr1mn2RPKFRr6nzHGc
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

If I do thing concurrently (same thread, same rx_streamer) would that sol=
ve the timing issue? For example:

```
stream_args.channels =3D { 0, 1};
```

```
uhd::rx_streamer::sptr rx_stream =3D usrp_->get_rx_stream(stream_args);
```

```
=E2=80=A6
```

```
size_t num_rx_samps =3D
```

```
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rx_stream->recv(b=
uffs, samps_per_buff_, md, timeout, one_packet);
```

Where buffs is a collection of receive buffers.

It would become a little awkward with different sampling rates, but would=
 this potentially solve the timing issue?

--b1_Je2rmnVRsHMv5FbqtTKa3wbbzr1mn2RPKFRr6nzHGc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>If I do thing concurrently (same thread, same rx_streamer) would that =
solve the timing issue? For example:</p><pre><code>stream_args.channels =3D=
 { 0, 1};</code></pre><pre><code>uhd::rx_streamer::sptr rx_stream =3D usr=
p_-&gt;get_rx_stream(stream_args);</code></pre><pre><code>=E2=80=A6</code=
></pre><pre><code>size_t num_rx_samps =3D</code></pre><pre><code>&nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; rx_stream-&gt;recv(buffs,=
 samps_per_buff_, md, timeout, one_packet);</code></pre><p>Where buffs is=
 a collection of receive buffers.</p><p>It would become a little awkward =
with different sampling rates, but would this potentially solve the timin=
g issue?</p>


--b1_Je2rmnVRsHMv5FbqtTKa3wbbzr1mn2RPKFRr6nzHGc--

--===============6364957997804352620==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6364957997804352620==--
