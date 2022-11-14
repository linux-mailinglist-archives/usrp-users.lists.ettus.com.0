Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ADEC62782D
	for <lists+usrp-users@lfdr.de>; Mon, 14 Nov 2022 09:55:01 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C07BB38375D
	for <lists+usrp-users@lfdr.de>; Mon, 14 Nov 2022 03:54:59 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1668416099; bh=JJ1l/0r+dFgBiu8Ev1rwnYT2o1881ml3klGDpL5SdI4=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=GyIKqdMT5gYpNe/Vsh3imrYaEwiuqBhlqJEjruayTh+mmtz5NqzZ2KVmsrborU1bT
	 2hbTDb+vsEzJmYd/egAh6l/fj0wh0GgPl/QWRG+F4tmasmn/doBQy+sUJoYYZNc+TL
	 5e0YfRIdyhODkCEZHeNmr1oXtgIGiiRLhXDhbbopVH8SGiUma6/2WN+r/Doyfk3d68
	 GscT2VDiqe8wviqeWDIX4Nm/iif+UGB7rwKa1oEXp30454VYZagAFqtCmwAIxgRzFE
	 X66HRrhhnBJQc6s9C3R8KgkhNPZnCciguJmzyMit58jQsyExtkE2o1hnZz0GsPhuR9
	 buagCgdvCu4OA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7D649380995
	for <usrp-users@lists.ettus.com>; Mon, 14 Nov 2022 03:54:12 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1668416052; bh=826hHiyjFwOpsJXl4HmO0bpJ4i8VGigmVH5wRZ1tOZk=;
	h=Date:To:From:Subject:From;
	b=d7eoROQRcJSgC/1FhujIHnCACU9Kg4Wl75Q332oIu/HbM7IkqN93Te5vKVUZl0+K3
	 7Ix+K4r5jKSjOTMZ7O+xYy4hoS6pe61yVNhAyOXH3LzHyIKtRCvsKgcw6em1me7ywR
	 5n8zzJ8zC7WjdaKpBA1wNGR53IExxS/H43ro3g/DfGLNxvOjjvc2guYQiV+okgj/7J
	 V3lnRQGQngm2n4ZnfqGfebSeILCaGSFcXya+EgODr79xQ2F5trrKkB15cUopNU4Hoa
	 jg214OzZhAZfWYlJnHVszDviqIlNad+XY7qI9FxBFzmxSZeRyw2Vx6sTZARHV7jvzP
	 bf/JdUB7cu6LA==
Date: Mon, 14 Nov 2022 08:54:12 +0000
To: usrp-users@lists.ettus.com
From: adri96roll@gmail.com
Message-ID: <b5nM8iZiwgqUJJyUJhxW7oKCIXeUo9If630H4B3BBE4@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: FNOGCJWKGEVZOGTMTXRYB2LUE3Y5LLUW
X-Message-ID-Hash: FNOGCJWKGEVZOGTMTXRYB2LUE3Y5LLUW
X-MailFrom: adri96roll@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Strange memory behavior
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FNOGCJWKGEVZOGTMTXRYB2LUE3Y5LLUW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2265088988310738404=="

This is a multi-part message in MIME format.

--===============2265088988310738404==
Content-Type: multipart/alternative;
 boundary="b1_b5nM8iZiwgqUJJyUJhxW7oKCIXeUo9If630H4B3BBE4"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_b5nM8iZiwgqUJJyUJhxW7oKCIXeUo9If630H4B3BBE4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Good morning.

I am writing because I am working with the USRP E320 RAM and the AXI_RAM_=
FIFO module and I am having, in my opinion, strange behaviors in memory. =
My goal is to store in memory the data I receive from a point, let's call=
 it POINT A, and to get this data out from another point, POINT B. To do =
this, I have made 2 projects:

1- The first one is in a direct way. When you get to POINT A I activate t=
he "valid" of the block-memory transmission and at POINT B, I activate "r=
eady" of the block-memory transmission. In this way I have no problem. I =
have made tests and I get all the data without losses.

2- The second option that I have proposed is a roundabout way. I implemen=
t 2 FIFOS before each transmission. I did this in case at some point the =
memory was not available to have data and not lose continuity. However, w=
ith this configuration I get the opposite because, contrary to option 1 w=
here the memory is 100% available for sending (valid always at 1) and rec=
eiving (ready always at 1), with this configuration the memory spends man=
y cycles without being available for sending or receiving (valid or ready=
 at 0).

I do not understand why the behavior of the memory with the last configur=
ation, since the only thing that is modified is when the valid or ready i=
s activated. The conversion I use in my module is CHDR to axi to receive =
from memory and axi to CHDR to send to memory. The configuration paramete=
rs I use are the following:

=C2=A0=C2=A0 `assign s_axis_ttimestamp =3D 64'b0;`

`=C2=A0=C2=A0 assign s_axis_thas_time =3D 1'b0;`

`=C2=A0=C2=A0 assign s_axis_tlength =3D 16'd0;`

`=C2=A0=C2=A0 assign s_axis_teob =3D 1'b0;`

`=C2=A0=C2=A0 assign s_axis_teov =3D 1'b0;`

Transmission valid and reception ready configuration:

\-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Project 1: if Point A =3D =E2=
=80=981=E2=80=99 then valid =3D =E2=80=981=E2=80=99; if Point B =3D =E2=80=
=981=E2=80=99 then ready =3D =E2=80=981=E2=80=99;

\-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Project 2: if Point A =3D =E2=
=80=981=E2=80=99 and fifo_empty1 =3D =E2=80=980=E2=80=99 and mready =3D =E2=
=80=981=E2=80=99 then valid =3D =E2=80=981=E2=80=99

                         If Point B =3D =E2=80=981=E2=80=99 and fifo_full=
2 =3D=E2=80=990=E2=80=99 and svalid =3D =E2=80=981=E2=80=99 then ready =3D=
 =E2=80=981=E2=80=99

Thank you in advance, I hope you can help me.

Best regards

Adrian CR

--b1_b5nM8iZiwgqUJJyUJhxW7oKCIXeUo9If630H4B3BBE4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Good morning.</p><p>I am writing because I am working with the USRP E320=
 RAM and the AXI_RAM_FIFO module and I am having, in my opinion, strange be=
haviors in memory. My goal is to store in memory the data I receive from a =
point, let's call it POINT A, and to get this data out from another point, =
POINT B. To do this, I have made 2 projects:</p><p>1- The first one is in a=
 direct way. When you get to POINT A I activate the "valid" of the block-me=
mory transmission and at POINT B, I activate "ready" of the block-memory tr=
ansmission. In this way I have no problem. I have made tests and I get all =
the data without losses.</p><p>2- The second option that I have proposed is=
 a roundabout way. I implement 2 FIFOS before each transmission. I did this=
 in case at some point the memory was not available to have data and not lo=
se continuity. However, with this configuration I get the opposite because,=
 contrary to option 1 where the memory is 100% available for sending (valid=
 always at 1) and receiving (ready always at 1), with this configuration th=
e memory spends many cycles without being available for sending or receivin=
g (valid or ready at 0).</p><p>I do not understand why the behavior of the =
memory with the last configuration, since the only thing that is modified i=
s when the valid or ready is activated. The conversion I use in my module i=
s CHDR to axi to receive from memory and axi to CHDR to send to memory. The=
 configuration parameters I use are the following:</p><p>&nbsp;&nbsp; <code=
>assign s_axis_ttimestamp =3D 64'b0;</code></p><p><code>&nbsp;&nbsp; assign=
 s_axis_thas_time =3D 1'b0;</code></p><p><code>&nbsp;&nbsp; assign s_axis_t=
length =3D 16'd0;</code></p><p><code>&nbsp;&nbsp; assign s_axis_teob =3D 1'=
b0;</code></p><p><code>&nbsp;&nbsp; assign s_axis_teov =3D 1'b0;</code></p>=
<p>Transmission valid and reception ready configuration:</p><p>-&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Project 1: if Point A =3D =E2=80=981=
=E2=80=99 then valid =3D =E2=80=981=E2=80=99; if Point B =3D =E2=80=981=
=E2=80=99 then ready =3D =E2=80=981=E2=80=99;</p><p>-&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; Project 2: if Point A =3D =E2=80=981=E2=80=99 and fifo=
_empty1 =3D =E2=80=980=E2=80=99 and mready =3D =E2=80=981=E2=80=99 then val=
id =3D =E2=80=981=E2=80=99</p><p>                         If Point B =3D =
=E2=80=981=E2=80=99 and fifo_full2 =3D=E2=80=990=E2=80=99 and svalid =3D =
=E2=80=981=E2=80=99 then ready =3D =E2=80=981=E2=80=99</p><p>Thank you in a=
dvance, I hope you can help me.</p><p>Best regards</p><p>Adrian CR</p>

--b1_b5nM8iZiwgqUJJyUJhxW7oKCIXeUo9If630H4B3BBE4--

--===============2265088988310738404==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2265088988310738404==--
