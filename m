Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AD566700C4D
	for <lists+usrp-users@lfdr.de>; Fri, 12 May 2023 17:52:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C00A438490C
	for <lists+usrp-users@lfdr.de>; Fri, 12 May 2023 11:52:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683906729; bh=V8c+ExghqCxbvwjKPsjmtYbyfO0S4utiSpTJ3o0JpmI=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=F1+VxenvvgcEtogYIQukxwiHGC4GLrkUxJkLawu1ezN/A/JAKDxj3YpWatx6wqPzf
	 OWiw5ouWgL/BvLtTu/wkxmaAnB5TuKx5N1b0AupeO1aVhgjRBi4j8gyesodN5ruikd
	 BghhMtFtRuUkQqVOCAii1Sb/He3ofkje8vkUXlcNfgaqy9+6usd88UwKkcSLE/XJrA
	 nDnRDwAUASFsJVL4a4gOTNRAd+jCOzZoWhHlXOmlmTayvV6d4Pq1FuRnAXvRRzf6bH
	 +p+IsfTVTaJ06iEmyzGfHDJUf35L9eC7r/PDGvc2XUIZPGFrsL9SntvyfARy41IoPC
	 PzwDEV9Bdr//g==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 33F663848D9
	for <usrp-users@lists.ettus.com>; Fri, 12 May 2023 11:51:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683906703; bh=fMqaIAs/qNZO1Kn2IlyRz0lhYuOwe4rHrvezHQHiCFo=;
	h=Date:To:From:Subject:From;
	b=eAgWD8t1RYCC7CnOxqJnrbo8T22G8kpwjSWx1fFOaEhRQHI4O3CoHTPm18My/YRDs
	 JaZgipKYYQOyohHZG5uDXXl1hGRUNvyEEI7ZuiOxqOHxZ2VH0n3to0Kcvu0cQ7b3ca
	 xztjyE9ypgltZ/5iwqFkYisjxre+mUYiWVV3hrP3EZCLBEvtZDISdylJ2U/yLjAGlD
	 Lqik+T9cnU7d0L1m/k3QCeVozv5jqv9L3QQ8Mk3b7hEaBw3a6WZGeYV/CltBrwjW4N
	 VSu+3ncWz/X6e2zT3jdqEqIU8erXWnTfjYra0Z9er6QJe2NAU9PnDrAauL4UGpyak0
	 nJq9xCAkIOJUQ==
Date: Fri, 12 May 2023 15:51:43 +0000
To: usrp-users@lists.ettus.com
From: david.fernandes@viveris.fr
Message-ID: <0nTh9jMldPas9c4cQlsgkzBOI3y8AVV2nqnWdJUKPQ@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: YRWTYMFRKN4HXHMFLSEBLS7OH7ZOGXZI
X-Message-ID-Hash: YRWTYMFRKN4HXHMFLSEBLS7OH7ZOGXZI
X-MailFrom: david.fernandes@viveris.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Manage multiple Tx streamers
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YRWTYMFRKN4HXHMFLSEBLS7OH7ZOGXZI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3361661399061569755=="

This is a multi-part message in MIME format.

--===============3361661399061569755==
Content-Type: multipart/alternative;
 boundary="b1_0nTh9jMldPas9c4cQlsgkzBOI3y8AVV2nqnWdJUKPQ"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_0nTh9jMldPas9c4cQlsgkzBOI3y8AVV2nqnWdJUKPQ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi everyone,

I need to develop a system which streams independent samples at different=
 moments to the differents  channels (channel 0 and channel 1) of an USRP=
 X310.

To achieve that, I use the example codes available in the documentation w=
hich look like the following :

// 1. Create the stream args object and initialize the data formats to fc=
32 and sc16:\
uhd::stream_args_t stream_args("fc32", "sc16");\
// 2. Set the channel list, we want 2 streamers coming from channels 0 an=
d 1, in that order\
stream_args.channels =3D {0, 1};\
// Now use these args to create a tx streamer (We assume that usrp is a v=
alid uhd::usrp::multi_usrp)\
uhd::tx_streamer::sptr tx_stream =3D usrp->get_tx_stream(stream_args);\
// Now, any calls to rx_stream must provide a vector of 2 buffers, one pe=
r channel.\
// Ex: tx_stream->send(buffs, 1024, md); (assuming buffs is a vector of 2=
 buffers)

Then, I have created 2 threads, each thread will call the =E2=80=9Ctx_str=
eam->send=E2=80=9D function at different moments to stream samples throug=
h  its corresponding channel (thread0 =3D=3D> channel0 and thread1 =3D=3D=
> channel1).=20

My question is : how can I call the =E2=80=9Ctx_stream->send=E2=80=9D fun=
ction in each thread to send samples through only 1 of the channels ? Is =
there any other better method to achieve that ?=20

Thank you very much for your support.

--b1_0nTh9jMldPas9c4cQlsgkzBOI3y8AVV2nqnWdJUKPQ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi everyone,</p><p>I need to develop a system which streams independent =
samples at different moments to the differents  channels (channel 0 and cha=
nnel 1) of an USRP X310.</p><p>To achieve that, I use the example codes ava=
ilable in the documentation which look like the following :</p><p>// 1. Cre=
ate the stream args object and initialize the data formats to fc32 and sc16=
:<br>uhd::stream_args_t stream_args("fc32", "sc16");<br>// 2. Set the chann=
el list, we want 2 streamers coming from channels 0 and 1, in that order<br=
>stream_args.channels =3D {0, 1};<br>// Now use these args to create a tx s=
treamer (We assume that usrp is a valid uhd::usrp::multi_usrp)<br>uhd::tx_s=
treamer::sptr tx_stream =3D usrp-&gt;get_tx_stream(stream_args);<br>// Now,=
 any calls to rx_stream must provide a vector of 2 buffers, one per channel=
.<br>// Ex: tx_stream-&gt;send(buffs, 1024, md); (assuming buffs is a vecto=
r of 2 buffers)</p><p>Then, I have created 2 threads, each thread will call=
 the =E2=80=9Ctx_stream-&gt;send=E2=80=9D function at different moments to =
stream samples through  its corresponding channel (thread0 =3D=3D&gt; chann=
el0 and thread1 =3D=3D&gt; channel1). </p><p>My question is : how can I cal=
l the =E2=80=9Ctx_stream-&gt;send=E2=80=9D function in each thread to send =
samples through only 1 of the channels ? Is there any other better method t=
o achieve that ? </p><p>Thank you very much for your support.</p>

--b1_0nTh9jMldPas9c4cQlsgkzBOI3y8AVV2nqnWdJUKPQ--

--===============3361661399061569755==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3361661399061569755==--
